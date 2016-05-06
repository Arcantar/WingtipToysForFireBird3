namespace WingtipToysForFireBird3.Components.Controls;

interface

uses
  System,
  System.Web,
  System.Web.UI,
  System.Web.UI.WebControls,
  System.Text,
  System.Linq,
  System.Collections.Generic,
  WingtipToysForFireBird3.Helper,
  WingtipToysForFireBird3.Helper.Cache,
  WingtipToysForFireBird3.Data.Business;

type
  
  [ToolboxData('<{0}:MenuCategory runat="server"></{0}:MenuCategory>')]
  MenuCategory = public class(WebControl)  
  private    
    var _cache : ICache := new MemoryCacheAdapter;
    method DoRender(writer: HtmlTextWriter);
  protected
    method Render(writer: HtmlTextWriter); override;
  public
  end;

implementation


method MenuCategory.Render(writer: HtmlTextWriter);
begin
  if HttpContext.Current = nil then begin
    writer.Write('[' + self.ID + ']');
    exit
  end;
  var yu2 : String := String.Empty;
  if _cache.exists('MenuCategory') then    
     yu2 := _cache.Get<String>('MenuCategory');
  if not String.IsNullOrEmpty(yu2) then begin
    writer.Write(yu2);
    inherited Render(writer);
    exit;
  end else
    DoRender(writer);
end;

method MenuCategory.DoRender(writer: HtmlTextWriter);
begin
 var df: List<WingtipToysForFireBird3.Data.Business.categories> := CacheHelper.GetCategories;
 if df = nil then begin
   inherited Render(writer);
   exit;
 end;
 var controlTXT: StringBuilder := new StringBuilder;
 controlTXT.Append('<div id="CategoryMenu" style="text-align: center"><b style="font-size: large; font-style: normal">');
 var i : Int32 := 1;
 for each yelp in df do begin
   if i = 1 then
     controlTXT.Append('<a href="/Category/'+yelp.Categoryname.Trim+'">'+yelp.Categoryname+'</a></b>')
   else
     controlTXT.Append(' | <b style="font-size: large; font-style: normal"><a href="/Category/'+yelp.Categoryname.Trim+'">'+yelp.Categoryname+'</a></b>');
   inc(i);
 end;            
 controlTXT.Append('</div>');
 writer.Write(controlTXT.ToString);
 var expiration: DateTime := DateTime.Now.AddHours(5);
 _cache.Add('MenuCategory',expiration,controlTXT.ToString);
inherited Render(writer);
end;

end.
