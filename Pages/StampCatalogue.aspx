<%@ Page Title="StampCatalogue" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StampCatalogue.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <strong>View Our Catalogue</strong></p>
    <p class="auto-style2">
        <strong>Below is a complete catalogue of our stamps.</strong></p>
    <p class="auto-style2">
        <strong>All stamps</strong></p>
    <p class="auto-style2">
        <asp:GridView ID="GridView1" runat="server"  DataKeyNames="StampId" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="222px" Width="815px">
            <Columns>
               
                <asp:BoundField DataField="Name_" HeaderText="Name_" SortExpression="Name_" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
                <asp:BoundField DataField="LastUpdate" HeaderText="LastUpdate" SortExpression="LastUpdate" />
                <asp:ImageField DataImageUrlField="Picture" DataImageUrlFormatString="~/Images/Australian/{0}">
                 </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="StampId" DataNavigateUrlFormatString="~/Pages/Shopping/ShoppingCartItem.aspx?StampId={0}" Text="Add to cart" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [StampId], [Name ] AS Name_, [Price], [InStock], [LastUpdate], [Picture] FROM [TabularStamps]"></asp:SqlDataSource>
    </p>
</asp:Content>

