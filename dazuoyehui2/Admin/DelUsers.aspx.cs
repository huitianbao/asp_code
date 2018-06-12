using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 登录_角色管理_DelUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetAllUsers();

        }
    }


    private void GetAllUsers()
    {
        MembershipCollection users = Membership.GetAllUsers();
        gvUser.DataSource();
        gvUser.DataBind();
    }

    protected void gvUsers_RowDeleting(object sender, GridViewDeletedEventArgs e)
    {
        GridViewRow gvRow=gvUser.Rows[e.RowIndex];
        string userName = gvRow.Cells[0].Text;
        Membership.DeleteUser(userName);
        GetAllUsers();



    }
}