namespace WingtipToysForFireBird3.Logic;

interface

uses
  System,
  System.Collections.Generic,
  System.Linq,
  System.Web,
  WingtipToysForFireBird3.Models,
  Microsoft.AspNet.Identity,
  WingtipToysForFireBird3,
  AspNet.Identity.Firebird3;

type
  RoleActions = assembly class
  assembly
    method AddUserAndRole;
  end;

implementation


method RoleActions.AddUserAndRole;
begin
  //  Access the application context and create result variables.
  var context: ApplicationDbContext := new ApplicationDbContext('DefaultConnection');
  var IdRoleResult: IdentityResult;
  var IdUserResult: IdentityResult;
  //  Create a RoleStore object by using the ApplicationDbContext object.
  //  The RoleStore is only allowed to contain IdentityRole objects.
  var roleStore := new RoleStore<IdentityRole>(context);//
  //  Create a RoleManager object that is only allowed to contain IdentityRole objects.
  //  When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object.
  var roleMgr := new RoleManager<IdentityRole>(roleStore);
  //  Then, you create the "canEdit" role if it doesn't already exist.
  if not roleMgr.RoleExists('canEdit') then begin
    IdRoleResult := roleMgr.&Create(new IdentityRole('canEdit'));
  end;
  //  Create a UserManager object based on the UserStore object and the ApplicationDbContext
  //  object. Note that you can create new objects and use them as parameters in
  //  a single line of code, rather than using multiple lines of code, as you did
  //  for the RoleManager object.
  var userMgr:= new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

  var appUser:= new ApplicationUser;//('canEditUser@wingtiptoys.com', 'canEditUser@wingtiptoys.com');
  appUser.Email := 'canEditUser@wingtiptoys.com';
  appUser.UserName := 'canEditUser@wingtiptoys.com';
  IdUserResult := userMgr.&Create(appUser, 'Pa$$word1');
  //  If the new "canEdit" user was successfully created,
  //  add the "canEdit" user to the "canEdit" role.
  if not userMgr.IsInRole(userMgr.FindByEmail('canEditUser@wingtiptoys.com').Id, 'canEdit') then begin
    IdUserResult := userMgr.AddToRole(userMgr.FindByEmail('canEditUser@wingtiptoys.com').Id, 'canEdit');
  end;
end;

end.
