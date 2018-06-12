<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqDSGrid.aspx.cs" Inherits="LinqDSGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="gvCategory" runat="server" DataSourceID="ldsCategory" AutoGenerateColumns="False" DataKeyNames="CategoryId">
            <Columns>
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:LinqDataSource ID="ldsCategory" runat="server" ContextTypeName="MyPetShopDataContext" EntityTypeName="" TableName="Category">
        </asp:LinqDataSource>
    
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
