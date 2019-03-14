<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="user_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="header.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />

     <link href="footer.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #form1
        {
            height: 26px;
        }
        .style1
        {
            width: 102%;
            height: 425px;
        }
        .style2
        {
            width: 434px;
        }
    </style>
</head>
<body>
 <form id="form1" runat="server">
<div style="background-color: #FFCCFF">

<header class="header-basic-light">

	<div class="header-limiter">
    <div class="container">
    <div class="row">
    <div class="col-sm-6" align="left">
	<img src="./img/logo1.jpg" alt="">
    </div>
    <div class="col-sm-6" align="right">
		<nav>
			<a href="front.aspx">Home</a>
			<a href="#" >Profile</a>
			<a href="sale.aspx">Sale</a>
			<a href="cart.aspx?id=0">my cart</a>
			<a href="#">Faq</a>
			<a href="#">About us</a>
		</nav>
	</div></div></div></div>

</header>

   
    <br /><br /><br /><br />
          <div class="container">
    <div class="row">
    <div class="col-sm-4" align="left">
    
        <br />
        
    
     <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="../user/front.aspx" Font-Italic="True" Font-Size="Large">continue shopping</asp:LinkButton>
    </div>
       <div class="col-sm-4" align="center">
            <h1>Product Detail</h1>
       </div>
    <div class="col-sm-4" align="right">
    
    </div>
	</div>
    </div>	
    <br /><br /><br />            
                        
   <div>
        
         <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">

              <ContentTemplate>
                  <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
                  </asp:Timer>
                  <asp:Image ID="Image2" runat="server" Height="335px" Width="342px" />
                  <br />
                  <br />
                  <br />
                  <br />
                  &nbsp;<asp:Image ID="Image3" runat="server" Height="355px" Width="342px"/>

                    </ContentTemplate>
                </asp:UpdatePanel>



            </div>
            <div class="col-sm-7"> 

       <table class="style1" align="center" bgcolor="#00CC99" border="1">
           <tr>
               <td class="style2">
                   <asp:Image ID="Image1" runat="server" Height="368px" Width="422px" 
                       BorderStyle="Groove" />
               </td>
               <td bgcolor="#99FF33">
                   <asp:Label ID="Label7" runat="server" Text="Id"></asp:Label>
&nbsp;&nbsp;
                   <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="True" 
                       Font-Size="Medium"></asp:Label>
                   <br />
                   <br />
                   <asp:Label ID="Label8" runat="server" Font-Italic="True" Text="Name" 
                       ToolTip="  "></asp:Label>
&nbsp;
                   <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                   <br />
                   <br />
                   <asp:Label ID="Label9" runat="server" Text="Rs.  "></asp:Label>
                   <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                   <br />
                   <br />
                   <asp:Label ID="Label11" runat="server" Text="Size"></asp:Label>
&nbsp;
                   <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                   <br />
                   <br />
                   <asp:Label ID="Label12" runat="server" Text="Description"></asp:Label>
&nbsp;
                   <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                   <br />
                   <br />
                   <br />
                   <br />
               </td>
           </tr>
           <tr>
               <td class="style2">
    
     <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="../user/front.aspx" Font-Italic="True" Font-Size="Large">continue shopping</asp:LinkButton>
               </td>
               <td>
                   <asp:Button ID="Button3" runat="server" Text="Buy Now" 
                       onclick="Button3_Click" BackColor="#33CCFF" Height="34px" Width="95px" />
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                       ImageUrl="~/user/img/if_Asset_83_3298599 (1).png" onclick="ImageButton1_Click" 
                       Width="59px" />
               </td>
           </tr>
       </table>
        </div></div></div>
   </div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

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
