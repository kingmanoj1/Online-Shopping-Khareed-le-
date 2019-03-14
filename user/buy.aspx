<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="user_buy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="footer.css" rel="stylesheet" type="text/css" />
    <link href="header.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 49%;
            height: 288px;
        }
        .style2
        {
        }
        .style3
        {
            width: 136px;
            height: 44px;
        }
        .style5
        {
            width: 136px;
            height: 36px;
        }
        .style6
        {
            height: 12px;
            width: 171px;
        }
        .style8
        {
            height: 44px;
            width: 226px;
        }
        .style10
        {
            width: 136px;
        }
        .style11
        {
            width: 226px;
        }
        .style12
        {
            height: 36px;
            width: 226px;
        }
        .style13
        {
            width: 136px;
            height: 17px;
        }
        .style14
        {
            height: 17px;
            width: 226px;
        }
        .style15
        {
            width: 136px;
            height: 10px;
        }
        .style16
        {
            height: 10px;
            width: 226px;
        }
        .style21
        {
            width: 136px;
            height: 9px;
        }
        .style22
        {
            height: 9px;
            width: 226px;
        }
        .style23
        {
            width: 136px;
            height: 12px;
        }
        .style24
        {
            height: 12px;
            width: 226px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #99CCFF">
    
    
<header class="header-basic-light"align="left">

	<div class="header-limiter" >
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
	</div>
    </div>
    </div>

</header>

  
    
     <div class="container">
    <div class="row">
    <div class="col-sm-12" style="background-color: #CCFF99">
     <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="../user/front.aspx" Font-Italic="True" Font-Size="Large">continue shopping</asp:LinkButton>
   
    
        <marquee direction="left" onmouseover="this.stop()" onmouseout="this.start()"><strong><h1 style="color: #0000FF">Buy Your Product Now</h1></strong></marquee>

    </div>
	</div>
    </div>	
    <br/>
    <br/> 
    <br/><br/>    
    
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
                    <asp:Timer runat="server" ID="Timer1" Interval="2000" ontick="Unnamed1_Tick"></asp:Timer>
                  <asp:Image ID="Image1" runat="server" Height="355px" Width="425px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                

                    </ContentTemplate>
                </asp:UpdatePanel>



            </div>
            <div class="col-sm-6"> 
                <table align="center" class="style1" cellpadding="6" cellspacing="8">
                 <tr>
                <td class="style2" colspan="3">
                    <asp:Label ID="Label8" runat="server" Text="Your Product ID Is:" 
                        Font-Size="Medium"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="Large"></asp:Label>
                </td>
                <td class="style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox1" runat="server" Width="238px" Height="29px" 
                        Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                </td>
                <td class="style22">
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label2" runat="server" Text="Address" Font-Size="Large"></asp:Label>
                </td>
                <td class="style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" runat="server" Width="238px" Height="29px" 
                        Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style23">
                </td>
                <td class="style24">
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label3" runat="server" Text="city" Font-Size="Large"></asp:Label>
                </td>
                <td class="style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox3" runat="server" Width="238px" Height="30px" 
                        Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label4" runat="server" Text="Pin" Font-Size="Large"></asp:Label>
                </td>
                <td class="style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox4" runat="server" Width="238px" Height="35px" 
                        Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Mobile" Font-Size="Large"></asp:Label>
                </td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox5" runat="server" Width="238px" Height="32px" 
                        Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
                </td>
                <td class="style16">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label6" runat="server" Text="Landmark" Font-Size="Large"></asp:Label>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox6" runat="server" Width="238px" Height="29px" 
                        Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label7" runat="server" Text="Email" Font-Size="Large"></asp:Label>
                </td>
                <td class="style24" width="15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox7" runat="server" Width="245px" Height="28px" 
                        Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                </td>
                <td class="style6">
                        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            CommandArgument='<%# Eval("oid") %>' Text="Continue to payment" 
                            oncommand="Button1_Command1" BackColor="#00CC00" Font-Bold="True" 
                            Height="40px" Width="175px" />
                </td>
            </tr>
        </table>
    </div></div></div>
   
    
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
  </div>
   </div>
    </form>
</body>
</html>
