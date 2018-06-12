using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy1_sy1_test_7_1_Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        ArticleDataContext db = new ArticleDataContext();
        Table category = new Table();
        category.article_name = txtName.Text;
        category.article_src = txtDescn.Text;
        db.Table.InsertOnSubmit(category);
        db.SubmitChanges();
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}