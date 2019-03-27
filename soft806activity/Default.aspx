<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="soft806activity.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <main>
        <asp:LoginName ID="UserName" runat="server" Font-Bold="true"></asp:LoginName>
        <asp:LoginStatus ID="LoginStatus" runat="server" CssClass="" />
    </main>
</asp:Content>
