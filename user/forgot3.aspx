<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot3.aspx.cs" Inherits="forgot3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="header.css" />
    <link href="footer.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 121px;
        }
        .style2
        {
        }
        .style3
        {
            width: 374px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="background-color: #66CCFF">
      
<header class="header-basic-light">

	<div class="header-limiter">

	<img src="./img/logo1.jpg" alt="">

		<nav>
			<a href="front.aspx">Home</a>
			
		</nav>
	</div>

</header>
    
    <br/>
    <br/>

<br/>    <table class="style1">
        <tr>
            <td align="center" class="style2" colspan="2">
                <asp:Label ID="Label3" runat="server" 
                    Text="Congratulation!! Your Password is Recovered" Font-Bold="True" 
                    Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label1" runat="server" Text="Your Password is-&gt;" 
                    Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Sign in" onclick="Button1_Click" 
                    style="height: 26px" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    
    <br/><br/><br/><br/><br/><br/>
    
   <div class="container">
  <div class="row">
  <div class="col-sm-12">

  <footer class="footer-distributed">

			<div class="footer-left">

				       <img src="./img/logo1.jpg" alt="">

				<p class="footer-links">
					<a href="">Home</a>
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

				<p class="footer-company-name">khareedle!! &copy; 2015</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>21 Revolution Street</span>india</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+91 8859859556</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="www.email.com">mbhatt2018@gmail.com</a></p>
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

  </div>
  </div></div>
    </form>
</body>
</html>
