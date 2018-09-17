﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageCatalogue.aspx.cs" Inherits="Pages_Admin_ManageCatalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        <strong>Manage Content</strong></p>
    <p class="auto-style2">
        <strong>Select Category</strong></p>
    <p class="auto-style2">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Series" DataValueField="Series" OnDataBound="DropDownList2_DataBound">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [StampId], [Name ] AS Name_, [Price], [InStock], [LastUpdate], [Picture], [Series], [OnSpecial] FROM [TabularStamps]"></asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        <strong>Existing catalogue items:</strong></p>
    <p class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AllowEditing="true" AllowDeleting="true" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StampId" DataSourceID="SqlDataSource1"  ForeColor="#333333" GridLines="None"  Width="817px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                 
                <asp:BoundField DataField="Name_" HeaderText="Name_" SortExpression="Name_" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
                <asp:BoundField DataField="LastUpdate" HeaderText="LastUpdate" SortExpression="LastUpdate" />
                <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                <asp:BoundField DataField="OnSpecial" HeaderText="OnSpecial" SortExpression="OnSpecial" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [StampId], [Name ] AS Name_, [Price], [InStock], [LastUpdate], [Picture], [Series], [OnSpecial] FROM [TabularStamps] WHERE ([Series] = @Series)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Series" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        <strong>Add a new stamp to the category:</strong></p>
    <p class="auto-style2">
        <asp:DetailsView ID="DetailsView1" runat="server"  AllowEditing="true" AutoGenerateRows="False" DataKeyNames="StampId" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="120px" Width="419px" AutoGenerateInsertButton="True" >
            <Fields>
                <asp:BoundField DataField="StampId" HeaderText="StampId" InsertVisible="False" ReadOnly="True" SortExpression="StampId" />
                <asp:BoundField DataField="Name " HeaderText="Name " SortExpression="Name " />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
                <asp:BoundField DataField="LastUpdate" HeaderText="LastUpdate" SortExpression="LastUpdate" />
                <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                <asp:BoundField DataField="OnSpecial" HeaderText="OnSpecial" SortExpression="OnSpecial" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TabularStamps] WHERE ([StampId] = @StampId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="StampId" QueryStringField="StampId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
</asp:Content>

