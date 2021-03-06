﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Check_Out.aspx.vb" Inherits="Pages_Check_Out" %>

<!DOCTYPE html>

<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://www.paypalobjects.com/api/checkout.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Click and Collect Library</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  

    <style type="text/css">
        .auto-style1 {
            width: 271px;
        }
        .auto-style2 {
            width: 235px;
        }
        .auto-style3 {
            width: 271px;
            height: 155px;
        }
        .auto-style4 {
            width: 235px;
            height: 155px;
        }
        .auto-style5 {
            height: 155px;
        }
        .auto-style6 {
            width: 271px;
            height: 262px;
        }
        .auto-style7 {
            width: 235px;
            height: 262px;
        }
        .auto-style8 {
            height: 262px;
        }
        .auto-style9 {
            width: 271px;
            height: 51px;
        }
        .auto-style10 {
            width: 235px;
            height: 51px;
        }
        .auto-style11 {
            height: 51px;
        }
        .auto-style12 {
            width: 271px;
            height: 49px;
        }
        .auto-style13 {
            width: 235px;
            height: 49px;
        }
        .auto-style14 {
            height: 49px;
        }
        .auto-style15 {
            width: 271px;
            height: 32px;
        }
        .auto-style16 {
            width: 235px;
            height: 32px;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            width: 271px;
            height: 37px;
        }
        .auto-style19 {
            width: 235px;
            height: 37px;
        }
        .auto-style20 {
            height: 37px;
        }
        .auto-style21 {
            width: 271px;
            height: 34px;
        }
        .auto-style22 {
            width: 235px;
            height: 34px;
        }
        .auto-style23 {
            height: 34px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  

    <%--<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").toggle();
    });
});
</script>--%><%-- <script>
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").load("TextFile.txt", function(responseTxt, statusTxt, xhr){
            if(statusTxt == "success")
                alert("External content loaded successfully!");
            if(statusTxt == "error")
                alert("Error: " + xhr.status + ": " + xhr.statusText);
        });
    });
});
</script>--%>

    <script>
    //$("macbeth").hide();
    $(document).ready(function(){
        $("#rentMacbeth").hide();
        


       

        $("#ClickMacbeth").click(function (event) {
            $("#rentMacbeth").slideToggle("slow");
            event.preventDefault();
        });


    })
    </script>


    <script>
        var d = new Date();
        document.getElementById("demo").innerHTML = d.toString();
    </script>

</head>

