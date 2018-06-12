using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Cross2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage.IsCrossPagePostBack)    //判断是否为跨页面提交
        {
            //获取公共属性值
            lblMsg.Text = "用户名" + PreviousPage.Name + "<br/>";

            //先通过 FindControl() 找到源页面中控件，再利用控件属性获取值

            TextBox txtPassword = (TextBox)PreviousPage.FindControl("txtPassword");
            lblMsg.Text += "密码" + txtPassword.Text;

        }
    }



}