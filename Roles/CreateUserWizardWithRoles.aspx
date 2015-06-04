<%@ Page Title="Administrater" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="CreateUserWizardWithRoles.aspx.cs" Inherits="Roles_CreateUserWizardWithRoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:CreateUserWizard ID="RegisterUserWithRoles" runat="server" 
     ContinueDestinationPageUrl="~/Default.aspx" LoginCreatedUser="False" OnActiveStepChanged="RegisterUserWithRoles_ActiveStepChanged"> 

     <WizardSteps> 
          <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server"> 
          </asp:CreateUserWizardStep> 
          <asp:WizardStep ID="SpecifyRolesStep" runat="server" StepType="Step" 

               Title="Specify Roles" AllowReturn="False">
              <asp:CheckBoxList ID="RoleList" runat="server"></asp:CheckBoxList>
          </asp:WizardStep> 
          <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server"> 
          </asp:CompleteWizardStep> 
     </WizardSteps> 

</asp:CreateUserWizard>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

