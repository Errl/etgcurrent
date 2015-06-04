<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="Administration_AddCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="span11" style="padding-top:35px">
    <div id="contact" class="row">
        <h4>Create new Company</h4>
        <br />
        <div class="span4">
            <label>Name</label>
            <asp:TextBox ID="newName" CssClass="full" runat="server"></asp:TextBox>
        </div>
        <div class="span4">
            <label>Phone</label>
            <asp:TextBox ID="newPhone" CssClass="full" runat="server"></asp:TextBox>
        </div>
        <div class="span4">
            <label>Contact Email</label>
            <asp:TextBox ID="newContactEmail" CssClass="full" runat="server"></asp:TextBox>
        </div>
        <div class="span8">
            <label>Address</label>
            <asp:TextBox ID="newAddress" CssClass="full" TextMode="MultiLine" runat="server"></asp:TextBox>
        </div>


        <div class="span8">
            <label>Notes <span class="req"></span></label>
            <asp:TextBox ID="newDescription" runat="server" TextMode="MultiLine" CssClass="full"></asp:TextBox>

            <p id="btnsubmit">
                                        <asp:Button ID="createCompany" runat="server" Text="Create Company" CssClass="btn btn-large btn-primary" OnClick="createCompany_Click" />                                    

                                    </p>

        </div>


    </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

