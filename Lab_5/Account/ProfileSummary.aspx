<%@ Page Title="View Your Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="ProfileSummary" Codebehind="ProfileSummary.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Prifile View</h1>
    <span class="fieldTitle">Name: </span><asp:Literal ID="uxName" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">Email Address: </span><asp:Literal ID="uxEmailAddress" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">User Type: </span><asp:Literal ID="uxUserType" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">Hobby: </span><asp:Literal ID="uxHobby" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">Band: </span><asp:Literal ID="uxBand" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">Biography: </span><asp:Literal ID="uxBiography" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">Course Prefix: </span><asp:Literal ID="uxCoursePrefix" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">Course Number: </span><asp:Literal ID="uxCourseNumber" runat="server"></asp:Literal>
    <br /><br />
    <span class="fieldTitle">course Description: </span><asp:Literal ID="uxCourseDescription" runat="server"></asp:Literal>
    <br /><br />
</asp:Content>

