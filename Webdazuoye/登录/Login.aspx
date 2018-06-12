<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="登录_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        角色：<asp:ListBox ID="IsRoles" runat="server" AutoPostBack="True"></asp:ListBox>
        用户：<asp:ListBox ID="IsUsers" runat="server" SelectionMode="Multiple"></asp:ListBox>
        <asp:Button ID="btnToRole" runat="server" OnClick="btnToRole_Click" Text="添加到角色" />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="用户"></asp:TemplateField>
                <asp:CommandField DeleteText="从角色中删除" HeaderText="删除" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

