<%@ Page Title="Admin" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Pages_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <h1>Administration</h1></p>
    <p>
        <h2>Welcome
        <asp:LoginName ID="LoginName2" runat="server" />
            . You have administrative privileges.</h2></p>
</asp:Content>

