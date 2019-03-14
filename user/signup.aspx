<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="user_signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />


    <style type="text/css">
        .style1
        {
            width: 68%;
            height: 579px;
        }
        .style3
        {
            width: 194px;
        }
        .style4
        {
            height: 20px;
            width: 194px;
        }
        .style5
        {
            width: 176px;
            height: 33px;
        }
         #bg
    {
        margin:0;
        padding:0;
        background:url('img/bck.jpg');
        background-size:cover;
        background-position:center;
    /*   width:100%;
       height:100%;*/
        }
        .lo
        {
            width:320px;
            height:420px;
            background:rgba(0,0,0,0.5);
            color:#fff;
            top:50%;
            position:absolute;
           
        }
        
        .style7
        {
            width: 194px;
            height: 29px;
        }
        .style8
        {
            width: 194px;
            height: 33px;
        }
        .style9
        {
            width: 194px;
            height: 36px;
        }
        .style10
        {
            width: 194px;
            height: 30px;
        }
        .style11
        {
            width: 194px;
            height: 24px;
        }
        .style12
        {
            width: 194px;
            height: 32px;
        }
        
    </style>


</head>
<body id="bg">
    <form id="form1" runat="server">
   <div class="container" >
   <div class="row">
   <div class="col-sm-5"></div>
   <div class="col-sm-4" align="center" 
           
           style="border: medium groove #0000FF;text-align: center; letter-spacing: normal; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; font-style: italic; color: #0000FF;">
   
       <br />
       <br />
       <table cellpadding="5" cellspacing="2" class="style1">
           <tr>
               <td class="style8">
                   <asp:Label ID="Label8" runat="server" Text="Username" BackColor="#99FF66"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style9">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="style7">
                   <asp:Label ID="Label9" runat="server" Text="Password" BackColor="Lime"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style10">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="style8">
                   <asp:Label ID="Label10" runat="server" Text="email" BackColor="Lime"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style9">
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ControlToValidate="TextBox3" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="style11">
                   <asp:Label ID="Label11" runat="server" BackColor="Lime">Address</asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style12">
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       ControlToValidate="TextBox4" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="style10">
                   <asp:Label ID="Label12" runat="server" Text="DOB" BackColor="Lime" 
                       BorderStyle="None" Height="17px" Width="72px"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style3">
                   <asp:Calendar ID="Calendar1" runat="server" Height="200px" Width="220px" 
                       BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
                       DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                       ForeColor="#663399" ShowGridLines="True">
                       <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                       <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                       <OtherMonthDayStyle ForeColor="#CC9966" />
                       <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                       <SelectorStyle BackColor="#FFCC66" />
                       <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                           ForeColor="#FFFFCC" />
                       <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                   </asp:Calendar>
               </td>
           </tr>
           <tr>
               <td class="style3">
                   <asp:Label ID="Label13" runat="server" Text="Question" BackColor="Lime"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style3">
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem>your teacher name</asp:ListItem>
                       <asp:ListItem>your pet name</asp:ListItem>
                       <asp:ListItem>your friend name</asp:ListItem>
                       <asp:ListItem>your enimy name</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td class="style4">
                   <asp:Label ID="Label14" runat="server" Text="Answer" BackColor="Lime"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style8">
                   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                       ControlToValidate="TextBox5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
               </td>
               <td class="style5">
                   </td>
           </tr>
       </table>
       <br />
       <asp:Button ID="Button1" runat="server" Text="Sign UP" 
           onclick="Button1_Click" />
       <br />
       <br />
       <br />
   </div>
   
   
   <div class="col-sm-3"></div>
   
   </div>
   
   
   
   </div>
    </form>
</body>
</html>
