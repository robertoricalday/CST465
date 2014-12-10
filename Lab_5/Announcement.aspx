<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="Lab_5.Announcement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Single Announcement</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Single Announcement</h1>

    <!--SQL Database reference-->
    <asp:SqlDataSource ID="AnnouncementDS" ConnectionString="server=aura.students.cset.oit.edu;database=RobertoRicalday;user id=robertoricalday;password=robertoricalday;" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="CommentDS" ConnectionString="server=aura.students.cset.oit.edu;database=RobertoRicalday;user id=robertoricalday;password=robertoricalday;" runat="server"></asp:SqlDataSource>

    <asp:FormView ID="AnnouncementFormView" runat="server">
        <ItemTemplate>
            Title: <%# Eval("Title") %>
            <br />
            Body: <%# Eval("Body") %>
            <br />
            <br />
        </ItemTemplate>
    </asp:FormView>

    <asp:LoginView ID="uxCommentLoginView" runat="server">
        <%-- Message for non-registered users--%>
        <AnonymousTemplate>
            The user must login to post comments.
        </AnonymousTemplate>

        <LoggedInTemplate>
            <%--Comment box--%>
            <asp:Label AssociatedControlID="uxComment" Text="Comment" runat="server"></asp:Label>
            <asp:TextBox ID="uxComment" TextMode="MultiLine" runat="server"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="uxRequiredFieldValidator" ControlToValidate="uxComment" Text="*" ErrorMessage="Comment Required!" runat="server"></asp:RequiredFieldValidator>--%>
            <br />

            <!--Submit Button-->
            <asp:Button Text="Submit Comment" OnClick="Button_Click" runat="server" />
            <br />
            <br />
        </LoggedInTemplate>
    </asp:LoginView>

    <asp:GridView ID="CommentGridView" runat="server"></asp:GridView>
    <br />
    <br />

    <!--Back Button-->
    <asp:Button Text="Back" OnClick="Button_Click2" runat="server" />
    <br />
    <br />

    <!--Error Summary-->
    <asp:ValidationSummary HeaderText="Required Field Summary:" DisplayMode="BulletList" EnableClientScript="true" runat="server" />
</asp:Content>
