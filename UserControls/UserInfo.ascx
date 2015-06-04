<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfo.ascx.cs" Inherits="UserControls_UserInfo" %>


<asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" ImageUrl="~/images/login.png"></asp:HyperLink>
    </AnonymousTemplate>
    <LoggedInTemplate>
        Welcome back
                            <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <asp:HyperLink ID="lnkUpdateSettings" runat="server"
            NavigateUrl="~/Membership/AdditionalUserInfo.aspx">
               My Profile</asp:HyperLink>
    </LoggedInTemplate>
    <RoleGroups>
        <asp:RoleGroup Roles="Administrators">
            <ContentTemplate>
                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Administration/AdminManageUsers.aspx" runat="server">Administration</asp:HyperLink>
                |
                <asp:HyperLink ID="lnkUpdateSettings" runat="server"
                    NavigateUrl="~/Membership/AdditionalUserInfo.aspx">
               My Profile</asp:HyperLink>
            </ContentTemplate>
        </asp:RoleGroup>
        <asp:RoleGroup Roles="Supervisors">
            <ContentTemplate>
                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Company/AdminUsersInCompany.aspx" runat="server">Administration</asp:HyperLink>
                |
                <asp:HyperLink ID="lnkUpdateSettings" runat="server"
                    NavigateUrl="~/Membership/AdditionalUserInfo.aspx">
               My Profile</asp:HyperLink>
            </ContentTemplate>
        </asp:RoleGroup>
    </RoleGroups>
</asp:LoginView>
<br />
<asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Logout.aspx" LoginText="" />

<br />
