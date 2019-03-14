<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_control.aspx.cs" Inherits="admin_a_control" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../user/header.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 97%;
            height: 528px;
            margin-bottom: 0px;
        }
        .style3
        {
            height: 87px;
            }
        .style5
        {
            height: 25px;
            width: 239px;
        }
        .style6
        {
        }
        .style7
        {
            width: 168px;
            height: 62px;
        }
        .style8
        {
            height: 62px;
            width: 358px;
        }
        .style9
        {
            width: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    

    <div style="background-color: #00FF99">
     
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


    <div class="container">
    <div class="row">
    <div class="col-sm-1"></div>

        <div class="col-sm-10">    
        <table class="style1">
            <tr>
                <td align="left" class="style3" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Text="Menu"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style9">
                    <asp:Button ID="Button1" runat="server" Height="38px" onclick="Button1_Click" 
                        PostBackUrl="~/admin/p_add.aspx" Text="Add Item" Width="255px" 
                        Font-Bold="True" Font-Size="Large" BackColor="Blue" />
                </td>
                <td align="center" rowspan="6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="589px" Width="790px" 
                        ImageUrl="~/admin/img/admin.jpg" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style9">
                    <asp:Button ID="Button2" runat="server" Text="View Order" 
                        onclick="Button2_Click" Font-Bold="True" Font-Size="Large" Height="32px" 
                        Width="255px" BackColor="#0066FF" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style9">
                    <asp:Button ID="Button3" runat="server" Text="View Payment" 
                        onclick="Button3_Click" Font-Bold="True" Font-Size="Large" Height="32px" 
                        Width="255px" BackColor="#0066FF" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style9">
                    <asp:Button ID="Button4" runat="server" Text="Add category" Font-Bold="True" 
                        Font-Size="Large" Height="34px" Width="255px" onclick="Button4_Click" 
                        BackColor="#0066FF" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style9">
                    <asp:Button ID="Button5" runat="server" Text="Change Password" Font-Bold="True" 
                        Font-Size="Large" Height="37px" Width="255px" BackColor="#0066FF" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style5">
                    <asp:Button ID="Button6" runat="server" Text="Logout" Font-Bold="True" 
                        Font-Size="Large" Width="118px" BackColor="#0066FF" />
                </td>
            </tr>
           
        </table>



        <br/>  <br/>  <br/>
        <table align="center" class="nav-justified">
            <tr>
                <td align="center" class="style6" colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Add category"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style7">
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Category Name"></asp:Label>
                </td>
                <td align="center" class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style6" colspan="2">
                    <asp:Button ID="Button7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Height="43px" onclick="Button7_Click" Text="Add " Width="194px" 
                        BackColor="#33CC33" />
                </td>
            </tr>
        </table>
        </div>
        <div class="col-sm-1"></div>
        </div>
        </div>
        <br />
    </div>
    </form>
</body>
</html>
