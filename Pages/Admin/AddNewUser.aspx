<%@ Page Title="AddUser" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewUser.aspx.cs" Inherits="Pages_Admin_AddNewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <h1>Add new user</h1>
<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="380px" Width="779px">
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>
<p class="auto-style1">&nbsp;</p>

</asp:Content>

