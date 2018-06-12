using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        //实际工程需要与数据库中存储的用户名和密码比较
        if ((txtName.Text == "hui")&&(txtPassword.Text == "123"))
        {
            HttpCookie cookie=new HttpCookie("Name");
            cookie.Value="hui";
            cookie.Expires=DateTime.Now.AddSeconds(1);
            Response.Cookies.Add(cookie);
        }
    }
    protected void txtPassword_TextChanged(object sender, EventArgs e)
    {

    }
}