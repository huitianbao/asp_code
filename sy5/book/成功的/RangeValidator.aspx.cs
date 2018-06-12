using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy5_book_RangeValidator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            rvGrade.Text = "成绩验证通过";
            rvDate.Text = "日期验证能通过";
        }
        else
        {
            rvGrade.Text = "成绩验证不通过";
            rvDate.Text = "日期验证不能通过";
        }
    }
}