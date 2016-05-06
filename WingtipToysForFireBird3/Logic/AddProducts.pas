namespace WingtipToysForFireBird3.Logic;

interface

uses
  System,
  System.Collections.Generic,
  System.Linq,
  System.Web,
  WingtipToysForFireBird3.Models;

type
  AddProducts = public class
  public
    method AddProduct(ProductName: String; ProductDesc: String; ProductPrice: String; ProductCategory: String; ProductImagePath: String): Boolean;
  end;

implementation

uses 
  WebGrease;

method AddProducts.AddProduct(ProductName: String; ProductDesc: String; ProductPrice: String; ProductCategory: String; ProductImagePath: String): Boolean;
begin
 var itemresult : Int32 := 0;
 try
  itemresult := WingtipToysForFireBird3.Data.Business.products.insert_products( ProductName, ProductDesc, ProductImagePath, Convert.ToDouble(ProductPrice), Convert.ToInt32(ProductCategory));
  WingtipToysForFireBird3.Helper.Cache.CacheManager.Cache.InvalidateCacheItem('ProductList_'+ProductCategory.Trim);
 except
  exit false;
 end;
  exit itemresult <> 0;
end;

end.
