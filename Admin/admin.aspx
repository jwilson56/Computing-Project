<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="Pages_admin" %>

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
  


    </head>

<body>

    <form id="form2" runat="server">

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
                <p>
                    &nbsp;</p>
                <p>
                    Books c<span>urrently </span>rented out</p>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" 
                                SortExpression="UserID" />
                            <asp:BoundField DataField="User_first_name" HeaderText="User_first_name" 
                                SortExpression="User_first_name" />
                            <asp:BoundField DataField="Second_name" HeaderText="Second_name" 
                                SortExpression="Second_name" />
                            <asp:CheckBoxField DataField="Active" HeaderText="Active" 
                                SortExpression="Active" />
                            <asp:BoundField DataField="Books_Rented " HeaderText="Books_Rented " 
                                SortExpression="Books_Rented " />
                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                SortExpression="Address" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                SortExpression="Password" />
                        </Columns>
                    </asp:GridView>
                </p>
                <p>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [UserDB] WHERE ([Books_Rented ] = @Books_Rented_)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="Books_Rented_" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </p>
                <p>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            BookName:
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                            <br />
                            AuthorName:
                            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                            <br />
                            Copies:
                            <asp:Label ID="CopiesLabel" runat="server" Text='<%# Eval("Copies") %>' />
                            <br />
                            BookID:
                            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                            <br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                </p>
                <p>
                    <asp:Button ID="btnBookReturn" runat="server" Text="Button" />
                    <asp:Button ID="BtnUpdate" runat="server" Text="Update" />
                    <asp:Label ID="lblcopies" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                            <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                            <asp:BoundField DataField="Copies" HeaderText="Copies" SortExpression="Copies" />
                            <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                        </Columns>
                    </asp:GridView>
                    <asp:GridView ID="GridView4" runat="server" DataSourceID="ObjectDataSource1">
                    </asp:GridView>
                </p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Feature Row -->
        
	<footer>
		<div class="footer-blurb">
			<div class="container">
				<div class="row">
					<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Book] ([BookName], [AuthorName], [Copies]) VALUES (@BookName, @AuthorName, @Copies)" SelectCommand="SELECT [BookName], [AuthorName], [Copies], [BookID] FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [AuthorName] = @AuthorName, [Copies] = @Copies WHERE [BookID] = @BookID">
                        <DeleteParameters>
                            <asp:Parameter Name="BookID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BookName" Type="String" />
                            <asp:Parameter Name="AuthorName" Type="String" />
                            <asp:Parameter Name="Copies" Type="Int16" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BookName" Type="String" />
                            <asp:Parameter Name="AuthorName" Type="String" />
                            <asp:Parameter Name="Copies" Type="Int16" />
                            <asp:Parameter Name="BookID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    


                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
                    SelectMethod="Set" TypeName="DatabaseEntities2" DataObjectTypeName="System.Type" UpdateMethod="Set">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="+1" Name="entityType" Type="Object" />
                        </SelectParameters>
                    </asp:ObjectDataSource>

				    <br />
                    <br />
                    <br />

				</div>
				<!-- /.row -->	
			</div>
        </div>
        
        <div class="small-print">
        	<div class="container">
        		<p><a href="#">Terms &amp; Conditions</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact</a></p>
                <p>&nbsp;</p>
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