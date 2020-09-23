<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectExcercise.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td><h2>Welcome to the Home Page</h2>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIN.aspx">SignIn</asp:HyperLink>
                </p></td>
        </tr>
    </table>
</asp:Content>
