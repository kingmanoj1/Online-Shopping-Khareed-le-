<%@ Page Language="C#" AutoEventWireup="true" CodeFile="control_detailt.aspx.cs" Inherits="control_detailt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../user/header.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #CCFFCC">

    
     
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
			<a href="#" class="selected" style="font-size: 19px">somthing</a>
			<a href="#" style="font-size: 19px">somthing</a>
			<a href="#" style="font-size: 19px">somthing</a>
			<a href="#" style="font-size: 19px">Faq</a>
			<a href="#" style="font-size: 19px">Contact</a>
		</nav></div>
	</div>
    </div>
    </div>

</header>
<br/><br/><br/><br/>




    <div>
    <div class="container">
    <div class="row">
    <div class="col-sm-12" align="center">
    
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="pay_id" DataSourceID="SqlDataSource2" 
            EnableModelValidation="True" CellPadding="5" CellSpacing="5" 
            Height="219px" Width="705px">
            <Columns>
                <asp:BoundField DataField="pay_id" HeaderText="pay_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="pay_id" />
                <asp:BoundField DataField="username" HeaderText="user name" 
                    SortExpression="username" />
                <asp:BoundField DataField="bank" HeaderText="bank" SortExpression="bank" />
                <asp:BoundField DataField="card_no" HeaderText="card number" 
                    SortExpression="card_no" />
                <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
                <asp:BoundField DataField="m_exp" HeaderText="expiry month" 
                    SortExpression="m_exp" />
                <asp:BoundField DataField="y_exp" HeaderText="expiry year" 
                    SortExpression="y_exp" />
            </Columns>
        </asp:GridView>
    </div></div></div>




       <div class="container">
    <div class="row">
    <div class="col-sm-12" align="center">

        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
            SelectCommand="SELECT * FROM [payment]"></asp:SqlDataSource>
     <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="oid" DataSourceID="SqlDataSource1" EnableModelValidation="True" 
            Height="200px" Width="808px">
         <Columns>
             <asp:BoundField DataField="oid" HeaderText="oid" InsertVisible="False" 
                 ReadOnly="True" SortExpression="oid" />
             <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="address" HeaderText="address" 
                 SortExpression="address" />
             <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
             <asp:BoundField DataField="mobile" HeaderText="mobile" 
                 SortExpression="mobile" />
             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
             <asp:BoundField DataField="landmark" HeaderText="landmark" 
                 SortExpression="landmark" />
             <asp:BoundField DataField="pin" HeaderText="pin" SortExpression="pin" />
         </Columns>
            </asp:GridView>
    </div></div></div>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT * FROM [order_detail]"></asp:SqlDataSource>
    </div>
    <br/><br/><br/><br/>
    </form>
</body>
</html>
