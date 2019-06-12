<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="User_login" %>


<!doctype html>
<html class="no-js" lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- ========== VIEWPORT META ========== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- ========== PAGE TITLE ========== -->
    <title>Smart Library - Login</title>

    <!-- ========== META TAGS ========== -->
    <meta name="description" content="Salt - Responsive Multipurpose HTML5 Template ">
    <meta name="keywords" content="business, responsive, multi-purpose">
    <meta name="author" content="ThemesEase">

    <!-- ========== FAVICON & APPLE ICONS ========== -->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>

    <!-- ========== MINIFIED VENDOR CSS ========== -->
    <link rel="stylesheet" href="styles/vendor.css"/>

    <!-- ========== MAIN CSS ========== -->
    <link rel="stylesheet" href="styles/main.css"/>
<script type="text/javascript" src="scripts/jquery.min.js"></script>
    <script type="text/javascript" src="scripts/vendor/notify.min.js" ></script>
    <script src="scripts/vendor/modernizr.js"></script>

</head>

<!-- ==================================================
Body: Classes
header-shadow - Set shadow for header & menu
dark-menu - Change menu to dark [Don't use with light-header]
light-header - Set light background to header [Don't use with dark-menu]
dark-header - Set dark background to header
bold-menu - For bolder links
semi-trans-header - set transparency to header [Use with 'light-header' or 'dark-header']
center-logo - Logo at center
small-header - For lesser height
nav-hidden - Open nav on icon click
================================================== -->
<body class="header-shadow">

    <!-- ========== HEADER ========== -->
    <div class="header menu-style-6">
        <div class="container-fluid">

            <!-- ========== MENU ========== -->
            <%--<nav class="menu">--%>
                <div class="logo">
                    <h2><i class="fa fa-institution"></i><span>Smart Library</span></h2>
                    <%--<a href="uhome.aspx"><img src="images/logo1.png" alt="Salt" class="logo-img"></a>--%>
                </div> <!-- end logo -->

                <!-- ========== MAIN MENU ========== -->
                 <!-- end main-menu -->
            <%--</nav>--%> <!-- end menu -->
        </div> <!-- end container-fluid -->
    </div> <!-- end header -->

    <!-- ========== MAIN ========== -->
    <div class="main">

        <div class="parallax-window" data-parallax="scroll" data-image-src="images/bg2.jpg" data-speed="0.6">
            <div class="container">
                <div class="row pt60 pb60">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 login-box">
                        <form runat="server" >
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email" required="" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" TextMode="Password" required="" ></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <asp:Button ID="btn_login" runat="server" Text="Login"  
                                class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right"
                                onclick="Button1_Click"/>
                          </div>
                        </form>
                    </div> <!-- end login-box -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </div>

    </div> <!-- end main -->

    <!-- ==================================================
    Footer: Classes
    footer - Default footer
    dark-footer - Dark footer [Use with .footer]
    sticky-footer - Reveal footer on scroll
    ================================================== -->
    <footer class="footer dark-footer" id="footer">

        <!-- ========== top footer ========== -->
         <!-- end footer-top -->

        <!-- ========== footer-middle ========== -->
        <div class="container footer-middle">
            <div class="row">
                <%--<div class="col-md-6">
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-facebook"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-twitter"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-dribbble"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-youtube"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-vimeo"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-linkedin"></i></a>
                </div>--%> <!-- end col-md-6 -->
                <div class="col-md-6 text-right">
                    <h6 class="footer-title lowercase"><i class="fa fa-phone"></i>(+91) 99999 99999 &nbsp <i class="fa fa-envelope"></i>ysv.libmng@gmail.com
                </div>
            </div> <!-- end row -->
        </div> <!-- end footer-middle -->

        <!-- ========== Footer - last section ========== -->
        <div class="footer-last">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        &copy; ©2017 All Rights Reserved to Smart Library. Privacy and Terms
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </div> <!-- end footer-last -->

        <!-- ========== Scroll to top button ========== -->
        <div class="scroll-to-top trans"><i class="fa fa-angle-up"></i></div>
    </footer>

    <!-- ========== LOADER ========== -->
    <div class="page-loader">
        <div class="spinner"></div>
    </div>

    <!-- ========== SWITCHER ========== -->
    <div class="switcher">
        

        <div class="mb30">
            <span class="color alizarin" data-color-class="alizarin" title="Alizarin"></span>
            <span class="color torquoise" data-color-class="torquoise" title="Torquoise"></span>
            <span class="color sunflower" data-color-class="sunflower" title="Sun Flower"></span>
            <span class="color carrot" data-color-class="carrot" title="Carrot"></span>
            <span class="color peterriver" data-color-class="peterriver" title="Peter River"></span>
            <span class="color wisteria" data-color-class="wisteria" title="Wisteria"></span>
            <span class="color nephritis" data-color-class="nephritis" title="Nephritis"></span>
            <span class="color midnightblue" data-color-class="midnightblue" title="Midnight Blue"></span>
        </div>

        <p class="text-center"><a href="intro.html#demos" title="View Other Demos">View All Demos</a></p>
    </div>
	<script src="scripts/vendor.js"></script>

	<script src="scripts/plugins.js"></script>

	<script src="scripts/main.js"></script>

    <script type="text/javascript">
        $(function ($) {
            $('#js-grid-faq').cubeportfolio({
                filters: '#js-filters-faq',
                defaultFilter: '*',
                animationType: 'sequentially',
                gridAdjustment: 'default',
                displayType: 'default',
                caption: 'expand',
                gapHorizontal: 0,
                gapVertical: 0
            });
        });
    </script>
    <script type="text/javascript">
        $(window).load(function () {
            matchHeight($('.info-thumbnail .caption .description'), 3);
        });
</body>

</html>
