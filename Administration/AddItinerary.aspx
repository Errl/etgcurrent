<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="AddItinerary.aspx.cs" Inherits="Administration_AddItinerary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="span9" style="padding-top: 35px">
                        <div id="Div1" class="row">
                            <h4>Create new Itinerary</h4>
                            <br />


                            <div class="span2">
                                <label>Outbound Date</label>
                                <asp:TextBox ID="newOutboundDate" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span2">
                                <label>Return Date</label>
                                <asp:TextBox ID="newReturnDate" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span2">
                                <label>Price</label>
                                <asp:TextBox ID="newPrice" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span2">
                                <label>Airline Taxes</label>
                                <asp:TextBox ID="newAirlineTaxes" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span2">
                                <label>Pax Card Taxes</label>
                                <asp:TextBox ID="newPaxCardTaxes" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                             <div class="span2">
                                <label>Airline</label>
                                <asp:TextBox ID="newAirline" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                             <div class="span2">
                                <label>Confirmation #</label>
                                <asp:TextBox ID="newConfirmation" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span6">
                                <label>notes</label>
                                <asp:TextBox ID="newNotes" CssClass="full" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                            <div class="span8">
                                <label>Itinerary</label>
                                <asp:TextBox ID="newItinerary" CssClass="full" TextMode="MultiLine" Height="150px" runat="server"></asp:TextBox>

                            </div>
                            <asp:Button ID="Button1" CssClass="btn btn-extra-large btn-primary" runat="server" Text="Add Itinerary" OnClick="Button1_Click" />
                        </div>
                    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

