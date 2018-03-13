<%@ Page Title="" Language="VB" AutoEventWireup="false" CodeFile="Sign_Up.aspx.vb" Inherits="Sign_Up" %>

<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
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

    <style type="text/css">
        .auto-style1 {
            width: 85px;
        }
        .auto-style2 {
            width: 229px;
        }
        .auto-style3 {
            width: 85px;
            height: 20px;
        }
        .auto-style4 {
            width: 229px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">

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
        <div class="row">

            <article class="col-md-4 article-intro">
                <a href="#">
                </a>
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text="Log In"></asp:Label>
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>Sign up</td>
                        <td>
                            <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                            <asp:Label ID="StatusLabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEmailUp" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtSignPassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            First Name</td>
                        <td>
                            <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            </td>
                        <td class="auto-style4"></td>
                        <td class="auto-style5">
                            Second Name</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TxtSecondName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            Address</td>
                        <td>
                            <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="LblCheckOut" runat="server" Text="Go to check out" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="btnLogIn" runat="server" Text="log in" />
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnSignUp" runat="server" Text="Sign Up" style="height: 26px" />
                        </td>
                        <td>
                            <asp:Button ID="BtnCheckOut" runat="server" Text="Check out" Visible="False" />
                        </td>
                    </tr>
                </table>
            </article>
        </div>
        <!-- /.row -->
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
<br>
<br>
            
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
            
    </div>
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

