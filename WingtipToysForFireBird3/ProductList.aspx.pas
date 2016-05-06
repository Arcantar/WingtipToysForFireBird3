namespace WingtipToysForFireBird3;

interface

uses
  System,
  System.Collections.Generic,
  System.Linq,
  System.Web,
  System.Web.UI,
  System.Web.UI.WebControls,
  WingtipToysForFireBird3.Models,
  System.Web.ModelBinding,
  System.Web.Routing;

type
  ProductList = public partial class(System.Web.UI.Page)
  protected
    method Page_Load(sender: Object; e: EventArgs);
  public
    method GetProducts([QueryString("id")] categoryId  :nullable Int64; [RouteData]categoryName:nullable String): list<WingtipToysForFireBird3.Data.Business.products>;
  end;

implementation

uses 
  WingtipToysForFireBird3.Helper;

method ProductList.Page_Load(sender: Object; e: EventArgs);
begin
end;

method ProductList.GetProducts(categoryId:nullable Int64; categoryName:nullable String): list<WingtipToysForFireBird3.Data.Business.products>;
begin
exit CacheHelper.GetProductList(categoryId,categoryName);
end;

end.
