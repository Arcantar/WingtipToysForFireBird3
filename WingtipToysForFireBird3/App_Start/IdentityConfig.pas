namespace WingtipToysForFireBird3;

interface

uses
  System,
  System.Security.Claims,
  System.Threading.Tasks,
  Microsoft.AspNet.Identity,
  AspNet.Identity.Firebird3,
  Microsoft.AspNet.Identity.Owin,
  Microsoft.Owin,
  Microsoft.Owin.Security,
  WingtipToysForFireBird3.Models;

type
  EmailService = public class(IIdentityMessageService)
  public
    method SendAsync(message: IdentityMessage): Task;
  end;

  SmsService = public class(IIdentityMessageService)
  public
    method SendAsync(message: IdentityMessage): Task;
  end;

  ApplicationUserManager = public class( UserManager<ApplicationUser>)
  public
    constructor(store :UserStore<ApplicationUser>);
    //constructor(fdatabase: FBDatabase);
    class method &&Create(options: IdentityFactoryOptions<ApplicationUserManager>; context: IOwinContext): ApplicationUserManager;
  end;

  ApplicationSignInManager = public class(SignInManager<ApplicationUser, String>)
  public
    constructor(userManager: ApplicationUserManager; authenticationManager: IAuthenticationManager);
    method CreateUserIdentityAsync(user: ApplicationUser): Task<ClaimsIdentity>;//  override; //virtual;
    class method &Create(options: IdentityFactoryOptions<ApplicationSignInManager>; context: IOwinContext): ApplicationSignInManager; 
  end;

implementation

method EmailService.SendAsync(message: IdentityMessage): Task;
begin
  //  Plug in your email service here to send an email.
  exit Task.FromResult(0);
end;

method SmsService.SendAsync(message: IdentityMessage): Task;
begin
  //  Plug in your SMS service here to send a text message.
  exit Task.FromResult(0);
end;

constructor ApplicationUserManager(store :UserStore<ApplicationUser>);
begin

end;

class method ApplicationUserManager.&&Create(options: IdentityFactoryOptions<ApplicationUserManager>; context: IOwinContext): ApplicationUserManager;
begin
  
  var manager := new ApplicationUserManager(new UserStore<ApplicationUser>(context.Get<ApplicationDbContext> as FBDatabase));
          
  //  Configure validation logic for usernames
  var uValidator :=new UserValidator<ApplicationUser>(manager);
  uValidator.AllowOnlyAlphanumericUserNames := false;
  uValidator.RequireUniqueEmail := true;
  manager.UserValidator :=uValidator;
  //  Configure validation logic for passwords
  manager.PasswordValidator := new PasswordValidator(RequiredLength = 6, RequireNonLetterOrDigit = true, RequireDigit = true, RequireLowercase = true, RequireUppercase = true);
  //  Register two factor authentication providers. This application uses Phone and Emails as a step of receiving a code for verifying the user
  //  You can write your own provider and plug it in here.
  var uPhoneProvider := new PhoneNumberTokenProvider<ApplicationUser>;
  uPhoneProvider.MessageFormat := 'Your security code is {0}';
  manager.RegisterTwoFactorProvider('Phone Code', uPhoneProvider);

  var uEmailProvider := new EmailTokenProvider<ApplicationUser>;
  uEmailProvider.Subject := 'Security Code';
  uEmailProvider.BodyFormat := 'Your security code is {0}';
  manager.RegisterTwoFactorProvider('Email Code', uEmailProvider);
  //  Configure user lockout defaults
  manager.UserLockoutEnabledByDefault := true;
  manager.DefaultAccountLockoutTimeSpan := TimeSpan.FromMinutes(5);
  manager.MaxFailedAccessAttemptsBeforeLockout := 5;
  manager.EmailService := new EmailService();
  manager.SmsService := new SmsService();
  var dataProtectionProvider := options.DataProtectionProvider;
  if dataProtectionProvider <> nil then begin
    manager.UserTokenProvider := new DataProtectorTokenProvider<ApplicationUser>(dataProtectionProvider.&Create('ASP.NET Identity'));
  end;
  exit manager;
end;

constructor ApplicationSignInManager(userManager: ApplicationUserManager; authenticationManager: IAuthenticationManager);
begin
end;

method ApplicationSignInManager.CreateUserIdentityAsync(user: ApplicationUser): Task<ClaimsIdentity>;
begin
  exit user.GenerateUserIdentityAsync(ApplicationUserManager(UserManager));
end;

class method ApplicationSignInManager.&Create(options: IdentityFactoryOptions<ApplicationSignInManager>; context: IOwinContext): ApplicationSignInManager;
begin
  exit new ApplicationSignInManager(context.GetUserManager<ApplicationUserManager>(), context.Authentication);
end;

end.
