namespace WingtipToysForFireBird3.Account;

interface

uses
  System,
  System.Collections.Generic,
  System.Linq,
  System.Web,
  System.Web.UI,
  System.Web.UI.WebControls,
  Microsoft.AspNet.Identity,
  Microsoft.AspNet.Identity.Owin,
  System.Threading.Tasks,
  WingtipToysForFireBird3.Helper,
  WingtipToysForFireBird3.Models;

type
  AddPhoneNumber = public partial class(System.Web.UI.Page)
  private    
    var manager  := CacheHelper.RetrieveManager(Context);
  protected
    method PhoneNumber_Click(sender: Object; e: EventArgs);
  end;

implementation

uses 
  WingtipToysForFireBird3;

method AddPhoneNumber.PhoneNumber_Click(sender: Object; e: EventArgs);
begin
 var code := manager.GenerateChangePhoneNumberToken(User.Identity.GetUserId(), PhoneNumber.Text);
//if manager.SmsService <> nil then begin
//  var message := new IdentityMessage;
//  message.Destination := PhoneNumber.Text;
//  message.Body := 'Your security code is ' + code;
//  manager.SmsService.Send(message);
//  
// Response.Redirect('/Account/VerifyPhoneNumber?PhoneNumber=' + HttpUtility.UrlEncode(PhoneNumber.Text));
// exit;
//end else
   Response.Redirect('/Account/VerifyPhoneNumber?PhoneNumber=' + HttpUtility.UrlEncode(PhoneNumber.Text)+'&sms='+code);
end;

end.
