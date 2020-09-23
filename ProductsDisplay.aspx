<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductsDisplay.aspx.cs" Inherits="ProjectExcercise.ProductsDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PId" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="235px"  Width="875px">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
        <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
        <asp:BoundField DataField="PPrice" HeaderText="PPrice" SortExpression="PPrice" />
        <asp:BoundField DataField="PType" HeaderText="PType" SortExpression="PType" />
        <asp:ImageField DataImageUrlField="PId" HeaderText="Pictures" NullImageUrl="~/Images/dominos.jpg">
        </asp:ImageField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTDBConnectionString3 %>" SelectCommand="SELECT * FROM [ProductList]"></asp:SqlDataSource>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Payment.aspx">Payment</asp:HyperLink>
    <br />
</asp:Content>
