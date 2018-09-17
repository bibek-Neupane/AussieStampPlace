<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCartPage.aspx.cs" Inherits="Pages_Shopping_ShoppingCartPage" %>



<%@ Register Src="~/ShoppingCart.ascx" TagName="WroxShoppingCart" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<uc1:WroxShoppingCart id="WroxShoppingCart1" runat="server"></uc1:WroxShoppingCart>
        <asp:HyperLink ID="Checkout" runat="server" NavigateUrl="~/Pages/Shopping/Checkout.aspx">Checkout</asp:HyperLink></div>
    </form>
</body>
</html>
