<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Smart Library</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <div class="login_wrapper">
        <div class="animate form login_form">
         <center><h1><i class="fa fa-institution"></i><span>Smart Library</span></h1></center>
          <section class="login_content">
            <form runat="server">
              <h1>Login Form</h1>
              <div>
                <asp:TextBox ID="txtuname" class="form-control" placeholder="Username" required="" runat="server"></asp:TextBox>
              </div>
              <div>
               <asp:TextBox ID="txtpass" class="form-control" placeholder="Password" required="" 
                      runat="server" TextMode="Password"></asp:TextBox>
              </div>
              <div>
              <asp:Button ID="btn_login" runat="server" Text="Login" 
                      class="btn btn-default submit" onclick="btn_login_Click"></asp:Button>
               <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                      ForeColor="Red"></asp:Label>
             <%-- <a  href="index.html">Log in</a>--%>
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />

                <div>
                  <p>©2017 All Rights Reserved to Smart Library. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>

