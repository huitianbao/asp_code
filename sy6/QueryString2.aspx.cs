using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_QueryString2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //获取从QueryString中传递过来的查询字符串的值

        lblMsg.Text = Request.QueryString["username"] + ",你的年龄是：" + Request.QueryString["age"];
    }
}