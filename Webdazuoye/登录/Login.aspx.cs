using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 登录_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] roles = System.Web.Security.Roles.GetAllRoles();
            IsRoles.DataSource = roles;
            IsRoles.DataBind();


            System.Web.Security.MembershipUserCollection users = System.Web.Security.Membership.GetAllUsers();
            IstUsers.DataSource = users;
            IstUsers.DataBind();


        }

        if (IsRoles.SelectedItem != null)
        {
            GetUsersInRole();


        }
    }

    private void GetUsersInRole(){
        string[] usersInRole=System.Web.Security.Roles.GetUsersInRole(IstRoles.SelectedValues);
        gvUsers.DataSource()=usersInRole;
        gvUsers.DataBind();




}protected void btnToRole_Click(object sender, EventArgs e)
{
    if(IsRoles.SelectedItem==null){
    
        lblMsg.Text="请选择角色";
        return;

    }

    if(IstUsers.SelectedItem==null){


    }
}
