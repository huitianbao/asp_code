using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_SupplierMaster : System.Web.UI.Page
{
  protected void DetailsView1_ItemDeleting(Object sender, DetailsViewDeleteEventArgs e)
  {
    MyPetShopDataContext db = new MyPetShopDataContext();
    var productCount = (from p in db.Product
                        where p.SuppId == int.Parse(DetailsView1.DataKey.Value.ToString())
                        select p).Count();
    if (productCount != 0)
    {
      lblError.Text = "Error：该分类下有商品，请先删除商品！";
      e.Cancel = true;
    }
  }
}