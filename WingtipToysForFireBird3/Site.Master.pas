namespace WingtipToysForFireBird3;

interface

uses
  System,
  System.Collections.Generic,
  System.Security.Claims,
  System.Security.Principal,
  System.Web,
  System.Web.Security,
  System.Web.UI,
  System.Web.UI.WebControls,
  System.Linq,
  WingtipToysForFireBird3.Models,
  WingtipToysForFireBird3.Logic;

type
  Site = public partial class(System.Web.UI.MasterPage)
  protected 
    method Page_Load(sender : Object; e : EventArgs);
    method Page_Init(sender: Object; e: EventArgs);
    method master_Page_PreLoad(sender: Object; e: EventArgs);
    method Unnamed_LoggingOut(sender: Object; e: LoginCancelEventArgs);
    method Page_PreRender(sender: Object; e: EventArgs);
   private
    var _antiXsrfTokenValue: String;
    class const AntiXsrfTokenKey: String = '__AntiXsrfToken';
    class const AntiXsrfUserNameKey: String = '__AntiXsrfUserName';
  public
    property html : System.Web.UI.HtmlControls.HtmlElement read htmlControl write htmlControl;
 
  end;

implementation

uses 
  WingtipToysForFireBird3.Components,
  WingtipToysForFireBird3.Helper;

method Site.Page_Load(sender : Object; e : EventArgs);
begin
  if HttpContext.Current.User.IsInRole('canEdit') then begin
    adminLink.Visible := true;
  end;  
end;

method Site.Page_Init(sender: Object; e: EventArgs);
begin

  //  The code below helps to protect against XSRF attacks
  var requestCookie := Request.Cookies[AntiXsrfTokenKey];
  var requestCookieGuidValue: Guid;
  if (requestCookie <> nil) and Guid.TryParse(requestCookie.Value, out requestCookieGuidValue) then begin
    //  Use the Anti-XSRF token from the cookie
    _antiXsrfTokenValue := requestCookie.Value;
    Page.ViewStateUserKey := _antiXsrfTokenValue;
  end
  else begin
    //  Generate a new Anti-XSRF token and save to the cookie
    _antiXsrfTokenValue := Guid.NewGuid().ToString('N');
    Page.ViewStateUserKey := _antiXsrfTokenValue;
    var responseCookie := new HttpCookie(AntiXsrfTokenKey);
    responseCookie.Value := _antiXsrfTokenValue;
    responseCookie.HttpOnly := true;

    if FormsAuthentication.RequireSSL and Request.IsSecureConnection then begin
      responseCookie.Secure := true;
    end;
    Response.Cookies.&Set(responseCookie);
  end;
 // Page.PreLoad += master_Page_PreLoad;//(nil,nil);
end;

method Site.master_Page_PreLoad(sender: Object; e: EventArgs);
begin
  if not IsPostBack then begin
    //  Set Anti-XSRF token
    ViewState[AntiXsrfTokenKey] := Page.ViewStateUserKey;
    ViewState[AntiXsrfUserNameKey] := Context.User.Identity.Name;
  end
  else begin
    //  Validate the Anti-XSRF token
    if (String(ViewState[AntiXsrfTokenKey]) <> _antiXsrfTokenValue) or (String(ViewState[AntiXsrfUserNameKey]) <> (Context.User.Identity.Name)) then    //  ?? String.Empty))
    begin
      raise new InvalidOperationException('Validation of Anti-XSRF token failed.');
    end;
  end;
end;



method Site.Unnamed_LoggingOut(sender: Object; e: LoginCancelEventArgs);
begin
  Context.GetOwinContext().Authentication.SignOut();
end;


method Site.Page_PreRender(sender: Object; e: EventArgs);
begin
  using usersShoppingCart: ShoppingCartActions := new ShoppingCartActions() do
  begin
    var cartStr: String := String.Format('Cart ({0})', usersShoppingCart.GetCount());
    cartCount.InnerText := cartStr;
  end;
end;

end.
