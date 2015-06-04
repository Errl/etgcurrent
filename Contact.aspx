<%@ Page Title="Contact expert travel guru now!"
    MetaDescription="COntact for help using airline miles | Credit Card Rewards"    
    MetaKeywords="corporate travel management, group travel discounts, corporate trips, corporate incentive trips, 
    international first class flights, corporate flight management, corporatre reward flights, 
    airline reward business trips, maximizing airline rewards, corporate group travel, discounted business travel, " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="js/contact.js"></script>
    <script>

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- subheader begin -->
        <div id="subheader">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <h1>Contact Us | 
                        <img src="https://service.ringcentral.com/picture/dot.gif" width="1" height="1"/><a href="https://service.ringcentral.com/ringme/ringme.asp?uc=03D18628CDE98A9DD359F1BDA438ADFC1884533817016,0,106&s=no&v=2&s_=1210" target="_blank">(888) 908 6983</a></h1>
                        <ul class="crumb">
                            <li><a href="Default.aspx">Home</a></li>
                            <li class="sep">/</li>
                            <li>Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- subheader close -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="map-container">
            	<iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=415%2BMadison%2BAve.&ie=UTF8&z=12&t=m&iwloc=near&output=embed"></iframe>
        	</div>
        <!-- content begin -->
        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="span8">
                        <h4>Get in touch with us now!</h4>
                        Feel free to contact us by contact to get more information.<br />
                        <br />
                        <div class="contact_form_holder">
                            <div id="contact" class="row" >

                                <div class="span4">
                                    <label>Name</label>
                                    <asp:TextBox ID="newName" CssClass="full" runat="server"></asp:TextBox>
                                </div>

                                <div class="span4">
                                    <label>Email <span class="req">*</span></label>
                                    <asp:TextBox ID="newEmail" CssClass="full" runat="server"></asp:TextBox> 
                                </div>

                                <div class="span8">
                                    <label>Message <span class="req">*</span></label>                                    
                                    <asp:TextBox ID="newMessage" runat="server" TextMode="MultiLine" Columns="10" Rows="10" CssClass="full"></asp:TextBox>
                                    <p id="btnsubmit">
                                        <asp:Button ID="send" runat="server" Text="Send Now" class="btn btn-large btn-primary" OnClick="send_Click" /></p>
                                     
                                </div>


                            </div>
                        </div>

                    </div>

                    <div id="sidebar" class="span3">
                        <!-- widget category -->
                        <!-- widget tags -->
                        <!-- widget text -->
                        <div class="widget widget-text">
                            <h4>Our Address</h4>
                            <address>
                               25 River Dr. So.  suite 401 <br /> New York, New York 10017
                                <span><strong>Phone:</strong><img src="https://service.ringcentral.com/picture/dot.gif" width="1" height="1"/><a href="https://service.ringcentral.com/ringme/ringme.asp?uc=03D18628CDE98A9DD359F1BDA438ADFC1884533817016,0,106&s=no&v=2&s_=1210" target="_blank">(888) 908 6983</a></span>
                                <span><strong>Fax:</strong>(888) 475-5261</span>
                                <span><strong>Email:</strong><a href="mailto:sales@elitetravelguru.com">sales@elitetravelguru.com</a></span>
                                <span><strong>Web:</strong><a href="default.aspx">http://elitetravelguru.com</a></span>
                            </address>
                        </div>

                    </div>
                </div>

                <div class="map">
                </div>

            </div>
        </div>
    
    <!-- content close -->
</asp:Content>

