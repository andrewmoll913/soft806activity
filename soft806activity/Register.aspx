<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="soft806activity.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <main>
        <asp:Label ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName">First Name</asp:Label>
        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName" ErrorMessage="First name is required." ToolTip="First name is required.">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName">Last Name</asp:Label>
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName" ErrorMessage="Last name is required." ToolTip="Last name is required.">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required.">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required.">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="PassworCompare" runat="server" ErrorMessage="Passwords must be the same" ControlToCompare="ConfirmPassword" ControlToValidate="Password"></asp:CompareValidator><br />
        <asp:Literal ID="ControlText" runat="server" EnableViewState="False"></asp:Literal><br />
        <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
    </main>
</asp:Content>
