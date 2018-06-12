using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy3_Multi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i < 10; i++)
        {
            for (int j = 1; j <=i; j++)
            {
                Response.Write(i.ToString() + "x" + j.ToString() + "=" + (i * j).ToString().PadLeft(5));
                Response.Write("&nbsp;&nbsp;&nbsp");
            }
            Response.Write("<br/>");
        }
    }

}