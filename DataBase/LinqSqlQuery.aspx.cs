using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LinqSqlQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      select new
                      {
                          r.ProductId,
                          r.CategoryId,
                          r.Name
                      };
        gvProduct.DataSource=results;
        gvProduct.DataBind();



        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      where r.UnitCost>20

                      select r;

        gvProduct2.DataSource = results;
        gvProduct2.DataBind();


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      select new
                      {
                          r.ProductId,
                          r.CategoryId
                      };
                     
        gvProduct3.DataSource = results;
        gvProduct3.DataBind();
    }
    protected void btnGroup_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var result = from r in db.Product
                     group r by r.CategoryId;
        foreach (var g in result)
        {
            if (g.Key == 5)
            {
                var results2 = from r in g
                               select r;
                gvProduct.DataSource = results2;
                gvProduct.DataBind();

            }
        }
    }
}