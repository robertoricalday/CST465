<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="Lab_5.Announcements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Announcements Page</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Announcements Page</h1>

    <asp:LoginView ID="LoginView" runat="server">
        <%-- Message for non-registered users--%>
        <AnonymousTemplate>
            The user must login to post announcements.
            <br />
        </AnonymousTemplate>

        <%-- Message for registered users--%>
        <LoggedInTemplate>
            You are logged in as 
            <asp:LoginName ID="LoginName" runat="Server"></asp:LoginName>
            <br /><br />

            <h2> New Announcement</h2>

            <%--Title box--%>
            <asp:Label AssociatedControlID="uxTitle" Text="Title" runat="server"></asp:Label>
            <asp:TextBox ID="uxTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="uxRequiredFieldValidator" ControlToValidate="uxTitle" Text="*" ErrorMessage="Title Required!" runat="server"></asp:RequiredFieldValidator>
            <br />

            <%--Body box--%>
            <asp:Label AssociatedControlID="uxBody" Text="Body" runat="server"></asp:Label>
            <asp:TextBox textmode="multiline" rows="5" width="512" ID="uxBody" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="uxBody" Text="*" ErrorMessage="Body Required!" runat="server"></asp:RequiredFieldValidator>

            <!--Submit Button-->
            <asp:Button runat="server" OnClick="Button_Click" ID="uxSubmit" Text="Post" />
            <br /><br />
        </LoggedInTemplate>
    </asp:LoginView>
    <br />

    <!--SQL Database reference-->
    <asp:SqlDataSource ID="SQLDB" runat="server"
        ConnectionString="server=aura.students.cset.oit.edu;database=RobertoRicalday;user id=robertoricalday;password=robertoricalday;"
        SelectCommand="SELECT AnnouncementID, UserName, Title, Body FROM dbo.aspnet_Users JOIN Announcement ON dbo.aspnet_Users.UserID = Announcement.UserID;">
    </asp:SqlDataSource>

    <!--Repeater for announcements-->
    <asp:Repeater ID="uxRepeater" DataSourceID="SQLDB" runat="server">
        <ItemTemplate>
            <%# Eval("UserName")%>
            <br />
            <asp:HyperLink Text='<%# Eval("Title")%>' ID="uxTitleLink" NavigateUrl='<%# "~/Announcement.aspx?ID=" + Eval("AnnouncementID") %>' runat="server" />
            <br />
            <%# Eval("Body") %>
            <br /><br />
        </ItemTemplate>
    </asp:Repeater>

    <!--Error Summary-->
    <asp:ValidationSummary HeaderText="Required Field Summary:" DisplayMode="BulletList" EnableClientScript="true" runat="server" />

</asp:Content>
