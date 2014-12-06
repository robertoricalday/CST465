<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Lab5.Admin.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Users</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage Users</h1>

    <fieldset>
        <legend>Add Roles</legend>

        <asp:Label AssociatedControlID="uxRoleName" Text="Role Name" runat="server" />
        <asp:TextBox ID="uxRoleName" runat="server" />

        <!--Make that the field is not empty!-->
        <asp:RequiredFieldValidator ID="uxRequiredFieldValidator0" ControlToValidate="uxRoleName" Text="*" ErrorMessage="Role Name Required!" runat="server"></asp:RequiredFieldValidator>
        <br />

        <asp:Button ID="uxCreateRole" OnClick="Create_Role_Click" Text="Create Role" runat="server" />
    </fieldset>

    <fieldset>
        <legend>Role Membership</legend>

        <!--Drop-down for users-->
        <asp:Label AssociatedControlID="uxUsers" Text="Users" runat="server" />
        <asp:DropDownList ID="uxUsers" runat="server" />
        <br />

        <!--Drop-down for roles-->
        <asp:Label AssociatedControlID="uxRoles" Text="Roles" runat="server" />
        <asp:DropDownList ID="uxRoles" runat="server" />
        <br />

        <asp:Button ID="uxAddToGroup" OnClick="Add_To_Group_Click" Text="Add User to Role" runat="server" />
    </fieldset>

    <!--Error summary-->
    <asp:ValidationSummary HeaderText="Required Field Summary:" DisplayMode="BulletList" EnableClientScript="true" runat="server" />
</asp:Content>
