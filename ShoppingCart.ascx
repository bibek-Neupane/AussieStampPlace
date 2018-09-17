<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.ascx.cs" Inherits="WroxShoppingCart" %>
<asp:GridView ID="CartGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" OnRowEditing="CartGrid_RowEditing" OnRowUpdating="CartGrid_RowUpdating" OnRowCancelingEdit="CartGrid_RowCancelingEdit" OnRowDeleting="CartGrid_RowDeleting">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImageUrl","~/Images/Australian\\{0}") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True" />
        <asp:BoundField DataField="LineTotal" DataFormatString="{0:c}" HeaderText="Total"
            ReadOnly="True" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <EmptyDataTemplate>
        There is nothing in your shopping cart. You can buy items from the <a href="Default.aspx">shop</a>.
    </EmptyDataTemplate>
</asp:GridView>
<asp:Label ID="TotalLabel" runat="server"></asp:Label>