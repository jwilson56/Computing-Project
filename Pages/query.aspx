﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="query.aspx.vb" Inherits="Pages_query" %>

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
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  

    
</head>

<body>

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
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Book] ([BookName], [AuthorName], [Copies], [In_Stock], [Discription]) VALUES (@BookName, @AuthorName, @Copies, @In_Stock, @Discription)" SelectCommand="SELECT * FROM [Book] WHERE ([In_Stock] = @In_Stock)" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [AuthorName] = @AuthorName, [Copies] = @Copies, [In_Stock] = @In_Stock, [Discription] = @Discription WHERE [BookID] = @BookID">
            <DeleteParameters>
                <asp:Parameter Name="BookID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="AuthorName" Type="String" />
                <asp:Parameter Name="Copies" Type="Int16" />
                <asp:Parameter Name="In_Stock" Type="Boolean" />
                <asp:Parameter Name="Discription" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="In_Stock" Type="Boolean" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="AuthorName" Type="String" />
                <asp:Parameter Name="Copies" Type="Int16" />
                <asp:Parameter Name="In_Stock" Type="Boolean" />
                <asp:Parameter Name="Discription" Type="String" />
                <asp:Parameter Name="BookID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1">
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
        <br />
        <br />
        <br />
        <br />
        
<br>
<br>
            
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
