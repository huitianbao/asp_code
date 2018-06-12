using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Rediredirct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (rdoltStatus.SelectedValue == "teacher")
        {
            //以查询字符串的形式传递用户信息并且重定向到Teacher.aspx
            Response.Redirect("~/sy6/Redirect/Teacher.aspx?name" + txtName.Text);
        }
        else
        {
            Response.Redirect("~/sy6/Redirect/Student.aspx" + txtName.Text);
        }
    }
    protected void rdoltStatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}