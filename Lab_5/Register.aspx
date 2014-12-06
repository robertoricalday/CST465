<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lab_5.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register Page</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Register Page</h1>
    <asp:CreateUserWizard MembershipProvider="SqlMembership" ContinueDestinationPageUrl="Login.aspx" runat="server"></asp:CreateUserWizard>
</asp:Content>

