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
  System.Web.ModelBinding;

type
  ProductDetails = public partial class(System.Web.UI.Page)
  protected
    method Page_Load(sender: Object; e: EventArgs);
  public
    method GetProduct([QueryString("ProductID")] productId: nullable Int64; [RouteData] productName: String): list<WingtipToysForFireBird3.Data.Business.products>;
  end;

implementation

uses 
  WingtipToysForFireBird3.Helper;

method ProductDetails.Page_Load(sender: Object; e: EventArgs);
begin
end;

method ProductDetails.GetProduct(productId: nullable Int64; productName: String): list<WingtipToysForFireBird3.Data.Business.products>;
begin
exit CacheHelper.GetProducts(productId,productName);
end;

end.
