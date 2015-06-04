<%@ Page Title="Quote International business first class flights"
    MetaDescription="free quote on your next business class  first class flights. 70% off most international flights"    
     MetaKeywords="corporate travel management, group travel discounts, corporate trips, corporate incentive trips, Book FLights with Airline Miles, Use airline miles, use credit card points to book flights. 
   "  Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Quote.aspx.cs" Inherits="Quote" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <!-- subheader begin -->
        <div id="subheader">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <h1>Quote | 
Request a quote via email, or call us at <img src="https://service.ringcentral.com/picture/dot.gif" width="1" height="1" alt="call us at (888) 908 6983"/><a href="https://service.ringcentral.com/ringme/ringme.asp?uc=03D18628CDE98A9DD359F1BDA438ADFC1884533817016,0,106&s=no&v=2&s_=1210" target="_blank">(888) 908 6983</a></h1>
                        <ul class="crumb">
                            <li><a href="default.aspx">Home</a></li>
                            <li class="sep">/</li>
                            <li>Quote</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- subheader close -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     
        <!-- content begin -->
        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="span7">
                        <h4>Get a free quote now!</h4>
                        Feel free to submit form below to receive a quote via email.
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <br />
                        <br />
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                              
                            <asp:panel ID="Panel3" runat="server" BackColor="#e4e4e4" CssClass="quote" >
                                  <div class="contact_form_holder">
                                <div class="row" style="text-align:center; padding-left:8px;">
                                    <asp:RadioButtonList ID="newTrip" runat="server" CssClass="formlabel" AutoPostBack="True" RepeatDirection="Horizontal" Width="60%" BorderStyle="None" BorderWidth="0px" BorderColor="#335a96" OnSelectedIndexChanged="newTrip_SelectedIndexChanged">
                                        <asp:ListItem Value="1">oneway</asp:ListItem>
                                        <asp:ListItem Value="2" >roundtrip</asp:ListItem>
                                        <asp:ListItem Value="3" Selected="True">multi-stop</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="span3">
                                        <label>Departure City<span class="req">*  </span>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderStyle="None" ControlToValidate="newDeparture" ErrorMessage="Please enter departure city" ForeColor="Red" Display="Dynamic" CssClass="validation">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="newDeparture" CssClass="full" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="newDeparture" DelimiterCharacters="" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
  CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" Enabled="True" ServiceMethod="GetCompletionList" ServicePath="" UseContextKey="true" ></asp:AutoCompleteExtender>
 
                                    <div class="span3">
                                        <label>Departure Date <span class="req">*  </span>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderStyle="None" ControlToValidate="newDepartureDate" ErrorMessage="Please enter departure date" ForeColor="Red" Display="Dynamic" CssClass="validation">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="newDepartureDate" CssClass="full" runat="server" Text="mm/dd/yyyy"></asp:TextBox>
                                    </div>
                                    <asp:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="newDepartureDate"></asp:CalendarExtender>
                                </div>
                                
                                <div class="row">
                                    <div class="span3">

                                        <label>Arrival City<span class="req">*  </span>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderStyle="None" ControlToValidate="newArrival" ErrorMessage="Please enter arrival city" ForeColor="Red" Display="Dynamic" CssClass="validation">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="newArrival" CssClass="full" runat="server"></asp:TextBox>
                                    </div>
                                     <asp:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" TargetControlID="newArrival" DelimiterCharacters="" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
  CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" Enabled="True" ServiceMethod="GetCompletionList" ServicePath="" UseContextKey="true" ></asp:AutoCompleteExtender>
  
                                    <div class="span3">
                                        <asp:Label ID="returnlabel" runat="server">Return Date<span class="req">*</span></asp:Label>
                                        <asp:TextBox ID="newReturnDate" CssClass="full" runat="server" Text="mm/dd/yyyy"></asp:TextBox>
                                    </div>

                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="newReturnDate"></asp:CalendarExtender>
                                    
                                </div>
                                <asp:Panel runat="server" ID="multi">
                                    <div class="row">
                                    <div class="span3">
                                        <label>Departure City
                                            </label>
                                        <asp:TextBox ID="newDeparture2" CssClass="full" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:AutoCompleteExtender ID="AutoCompleteExtender3" runat="server" TargetControlID="newDeparture2" DelimiterCharacters="" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
  CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" Enabled="True" ServiceMethod="GetCompletionList" ServicePath="" UseContextKey="true" ></asp:AutoCompleteExtender>
 
                                    <div class="span3">
                                        <label>Departure Date
                                            </label>
                                        <asp:TextBox ID="newDepartureDate2" CssClass="full" runat="server" Text="mm/dd/yyyy"></asp:TextBox>
                                    </div>
                                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="newDepartureDate2"></asp:CalendarExtender>
                                </div>
                                
                                <div class="row">
                                    <div class="span3">

                                        <label>Arrival City
                                            </label>
                                        <asp:TextBox ID="newArrival2" CssClass="full" runat="server"></asp:TextBox>
                                    </div>
                                     <asp:AutoCompleteExtender ID="AutoCompleteExtender4" runat="server" TargetControlID="newArrival2" DelimiterCharacters="" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
  CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" Enabled="True" ServiceMethod="GetCompletionList" ServicePath="" UseContextKey="true" ></asp:AutoCompleteExtender>
  
                                    <div class="span3">
                                        <asp:Label ID="Label1" Visible="false" runat="server">Return Date<span class="req"></span></asp:Label>
                                        <asp:TextBox ID="newReturnDate2" Visible="false" CssClass="full" runat="server" Text="mm/dd/yyyy"></asp:TextBox>
                                    </div>

                                    <asp:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="newReturnDate2"></asp:CalendarExtender>
                                    
                                </div>
                                    <div class="row">
                                    <div class="span3">
                                        <label>Departure City
                                            </label>
                                        <asp:TextBox ID="newDeparture3" CssClass="full" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:AutoCompleteExtender ID="AutoCompleteExtender5" runat="server" TargetControlID="newDeparture3" DelimiterCharacters="" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
  CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" Enabled="True" ServiceMethod="GetCompletionList" ServicePath="" UseContextKey="true" ></asp:AutoCompleteExtender>
 
                                    <div class="span3">
                                        <label>Departure Date 
                                            </label>
                                        <asp:TextBox ID="newDepartureDate3" CssClass="full" runat="server" Text="mm/dd/yyyy"></asp:TextBox>
                                    </div>
                                    <asp:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID="newDepartureDate3"></asp:CalendarExtender>
                                </div>
                                
                                <div class="row">
                                    <div class="span3">

                                        <label>Arrival City
                                            </label>
                                        <asp:TextBox ID="newArrival3" CssClass="full" runat="server"></asp:TextBox>
                                    </div>
                                     <asp:AutoCompleteExtender ID="AutoCompleteExtender6" runat="server" TargetControlID="newArrival3" DelimiterCharacters="" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
  CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" Enabled="True" ServiceMethod="GetCompletionList" ServicePath="" UseContextKey="true" ></asp:AutoCompleteExtender>
  
                                    <div class="span3">
                                        <asp:Label ID="Label2" Visible="false" runat="server">Return Date<span class="req">*</span></asp:Label>
                                        <asp:TextBox ID="newReturnDate3" Visible="false" CssClass="full" runat="server" Text="mm/dd/yyyy"></asp:TextBox>
                                    </div>

                                    <asp:CalendarExtender ID="CalendarExtender6" runat="server" TargetControlID="newReturnDate3"></asp:CalendarExtender>
                                    
                                </div>
                                </asp:Panel>
                                <div class="row">
                                    <div class="span2">
                                        <label>Cabin</label>
                                        <asp:DropDownList ID="newCabin" CssClass="full" runat="server" AutoPostBack="true" OnSelectedIndexChanged="newCabin_SelectedIndexChanged">
                                            <asp:ListItem Value="1">economy</asp:ListItem>
                                            <asp:ListItem Selected="True">business</asp:ListItem>
                                            <asp:ListItem>first</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="span2">
                                        <label>Passengers</label>
                                        <asp:DropDownList ID="newPassengers" CssClass="full" runat="server">
                                            <asp:ListItem Selected="True">1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="span2">

                                       <label>Phone<span class="req">*  </span><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BorderStyle="None" ControlToValidate="newPhone" ErrorMessage="Please enter a valid phone number" ForeColor="Red" Display="Dynamic" CssClass="validation">*</asp:RequiredFieldValidator></label> 
                                    <asp:TextBox ID="newPhone" CssClass="full" runat="server"></asp:TextBox>           

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="span3">

                                        <label>Email<span class="req">* </span>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BorderStyle="None" ControlToValidate="newEMail" ErrorMessage="Please enter a valid email" ForeColor="Red" Display="Dynamic" CssClass="validation">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="newEmail" CssClass="full" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="span3">

                                        <label>Name<span class="req">*  </span>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BorderStyle="None" ControlToValidate="newName" ErrorMessage="Please enter your name" ForeColor="Red" Display="Dynamic" CssClass="validation">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="newName" CssClass="full" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="row">
                                    
                                    <div class="span6">
                                        <label>Message <span class="req">(optional)</span></label>
                                    <asp:TextBox ID="newMessage" runat="server" TextMode="MultiLine" Columns="8" Rows="6" CssClass="full"></asp:TextBox>
                                    </div>
                                    <div class="span2">
                                        <p id="P1">
                                            
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/btnsubmit.png" OnClick="ImageButton1_Click" />

                                        </p>
                                        <div class="span3" style="text-align: right">
                                        <asp:UpdateProgress ID="updProgress"
                                            AssociatedUpdatePanelID="UpdatePanel1"
                                            runat="server" DisplayAfter="1">
                                            <ProgressTemplate>
                                                <div>
                                                    <img src="images/ajax-loader%20(1).gif" />

                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                    </div>
                                </div>
                                
                                </div>
                               
                            </asp:panel>
                        
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        
                       
                        <br />
                        <div class="span8">
                            <script type="text/javascript">
                                js_style = 1;
                                target = "_blank";
                                if (newsfeed) {
                                    showNews(newsfeed, js_style);
                                } else {
                                    document.write("News feeds did not import correctly. Please contact the 24-7 pressrelease administrators");
                                }
                            </script>
                        </div>
                    </div>
                    
                    

                </div>
            </div>
        </div>
        <!-- content close -->
</asp:Content>

