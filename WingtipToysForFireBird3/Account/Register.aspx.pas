namespace WingtipToysForFireBird3.Account;

interface

uses
  System,
  System.Linq,
  System.Web,
  System.Web.UI,
  Microsoft.AspNet.Identity,
  Microsoft.AspNet.Identity.Owin,
  Owin,
  WingtipToysForFireBird3,
  WingtipToysForFireBird3.Helper,
  WingtipToysForFireBird3.Models;

type
  &Register = public partial class(Page)
  private
    var manager  := CacheHelper.RetrieveManager(Context);
  protected
    method CreateUser_Click(sender: Object; e: EventArgs);
  end;

implementation

method &Register.CreateUser_Click(sender: Object; e: EventArgs);
begin
  var user := new ApplicationUser;
  user.UserName := Email.Text;
  user.Email := Email.Text;
  var &result: IdentityResult := manager.&Create(user, Password.Text);
  if &result.Succeeded then begin
    //  For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
     var code :String := manager.GenerateEmailConfirmationToken(user.Id);
     var callbackUrl:String  := IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
     manager.SendEmail(user.Id, 'Confirm your account', 'Please confirm your account by clicking <a href="' + callbackUrl + '">here</a>.');
    IdentityHelper.SignIn(manager, user,  false);
    using usersShoppingCart: WingtipToysForFireBird3.Logic.ShoppingCartActions := new WingtipToysForFireBird3.Logic.ShoppingCartActions() do
    begin
      var cartId: String := usersShoppingCart.GetCartId();
      usersShoppingCart.MigrateCart(cartId, user.Id);
    end;
    IdentityHelper.RedirectToReturnUrl(Request.QueryString['ReturnUrl'], Response);
  end
  else begin
    ErrorMessage.Text := &result.Errors.FirstOrDefault();
  end;
end;

end.
