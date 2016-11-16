<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
 
    <title>Shutter Eye</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
      <link href="css/style.css" rel="stylesheet" type="text/css" />    
   
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />

</head>
<body>
    
<div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
    <div class="container">
         <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
         <div class="navbar-header"><a class="navbar-brand" href="#">Shutter Eye</a>
             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/">Home</a>
                    </li>
                    <li><a href="/products">Products</a>
                    </li>
                    <li><a href="/about-us">About Us</a>
                    </li>
                    <li><a href="/contact">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

        <div class="container">
           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
           <div id="banner">
             <h1>Shutter Eye <strong>Login</strong> for the inner photographer in you</h1>

            <h5><strong>shuttereye.com</strong></h5>
           
           </div>
          
              <form id="Form1" runat="server">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
            <form class="form-horizontal">
                <fieldset>
                    <legend>User Login <i class="fa fa-pencil pull-right"></i></legend>
                    
                    <div class="form-group">
                        <div class="col-lg-10">
                            <asp:TextBox ID="txtBoxUserName" class="form-control"  runat="server" placeholder="Username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredUserName" runat="server" ControlToValidate="txtBoxUserName" ErrorMessage="Please Enter your User Name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10">
                            <asp:TextBox ID="txtBoxPassword" TextMode="Password" class="form-control"  runat="server" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredPassword" runat="server" ControlToValidate="txtBoxPassword" ErrorMessage="Please Enter your Password"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                        <asp:Button ID="btnLogin" runat="server" text="Login" Font-Bold="true" 
                                BackColor="#009900" ForeColor="Black" Font-Size="Large" 
                                onclick="btnLogin_Click"/>                          
                        <asp:Button ID="btnRegister" runat="server" text="Register" Font-Bold="true" BackColor="#ff6600" ForeColor="Black" Font-Size="Large" OnClick="btnRegister_Click"/>                          
                        </div>
                  
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                        </div>
                    </div>
                </fieldset>
            </form>
         </div>

         </form>

         </div>
        </div>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.backstretch.js" type="text/javascript"></script>
        <script type="text/javascript">
            'use strict';

            /* ========================== */
            /* ::::::: Backstrech ::::::: */
            /* ========================== */
            // You may also attach Backstretch to a block-level element
            $.backstretch(
        [
            "img/34.jpg"
        ],

        {
            duration: 4500,
            fade: 1500
        }
    );
        </script>

</body>
</html>
