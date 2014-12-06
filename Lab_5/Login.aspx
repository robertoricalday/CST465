<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lab_5.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login Page</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login Page</h1>
    <asp:Login MembershipProvider="SqlMembership" CreateUserText="register" CreateUserUrl="~/Register.aspx" runat="server"></asp:Login>
</asp:Content>
