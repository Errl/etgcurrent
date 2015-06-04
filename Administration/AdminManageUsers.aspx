<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="AdminManageUsers.aspx.cs" Inherits="Administration_AdminManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Repeater ID="FilteringUI" runat="server" OnItemCommand="FilteringUI_ItemCommand">
        <ItemTemplate>
            <asp:LinkButton runat="server" ID="lnkFilter"
                Text='<%# Container.DataItem %>'
                CommandName='<%# Container.DataItem %>'></asp:LinkButton>
        </ItemTemplate>
        <SeparatorTemplate>|</SeparatorTemplate>
    </asp:Repeater>
    <asp:GridView ID="UserAccounts" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Email" DataNavigateUrlFormatString="AdminUsers.aspx?Email={0}" Text="Manage" />
            
            <asp:BoundField DataField="Email" HeaderText="Email" />
             <asp:BoundField DataField="UserName" HeaderText="UserName" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" />
        </Columns>
</asp:GridView>

    <p>
 <asp:LinkButton ID="lnkFirst" runat="server" OnClick="lnkFirst_Click"> First</asp:LinkButton> |
 <asp:LinkButton ID="lnkPrev" runat="server" OnClick="lnkPrev_Click">  Prev</asp:LinkButton>|
 <asp:LinkButton ID="lnkNext" runat="server">Next  </asp:LinkButton>|
 <asp:LinkButton ID="lnkLast" runat="server">Last  </asp:LinkButton>
</p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

