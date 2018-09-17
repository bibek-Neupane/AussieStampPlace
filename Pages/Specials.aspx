<%@ Page Title="Specials" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Specials.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            font-size: 18pt;
        }
        .auto-style5 {
            text-align: center;
            font-size: 10pt;
        }
        .auto-style4 {
            font-size: 13px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        <p class="auto-style3">
            <strong>Welcome to our specials!</strong></p>
        <p class="auto-style5">
            <strong>To be eligible to see and purchase listed specials, you must register as a member.</strong></p>
        <p class="auto-style5">
            <strong>To become a member,
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Register">Register now</asp:HyperLink>
            </strong>
        </p>
    </AnonymousTemplate>
    <LoggedInTemplate>
        <p class="auto-style3">
            <strong>Welcome to our member specials!</strong></p>
        <p class="auto-style2">
            <strong><span class="auto-style4">Here at Aussie Stamp Place we feature a number of stamps</span>.</strong></p>
        <p class="auto-style5">
            <strong>Featured stamps are available ay 15% off their regular listed sale price to members.</strong></p>
        <p class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StampId" DataSourceID="SqlDataSource1" Width="737px">
                <Columns>
                    
                    <asp:BoundField DataField="StampId" HeaderText="StampId" SortExpression="StampId" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Sales Price" HeaderText="Sales Price" SortExpression="Sales Price" ReadOnly="True" />
                    <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
                    <asp:BoundField DataField="LastUpdate" HeaderText="LastUpdate" SortExpression="LastUpdate" />
                    <asp:ImageField DataImageUrlField="Picture" DataImageUrlFormatString="~/Images/Australian/{0}">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="StampId" DataNavigateUrlFormatString="~/Pages/Shopping/ShoppingCartItem.aspx?StampId={0}" Text="Add to cart" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [StampId], [Name ] AS Name, [Price]* 0.85 AS [Sales Price] , [InStock], [LastUpdate], [Picture] FROM [TabularStamps] WHERE ([OnSpecial] = @OnSpecial)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="OnSpecial" Type="Int16" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </LoggedInTemplate>
</asp:LoginView>
</asp:Content>


