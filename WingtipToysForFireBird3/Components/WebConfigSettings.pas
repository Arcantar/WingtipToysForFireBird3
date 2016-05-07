namespace WingtipToysForFireBird3;

interface

uses
  System,
  System.Configuration,
  System.Web,
  System.Web.UI,
  System.Web.UI.WebControls, 
  WingtipToysForFireBird3.Helper;

type
  WebConfigSettings = public static class

  public

    class property OpenIdRpxApiKey: System.String read get_OpenIdRpxApiKey;
    class method get_OpenIdRpxApiKey: System.String;

    class property SetUICultureWhenSettingCulture: System.Boolean read ConfigHelper.GetBoolProperty('SetUICultureWhenSettingCulture', true);

    class property UseCustomHandlingForPersianCulture: System.Boolean read ConfigHelper.GetBoolProperty('UseCustomHandlingForPersianCulture', false);

    class property UseCultureOverride    : System.Boolean read ConfigHelper.GetBoolProperty('UseCultureOverride', false);
                                         
    class property GetDefaultCulture     : System.String  read ConfigHelper.GetStringProperty('siteculture', 'en-US');
                                         
    class property GetDefaultUICulture   : System.String  read ConfigHelper.GetStringProperty('siteUIculture', 'en-US');
                                         
    class property GetSiteName           : System.String  read ConfigHelper.GetStringProperty('SiteName','zourfa');
                                         
    class property ActiveFacebookLogin   : System.Boolean read ConfigHelper.GetBoolProperty('ActiveFacebookLogin',false);
                                         
    class property FacebookLoginAppId    : System.String  read ConfigHelper.GetStringProperty('FacebookLoginAppId',String.Empty);

    class property FacebookLoginAppSecret: System.String  read ConfigHelper.GetStringProperty('FacebookLoginAppSecret',String.Empty);

    class property ActiveTwitterLogin    : System.Boolean read ConfigHelper.GetBoolProperty('ActiveTwitterLogin',false);
                                         
    class property TwitterConsumerKey    : System.String  read ConfigHelper.GetStringProperty('TwitterConsumerKey',String.Empty);
                                         
    class property TwitterConsumerSecret : System.String  read ConfigHelper.GetStringProperty('TwitterConsumerSecret',String.Empty);
                                         
    class property ActiveMicrosoftLogin  : System.Boolean read ConfigHelper.GetBoolProperty('ActiveMicrosoftLogin',false);
                                         
    class property MicrosoftclientId     : System.String  read ConfigHelper.GetStringProperty('MicrosoftclientId',String.Empty);
                                         
    class property MicrosoftclientSecret : System.String  read ConfigHelper.GetStringProperty('MicrosoftclientSecret',String.Empty);
                                         
    class property ActiveGoogleLogin     : System.Boolean read ConfigHelper.GetBoolProperty('ActiveGoogleLogin',false);
                                         
    class property GoogleclientId        : System.String  read ConfigHelper.GetStringProperty('GoogleclientId',String.Empty);
                                         
    class property GoogleclientSecret    : System.String  read ConfigHelper.GetStringProperty('GoogleclientSecret',String.Empty);

    class property PayPalpEndPointURL          : System.String  read ConfigHelper.GetStringProperty('PayPalpEndPointURL','');

    class property PayPalhost                  : System.String  read ConfigHelper.GetStringProperty('PayPalhost','');
    
    class property PayPalpEndPointURL_SB       : System.String  read ConfigHelper.GetStringProperty('PayPalpEndPointURL_SB','');
    
    class property PayPalhost_SB               : System.String  read ConfigHelper.GetStringProperty('PayPalhost_SB','');
    
    class property PayPalAPIUsername           : System.String  read ConfigHelper.GetStringProperty('PayPalAPIUsername','');
    
    class property PayPalAPIPassword           : System.String  read ConfigHelper.GetStringProperty('PayPalAPIPassword','');
    
    class property PayPalAPISignature          : System.String  read ConfigHelper.GetStringProperty('PayPalAPISignature','');
    
    class property PayPalAPIUsername_SB        : System.String  read ConfigHelper.GetStringProperty('PayPalAPIUsername_SB','');
    
    class property PayPalAPIPassword_SB        : System.String  read ConfigHelper.GetStringProperty('PayPalAPIPassword_SB','');
    
    class property PayPalAPISignature_SB       : System.String  read ConfigHelper.GetStringProperty('PayPalAPISignature_SB','');
    
    class property PayPalbSandbox              : System.Boolean read ConfigHelper.GetBoolProperty('PayPalbSandbox',true);
    
    class property PayPalCheckoutReviewURL     : System.String  read ConfigHelper.GetStringProperty('PayPalCheckoutReviewURL','');
    
    class property PayPalCheckoutCancelURL     : System.String  read ConfigHelper.GetStringProperty('PayPalCheckoutCancelURL','');
    
    class property PayPalCheckoutReviewURL_SB  : System.String  read ConfigHelper.GetStringProperty('PayPalCheckoutReviewURL_SB','');
    
    class property PayPalCheckoutCancelURL_SB  : System.String  read ConfigHelper.GetStringProperty('PayPalCheckoutCancelURL_SB','');

    class property PayPalBrandName             : System.String  read ConfigHelper.GetStringProperty('PayPalBrandName','');

    class property PayPalCurrency              : System.String  read ConfigHelper.GetStringProperty('PayPalCurrency','');



  end;


implementation

class method WebConfigSettings.get_OpenIdRpxApiKey: System.String; begin
  if ConfigurationManager.AppSettings['OpenIdRpxApiKey'] <> nil then begin
    exit ConfigurationManager.AppSettings['OpenIdRpxApiKey']
  end;
  exit System.String.Empty
end;


end.
