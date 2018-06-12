using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CategoryMaster : System.Web.UI.Page
{
  protected void DetailsView1_ItemDeleting(Object sender, DetailsViewDeleteEventArgs e)
  {
    MyPetShopDataContext db = new MyPetShopDataContext();
    var productCount = (from p in db.Product
                        where p.CategoryId == int.Parse(DetailsView1.DataKey.Value.ToString())
                        select p).Count();
    if (productCount != 0)
    {
      lblError.Text = "Error：该分类下有商品，要删除该分类请先删除商品！";
      e.Cancel = true;
    }
  }
}