<body>


    <%--<div id="paypal-button"></div>--%><%--<script>
    paypal.Button.render({
      env: 'production', // Or 'sandbox',

      commit: true, // Show a 'Pay Now' button

      style: {
        color: 'gold',
        size: 'small'
      },

      payment: function(data, actions) {
        /* 
         * Set up the payment here 
         */
      },

      onAuthorize: function(data, actions) {
        /* 
         * Execute the payment here 
         */
      },

      onCancel: function(data, actions) {
        /* 
         * Buyer cancelled the payment 
         */
      },

      onError: function(err) {
        /* 
         * An error occurred during the transaction 
         */
      }
    }, '#paypal-button');
  </script>--%>

    <form id="form1" runat="server">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                	<span class="glyphicon glyphicon-fire"></span> 
                	Logo
                </a>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Products</a>
                    </li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="about-us">
							<li><a href="#">Engage</a></li>
							<li><a href="#">Pontificate</a></li>
							<li><a href="#">Synergize</a></li>
						</ul>
					</li>
                </ul>

				<!-- Search -->
					<div class="form-group">
						<input type="text" class="form-control">
					</div>
					<button type="submit" class="btn btn-default">Search</button>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<div class="jumbotron feature">
		<div class="container">
			<h1><span class="glyphicon glyphicon-equalizer"></span> Click and Collect</h1>
			<p>Rent books online and collect them at your convenience</p>
			<p><a class="btn btn-default" href="#">Engage Now</a></p>
		</div>
	</div>

    <!-- Content -->
    <div class="container">

        <!-- Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Superior Collaboration
                    <small>Visualize Quality</small>
                </h1>
                <p>...</p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Feature Row -->
        <!-- /.row -->
        <table class="nav-justified">
            <tr>
                <td class="auto-style6">
                    <asp:LoginView ID="LoginView1" runat="server">
                        <RoleGroups>
                            <asp:RoleGroup Roles="Manager">
                                <contentTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server"
                                        NavigateUrl="~/ManagerArea/Managers.aspx">Managers Area</asp:HyperLink>
                                </contentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
                </td>
                <td class="auto-style7">
                    Please specify collection date</td>
                <td class="auto-style8">
                    

                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Overall total:</td>
                <td class="auto-style2"
                    <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="Textdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblitemsubtotal" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">Please specifiy collection date </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Confirm Date" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    </td>
                <td class="auto-style10">
                    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    </td>
                <td class="auto-style13">
                    <asp:Label ID="lblFName" runat="server" Text="FirstName"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    </td>
                <td class="auto-style16">
                    <asp:Label ID="LblSecondN" runat="server" Text="Second Name"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TxtSecond" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style16">
                    todays date</td>
                <td class="auto-style17">
                    <asp:Label ID="LblTodayDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    </td>
                <td class="auto-style19">
                    <asp:Label ID="LblCollect" runat="server" Text="Pick a Collection time "></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>9:00 - 12:00  </asp:ListItem>
                        <asp:ListItem>12:00 - 15:00</asp:ListItem>
                        <asp:ListItem>15:00 - 18:00</asp:ListItem>
                        <asp:ListItem>18:00 - 21:00</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    </td>
                <td class="auto-style22">
                    <asp:Label ID="LblReturnDate" runat="server" Text="Return date"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:Label ID="lblReturn" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LblOutput" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="BtnCheckOut" runat="server" Text="Place the hold" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
<br>
        <asp:Label ID="lblPrice" runat="server"></asp:Label>
<br>
            
    </div>



        <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="47W4SLEKA5L2A">
<table>
<tr><td><input type="hidden" name="on0" value="Book">Book</td></tr><tr><td><select name="os0">
	<option value="Click and Collect">Click and Collect </option>
    <option value="null">Null </option>
</select> </td></tr>
</table>
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>
    <!-- /.container -->
	
	<footer>
		<div class="footer-blurb">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 footer-blurb-item">
						<h3><span class="glyphicon glyphicon-fire"></span> Dynamically Procrastinate</h3>
						<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.</p>
						<p><a class="btn btn-default" href="#">Procrastinate</a></p>
					</div>
					<div class="col-sm-4 footer-blurb-item">
						<h3><span class="glyphicon glyphicon-cloud-upload"></span> Efficiently Unleash</h3>
						<p>Dramatically maintain clicks-and-mortar solutions without functional solutions. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. </p>
						<p><a class="btn btn-default" href="#">Unleash</a></p>
					</div>
					<div class="col-sm-4 footer-blurb-item">
						<h3><span class="glyphicon glyphicon-leaf"></span> Completely Synergize</h3>
						<p>Professionally cultivate one-to-one customer service with robust ideas. Completely synergize resource taxing relationships via premier niche markets. Dynamically innovate resource-leveling customer service for state of the art customer service.</p>
						<p><a class="btn btn-default" href="#">Synergize</a></p>
					</div>

				</div>
				<!-- /.row -->	
			</div>
        </div>
        
        <div class="small-print">
        	<div class="container">
        		<p><a href="#">Terms &amp; Conditions</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact</a></p>
        		<p>Copyright &copy; Example.com 2015 </p>
        	</div>
        </div>
	</footer>

	
    <!-- jQuery -->
    <script src="js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	
	<!-- IE10 viewport bug workaround -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	
	<!-- Placeholder Images -->
	<script src="js/holder.min.js"></script>
	
    </form>
	

  

</body>

</html>
