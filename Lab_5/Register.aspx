﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lab_5.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CreateUserWizard MembershipProvider="SqlMembership" ContinueDestinationPageUrl="Login.aspx" runat="server"></asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>
