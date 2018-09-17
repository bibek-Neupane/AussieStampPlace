<%@ Page title="checkout "Language="C#" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<%@ Register Src="~/ShoppingCart.ascx" TagName="WroxShoppingCart" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%@ Import Namespace ="System.Data.SqlClient"%>
<%@ Import Namespace ="Wrox.Commerce"%>

    <asp:Label id="NoCartlabel" runat="server" visible="false">
There are no items in your cart. Visit the shop to buy items.
</asp:Label>
    
<div style="float:right">
  <asp:LoginView ID="LoginView1" Runat="server">
    <AnonymousTemplate>
      <asp:passwordrecovery id="PasswordRecovery1" runat="server" />
    </AnonymousTemplate>
  </asp:LoginView>
</div>

        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="4">
            <WizardSteps>
                <asp:WizardStep runat="server" Title="Login">
                    <asp:Login ID="Login1" runat="server">
                    </asp:Login>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Delivery Address">
                <asp:checkbox id="chkUseProfileAddress" runat="server" autopostback="True"
  text="Use membership address"
  OnCheckedChanged="chkUseProfileAddress_CheckedChanged"></asp:checkbox><br />
                
<table border="0">
  <tr><td>Name</td><td><asp:textbox id="txtName" runat="server" /></td></tr>
  <tr><td>Address</td><td><asp:textbox id="txtAddress" runat="server" /></td></tr>
  <tr><td>City</td><td><asp:textbox id="txtCity" runat="server" /></td></tr>
  <tr><td>County</td><td><asp:textbox id="txtCounty" runat="server" /></td></tr>
  <tr><td>Postcode</td><td><asp:textbox id="txtPostCode" runat="server" />
    </td></tr>
  <tr><td>Country</td><td><asp:textbox id="txtCountry" runat="server" /></td></tr>
</table>

                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Payment">
                <asp:DropDownList id="lstCardType" runat="server">
  <asp:ListItem>MasterCard</asp:ListItem>    
  <asp:ListItem>Visa</asp:ListItem>    
</asp:DropDownList>
<br />
Card Number: <asp:Textbox id="txtNumber" runat="server"
  Text="0123456789" ReadOnly="True"/>
<br />
Expires:
<asp:textbox id="txtExpiresMonth" runat="server" columns="2" />
/
<asp:textbox id="txtExpiresYear" runat="server"  columns="4" />

                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Confirmation">
                Please confirm the amount you wish to have 
deducted from your credit card.
                   

                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Complete">
                Thank you for your order.
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
