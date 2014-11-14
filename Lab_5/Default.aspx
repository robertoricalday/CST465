<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="_Default" Codebehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <h1>Edit Your Profile</h1>

    <!--Name-->
    <asp:Label AssociatedControlID="uxName" Text="Name:" runat="server"></asp:Label>
    <asp:TextBox ID="uxName" runat="server" />
    <asp:RequiredFieldValidator ID="uxRequiredFieldValidator0" ControlToValidate="uxName" Text="*" ErrorMessage="Name Required!" runat="server"></asp:RequiredFieldValidator>
    <br />
    <br />

    <!--Email Address-->
    <asp:Label AssociatedControlID="uxEmailAddress" Text="Email Address:" runat="server"></asp:Label>
    <asp:TextBox ID="uxEmailAddress" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="uxEmailAddress" Text="*" ErrorMessage="Email Address Required!" runat="server"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ControlToValidate="uxEmailAddress" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ErrorMessage="Please enter a valid Email Address!" runat="server" />
    <br />
    <br />

    <!--User Type-->
    <asp:Label AssociatedControlID="uxUserType" Text="User Type:" runat="server"></asp:Label>
    <asp:DropDownList ID="uxUserType" AutoPostBack="true" runat="server" Width="200px">
        <asp:ListItem Text="Select User Type" Value="0"></asp:ListItem>
        <asp:ListItem Text="Student" Value="1"></asp:ListItem>
        <asp:ListItem Text="Faculty/Staff" Value="2"></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="0" ControlToValidate="uxUserType" Text="*" ErrorMessage="User Type Required!" runat="Server"></asp:RequiredFieldValidator>
    <br />
    <br />

    <!--Hobby-->
    <asp:Label AssociatedControlID="uxHobby" Text="Hobby:" runat="server"> </asp:Label>
    <asp:TextBox ID="uxHobby" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="uxHobby" Text="*" ErrorMessage="Hobby Required!" runat="server"></asp:RequiredFieldValidator>

    <!--Band-->
    <asp:Label AssociatedControlID="uxBand" Text="Band:" runat="server"> </asp:Label>
    <asp:TextBox ID="uxBand" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="uxBand" Text="*" ErrorMessage="Band Required!" runat="server"></asp:RequiredFieldValidator>
    <br />
    <br />

    <!--Biography-->
    <asp:Label AssociatedControlID="uxBiography" Text="Biography:" runat="server"> </asp:Label>
    <asp:TextBox ID="uxBiography" TextMode="multiline" Rows="5" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="uxBiography" Text="*" ErrorMessage="Biography Required!" runat="server"></asp:RequiredFieldValidator>
    <br />
    <br />

    <!--Class Table-->
    <table>
        <thead>
            <tr>
                <th>Course Prefix</th>
                <th>Course Number</th>
                <th>Course description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <asp:Label AssociatedControlID="uxCoursePrefix" runat="server"> </asp:Label>
                    <asp:TextBox ID="uxCoursePrefix" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="uxCoursePrefix" Text="*" ErrorMessage="Course Prefix Required!" runat="server"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label AssociatedControlID="uxCourseNumber" runat="server"> </asp:Label>
                    <asp:TextBox ID="uxCourseNumber" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="uxCourseNumber" Text="*" ErrorMessage="Course Number Required!" runat="server"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label AssociatedControlID="uxCourseDescription" runat="server"> </asp:Label>
                    <asp:TextBox ID="uxCourseDescription" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="uxCourseDescription" Text="*" ErrorMessage="Course Description Required!" runat="server"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <br />

    <!--Hidden Field-->
    <input type="hidden" name="Nickname" id="uxNickname" value="Boss" />
    <br />
    <br />

    <!--Submit Button-->
    <asp:Button runat="server" OnClick="Button_Click" ID="uxSubmit" Text="Save" />

    <asp:ValidationSummary HeaderText="Required Field Summary:" DisplayMode="BulletList" EnableClientScript="true" runat="server" />

    <asp:Literal ID="uxIsPostBack" runat="server"> </asp:Literal>
    <asp:Literal ID="uxFormOutput" runat="server"> </asp:Literal>
    <asp:Literal ID="uxEvenOutput" runat="server"> </asp:Literal>

</asp:Content>
