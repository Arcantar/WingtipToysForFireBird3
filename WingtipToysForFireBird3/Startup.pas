namespace WingtipToysForFireBird3;

interface

uses
  Microsoft.Owin,
  Owin;

type
  [assembly: OwinStartupAttribute(typeOf(WingtipToysForFireBird3.Startup))]
  Startup = public partial class
  public
    method Configuration(app: IAppBuilder);
  end;

implementation

method Startup.Configuration(app: IAppBuilder);
begin
  ConfigureAuth(app);
end;

end.
