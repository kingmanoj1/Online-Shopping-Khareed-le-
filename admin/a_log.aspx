<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_log.aspx.cs" Inherits="a_log" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../mystyle.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
    #bg
    {
        background:url('img/back.jpg');
    /*   width:100%;
       height:100%;*/
        }
     #dlog
     {
        border:2px solid white;
        padding:50px 40px;
        margin-top:10px; 
         }   
    .img
    {
        margin-left:65px;
      width:200px;  
        }
       h1
       {
          color:White;
          text-align:center;
          margin-top:20px; 
           }
         label
         {
             color:White;
         }
    
    </style>
</head>
<body style="height: 33px">

    <div class="container" id="bg">
        <div class="row">
            <div class="col-sm-4" "col-xs-12"></div>
            <div class="col-sm-4" "col-xs-12">
            
             <form id="dlog" runat="server">
             <img class="img img-responsive img img-circle" src="../user/img/login.gif" />
             
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Admin Name" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="321px"></asp:TextBox>  
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Password" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="34px" 
                 Width="320px"></asp:TextBox>
            </div>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button1" runat="server" Text="Login" class="btn-block" 
                 BackColor="#006699" Font-Bold="True" Font-Size="X-Large" 
                 onclick="Button1_Click" Width="311px"/>
                
    </form>
            </div>  
               
       <div class="col-sm-4" "col-xs-12"></div>

       
        </div>
    
    
    </div>

    </body>
</html>
