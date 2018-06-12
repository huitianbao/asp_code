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

public partial class UserControl_Category : System.Web.UI.UserControl
{
  protected void Page_Load(object sender, EventArgs e)
  {
    MyPetShopDataContext db = new MyPetShopDataContext();
    //查询分类号、分类名、该分类包含的商品
    var results = from c in db.Category
                  join p in db.Product on c.CategoryId equals p.CategoryId
                  into product
                  select new
                  {
                    c.CategoryId,
                    c.Name,
                    ProductCount = product.Count()
                  };
    gvCategory.DataSource = results;
    gvCategory.DataBind();
  }
}