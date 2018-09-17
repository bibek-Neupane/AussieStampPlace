<%@ Page Title="Stamplist" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StampList.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 35px;
        }
        .auto-style4 {
            text-align: center;
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <strong>View Our List</strong></p>
    <p class="auto-style3">
        <strong>Below is the complete list of our Stamps. Use the dropdown list to filter the stamps by series.</strong></p>
    <p class="auto-style4">
        <strong>Stamp Series: </strong></p>
    <p class="auto-style4">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Series" DataValueField="Series" OnDataBound="DropDownList2_DataBound">
        </asp:DropDownList>
    </p>
    <p class="auto-style4">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [StampId], [Name ] AS Name_, [Price], [InStock], [LastUpdate], [Picture], [Series], [OnSpecial] FROM [TabularStamps]"></asp:SqlDataSource>
    </p>
<p class="auto-style4">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StampId" DataSourceID="SqlDataSource2" AllowSorting="True" Width="833px">
            <Columns>
                <asp:BoundField DataField="Name_" HeaderText="Name" SortExpression="Name_" />
                <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
                <asp:BoundField DataField="LastUpdate" DataFormatString="{0:d}" HeaderText="LastUpdate" SortExpression="LastUpdate" />
                <asp:ImageField DataImageUrlField="Picture" DataImageUrlFormatString="~/Images/Australian/{0}">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="StampId" DataNavigateUrlFormatString="~/Pages/Shopping/ShoppingCartItem.aspx?StampId={0}" Text="Add to cart" />
            </Columns>
        </asp:GridView>
    </p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [StampId], [Name ] AS Name_, [Price], [InStock], [LastUpdate], [Picture], [Series], [OnSpecial] FROM [TabularStamps] WHERE ([Series] = @Series)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Series" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

