<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="Lab_5.Announcements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Announcements Page</title>
    <script type="text/javascript" src="JS/jquery-2.1.1.min.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Announcements Page</h1>

    <asp:Label ID="uxNewAnnouncement" Text="Add new announcement" runat="server" />

    <asp:UpdatePanel ID="uxUpdatePanel" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
            <div id="AddNewAnnouncement">


                <asp:LoginView ID="LoginView" runat="server">
                    <%-- Message for non-registered users--%>
                    <AnonymousTemplate>
                        The user must login to post announcements.
                    </AnonymousTemplate>

                    <%-- Message for registered users--%>
                    <LoggedInTemplate>
                        <p>You are logged in as 
            <asp:LoginName ID="LoginName" runat="Server"></asp:LoginName>
                            </p>
                        <br />
                        <br />

                        <h2>New Announcement</h2>

                        <%--Title box--%>
                        <asp:Label AssociatedControlID="uxTitle" Text="Title" runat="server"></asp:Label>
                        <asp:TextBox ID="uxTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="uxRequiredFieldValidator" ControlToValidate="uxTitle" Text="*" ErrorMessage="Title Required!" runat="server"></asp:RequiredFieldValidator>
                        <br />

                        <%--Body box--%>
                        <asp:Label AssociatedControlID="uxBody" Text="Body" runat="server"></asp:Label>
                        <asp:TextBox TextMode="multiline" Rows="5" Width="512" ID="uxBody" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="uxBody" Text="*" ErrorMessage="Body Required!" runat="server"></asp:RequiredFieldValidator>

                        <!--Submit Button-->
                        <asp:Button runat="server" OnClick="Button_Click" ID="uxSubmit" Text="Post" />
                        <br />
                        <br />
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>
            <br />

            <!--SQL Database reference-->
            <asp:SqlDataSource ID="SQLDB" runat="server"
                ConnectionString="server=aura.students.cset.oit.edu;database=RobertoRicalday;user id=robertoricalday;password=robertoricalday;"
                SelectCommand="SELECT AnnouncementID, UserName, Title, Body FROM dbo.aspnet_Users JOIN Announcement ON dbo.aspnet_Users.UserID = Announcement.UserID;"></asp:SqlDataSource>

            <!--Repeater for announcements-->
            <asp:Repeater ID="uxRepeater" DataSourceID="SQLDB" runat="server">
                <ItemTemplate>
                    <%# Eval("UserName")%>
                    <br />
                    <asp:HyperLink Text='<%# Eval("Title")%>' ID="uxTitleLink" NavigateUrl='<%# "~/Announcement.aspx?ID=" + Eval("AnnouncementID") %>' runat="server" />
                    <br />
                    <%# Eval("Body") %>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#AddNewAnnouncement').hide();

            $('#<%= uxNewAnnouncement.ClientID %>').click(function () {
                $('#<%= uxNewAnnouncement.ClientID %>').hide();
                $('#AddNewAnnouncement').show('slow');
            });
        });
    </script>

    <!--Error Summary-->
<%--    <asp:ValidationSummary HeaderText="Required Field Summary:" DisplayMode="BulletList" EnableClientScript="true" runat="server" />--%>

</asp:Content>
