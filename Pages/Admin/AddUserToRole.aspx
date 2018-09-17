<%@ Page Title="ADD" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddUserToRole.aspx.cs" Inherits="Pages_Admin_AddUserToRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: small;
        }
        .auto-style3 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
    Add User To Role</p>
    <p class="auto-style2">
        Select a user</p>
    <p class="auto-style1">
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-AussieStampPlace-20171012160730ConnectionString %>" SelectCommand="SELECT [UserName] FROM [Users]"></asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        Select a role</p>
    <p class="auto-style3">
        <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource2" DataTextField="RoleName" DataValueField="RoleName"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-AussieStampPlace-20171012160730ConnectionString %>" SelectCommand="SELECT [RoleName] FROM [Roles]"></asp:SqlDataSource>
    </p>
    <p class="auto-style2">
&nbsp;&nbsp;&nbsp; Click Button to add user to role</p>
    <p class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add role to user" />
    </p>
    <p class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    
    <p class="auto-style1">
        &nbsp;</p>
</asp:Content>

