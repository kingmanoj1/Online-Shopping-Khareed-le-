<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p_add.aspx.cs" Inherits="admin_p_add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../user/header.css" rel="stylesheet" type="text/css" />


    <style type="text/css">
        .style1
        {
            width: 57%;
            height: 279px;
        }
        .style2
        {
            width: 120px;
        }
        .style3
        {
            width: 120px;
            height: 24px;
        }
        .style4
        {
            height: 24px;
            width: 402px;
        }
        .style5
        {
            width: 402px;
        }
        .style6
        {
            width: 120px;
            height: 64px;
        }
        .style7
        {
            width: 402px;
            height: 64px;
        }
    </style>
</head>
<body style="height: 195px" bgcolor="#009900">
    <form id="form1" runat="server">
  <div style="background-color: #00FFFF">

     
<header class="header-basic-light"align="left">

	<div class="header-limiter" >
    <div class="container">
    <div class="row">
    <div class="col-sm-6" align="left">
	<img src="../user/img/logo1.jpg" alt="">
    </div>

		<div class="col-sm-6" align="right">
        <nav>
			<a href="../user/front.aspx" style="font-size: 19px">Home</a>
			<a href="#" class="selected" style="font-size: 19px">somyjing</a>
			<a href="#" style="font-size: 19px">somthing</a>
			<a href="#" style="font-size: 19px">somthing</a>
			<a href="#" style="font-size: 19px">Faq</a>
			<a href="#" style="font-size: 19px">Contact</a>
		</nav></div>
	</div>
    </div>
    </div>

</header>

<h1 align="center">Add Product</h1><br/>
	
    <div class="container">
    <div class="row">
    <div class="col-sm-12" align="center">



    <table align="center" class="style1" border="1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Product Name" Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Font-Italic="True" Height="32px" 
                    Width="309px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Product Descreption" 
                    Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox5" runat="server" Font-Italic="True" Height="34px" 
                    Width="309px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Product Size" Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" Font-Italic="True" Height="33px" 
                    Width="309px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Price" Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" Font-Italic="True" Height="32px" 
                    Width="309px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Qty:" Font-Bold="True"></asp:Label>
                <br />
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" Font-Italic="True" Height="39px" 
                    Width="309px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Product Company"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox6" runat="server" Height="39px" Width="309px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="category" Font-Bold="True"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" 
                    Width="309px">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                    <asp:ListItem>kids</asp:ListItem>
                    <asp:ListItem>gift</asp:ListItem>
                    <asp:ListItem>furniture</asp:ListItem>
                    <asp:ListItem>home</asp:ListItem>
                    <asp:ListItem>extra</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Image" Font-Bold="True"></asp:Label>
            </td>
            <td class="style5">
                <asp:FileUpload ID="f1" runat="server" />
                <asp:Image ID="Image1" runat="server" Height="109px" Width="109px" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" 
                    Font-Bold="True" />
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                <br />
                <asp:Button ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
                    Text="Save" Width="353px" Font-Bold="True" Font-Size="Large" 
                    BackColor="#33CC33" />
                <br />
                <br />
                <asp:Button ID="Button5" runat="server" BackColor="#33CC33" Font-Bold="True" 
                    onclick="Button5_Click" Text="Save on Sale" Width="349px" />
                <br />
                </td>
        </tr>
    </table>
        <br />
        <br />
        <br />
        </div></div></div></div>
    </form>
</body>
</html>
