using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chap7_LinqSqlQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    MyPetShopDataContext db = new MyPetShopDataContext();
    protected void ButtonProject_Click(object sender, EventArgs e)
    {

        var results = from r in db.Product
                      select new
                      {
                          r.ProductId,
                          r.CategoryId,
                          r.Name
                      };

        gvProduct.DataSource = results;
        gvProduct.DataBind();

    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {

        var results = from r in db.Product
                      where r.UnitCost > 20
                      select r;
        gv2.DataSource = results;
        gv2.DataBind();






    }


    protected void btnOrder_Click(object sender, EventArgs e)
    {

        var results = from r in db.Product
                      orderby r.UnitCost descending
                      select r;
        gvOrder.DataSource = results;
        gvOrder.DataBind();
    }



    protected void btnGroup_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      group r by r.CategoryId;

        foreach (var g in results)
        {
            if (g.Key == 5)
            {
                var results2 = from r in g
                               select r;
                gvGroup.DataSource = results2;
                gvGroup.DataBind();

            }
        }
    }

    protected void btnPoly_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      group r by r.CategoryId into g
                      select new
                      {
                          Key=g.Key,
                          Count=g.Count(),
                          MaxPrice =g.Max(p=>p.ListPrice),
                          AvgPrice=g.Average(p=>p.ListPrice)
                      };

        gvPoly.DataSource = results;
        gvPoly.DataBind();

    }
    protected void btnQuote_Click(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      select new
                      {
                          r.ProductId,
                          r.CategoryId,
                          CategoryName=r.Category.Name
                      };

        gvQuote.DataSource = results;
        gvQuote.DataBind();

    }
    protected void btnJoin_Click(object sender, EventArgs e)
    {
        var results = from product in db.Product
                      join category in db.Category on product.CategoryId equals category.CategoryId
                      select new
                      {
                          product.ProductId,
                          product.CategoryId,
                          CategoryName=category.Name
                      };

        gvJoin.DataSource = results;
        gvJoin.DataBind();

    }
}