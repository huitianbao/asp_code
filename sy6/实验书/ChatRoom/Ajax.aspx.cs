using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_实验书_ChatRoom_Ajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //输出Application变量的message值，该值讲传递给Chap.aspx中的text变量
        Response.Write(Application["message"].ToString());
    }
}