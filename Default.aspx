<%@ Page Title="Default" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>Welcome to Aussie Stamp Place!</h1>
    
    <p>
        <asp:Image ID="Image2" imageurl="~/kangaroos.jpg" runat="server" />
    </p>
    <p>
        <strong>Aussie Stamp Place</strong> specialises in online sales of all the Australian Stamps.
    </p>
    <p>
        We don't run a show room, we are able to keep are prices down. All stamps are in good condition.
    </p>
    <p>
        Our online showroom is divided into numerous parts- our demonstration site only shows
    </p>
    <p>
        3 series of early Australian Stamps. We think you'll like our full range.
    </p>
    <p>
        If you have any questions, please dont hesitate to contact us on:
    </p>
    <p>
        Aussie Stamps Place Online Showroom<br />
        123 Fake Street<br />
        Fake City, Qld, 1234<br />
        Ph: 0712345678<br />
    </p>

    <p>
        <a href="Default.aspx">Top</a>
        </p>
</asp:Content>

