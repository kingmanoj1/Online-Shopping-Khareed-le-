<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="user_profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="footer.css" rel="stylesheet" type="text/css" />
     <link href="header.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style1
        {
            width: 412px;
        }
        .style2
        {
            width: 79px;
        }
        .style3
        {
            height: 44px;
        }
        .style4
        {
            width: 79px;
            height: 44px;
        }
    </style>
</head>
<body bgcolor="#66ffff">
    <form id="form1" runat="server">
    
         
<header class="header-basic-light"align="center">


    <div class="container">
    <div class="row">
    <div class="col-sm-6" align="left">
	<img src="./img/logo1.jpg" alt="">
    </div>

		<div class="col-sm-6" align="right">
        <nav>
			<a href="front.aspx">Home</a>
			<a href="#" class="selected">Profile</a>
			<a href="sale.aspx">Sale</a>
			<a href="cart.aspx?id=0">my cart</a>
			<a href="#">Faq</a>
			<a href="#">About us</a>
		</nav></div>
	</div>
    </div>
  
</header>
<br/><br/><br/><br/>
      <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
               <table class="style1" align="center" cellspacing="9" frame="box" 
                    style="border: 8px groove #FF00FF; height: 739px;">
                    <tr>
                        <td class="style6" colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="User Profile" Font-Bold="True" 
                                Font-Size="XX-Large"></asp:Label>
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="style2">
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="True" 
                                Font-Size="Large"></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text="8"></asp:Label>
                        </td>
                        <td class="style2">
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label3" runat="server" Text="E-mail"></asp:Label>
                        </td>
                        <td class="style12">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Required Field" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="184px" 
                                Font-Bold="True"></asp:TextBox>
                            <asp:Label ID="Label9" runat="server" Text="9" Font-Bold="True" 
                                Font-Size="Large"></asp:Label>
                        </td>
                        <td class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Required Field" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="178px" 
                                Font-Bold="True"></asp:TextBox>
                            <asp:Label ID="Label10" runat="server" Text="10" Font-Bold="True" 
                                Font-Size="Large"></asp:Label>
                        </td>
                        <td class="style2">
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>
                        </td>
                        <td class="style12">
                            <asp:Calendar ID="Calendar1" runat="server" Height="16px" Width="132px">
                            </asp:Calendar>
                            <asp:Label ID="Label11" runat="server" Text="11" Font-Bold="True" 
                                Font-Size="Large"></asp:Label>
                        </td>
                        <td class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label6" runat="server" Text="Question"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="188px" 
                                Font-Bold="True">
                                <asp:ListItem>pet name</asp:ListItem>
                                <asp:ListItem>teacher name</asp:ListItem>
                                <asp:ListItem>friend name</asp:ListItem>
                                <asp:ListItem>enimy name</asp:ListItem>
                                <asp:ListItem>GF/BF name</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label12" runat="server" Text="12" Font-Bold="True" 
                                Font-Size="Large"></asp:Label>
                        </td>
                        <td class="style4">
                            </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label7" runat="server" Text="Answer"></asp:Label>
                        </td>
                        <td class="style12">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox6" Enabled="False" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox6" runat="server" Height="30px"  Width="184px" 
                                Font-Bold="True"></asp:TextBox>
                            <asp:Label ID="Label13" runat="server" Text="13" Font-Bold="True" 
                                Font-Size="Large"></asp:Label>
                        </td>
                        <td class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Button ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
                                Text="Edit Profile" Width="76px" Font-Bold="True" />
                        </td>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Button ID="Button2" runat="server" Height="31px" onclick="Button2_Click" 
                                Text="Update" Width="87px" Font-Bold="True" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-sm-4"></div>
       </div>
  </div>

    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    
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
