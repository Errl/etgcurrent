<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="AdminByCompany.aspx.cs" Inherits="Administration_AdminByCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyID" DataSourceID="AllCompaniesDataSource" CellPadding="8" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" InsertVisible="False" ReadOnly="True" SortExpression="CompanyID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="ContactEmail" HeaderText="ContactEmail" SortExpression="ContactEmail" />
            <asp:HyperLinkField DataNavigateUrlFields="CompanyID" DataNavigateUrlFormatString="~/Company/AdminUsersInCompany.aspx?CompanyID={0}" Text="Users" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="AllCompaniesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT * FROM [Company]">
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

