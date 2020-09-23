<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ProjectExcercise.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server">Payment</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnPay" runat="server" OnClick="btnPay_Click" Text="Pay" />
    <br />
    <br />
    <br />
    <asp:Label ID="lblPay" runat="server"></asp:Label>
&nbsp;
</asp:Content>
