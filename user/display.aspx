
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="header.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 40px;
            width: 130px;
        }
        .style2
        {
            height: 41px;
        }
        .style3
        {
            height: 40px;
            width: 166px;
        }
        .style4
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

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
		</nav></div>
	</div>
    </div>
    </div>

</header>

  <br /><br /><br /><br />
    
          <div class="container">
    <div class="row">
    <div class="col-sm-4" align="left">
    
        <br />
        <br />
    
     <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="../user/front.aspx" Font-Italic="True" Font-Size="Large">continue shopping</asp:LinkButton>
    </div>
       <div class="col-sm-4" align="center">
           
       </div>
    <div class="col-sm-4" align="right">
        <h1>
        <asp:Label ID="Label1" runat="server" Text="Releted"></asp:Label>&nbsp;Category</h1>
    </div>
	</div>
    </div>
    <br /><br /><br /><br />
    <div class="container">
        <div class="row">
        <div class="col-sm-4">
          
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
                </asp:Timer>
                <asp:Image ID="Image1" runat="server" Height="290px" Width="300px" />
                <asp:Image ID="Image2" runat="server" Height="298px" Width="300px" />
                <asp:Image ID="Image3" runat="server" Height="295px" Width="300px" />            
            
            </ContentTemplate>
            </asp:UpdatePanel>
        
        
        
        </div>
        <div class="col-sm-7">

    <asp:DataList ID="DataList1" runat="server" BorderWidth="1px" CellPadding="4" 
        CellSpacing="2" RepeatColumns="3" Height="216px" Width="717px" 
                onselectedindexchanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table width="100" border="1">
                <tr>
                    <td class="style3" align="center">
                         <a href="cart.aspx?id=<%#Eval("id")%>&p_name=<%#Eval("p_name")%>&p_price=<%#Eval("p_price")%>&p_size=<%#Eval("p_size")%>&p_img=<%#Eval("p_img")%>&p_desc=<%#Eval("p_desc")%>">add to cart </a>
                    </td>
                    <td class="style1" align="center">
                         <a href="buy.aspx?id=<%#Eval("id")%>">Buy Now</a> 
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2" class="style4">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("p_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style2" colspan="2">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_size") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style2" colspan="2">
                        <img  alt="" src='../admin/img/<%#Eval("p_img") %>' height="210px" width="210px" /> 
                            &nbsp;&nbsp;&nbsp; 
                            </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("p_price") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        
                       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
                       
        </ItemTemplate>
    </asp:DataList>
  </div>
  </div>
  </div>
<div class="col-sm-1"></div>          
    
    </form>
</body>
</html>
