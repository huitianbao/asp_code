using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_实验书_ChatRoom_ChatLogin : System.Web.UI.Page
{
    //user 数组存放所有用户名和密码。实际工程中，数据应来源于数据库
    string[,] user = { { "张三", "11" }, { "王五", "11" }, { "李四", "11" } };

    protected void Page_Load(object sender, EventArgs e)
    {
        txtName.Focus();//焦点定位在“用户名”文本框
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //user数组中循环查找能匹配的用户名和密码
        for (int i = 0; i < 2; i++)
        {

            if (txtName.Text == user[i, 0] && txtPassword.Text == user[i, 1])//匹配成功
            {
                Session["user"] = user[i, 0];
                Response.Redirect("Chat.aspx");

            }
        }
        //在user 数组中找不到匹配的用户，输出“用户名或密码错误”提示信息
        Response.Write("<script type='text/javascript'>alert('用户名或密码错误</script>)");

    }
}