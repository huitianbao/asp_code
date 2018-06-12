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
        if (Request.Cookies["Name"] != null)
        {
            lblMsg.Text = Request.Cookies["Name"].Value + ",欢迎回来！";

        }
        else
        {
            Response.Redirect("~sy6/CookieLogin.aspx");
        }
    }
}