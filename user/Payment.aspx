<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="user_Payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />

    <link href="header.css" rel="stylesheet" type="text/css" />
    <link href="footer.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 77%;
            height: 219px;
        }
        .style2
        {
            width: 345px;
        }
        .style10
        {
            width: 49px;
        }
        .style11
        {
            width: 49px;
            height: 20px;
        }
        .style14
        {
            width: 345px;
            height: 23px;
        }
        .style15
        {
            width: 49px;
            height: 23px;
        }
        .style16
        {
            width: 171px;
        }
        .style19
        {
            width: 171px;
            height: 23px;
        }
        .style22
        {
            width: 171px;
            height: 53px;
        }
        .style23
        {
            width: 345px;
            height: 53px;
        }
        .style26
        {
            width: 49px;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #CCFFCC">
    


       
<header class="header-basic-light"align="left">

	<div class="header-limiter" >
    <div class="container">
    <div class="row">
    <div class="col-sm-6" align="left">
	<img src="./img/logo1.jpg" alt="">
    </div>

		<div class="col-sm-6">
        <nav>
			<a href="front.aspx">Home</a>
			<a href="#">Profile</a>
			<a href="sale.aspx">Sale</a>
			<a href="cart.aspx?id=0">my cart</a>
			<a href="#">Faq</a>
			<a href="#">About us</a>
		</nav></div>
	</div>
    </div>
    </div>

</header>
 <br />
        <br /> <br />
        <br />
  
    
          <div class="container">
    <div class="row">
    <div class="col-sm-4" align="left">
    </div>
       <div class="col-sm-4" align="center">
   
        <img src="../imag/p2.gif" alt="">
       </div>
    <div class="col-sm-4" align="right">
            
    </div>
	</div>
    </div>
    <br/><br/><br/><br/>

     <div class="container">
    <div class="row">
    <div class="col-sm-2" align="left"></div>

<div class="col-sm-8" align="left">

        <table align="center" class="style1" border="1" cellpadding="5" cellspacing="5">
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Username" Font-Italic="True"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label1" runat="server" Text="Bank" Font-Bold="True"></asp:Label>
                </td>
                <td class="style23">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="202px">
                        <asp:ListItem>BOB</asp:ListItem>
                        <asp:ListItem>SBI</asp:ListItem>
                        <asp:ListItem>PNB</asp:ListItem>
                        <asp:ListItem>YES Bank</asp:ListItem>
                        <asp:ListItem>ICICI</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style26">
                    </td>
            </tr>
            <tr>
                <td class="style16" rowspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Dabit Cart/Credit Cart/ATM" 
                        Font-Bold="True"></asp:Label>
                </td>
                <td class="style2" rowspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Card no." Font-Bold="True"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" runat="server" Width="196px" Height="29px"></asp:TextBox>
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;
                    <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="True"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox3" runat="server" Width="90px" Height="32px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style19">
                </td>
                <td class="style14">
                    <asp:Label ID="Label5" runat="server" Text="Exp." Font-Bold="True"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="MM"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="46px" 
                        ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="Label9" runat="server" Text="YYYY"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="63px" Height="22px"></asp:TextBox>
                </td>
                <td class="style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                </td>
                <td class="style14">
                </td>
                <td class="style15">
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="35px" Text="Pay" Width="156px" 
                        onclick="Button1_Click" BackColor="#33CC33" Font-Bold="True" 
                        Font-Size="Large" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        </div>
         <div class="col-sm-2" align="left"></div>
         </div></div>
    
 

    
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
  </div>   </div>

    </form>
</body>
</html>
