<%@ Page Title="Discounted international business|first class flights"
    MetaDescription="Discounted international business class, first class airfare flights travel. discounted corporate group airfare."
    MetaKeywords="Discounted International Airfare, First Class Flights Europe, Business class international airfare, Discounted Flights To, cheap international business class,
     cheap international first class, business class airfare, corporate travel management, group travel discounts, corporate trips, incentive trips,
    international first class flights, cheap international business class flights, corporate travel, corporate international airline tickets"
    Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="businessfirst.aspx.cs" Inherits="businessfirst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
            font-weight: bold;
        }

        .auto-style2 {
            font-size: 22pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="subheader">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <h1>Business/First Class Flights | 
                    70% OFF business/first class <span><img src="https://service.ringcentral.com/picture/dot.gif" width="1" height="1"/><a href="https://service.ringcentral.com/ringme/ringme.asp?uc=03D18628CDE98A9DD359F1BDA438ADFC1884533817016,0,106&s=no&v=2&s_=1210" target="_blank">  (888) 908 6983</a></span></h1>
                    <ul class="crumb" >
                        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="Default.aspx" itemprop="url"><span itemprop="title">Home</span></a></li>
                        <li class="sep">/</li>
                        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="Services.aspx" itemprop="url"><span itemprop="title">Services</span></a></li>
                        <li class="sep">/</li>
                        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span itemprop="title">Business/First</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="content">
        <div class="container">
            <div class="row">

                <div class="span10">
                    <div class="text-center">
                        <h1>Up to 70% OFF Business and First class flights!</h1>
                        
                            
                            <h2>Trying to find the right business or first class flight can prove not only to be costly but also time consuming and frustrating.</h2>
                            <br />
                            <br />
                       
                    </div>
                    <div class="feature-box span3 text-center">

                        <div>
                            <h3><span class="id-color">Step</span> One</h3>
                            <i class="large" style="background-image: url('images/icon1.png'); background-color: white; vertical-align: central"></i>
                            <h3>Free <span class="id-color">Quote</span></h3>
                            <a href="Contact.aspx"><span class="auto-style1">Contact us</span></a><span class="auto-style1">  now for a FREE, NO OBLIGATION QUOTE, & let one of our Guru's find you the perfect itinerary.<b><br />
                                <a href="Quote.aspx">Submit a request</a>.
                            </b></span>
                        </div>
                    </div>
                    <!-- feature box close -->

                    <!-- feature box begin -->
                    <div class="feature-box span3 text-center">
                        <div class="inner">
                            <h3><span class="id-color">Step</span> Two</h3>
                            <i class="large" style="background-image: url('images/icon2.png'); background-color: white"></i>
                            <h3>Flight <span class="id-color">Options</span></h3>
                            <span class="auto-style1">Shortly after, you will receive a detailed response from a Travel Guru that is based on your specific request. Itinerary options will be sent if requested.</span>
                        </div>
                    </div>
                    <!-- feature box close -->

                    <!-- feature box begin -->
                    <div class="feature-box span3 text-center">
                        <div class="inner">
                            <h3><span class="id-color">Step</span> Three</h3>
                            <i class="large" style="background-image: url('images/icon4.png'); background-color: white"></i>
                            <h3>Confirm <span class="id-color">& Enjoy</span></h3>
                            <span class="auto-style1">Sit back and relax, let us take care of your booking. Enjoy the perks of the #1 customer service in the industry. 24 hour customer service while traveling!
                            </span>
                        </div>
                    </div>
                    <hr class="blank" />
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <p style="font-size: large; text-align: center">
                                WheWhen it comes to booking international business or first class flights, our expertly trained elite travel guru's specialize in finding the best possible option to suit each
            clients individual needs at the best possible price anywhere on the web. Although price is certainly a top priority, there are many other factors to take into
            consideration when putting together an itinerary.  The comfort level of the airline and cabin, the various routing options that could be available, the amount of stops,
             layover times, multi-airline itineraries, just to name a few.
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Read More</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Visible="false">Read Less</asp:LinkButton>
                            </p>
                            <br />
                            <asp:Panel runat="server" ID="panel5" Visible="false">
                                <div style="text-align: center; padding-top: 15px; padding-bottom: 15px; font-size: medium;">
                                    <p>When booking international flights these factors become more and more important. An Elite Travel Guru can find you a simple itinerary such as New York to Germany for a business trip, or put together a complex itinerary involving many destinations and stopovers.</p>

                                    <%--<img src="images/ETG-SLIDE-5.jpg" class="img-rounded" />

     <hr class="blank" />--%>

                                    <p>
                                        Not only does our ability to put together routing and pricing set us apart from our "so called" competitors, our customer service is second to none. We take the worry out of your trip so you can focus on your goal. Perhaps a business trip, a family vacation, or a solo getaway, we are there by your side 24 hours a day, while you are traveling. Never again find yourself in a foreign airport at 2:00 am, trying to call the website you booked your ticket through, and getting no help what so ever. First the phone just rings and rings, even if you actually get someone on the phone, being told you need to call someone else or it's the airlines fault not ours, really isn't helpful in the current situation. Any ticket or itinerary purchased through us comes with our complete customer service satisfaction guarantee. Consider us a safety net, if you should run into any situation, just give us a call or shoot us an email 24 hours a day while you are traveling. whether it is a missed flight, flight cancellation, or some unforeseen circumstance, we are there to help you along the way.
                                    </p>
                                    <hr class="blank" />

                                    <p>
                                        See some of our typical fares below. This chart is based on average prices of flights originating from various major US cities.
          For a firm quote feel free to contact one of our Gurus to see how you can save.
                                    </p>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                    <div class="pricing-5-col">
                        <!-- pricing box begin -->
                        <div class="pricing-box">
                            <ul>
                                <li class="title-row">
                                    <h4>Destination </h4>
                                    <br />
                                </li>
                                <li class="price-row">
                                    <h1>Paris</h1>
                                </li>
                                <li class="price-row">
                                    <h1>China</h1>
                                </li>
                                <li class="price-row">
                                    <h1>Germany</h1>
                                </li>
                                <li class="price-row">
                                    <h1>S. Korea</h1>
                                </li>
                                <li class="price-row">
                                    <h1>Sydney</h1>
                                </li>
                            </ul>
                        </div>
                        <!-- pricing box close -->

                        <!-- pricing box begin -->
                        <div class="pricing-box">
                            <ul>
                                <li class="title-row">
                                    <h4>Business Class Web Price</h4>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$4,850</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$4,967</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$4,485</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$5,785</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$8,980</span></h1>
                                </li>
                            </ul>
                        </div>
                        <!-- pricing box close -->

                        <!-- pricing box begin -->
                        <div class="pricing-box pricing-featured">
                            <ul>
                                <li class="title-row">
                                    <h4>Business Class Our Price</h4>
                                </li>
                                <li class="price-row">
                                    <h1>$2,799</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$3,299</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$3,099</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$3,599</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$4,399</h1>
                                </li>
                            </ul>
                        </div>
                        <div class="pricing-box">
                            <ul>
                                <li class="title-row">
                                    <h4>First Class Web Price</h4>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$6,655</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$8,233</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$8,655</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$10,234</span></h1>
                                </li>
                                <li class="price-row">
                                    <h1><span class="auto-style1">$16,455</span></h1>
                                </li>
                            </ul>
                        </div>
                        <!-- pricing box close -->

                        <!-- pricing box begin -->
                        <div class="pricing-box pricing-featured">
                            <ul>
                                <li class="title-row">
                                    <h4>First Class Our Price</h4>
                                </li>
                                <li class="price-row">
                                    <h1>$3,499</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$3,999</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$4,199</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$5,499</h1>
                                </li>
                                <li class="price-row">
                                    <h1>$7,599</h1>
                                </li>
                            </ul>
                        </div>
                        <!-- pricing box close -->

                        <div class="clearfix"></div>
                    </div>

                    <hr class="blank" />
                    <!-- logo carousel -->
                    <div class="row">
                        <div class="flexslider logo-carousel no-control">
                            <ul class="slides">
                                <li>
                                    <div class="span2">
                                        <img src="images/logo/Alitalia.png" alt="" />
                                    </div>
                                </li>

                                <li>
                                    <div class="span2">
                                        <img src="images/logo/AF.png" alt="" />
                                    </div>
                                </li>

                                <li>
                                    <div class="span2">
                                        <img src="images/logo/ANA-Logo.png" alt="" />
                                    </div>
                                </li>

                                <li>
                                    <div class="span2">
                                        <img src="images/logo/IBERIA.png" alt="" />
                                    </div>
                                </li>

                                <li>
                                    <div class="span2">
                                        <img src="images/logo/Korean.png" alt="" />
                                    </div>
                                </li>

                                <li>
                                    <div class="span2">
                                        <img src="images/logo/Lufthansa_Logo.png" alt="" />
                                    </div>
                                </li>

                                <li>
                                    <div class="span2">
                                        <img src="images/logo/Thai_Logo.png" alt="" />
                                    </div>
                                </li>

                                <li>
                                    <div class="span2">
                                        <img src="images/logo/virginatlantic.png" alt="" />
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- logo carousel close -->
                </div>
                <div id="sidebar" class="span2">

                    <div class="widget widget-text">
                        <!-- BEGIN: Constant Contact Basic Opt-in Email List Form -->
                        <div align="center">
                            <table border="0" cellspacing="0" cellpadding="3" bgcolor="#FFFFFF" style="border: 2px solid #91a3a7;">
                                <tr>
                                    <td align="center" style="font-weight: bold; font-family: Georgia; font-size: 16px; color: #000000;" class="auto-style1">Join Our Mailing List</td>
                                </tr>
                                <tr>
                                    <td align="center" style="border-top: 2px solid #91a3a7" class="auto-style1">
                                        <form name="ccoptin" action="http://visitor.r20.constantcontact.com/d.jsp" target="_blank" method="post" style="margin-bottom: 2;">
                                            <input type="hidden" name="llr" value="jmcenplab">
                                            <input type="hidden" name="sit" value="959acgohb">
                                            <input type="hidden" name="m" value="1111839869321">
                                            <input type="hidden" name="p" value="oi">
                                            <font style="font-weight: normal; font-family: Arial; font-size: 12px; color: #000000;">Email:</font>
                                            <input type="text" name="ea" size="20" value="" style="font-size: 10pt; border: 1px solid #999999;">
                                            <input type="submit" name="go" value="Go" class="submit" style="font-family: Verdana,Geneva,Arial,Helvetica,sans-serif; font-size: 10pt;">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- END: Constant Contact Basic Opt-in Email List Form -->
                        <!-- BEGIN: SafeSubscribe -->
                        <div align="center" style="padding-top: 5px;">
                            <img src="https://imgssl.constantcontact.com/ui/images1/safe_subscribe_logo.gif" border="0" width="168" height="14" alt="" />
                        </div>
                        <!-- END: SafeSubscribe -->

                        <!-- BEGIN: Email Marketing you can trust -->
                        <div align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 10px; color: #999999;">
                            For <a href="http://www.constantcontact.com/jmml/email-marketing.jsp" style="text-decoration: none; font-family: Arial,Helvetica,sans-serif; font-size: 10px; color: #999999;" target="_blank" rel="nofollow">Email Marketing</a> you can trust
                        </div>
                        <!-- END: Email Marketing you can trust -->
                    </div>

                    <div class="widget tab-holder">
                        <div class="de_tab">
                            <ul class="de_nav">

                                <li><span>Recent News</span></li>
                            </ul>

                            <div class="de_tab_content">
                                <div class="tab-small-post">

                                    <!-- start feedwind code -->
                                    <script type="text/javascript">
<!--
    rssmikle_url = "http://feeds.feedblitz.com/millionmilesecrets&x=1";
    rssmikle_frame_width = "268";
    rssmikle_frame_height = "570";
    rssmikle_target = "_top";
    rssmikle_font = "Arial, Helvetica, sans-serif";
    rssmikle_font_size = "12";
    rssmikle_border = "on";
    rssmikle_css_url = "";
    rssmikle_title = "off";
    rssmikle_title_bgcolor = "#0066FF";
    rssmikle_title_color = "#FFFFFF";
    rssmikle_title_bgimage = "http://";
    rssmikle_item_bgcolor = "#FFFFFF";
    rssmikle_item_bgimage = "http://";
    rssmikle_item_title_length = "55";
    rssmikle_item_title_color = "#60a9ba";
    rssmikle_item_border_bottom = "off";
    rssmikle_item_description = "on";
    rssmikle_item_description_length = "100";
    rssmikle_item_description_color = "#666666";
    rssmikle_item_date = "gl1";
    rssmikle_item_description_tag = "off";
    rssmikle_item_podcast = "off";
    //-->
                                    </script>
                                    <script type="text/javascript" src="http://widget.feed.mikle.com/js/rssmikle.js"></script>
                                    <div style="font-size: 10px; text-align: right;">
                                        <a href="http://feed.mikle.com/" target="_blank" style="color: #CCCCCC;">FeedWind</a>
                                        <!--Please display the above link in your web page according to Terms of Service.-->
                                    </div>
                                    <!-- end feedwind code -->
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--
                        <div class="widget widget_tags">
                            <h4>Tags</h4>
                            <ul>
                                <li><a href="#link">Flights</a></li>
                                <li><a href="#link">Business Class</a></li>
                                <li><a href="#link">International</a></li>
                                <li><a href="#link">First Class</a></li>
                                <li><a href="#link">Passports</a></li>
                                <li><a href="#link">Visa</a></li>
                                <li><a href="#link">Discounted Flights</a></li>
                                <li><a href="#link">Airfare</a></li>
                                <li><a href="#link">Travel</a></li>
                            </ul>
                        </div>
                        -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>