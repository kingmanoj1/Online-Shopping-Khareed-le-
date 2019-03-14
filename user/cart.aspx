<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="admin_cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="header.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style13
        {
            width: 100%;
            height: 176px;
        }
        </style>
</head>
<body style="height: 384px">
    <form id="form1" runat="server">
    <div style="background-color: #66CCFF">
  
<header class="header-basic-light">

	<div class="header-limiter">

		<img src="./img/logo1.jpg" alt="" align="left">

		<nav>
				<a href="front.aspx">Home</a>
			<a href="#" >Profile</a>
			<a href="sale.aspx">Sale</a>
			<a href="cart.aspx?id=0" class="selected">my cart</a>
			<a href="#">Faq</a>
			<a href="#">About us</a>
		</nav>
	</div>

</header>
	

    <!--<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="p_name" HeaderText="product" />
            <asp:BoundField DataField="p_price" HeaderText="Price" />
            <asp:BoundField DataField="p_size" HeaderText="Size" />
            <asp:BoundField DataField="p_desc" HeaderText="desc" />
          
            <asp:ImageField DataImageUrlField="p_img" HeaderText="image">
                
            </asp:ImageField>
        </Columns>
    </asp:GridView>-->
    <br/>
    <br/>
    <br/>
    <div class="container">
    <div class="row">
    <div class="col-sm-3" align="left">
    
     <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="../user/front.aspx" Font-Italic="True" Font-Size="Large">continue shopping</asp:LinkButton>
    </div>
      
    <div class="col-sm-3" align="center" style="background-color: #00FF00">
                <h1>Your Cart</h1>
      </div>
     <div class="col-sm-6" align="center">
<asp:Label ID="Label14" runat="server" Text="Total price is:" Font-Bold="True"></asp:Label>
                    &nbsp;<asp:Label ID="Label7" runat="server" Text="Label" 
            Font-Size="Large"></asp:Label>
     
    
    
    </div>
	</div>
    </div>	
                    
			
    <script src="../bootstrap/js/bootstrap.js" type="text/javascript"></script>
       
    
    <br />
    <br/><br/><br/>
    <div class="container">
        <div class="row">
        <div class="col-sm-8">
  			
    <asp:DataList ID="DataList2" runat="server" CellPadding="5" CellSpacing="5" 
        RepeatColumns="3" BorderStyle="Groove" Height="600px" Width="790px">
        <ItemTemplate>
            <table class="style13" border="1" cellpadding="5" cellspacing="8" 
                bgcolor="#CC66FF">
                <tr>
                    <td align="center">
                        
                            <img  alt="" src='../admin/img/<%#Eval("p_img") %>' height="220px" width="220px" align="middle" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                                          
                          <a href="detail.aspx?id=<%#Eval("id")%>">name:<%# Eval("p_name")%></a></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("p_size") %>'></asp:Label>
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
                     <a href="buy.aspx?id=<%#Eval("id")%>">proceed to next</a>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:LinkButton ID="LinkButton2" runat="server" 
                            CommandArgument='<%#Eval("id")%>' onclick="LinkButton2_Click" 
                            oncommand="LinkButton2_Command">Remove</asp:LinkButton>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
			</div>
            <div class="col-sm-4" align="right">
            
                <br/>
                
                <br/>

               <br/>
                <br/>
            </div>
        </div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False" 
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [cart]" 
        onselected="SqlDataSource1_Selected">
    </asp:SqlDataSource>
			
   
			  
    </div>
    </form>
    </body>
</html>
