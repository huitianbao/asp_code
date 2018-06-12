<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="数据库.aspx.cs" Inherits="数据库" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="390px">
    </asp:GridView>

    <div>

        <asp:LinqDataSource ID="LinqDataSource1" runat="server">
        </asp:LinqDataSource>

    </div>
    <div>

        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

