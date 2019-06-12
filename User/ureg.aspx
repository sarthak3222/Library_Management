<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ureg.aspx.cs" Inherits="User_ureg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register src="../MyCaptcha.ascx" tagname="MyCaptcha" tagprefix="uc1" %>
<!doctype html>
<html class="no-js" lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- ========== VIEWPORT META ========== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!-- ========== PAGE TITLE ========== -->
    <title>Smart Library - Register</title>
    <!-- ========== META TAGS ========== -->
    <meta name="description" content="Salt - Responsive Multipurpose HTML5 Template ">
    <meta name="keywords" content="business, responsive, multi-purpose">
    <meta name="author" content="ThemesEase">
    <!-- ========== FAVICON & APPLE ICONS ========== -->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png" />
    <!-- ========== MINIFIED VENDOR CSS ========== -->
    <link rel="stylesheet" href="styles/vendor.css" />
    <!-- ========== MAIN CSS ========== -->
    <link rel="stylesheet" href="styles/main.css" />
    <script type="text/javascript" src="scripts/vendor/modernizr.js"></script>
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
            <nav class="menu">
                <div class="logo">
                    <h2><i class="fa fa-institution"></i><span>Smart Library</span></h2>
                </div> <!-- end logo -->

                <!-- ========== MAIN MENU ========== -->
                 <!-- end main-menu -->
            </nav>
            <!-- end menu -->
        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end header -->
    <!-- ========== MAIN ========== -->
    <div class="main">
        <div class="parallax-window" data-parallax="scroll" data-image-src="images/bg2.jpg"
            data-speed="0.6">
            <div class="container">
                <div class="row pt60 pb60">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 login-box">
                        <form runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <div class="form-group">
                            <label>
                                Enrollment Number</label>
                            <asp:TextBox ID="txtenrollment_no" class="form-control" runat="server" placeholder="Enrollment Number"
                                MaxLength="14"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="You Must Enter Enrollment Number"
                                ControlToValidate="txtenrollment_no" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="You can enter only digit" ForeColor="Red" 
                                ControlToValidate="txtenrollment_no" Display="Dynamic" MaximumValue="9999999999999999"
                                MinimumValue="1000000000000000"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <label>
                                Full Name</label>
                            <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="Enter Full name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You Must Enter First Name"
                                ControlToValidate="txtfname" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>
                                Address</label>
                            <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Enter Address"
                                TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="You Must Enter Address"
                                Display="Dynamic" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>
                                Contact No.</label>
                            <asp:TextBox ID="txtmob_no" class="form-control" runat="server" placeholder="Contact Number"
                                MaxLength="10"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtmob_no"
                                ErrorMessage="You Must Enter Valid Number" ForeColor="Red" MaximumValue="9999999999"
                                MinimumValue="7000000000" Display="Dynamic"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <label>
                                E-Mail</label>
                            <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="E-mail"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You Must Enter Valid Email"
                                ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                      <%--  <div class="form-group">
							<input id="r1" class="st-radio" name="Gender" type="radio" checked="">
							<label for="r1" class="st-radio-2-label">Male</label>
						
							<input id="r2" class="st-radio" name="Gender" type="radio" >
							<label for="r2" class="st-radio-2-label">Female</label>
						</div>--%>
                        <div class="form-group ">
                         <input type="radio" id="r1" class="st-radio" name="tuition" value="M" runat="server" checked="" />
                                        <label for="r1" class="st-radio-2-label">
                                            Male
                                        </label>
                         <input type="radio" id="r2" class="st-radio" name="tuition" value="F" runat="server"/>
                                        <label for="r2" class="st-radio-2-label">
                                            Female
                                        </label>
                        </div>
                        <div class="form-group">
                            <label>
                                Date Of Birth</label>
                            <asp:TextBox ID="txtdob" runat="server" class="form-control"  placeholder="Select Date Of Birth"></asp:TextBox>
                            <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="txtdob">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="You Must Select DOB"
                                Display="Dynamic" ControlToValidate="txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>
                                Semester</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                <asp:ListItem Value="1">1st</asp:ListItem>
                                <asp:ListItem Value="2">2nd</asp:ListItem>
                                <asp:ListItem Value="3">3rd</asp:ListItem>
                                <asp:ListItem Value="4">4th</asp:ListItem>
                                <asp:ListItem Value="5">5th</asp:ListItem>
                                <asp:ListItem Value="6">6th</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="You Must Select Sem"
                                Display="Dynamic" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <%--<div class="form-group">
                            <label>
                                Password</label>
                            <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password"
                                TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="You Must Enter Password"
                                Display="Dynamic" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblhelp" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <asp:PasswordStrength ID="txtpass_PasswordStrength" runat="server" Enabled="True"
                                TargetControlID="txtpass" StrengthIndicatorType="BarIndicator" PrefixText="Strength:"
                                HelpStatusLabelID="lblhelp" PreferredPasswordLength="8" MinimumNumericCharacters="1"
                                MinimumSymbolCharacters="1" BarBorderCssClass="BarBorder" TextStrengthDescriptionStyles="VeryPoorStrength;WeakStrength;
AverageStrength;GoodStrength;ExcellentStrength">
                            </asp:PasswordStrength>
                        </div>
                        <div class="form-group">
                            <label>
                                Re-Password</label>
                            <asp:TextBox ID="txtrepass" runat="server" class="form-control" placeholder="Re-Password"
                                TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="You Must Enter Same In Both"
                                ControlToCompare="txtpass" ControlToValidate="txtrepass" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                        </div>--%>
                        <div class="from-group">
                            <label for="exampleInputEmail13">
                                Profile Picture
                            </label>
                            <asp:FileUpload ID="ImgSrc" runat="server"></asp:FileUpload>
                        </div>
                        
                        <uc1:MyCaptcha ID="MyCaptcha1" runat="server" />
                            
                        
                        <div class="form-group">
                            <asp:Label ID="lbl_error" runat="server" Text="" ForeColor="Red"></asp:Label>
                            
                        </div>
                        <br />
                        <div class="form-group ">
                            <asp:Button ID="btn_submit" runat="server" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right"
                                Text="Sign Up" OnClick="btn_submit_Click"></asp:Button>
                        </div>
                        </form>
                    </div>
                    <!-- end login-box -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
    </div>
    <!-- end main -->
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
                    <h6 class="footer-title lowercase"><i class="fa fa-phone"></i>+91 90330 05040 &nbsp <i class="fa fa-envelope"></i>ysv.libmng@gmail.com
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
        <div class="spinner">
        </div>
    </div>
    <!-- ========== SWITCHER ========== -->
    <div class="switcher">
        <div class="mb30">
            <span class="color alizarin" data-color-class="alizarin" title="Alizarin"></span>
            <span class="color torquoise" data-color-class="torquoise" title="Torquoise"></span>
            <span class="color sunflower" data-color-class="sunflower" title="Sun Flower"></span>
            <span class="color carrot" data-color-class="carrot" title="Carrot"></span><span
                class="color peterriver" data-color-class="peterriver" title="Peter River"></span>
            <span class="color wisteria" data-color-class="wisteria" title="Wisteria"></span>
            <span class="color nephritis" data-color-class="nephritis" title="Nephritis"></span>
            <span class="color midnightblue" data-color-class="midnightblue" title="Midnight Blue">
            </span>
        </div>
        <p class="text-center">
            <a href="intro.html#demos" title="View Other Demos">View All Demos</a></p>
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
</body>
</html>
