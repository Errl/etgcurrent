<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="RoleBasedAuthorization.aspx.cs" Inherits="Roles_RoleBasedAuthorization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <span style="color: rgb(0, 0, 0); font-family: Consolas, monospace; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18.203125px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: pre; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(243, 243, 243); display: inline !important; float: none;">&nbsp;You are not logged into the system. Therefore you cannot edit or delete any user &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;information.</span>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <span style="color: rgb(0, 0, 0); font-family: Consolas, monospace; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18.203125px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: pre; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(243, 243, 243); display: inline !important; float: none;">You are not a member of the Supervisors or Administrators roles. Therefore you &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cannot edit or delete any user information.</span>
        </LoggedInTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="Administrators">
            </asp:RoleGroup>
            <asp:RoleGroup Roles="Supervisors">
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>
    <asp:GridView ID="UserGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName"
        onrowcancelingedit="UserGrid_RowCancelingEdit" onrowediting="UserGrid_RowEditing" 
        onrowupdating="UserGrid_RowUpdating" onrowdeleting="UserGrid_RowDeleting" OnRowCreated="UserGrid_RowCreated">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" />
            <asp:BoundField DataField="LastLoginDate" DataFormatString="{0:d}" 
                HeaderText="Last Login" HtmlEncode="False" ReadOnly="True" />
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("Email") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="Email" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Email" Display="Dynamic" 
                        ErrorMessage="You must provide an email address." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="Email" Display="Dynamic" 
                        ErrorMessage="The email address you have entered is not valid. Please fix this and try again." 
                        SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Comment">
                <ItemTemplate>
                    <asp:Label runat="server" ID="Label2" Text='<%# Eval("Comment") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="Comment" TextMode="MultiLine" Columns="40" Rows="4" Text='<%# Bind("Comment") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

