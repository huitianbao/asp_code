using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    
    Datab
    //ArticleDataContext db = new ArticleDataContext();
    protected void Bind()
    {
        var results=from c in db.Table
                    select c;
        gvCategory.DataSource=results;
        gvCategory.DataBind();
    }
    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        Bind();
    }
    protected void btnFuzzy_Click(object sender, EventArgs e)
    {
        Response.Redirect("FuzzyQuery.aspx");
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("Insert.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx?CategoryId="+txtCategoryId.Text);
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var results = from c in db.Table
                      where c.Id == int.Parse(txtCategoryId.Text)
                      select c;
        db.Table.DeleteAllOnSubmit(results);
        db.SubmitChanges();
        Bind();
    }
}