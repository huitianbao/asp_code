using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Redirect_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //获取并且显示从Redirect.aspx页面传递过来的用户信息
        lblMsg.Text = Request.QueryString["name"] + "学生欢迎你";
    }
}