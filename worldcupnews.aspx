<%@ Page Title="World Cup Brazil 2014 News"
    MetaDescription="Brazil World Cup updated News"
    MetaKeywords="World Cup Brazil, flying brail world cup 2014, corporate travel management, group travel discounts, corporate trips, corporate incentive trips, 
    international first class flights, cheap international business class flights, corporate travel, corporate international airline tickets, business flights, corporate flight management, corporatre reward flights, 
    airline reward business trips, maximizing airline rewards, corporate group travel, discounted business travel, cheap luxury corprorate travel" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="worldcupnews.aspx.cs" Inherits="worldcupnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="subheader">
            <div class="container">
                <div class="row">
                    <div class="span12" style="text-align:center">
                        <!-- mainmenu begin -->
                         <ul id="mainmenu" style="float: left;">
                            <li><a style="padding: 15px 15px 15px 15px; line-height: 20px; border-left: none;  color:black; text-decoration: none;" onmouseover="this.style.textDecoration = 'underline'" onmouseout="this.style.textDecoration = 'none'" href="worldcup.aspx">2014 World Cup</a></li>
                            <li><a style="padding: 15px 15px 15px 15px; line-height: 20px; border-left: none;  color:black; text-decoration: none;" onmouseover="this.style.textDecoration = 'underline'" onmouseout="this.style.textDecoration = 'none'" href="gettingtocup.aspx">Getting to Brazil</a></li>
                            <li><a style="padding: 15px 15px 15px 15px; line-height: 20px; border-left: none;  color:black; text-decoration: none;" onmouseover="this.style.textDecoration = 'underline'" onmouseout="this.style.textDecoration = 'none'" href="wcupscores.aspx">Live Score Updates</a></li>
                            <li><a style="padding: 15px 15px 15px 15px; line-height: 20px; border-left: none;  color:black; text-decoration: none;" onmouseover="this.style.textDecoration = 'underline'" onmouseout="this.style.textDecoration = 'none'" href="worldcupstandings.aspx">Standings & Brackets</a></li>
                            <li><a style="padding: 15px 15px 15px 15px; line-height: 20px; border-left: none;  color:black; text-decoration: none;" onmouseover="this.style.textDecoration = 'underline'" onmouseout="this.style.textDecoration = 'none'" border-right: none" href="worldcupnews.aspx">World Cup News</a></li>
                        </ul>
                <!-- mainmenu close -->
                     <img src="images/worldcup20143.png" onmouseover="this.src='images/worldcup20144.png'" onmouseout="this.src='images/worldcup20143.png'" />

                       
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
         <div class="container">
            <div class="row">
                <div class="span12">
                    <h1>World Cup 2014 News</h1>
                    <span>Up to date news on the 2014 World Cup</span><img style="padding-right:10px" src="images/flybrazilsm.png" />                    
                    <ul class="crumb">
                        <li><a href="Default.aspx">Home</a></li>
                        <li class="sep">/</li>
                        <li><a href="whyus.aspx">Events</a></li>
                        <li class="sep">/</li>
                        <li><a href="worldcup.aspx">World Cup</a></li>
                        <li class="sep">/</li>
                        <li>World Cup News</li>
                    </ul>
                </div>
            </div>
        </div>

            <div class="container">
                <div class="row">
                    <div class="span7"></div>
                    <div id="sidebar" class="span5">
                        <!-- start feedwind code -->
<script type="text/javascript">
<!--
    rssmikle_url = "http://www.fifa.com/worldcup/news/rss.xml";
    rssmikle_frame_width = "400";
    rssmikle_frame_height = "800";
    rssmikle_target = "_blank";
    rssmikle_font = "Geneva, Arial, sans-serif";
    rssmikle_font_size = "14";
    rssmikle_border = "on";
    rssmikle_css_url = "";
    rssmikle_title = "on";
    rssmikle_title_bgcolor = "#2E4E6E";
    rssmikle_title_color = "#FFFFFF";
    rssmikle_title_bgimage = "http://";
    rssmikle_item_bgcolor = "#FFFFFF";
    rssmikle_item_bgimage = "http://";
    rssmikle_item_title_length = "100";
    rssmikle_item_title_color = "#2E4E6E";
    rssmikle_item_border_bottom = "on";
    rssmikle_item_description = "on";
    rssmikle_item_description_length = "150";
    rssmikle_item_description_color = "#666666";
    rssmikle_item_date = "gl1";
    rssmikle_item_description_tag = "on_flexcroll";
    rssmikle_item_podcast = "off";
    //-->
</script>
<script type="text/javascript" src="http://widget.feed.mikle.com/js/rssmikle.js"></script>
<div style="font-size:10px; text-align:right;">
<a href="http://feed.mikle.com/" target="_blank" style="color:#CCCCCC;">FeedWind</a>
<!--Please display the above link in your web page according to Terms of Service.-->
</div>
<!-- end feedwind code -->

                    </div>
                    </div>
                </div>
        </div>
</asp:Content>



