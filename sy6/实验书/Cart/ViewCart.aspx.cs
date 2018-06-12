using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_实验书_Cart_ViewCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            if (Session["cart"] == null | Session["cart"] == "")
            {//没有选购任何宠物
                lblMsg.Text = "没有选购任何宠物";
                btnClear.Enabled = false;


            }
            else
            {
                string strPets = Session["cart"].ToString();
                //
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}