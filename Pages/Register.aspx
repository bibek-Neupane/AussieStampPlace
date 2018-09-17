<%@ Page Title="register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: 18px;
        }
        .auto-style3 {
            text-align: center;
            font-size: 18pt;
        }
        .auto-style4 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        <strong>Welcome to Aussie Stamp Place!</strong></p>
    <p class="auto-style2">
        <strong>We welcome your registration. Please fill out the form below to register.</strong></p>
    <p class="auto-style4">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="791px">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </p>
</asp:Content>

