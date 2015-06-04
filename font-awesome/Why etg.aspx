<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Why etg.aspx.cs" Inherits="Why_etg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/contact.js"></script>
    <link rel="stylesheet" href="css/one-page.css" type="text/css"/>
    <!-- Javascript Files for current page only -->
    <script>
        jQuery(document).ready(function () {
            jQuery('#mainmenu a[href^="#"]').on('click', function (e) {
                e.preventDefault();

                var target = this.hash,
                    $target = jQuery(target);

                jQuery('html, body').stop().animate({
                    'scrollTop': $target.offset().top - 100 // - 200px (nav-height)
                }, 600, 'swing', function () {
                    window.location.hash = '1' + target;
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- welcome section begin -->
        <section id="welcome" data-speed="3" data-type="background">
            <div class="container">
                <div class="row">
                    <div class="span12 text-center">
                        <div class="flexslider teaser-slider">
                            <ul class="slides">
                                <li>
                                    <h1>WE ARE CREATIVE</h1>
                                </li>
                                <li>
                                    <h1>WE ARE WILD</h1>
                                </li>
                                <li>
                                    <h1>WE ARE THE WINNERS</h1>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- welcome section close -->

        <!-- about section begin -->
        <section id="about" data-speed="2" data-type="background">
            <div class="container">
                <div class="row">
                    <div class="span12 text-center">
                        <h2>About Us</h2>
                        <h4>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo</h4>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. </p>
                        <br/>
                        <br/>
                        <img src="images/map.png" alt=""/>
                    </div>
                </div>
            </div>
        </section>
        <!-- about section begin -->

        <!-- testi section begin -->
        <section id="testi" data-speed="5" data-type="background">
            <div class="container">
                <div class="row">
                    <div class="span12 text-center">
                        <div class="flexslider testi-slider">
                            <ul class="slides">
                                <li>
                                    <blockquote>"Design is in everything we make, but it's also between those things. It's a mix of craft, science, storytelling, propaganda, and philosophy."<span>Erick Adigard</span></blockquote>
                                </li>
                                <li>
                                    <blockquote>"Good design begins with honesty, asks tough questions, comes from collaboration and from trusting your intuition."<span>Freeman Thomas</span></blockquote>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- testi section close -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

