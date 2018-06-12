using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Cross1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string Name     //公共属性Name ,获得用户名文本框的内容
    {
        get
        {
            return txtName.Text;
        }
    }
}