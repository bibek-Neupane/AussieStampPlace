<%@ Page Title="ChangePassword" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: 18pt;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <strong>Change your password</strong></p>
    <div>
        <asp:ChangePassword ID="ChangePassword1" runat="server" Height="181px" Width="809px">
        </asp:ChangePassword>
    </div>
    <p class="auto-style2">
        &nbsp;</p>
</asp:Content>

