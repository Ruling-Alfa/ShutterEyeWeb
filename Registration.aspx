<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
             <h1>Shutter Eye <strong>Registration Form</strong> for the inner photographer in you</h1>

            <h5><strong>shuttereye.com</strong></h5>
           
           </div>
          
 <form id="Form1" runat="server">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
            <form class="form-horizontal" action="" method="post">
                <fieldset>
                    <legend>Registration Form <i class="fa fa-pencil pull-right"></i></legend>
                    
                    <div class="form-group">
                        <div class="col-lg-10">
                            <asp:TextBox ID="txtBoxFirstName" class="form-control"  runat="server" placeholder="FirstName"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredFirstName" ControlToValidate="txtBoxFirstName" runat="server" ErrorMessage="Please Enter Your First Name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                       
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxLastName" class="form-control"  runat="server" placeholder="LastName"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="requiredLastName" ControlToValidate="txtBoxLastName" runat="server" ErrorMessage="Please Enter Your last Name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="col-lg-10">
                            <asp:TextBox ID="txtBoxUserName" class="form-control"  runat="server" placeholder="UserName"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredUserName" ControlToValidate="txtBoxUserName" runat="server" ErrorMessage="Please Enter a User Name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="col-lg-10" title="Show password">
                            <asp:TextBox ID="txtBoxPassword" TextMode="Password" class="form-control"  runat="server" placeholder="Password"></asp:TextBox>       
                            <asp:RequiredFieldValidator ID="requiredPassword" ControlToValidate="txtBoxPassword" runat="server" ErrorMessage="Please Enter a Password"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxConfirmPassword" TextMode="Password" class="form-control"  runat="server" placeholder="Confirm Password"></asp:TextBox>
                             <asp:CompareValidator ID="comparePassword" runat="server" ValueToCompare="txtBoxPassword" ControlToValidate="txtBoxConfirmPassword"  ErrorMessage="Please Enter Same Password" Display="Dynamic"></asp:CompareValidator>
                    </div>
                    </div>

                    <div class="form-group">
                        
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxEmail" class="form-control"  runat="server" placeholder="Email"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="requiredEmail" ControlToValidate="txtBoxEmail" runat="server" ErrorMessage="Please Enter your Email"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxConfirmEmail" class="form-control"  runat="server" placeholder="Confirm Email"></asp:TextBox>
                             <asp:CompareValidator ID="compareEmail" runat="server" ValueToCompare="txtBoxEmail" ControlToValidate="txtBoxConfirmEmail"  ErrorMessage="Please Enter Same Email" Display="Dynamic"></asp:CompareValidator>
                    </div>
                    </div>
                    <div class="form-group">
                       
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxPhone" class="form-control"  runat="server" placeholder="Phone"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regExPhone" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="txtBoxPhone" ValidationExpression="^(?:(?:\+?1*)(?:\(*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))(?:)?)([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})([0-9]{4})(?:(?:#|x\.?|ext\.?|extension)(\d+))?$"></asp:RegularExpressionValidator>
                    </div>
                    </div>

             
                    <div class="form-group">
                        <div class="col-lg-10">
                        <asp:Label ID="Label1" class="col-lg-4 control-label" Text="Account-Type"  runat="server"/>
        <br />
                        <asp:RadioButtonList ID="radioListTypeOfAcc" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="acType" DataValueField="acId">
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="requiredTypeOfAccount" ControlToValidate="radioListTypeOfAcc" runat="server" ErrorMessage="Please Select a type of account"></asp:RequiredFieldValidator>
                            <br />
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:shutterEyeConnectionString2 %>" 
                                SelectCommand="SELECT [acId], [acType] FROM [accType]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <asp:Label ID="Label2" class="col-lg-4 control-label" Text="Gender" runat="server" />
                            
                        <div class="col-lg-10">

                            <asp:RadioButtonList ID="radioListGender" runat="server">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="requiredGender" ControlToValidate="radioListGender" runat="server" ErrorMessage="Please Select a gender"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxCountry" class="form-control"  runat="server" placeholder="Country"></asp:TextBox>
                    </div>
                    </div>

                    <div class="form-group">
                        
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxState" class="form-control"  runat="server" placeholder="State"></asp:TextBox>
                    </div>
                    </div>

                    <div class="form-group">
                        
                        <div class="col-lg-10">
                             <asp:TextBox ID="txtBoxCity" class="form-control"  runat="server" placeholder="City"></asp:TextBox>
                    </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                        <asp:Button ID="btnRegister" runat="server" text="Register"  Font-Bold="true" BackColor="#ff6600" ForeColor="Black" Font-Size="Large" onclick="btnRegister_Click"/>
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
