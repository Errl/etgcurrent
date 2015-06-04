<%@ Page Title="" Language="C#" MasterPageFile="~/Company/Company.master" AutoEventWireup="true" CodeFile="AdminUsersInCompany.aspx.cs" Inherits="Company_AdminUsersInCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="UsersInCompanyDataSource" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
        <Columns>
          
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Phone2" HeaderText="Phone2" SortExpression="Phone2" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
     
            <asp:CommandField SelectText="Itineraries" ShowSelectButton="True" />
     
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="UsersInCompanyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT * FROM [UserProfiles] WHERE ([CompanyID] = @CompanyID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CompanyID" QueryStringField="CompanyID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

