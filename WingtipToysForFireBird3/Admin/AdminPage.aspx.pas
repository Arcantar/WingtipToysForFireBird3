namespace WingtipToysForFireBird3.Admin;

interface


uses
  System,
  System.Collections.Generic,
  System.Linq,
  System.Web,
  System.Web.UI,
  System.Web.UI.WebControls,
  WingtipToysForFireBird3.Data,
  WingtipToysForFireBird3.Data.Business,
  WingtipToysForFireBird3.Models,
  WingtipToysForFireBird3.Logic;

type
  AdminPage = public partial class(System.Web.UI.Page)
  protected
    method Page_Load(sender: Object; e: EventArgs);
    method AddProductButton_Click(sender: Object; e: EventArgs);
    method RemoveProductButton_Click(sender: Object; e: EventArgs);
  public
    method GetCategories: list<categories>;
    method GetProducts: list<WingtipToysForFireBird3.Data.Business.products>;
  end;

implementation

method AdminPage.Page_Load(sender: Object; e: EventArgs);
begin
var productAction: String := Request.QueryString['ProductAction'];
if productAction = 'add' then begin
  LabelAddStatus.Text := 'Product added!';
end;
if productAction = 'remove' then begin
  LabelRemoveStatus.Text := 'Product removed!';
end;
end;

method AdminPage.AddProductButton_Click(sender: Object; e: EventArgs);
begin
var fileOK: Boolean := false;
var path: String := Server.MapPath('~/Catalog/Images/');

     
     if ProductImage.HasFile then begin
        var fileExtension: String := System.IO.Path.GetExtension(ProductImage.FileName).ToLower();
        var allowedExtensions: array of String:=['.gif', '.png', '.jpeg', '.jpg' ];
        for i: Integer := 0 to allowedExtensions.Length -1 do begin
          if fileExtension = allowedExtensions[i] then begin
            fileOK := true;
          end;
        end;
     end;
     if fileOK then begin
       try
         //  Save to Images folder.
         ProductImage.PostedFile.SaveAs(path + ProductImage.FileName);
         //  Save to Images/Thumbs folder.
         ProductImage.PostedFile.SaveAs((path + 'Thumbs/') + ProductImage.FileName);
       except
         on ex: Exception do
         begin
           LabelAddStatus.Text := ex.Message;
         end;
       end;
       //  Add product data to DB.
       var products: AddProducts := new AddProducts();
       var addSuccess: Boolean := products.AddProduct(AddProductName.Text, AddProductDescription.Text, AddProductPrice.Text, DropDownAddCategory.SelectedValue, ProductImage.FileName);
       if addSuccess then begin
         //  Reload the page.
         var pageUrl: String := Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
         Response.Redirect(pageUrl + '?ProductAction=add');
       end
       else begin
         LabelAddStatus.Text := 'Unable to add new product to database.';
       end;
     end
     else begin
       LabelAddStatus.Text := 'Unable to accept file type.';
     end;
end;

method AdminPage.GetCategories: list<categories>;
begin
  exit WingtipToysForFireBird3.Data.Business.categories.select_categories_with_spec_clause_where_to_list(' 1 = 1');
end;

method AdminPage.GetProducts: list<WingtipToysForFireBird3.Data.Business.products>;
begin
  exit WingtipToysForFireBird3.Data.Business.products.select_products_with_spec_clause_where_to_list(' 1 = 1');;
end;

method AdminPage.RemoveProductButton_Click(sender: Object; e: EventArgs);
begin

  var productId: Int32 := Convert.ToInt32(DropDownRemoveProduct.SelectedValue);
  var itemremoved : Int32 := WingtipToysForFireBird3.Data.Business.products.delete_products(productId);

  if itemremoved = 0 then
    LabelRemoveStatus.Text := 'Unable to locate product.'
 
  else begin
    var pageUrl: String := Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
    Response.Redirect(pageUrl + '?ProductAction=remove');
  end;

end;

end.



