using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_实验书_Cart_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["cart"] = "";//Sesssion变量cart用于存储选购的宠物

        }
    }
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        //循环查找选中的宠物
        for (int i = 0; i < chklsPet.Items.Count; i++)
        {
            //讲宠物名和英文逗号连接到Session变量cart中，其中英文逗号用于分隔不同的宠物名
            Session["cart"] += chklsPet.Items[i].Text + ",";

        }
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCart.aspx");
    }
}