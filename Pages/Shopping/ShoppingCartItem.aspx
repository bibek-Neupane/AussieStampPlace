<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCartItem.aspx.cs" Inherits="WroxShopItem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Shopping Cart Page</title>
</head>
<body>
    <h1>Selected Item</h1>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [StampId], [Name], [InStock], [Price], [Picture] FROM [TabularStamps] WHERE ([StampId] = @StampId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="StampId" QueryStringField="StampId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="StampId" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture","~/Images/Australian\\{0}") %>' />
                <br />
                <asp:Label ID="PictureURLLabel" runat="server" Text='<%# Eval("Picture") %>' Visible="False"></asp:Label>
                &nbsp;<br />
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br />
                
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:##0.00}") %>'></asp:Label><br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:ImageButton ID="btnAddToCart1" runat="server" ImageUrl="~/Images/AddToCart.gif" OnClick="btnAddToCart1_Click"
             />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Return To Shop</asp:HyperLink>
    </form>
</body>
</html>

