<%@ Page Title="Recover Password" Language="C#" MasterPageFile="~/Membership/Members.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:PasswordRecovery ID="RecoverPwd" runat="server">
        <MailDefinition BodyFileName="~/EmailTemplates/PasswordRecovery.txt" Subject="Your password has been reset">
        </MailDefinition>
</asp:PasswordRecovery>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

