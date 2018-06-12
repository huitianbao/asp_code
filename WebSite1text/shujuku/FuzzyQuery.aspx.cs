using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class sy1_sy1_test_7_1_FuzzyQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Database db = new Database();
        var results = from c in db.Table
                      where System.Data.Linq.SqlClient.SqlMethods.Like(c.article_name, "%" + txtSearch.Text + "%")
                      select c;
        if (results.Count() != 0)
        {
            gvCategory.DataSource = results;
            gvCategory.DataBind();
        }
        else
        {
            lblMsg.Text = "没有满足条件的数据";
        }
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}