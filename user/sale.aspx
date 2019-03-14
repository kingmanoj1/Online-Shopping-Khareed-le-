<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sale.aspx.cs" Inherits="user_sale" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
        .style14
        {
            border-collapse: collapse;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<header class="header-basic-light">

	<div class="header-limiter">

		<img src="./img/logo1.jpg" alt="" align="left">

		<nav>
				<a href="front.aspx">Home</a>
			<a href="#" >Profile</a>
			<a href="sale.aspx"class="selected">Sale</a>
			<a href="cart.aspx?id=0" >my cart</a>
			<a href="#">Faq</a>
			<a href="#">About us</a>
		</nav>
	</div>

</header>
    
    </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <br />
            <table bgcolor="#CC66FF" border="1" cellpadding="5" cellspacing="8" 
                class="style14" style="border-spacing: 0;">
                <tr>
                    <td align="center">
                        <img  alt="" src='../admin/img/<%#Eval("p_img") %>' height="220px" width="220px" align="middle" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        N<a href='detail.aspx?id=<%#Eval("id")%>'>ame:<%# Eval("p_name")%></a></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("p_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        &nbsp;<asp:Label ID="Label12" runat="server" Text="Rs."></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("p_price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <a href='detail.aspx?id=<%#Eval("id")%>'>Description</a>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                         <a href='cart.aspx?id=<%#Eval("id")%>'>Add to cart</a>    <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT * FROM [saletbl]"></asp:SqlDataSource>
    </form>
</body>
</html>
