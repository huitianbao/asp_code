using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy1_sy1_test_7_1_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string categoryId = Request.QueryString["CategoryId"];
            var category = (from c in db.Table
                            where c.Id == int.Parse(categoryId)
                            select c).First();
            txtCategoryId.Text = categoryId;
            txtCategoryId.ReadOnly = true;
            txtName.Text = category.article_name;
            txtDescn.Text = category.article_src;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
    ArticleDataContext db = new ArticleDataContext();
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var category = (from c in db.Table
                        where c.Id == int.Parse(txtCategoryId.Text)
                        select c).First();
        category.article_name = txtName.Text;
        category.article_src = txtDescn.Text;
        db.SubmitChanges();
    }
}