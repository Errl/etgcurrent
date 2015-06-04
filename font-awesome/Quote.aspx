<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Quote.aspx.cs" Inherits="Quote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- subheader begin -->
        <div id="Div1">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <h1>Quote</h1>
                        <span>Request a quote via email, or call us at 888 888 8888</span>
                        <ul class="crumb">
                            <li><a href="index.html">Home</a></li>
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
                        <div class="widget widget-text">
                            <h4>Text Widget</h4>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        </div>

                        <div class="widget tab-holder">
                            <div class="de_tab">
                                <ul class="de_nav">
                                    <li><span class="active">Popular</span></li>
                                    <li><span>Recent</span></li>
                                </ul>

                                <div class="de_tab_content">

                                    <div class="tab-small-post">
                                        <ul>
                                            <li>
                                                <img src="images/news-small-1.jpg" class="post-info" alt="" />
                                                <span class="post-content">
                                                    <a href="#">Sed ut perspiciatis unde </a></span>
                                                <span class="post-date">Sept 22, 2013
                                                </span>
                                            </li>

                                            <li>
                                                <img src="images/news-small-2.jpg" class="post-info" alt="" />
                                                <span class="post-content">
                                                    <a href="#">Sed ut perspiciatis unde </a></span>
                                                <span class="post-date">Sept 22, 2013
                                                </span>
                                            </li>

                                            <li>
                                                <img src="images/news-small-3.jpg" class="post-info" alt="" />
                                                <span class="post-content">
                                                    <a href="#">Sed ut perspiciatis unde </a></span>
                                                <span class="post-date">Sept 22, 2013
                                                </span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="tab-small-post">
                                        <ul>
                                            <li>
                                                <img src="images/news-small-3.jpg" class="post-info" alt="" />
                                                <span class="post-content">
                                                    <a href="#">Lorem ipsum dolor sit</a></span>
                                                <span class="post-date">Sept 22, 2013
                                                </span>
                                            </li>

                                            <li>
                                                <img src="images/news-small-2.jpg" class="post-info" alt="" />
                                                <span class="post-content">
                                                    <a href="#">Lorem ipsum dolor sit</a></span>
                                                <span class="post-date">Sept 22, 2013
                                                </span>
                                            </li>

                                            <li>
                                                <img src="images/news-small-1.jpg" class="post-info" alt="" />
                                                <span class="post-content">
                                                    <a href="#">Lorem ipsum dolor sit</a></span>
                                                <span class="post-date">Sept 22, 2013
                                                </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="widget widget_category">
                            <h4>Category</h4>
                            <ul>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Hosting</a></li>
                                <li><a href="#">Server</a></li>
                                <li><a href="#">Technology</a></li>
                                <li><a href="#">Software</a></li>
                            </ul>
                        </div>
                        <div class="widget widget_tags">
                            <h4>Tags</h4>
                            <ul>
                                <li><a href="#link">Art</a></li>
                                <li><a href="#link">Application</a></li>
                                <li><a href="#link">Design</a></li>
                                <li><a href="#link">Entertainment</a></li>
                                <li><a href="#link">Internet</a></li>
                                <li><a href="#link">Marketing</a></li>
                                <li><a href="#link">Music</a></li>
                                <li><a href="#link">Print</a></li>
                                <li><a href="#link">Programming</a></li>
                            </ul>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        <!-- content close -->
</asp:Content>

