<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="DelUsers.aspx.cs" Inherits="登录_角色管理_DelUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvUser_RowDeleting">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="用户名" />
            <asp:BoundField DataField="CreationDate" HeaderText="注册时间" />
            <asp:BoundField DataField="LastLoginDate" HeaderText="最后登录时间" />
            <asp:CommandField ShowDeleteButton="true" />


        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

