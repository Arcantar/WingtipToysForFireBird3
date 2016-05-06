namespace WingtipToysForFireBird3;

interface

uses
  System,
  System.Collections.Generic,
  System.Linq,
  System.Web,
  System.Web.Optimization,
  System.Web.Routing,
  System.Web.Security,
  System.Web.SessionState,
 // System.Data.Entity,
  WingtipToysForFireBird3.Models,
  WingtipToysForFireBird3.Logic,
  WingtipToysForFireBird3;




type
   Global_asax = public class(System.Web.HttpApplication)
   protected
     method Application_Start(sender: Object; e: EventArgs);
    method RegisterCustomRoutes(routes: RouteCollection);
   // method Application_Error(sender: Object; e: EventArgs);
   end;

implementation


  

method Global_asax.Application_Start(sender: Object; e: EventArgs);
begin  
  //  Code that runs on application startup
  RouteConfig.RegisterRoutes(RouteTable.Routes);
  BundleConfig.RegisterBundles(BundleTable.Bundles);
  //  Initialize the product database.
  //Database.SetInitializer(new ProductDatabaseInitializer());
  //  Create the custom role and user.
  var roleActions: RoleActions := new RoleActions();
  roleActions.AddUserAndRole();
  //  Add Routes.
  RegisterCustomRoutes(RouteTable.Routes);
end;

method Global_asax.RegisterCustomRoutes(routes: RouteCollection);
begin
  routes.MapPageRoute('ProductsByCategoryRoute', 'Category/{categoryName}', '~/ProductList.aspx');
  routes.MapPageRoute('ProductByNameRoute', 'Product/{productName}', '~/ProductDetails.aspx');
end;

//method Global_asax.Application_Error(sender: Object; e: EventArgs);
//begin
//  //  Code that runs when an unhandled error occurs.
//  //  Get last error from the server
//  var exc: Exception := Server.GetLastError();
//  if exc is HttpUnhandledException then begin
//    if exc.InnerException <> nil then begin
//      exc := new Exception(exc.InnerException.Message);
//      Server.Transfer('ErrorPage.aspx?handler=Application_Error%20-%20Global.asax', true);
//    end;
//  end;
//end;

end.
    