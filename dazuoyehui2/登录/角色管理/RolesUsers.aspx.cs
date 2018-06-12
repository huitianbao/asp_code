using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 登录_角色管理_RolesUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //绑定所有角色到 IsRoles
            string[] roles = Roles.GetAllRoles();
            lstRoles.DataSource = roles;
            lstRoles.DataBind();

            //绑定所有用户到 lsUsers
            MembershipUserCollection users = Membership.GetAllUsers();
            lstUsers.DataSource();
            lstUsers.DataBind();

        }

        if (lstRoles.SelectedItem != null)
        {
            GetUsersInRoles();

        }
    }

    private void GetUsersInRoles()
    {
        string[] usersInRole = Roles.GetUsersInRole(lstRoles.SelectedValue);
        gvUsers.DataSource = usersInRole;
        gvUsers.DataBind();


    }


    protected void btn_ToRole_Click(object sender, EventArgs e)
    {
        if (lstRoles.SelectedItem == null)
        {
            lblMsg.Text = "请选择角色";
            return;


        }

        if (lstUsers.SelectedItem == null)
        {
            lblMsg.Text = "请选择用户";
            return;


        }

        //创建选择的用户列表
        string[] newUsers = new string[lstUsers.GetSelectedIndices().Length];
        for (int i = 0; i < newUsers.Length; i++)
        {
            newUsers[i] = lstUsers.Items[lstUsers.GetSelectedIndices()[i]].Value;
            try
            {
                //添加用户列表到选择的角色中
                Roles.AddUserToRole(newUsers, lstRoles.SelectedValue);
                GetUsersInRoles();


            }
            catch(Exception ee)
            {

                lblMsg.Text = ee.Message;

            }

        }

   

        


    }


    protected void 




}