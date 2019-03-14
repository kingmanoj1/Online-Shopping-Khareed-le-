<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    </head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #CCCCFF">
   
  <div class="container">
    <div class="row">
        <div class="col-sm-4" "col-xm-12"></div>
       
                 <div class="col-sm-4" style="border: thick solid #008000; background-color: #FF00FF;"> 
                  <h1 align="center" style="color: #0000FF">Login!!</h1>
                    <img class="img img-responsive img img-circle" src="../user/img/login.gif" /><br />
&nbsp;<div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="UserName" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Height="36px" Width="321px"></asp:TextBox>  
            </div>
            <div class="form-group">
                
                <asp:Label ID="Label5" runat="server" Text="Password" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="38px" 
                 Width="321px"></asp:TextBox>
            </div>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button2" runat="server" Text="Login" class="btn-block" 
                 BackColor="#006699" Font-Bold="True" Font-Size="X-Large" 
                 onclick="Button1_Click" Width="311px"/>
        
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
                     <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                         Font-Underline="True" PostBackUrl="~/user/signup.aspx">New User???</asp:LinkButton>
                     <br/>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                         Font-Underline="True" PostBackUrl="~/user/forgot1.aspx">Forgot Password???</asp:LinkButton><br/><br/>

                  </div>  

       
        <div class="col-sm-4">
        
           </div>


  </div>
  </div>        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>
    </form>
</body>
</html>
