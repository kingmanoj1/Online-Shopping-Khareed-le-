<%@ Page Language="C#" AutoEventWireup="true" CodeFile="front.aspx.cs" Inherits="front" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="footer.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../mystyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function pass(con)
        {

            document.getElementById("Lavel1").innerHTML = con;
        }

        function search_click() {

            window.location ="display.aspx?p_category=c&search="+document.getElementById("srchitm").value;
        }

    </script>
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 324px;
        }
        .style3
        {
            height: 31px;
        }
        .style5
        {
            height: 32px;
        }
        .style6
        {
            height: 25px;
        }
    </style>
</head>
<body bgcolor="#ccffff">
 <form id="form1" runat="server">

 <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
 <!--header--><div style="background-color: #6699FF">


 


		<div class="container-fluid top_bar">
		<div class="container">
		<div class="row">
		<div class="col-sm-5 contact" align="left">
        <a href="../admin/a_log.aspx">Admin</a><img src="./img/logo1.jpg" alt=""></div>

        <!--
            	<div class="col-sm-3 " align="center">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer2" runat="server" Interval="500" ontick="Timer2_Tick1">
                </asp:Timer>
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium"></asp:Label>
            </ContentTemplate>
            </asp:UpdatePanel>
            </div>-->
       
		<div class="col-sm-7 text-right contact" align="right" style="top: 8px">
       
            <input type="text" id="srchitm" 
                style="color: #000000; height: 29px; width: 313px;" />
            <input type="button" value="search" onclick="search_click();" 
                style="background-color: #00FFFF" />
              
            	</div>
		</div>
		</div>
	 	<!--end of container-->
 					<!--header end-->
						<!--logo & menu-->
		<div class="container">
		<div class="row">
		
			<div class="col-sm-12 menu" align="center" >
		
		<nav class="navbar navbar-default">
		<div class="navbar-header">
		<button type="button"class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
		<span class="icon-bar"></span>
		
		</button>
		<span class="icon-bar"></span>
		</div>
        <br/><br/>
		<div class="collapse navbar-collapse" id="mynavbar" align="right">
 		
		<ul class="nav navbar-nav pull-right" style="background-color: #00FFFF">
			<li class="active"><a href="">Home</a></li>
			<li><a href="sale.aspx"> on Sale</a></li>
			<li><a href="cart.aspx?id=0">My Cart</a></li>
			<li><a href="">Product</a></li>
			<li><a href="">About us</a></li>
            <li><a href="profile.aspx">My Profile</a></li>
            <li><a href="login.aspx">Login</a></li>
            <li><a href="signup.aspx">signup</a></li>
		</ul>
		</div>
			</nav>

		</div>
		</div>
		</div></div>
		
				<!--end logo and menu bar-->
            

		<span class="icon-bar"></span>
        <br/>
       	<div class="container">
		<div class="row">
		<div class="col-sm-12" style="background-color: #CCFFCC;">
        <marquee direction="left" onmouseover="this.stop()" onmouseout="this.start()"><strong style="font-size: 15px">Come And Feel The Diffrence</strong></marquee>
   </div

        
        </div>
        </div>
    <br/>   
              
                    
		<div class="container">
		<div class="row">
		<!--<div class="col-sm-3">
		<table class="style4" bgcolor="#66FF99">
        <tr>
            <td align="center" class="style1" bgcolor="#00CC00">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="165px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="162px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Login" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server">New User???</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server">Forgot Password</asp:LinkButton>
                <br />
            </td>
        </tr>
    </table>

	</div>-->
	
    <div class="col-sm-12" align="center">
 
 
    <!--script manager-->
         
       <div style="width: 927px; background-color: #CCFFCC;">
      <MARQUEE behavior="scroll" direction="left" width="100%" onmouseover="this.stop();" onmouseout="this.start();">
      <img src="../imag/f1.png">
       <a href="sale.aspx" <img src="../imag/f2.png"></a>
       <a href="sale.aspx" <img src="../imag/f3.png"></a>
        </MARQUEE>
   </div>        
		
    </div>
     
        </div>
		</div>
	
		
		<!--end paragraph-->
				<!-- images -->
                
                     <br />
                     <br />
                     <br />
                     
                 
		
			<div class="container">
             <div class="row">
                 <div class="col-sm-4" bgcolor="#66ff99" style="background-color: #66FF33">
                <h1 class="text-left" style="background-color: #0000FF">category</h1>

                 <asp:DataList ID="DataList2" runat="server">
                     
                     <ItemStyle Font-Bold="True" Font-Size="X-Large" />
                     
                     <ItemTemplate>
                     <li>
                        <a href="display.aspx?search=a&p_category=<%#Eval("p_category")%>"><%# Eval("p_category")%>></a>
                       <br/>
                     </li>
                     
                     </ItemTemplate>
                     </asp:DataList>
                   
                          <asp:Image ID="Image5" runat="server" Height="282px" Width="238px" ImageUrl="~/imag/best.gif" />
              


                     <br />
                     <br />
                     <br />


                     <asp:Image ID="Image6" runat="server" Height="292px" Width="244px" />
            
                </div>
                
                          <div class="col-sm-8 images col-xs-12" align="right">
            

		        <h1 class="text-center" style="background-color: #0000FF">Product</h1>
                
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" 
                    onitemcommand="DataList1_ItemCommand" BorderColor="#CCFFCC" 
                    CellPadding="30" CellSpacing="15" GridLines="Horizontal" Width="760px">
                    <ItemStyle BorderColor="#33CCFF" BorderStyle="Solid" />
                    <ItemTemplate>
                        <table class="style2" cellpadding="5" cellspacing="5" bgcolor="#FF9933">
                            <tr>
                                <td align="center" class="style3" bgcolor="#00FFCC">
                                    
                                    <a href="detail.aspx?id=<%#Eval("id")%>">Name: <%# Eval ("p_name")%></a>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="style3" bgcolor="#00FFCC">
                                    <asp:Label ID="Label7" runat="server" Text="Id" Font-Bold="False" 
                                        Font-Italic="True"></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("id") %>' Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#99FF99">
                                  <img alt="" src='../admin/img/<%#Eval("p_img") %>' height="200px" width="200px" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="style5" bgcolor="#00FFCC">
                                    <asp:Label ID="Label10" runat="server" Text="Rs."></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("p_price") %>' 
                                        Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#66FFCC" class="style6">
                                <a href="cart.aspx?id=<%#Eval("id")%>">add 
                        to cart</a>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
			
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
                    SelectCommand="SELECT * FROM [product]">
                </asp:SqlDataSource>
         
			</div>
            </div>
            
			</div>
           
            

			<!--<input type="submit" value="add to cart">t</input>
			<script type="../text/javascript"src="js/jquery.js"></script>
		<script type="../text/javascript"src="js/bootstrap.js"></script>
		-->
            
   <!-- <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>  <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
   
  <div class="container">
  <div class="row">
  <div class="col-sm-12">







  <footer class="footer-distributed">

			<div class="footer-left">

				<h3>Company<span>logo</span></h3>

				<p class="footer-links">
					<a href="#">Home</a>
					·
					<a href="#">Blog</a>
					·
					<a href="#">Pricing</a>
					·
					<a href="#">About</a>
					·
					<a href="#">Faq</a>
					·
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">Company Name &copy; 2015</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>21 Revolution Street</span> Paris, France</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+1 555 123456</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">support@company.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
				</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>

  </div>

  </div>-->
  </div>
 </form>



</body>
</html>
