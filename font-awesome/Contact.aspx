<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="js/contact.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- subheader begin -->
        <div id="subheader">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <h1>Contact Us</h1>
                        <span>Lorem ipsum dolor sit amet</span>
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
            	<iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.id/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=sydney&amp;aq=&amp;sll=-25.045792,134.604492&amp;sspn=26.764203,50.756836&amp;ie=UTF8&amp;hq=&amp;hnear=Sydney+New+South+Wales,+Australia&amp;ll=-33.867487,151.20699&amp;spn=0.048248,0.099134&amp;t=m&amp;z=14&amp;output=embed&iwloc=near"></iframe>
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
                                    <input type="text" class="full" name="name" id="name" />
                                </div>

                                <div class="span4">
                                    <label>Email <span class="req">*</span></label>
                                    <input type="text" class="full" name="email" id="email" />
                                    <div id="error_email" class="error">Please check your email</div>
                                </div>

                                <div class="span8">
                                    <label>Message <span class="req">*</span></label>
                                    <textarea cols="10" rows="10" name="message" id="message" class="full"></textarea>
                                    <div id="error_message" class="error">Please check your message</div>
                                    <div id="mail_success" class="success">Thank you. Your message has been sent.</div>
                                    <div id="mail_failed" class="error">Error, email not sent</div>

                                    <p id="btnsubmit">
                                        <input type="submit" id="send" value="Send Now" class="btn btn-large" /></p>
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
                                415 Madison Ave. 14th Fl <br /> New York, New York 10017
                                <span><strong>Phone:</strong>(208) 333 9296</span>
                                <span><strong>Fax:</strong>(208) 333 9298</span>
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

