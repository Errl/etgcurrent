<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="submitreview.aspx.cs" Inherits="submitreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="span9">
                    <div class="contact_form_holder" style="color:black">
                        <div class="row">
                            <div class="span2" style="text-align: right">
                                <asp:Label ID="Label1" runat="server" Text="Title:">Title:<span class="req">*  </span><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" BorderStyle="None" ControlToValidate="newTitle" ErrorMessage="Please enter a Title" ForeColor="Red" Display="Dynamic" CssClass="validation" >*</asp:RequiredFieldValidator></asp:Label>
                            </div>
                            <div class="span5">
                                <asp:TextBox ID="newTitle" CssClass="full" runat="server" Columns="10"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="span2" style="text-align: right">
                            </div>

                            <div class="span3" style="padding-top: 20px">
                                <img src="images/five-stars.png" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="span2" style="text-align: right">
                                <asp:Label ID="Label2" runat="server" Text="Label">Rating:<span class="req">*  </span></asp:Label>
                            </div>
                            <div class="span3">
                                <asp:RadioButtonList ID="newRating" runat="server" RepeatDirection="Horizontal" CellSpacing="18" CellPadding="15" Width="235px">
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                    <asp:ListItem Value="3"></asp:ListItem>
                                    <asp:ListItem Value="4"></asp:ListItem>
                                    <asp:ListItem Selected="True" Value="5"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="row" style="padding-top: 25px">
                            <div class="span2" style="text-align: right">
                                <asp:Label ID="Label3" runat="server" Text="Label">Review:<span class="req">*  </span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderStyle="None" ControlToValidate="newReview" ErrorMessage="Please enter your review" ForeColor="Red" Display="Dynamic" CssClass="validation" >*</asp:RequiredFieldValidator></asp:Label>

                            </div>
                            <div class="span5">
                                <asp:TextBox ID="newReview" runat="server" CssClass="full" TextMode="MultiLine" Columns="10" Rows="6"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row" style="padding-top: 20px">
                            <div class="span2" style="text-align: right">
                                <asp:Label ID="Label4" runat="server" Text="Label">Name:<span class="req">*  </span><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderStyle="None" ControlToValidate="newName" ErrorMessage="Please enter your name" ForeColor="Red" Display="Dynamic" CssClass="validation" >*</asp:RequiredFieldValidator></asp:Label>

                            </div>
                            <div class="span2">
                                <asp:TextBox ID="newName" runat="server" CssClass="full"></asp:TextBox>
                            </div>
                            <div class="span1" style="text-align: right">
                                <asp:Label ID="Label6" runat="server" Text="Label">Company:<span class="req">*  </span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderStyle="None" ControlToValidate="newCompany" ErrorMessage="Please enter a company" ForeColor="Red" Display="Dynamic" CssClass="validation" >*</asp:RequiredFieldValidator></asp:Label>

                            </div>
                            <div class="span2">
                                <asp:TextBox ID="newCompany" runat="server" CssClass="full"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="span2" style="text-align: right">
                                <asp:Label ID="Label5" runat="server" Text="Label">Email:<span class="req">*  </span><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BorderStyle="None" ControlToValidate="newEmail" ErrorMessage="Please enter a valid email" ForeColor="Red" Display="Dynamic" CssClass="validation" >*</asp:RequiredFieldValidator></asp:Label>

                            </div>
                            <div class="span2">
                                <asp:TextBox ID="newEmail" runat="server" CssClass="full"></asp:TextBox> (Email will not be published and will remain private)
                            </div>
                            <div class="span2">
                               
                            </div>
                        </div>
                        <div class="row" style="padding-top:15px;">
                            <div class="span7">
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" ImageUrl="~/images/btnsubmit.png" OnClick="ImageButton2_Click" />
                            </div>
                        </div>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </div>
                </div>
                <div id="sidebar" class="span3">
                    
                 </div>
            </div>
        </div>
    </div>
</asp:Content>

