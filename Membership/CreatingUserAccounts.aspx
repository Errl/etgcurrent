<%@ Page Title="" Language="C#" MasterPageFile="~/Membership/Members.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="CreatingUserAccounts.aspx.cs" Inherits="Membership_CreatingUserAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <h2>Create a New User Account</h2>
    <p>
        <asp:CreateUserWizard ID="RegisterUser" runat="server" 
            CancelDestinationPageUrl="~/Default.aspx" 
            ContinueDestinationPageUrl="~/Default.aspx" DisplayCancelButton="True"
            oncreatinguser="RegisterUser_CreatingUser" LoginCreatedUser="False" OnActiveStepChanged="RegisterUser_ActiveStepChanged">
            <MailDefinition BodyFileName="~/EmailTemplates/AccountInfo.htm" From="Sales@elitetravelguru.com" IsBodyHtml="True" Subject="View your itinerary online!">
            </MailDefinition>
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
                <asp:WizardStep ID="UserSettings" runat="server" StepType="Step" Title="Settings">
                    <div class="span9">
                        <div id="contact" class="row">
                            <h4>Enter passenger info</h4>
                            <br />
                            <div class="span2">
                                <label>Last Name</label>
                                <asp:TextBox ID="newLastName" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span2">
                                <label>First Name</label>
                                <asp:TextBox ID="newFirstName" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span2">
                                <label>Birth Date</label>
                                <asp:TextBox ID="newBirthDay" CssClass="full" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="newBirthDay" runat="server" ></ajaxToolkit:CalendarExtender>
                            </div>
                            <div class="span3">
                                <label>Email</label>
                                <asp:TextBox ID="newContactEmail" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span3">
                                <label>Address</label>
                                <asp:TextBox ID="newAddress" CssClass="full" TextMode="MultiLine" runat="server" Rows="4"></asp:TextBox>
                            </div>
                            <div class="span3">
                                <label>Phone #</label>
                                <asp:TextBox ID="newPhone" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span3">
                                <label>Phone2 #</label>
                                <asp:TextBox ID="newPhone2" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span3">
                                <label>Passenger 2</label>
                                <asp:TextBox ID="newPassenger2" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span3">
                                <label>Passenger 3</label>
                                <asp:TextBox ID="newPassenger3" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span3">
                                <label>Credit Card</label>
                                <asp:TextBox ID="newCreditCard" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span2">
                                <label>Expiration</label>
                                <asp:TextBox ID="newExpiration" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span1">
                                <label>SEC</label>
                                <asp:TextBox ID="newSec" CssClass="full" runat="server"></asp:TextBox>
                            </div>
                            <div class="span1">
                                <label>Agent</label>
                                <asp:TextBox ID="newAgent" CssClass="full" runat="server"></asp:TextBox>
                            </div>

                            <div class="span2">
                                <label>Company ID</label>
                                <asp:DropDownList ID="newCompanyId" runat="server" DataSourceID="CompanyDataSource" DataTextField="Name" DataValueField="CompanyID"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="CompanyDataSource" ConnectionString='<%$ ConnectionStrings:LeadsConnectionString %>' SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
                                
                            </div>
                            <div class="span4">
                                <label>Notes <span class="req"></span></label>
                                <asp:TextBox ID="newDescription" runat="server" TextMode="MultiLine" CssClass="full" Rows="3"></asp:TextBox>


                            </div>


                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="Itinerary" runat="server" StepType="Step" Title="Itinerary">
                    <div class="span9" style="padding-top: 35px">
                        <div id="Div1" class="row">
                            <h4>Create new Itinerary</h4>
                            <br />


                            <div class="span2">
                                <label>Outbound Date</label>
                                <asp:TextBox ID="newOutboundDate" CssClass="full" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" TargetControlID="newOutboundDate" runat="server"></ajaxToolkit:CalendarExtender>
                            </div>
                            <div class="span2">
                                <label>Return Date</label>
                                <asp:TextBox ID="newReturnDate" CssClass="full" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender3" TargetControlID="newReturnDate" runat="server"></ajaxToolkit:CalendarExtender>
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
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </p>
    <p>
        <asp:Label runat="server" id="InvalidUserNameOrPasswordMessage" Visible="false" EnableViewState="false" ForeColor="Red"></asp:Label>
    </p>
    
   
    <p>
        <asp:Label ID="CreateAccountResults" runat="server"></asp:Label>
    </p>  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

