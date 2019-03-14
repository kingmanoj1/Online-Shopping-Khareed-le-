<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_result.aspx.cs" Inherits="user_search_result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 253px;
        }
        .style2
        {}
        .style3
        {
            width: 129px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <div class="container">
  <div class="row">
  <div class="col-sm-1"></div>

  <div class="col-sm-10">
  
  
      <asp:DataList ID="DataList1" runat="server" CellPadding="5" CellSpacing="5" 
          RepeatColumns="4">
          <ItemTemplate>
              <table class="style1">
                  <tr>
                      <td class="style2" align="center" colspan="2">
                          <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label>
                          <asp:Label ID="Label2" runat="server" Text='<%# Eval("p_company") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td align="center" class="style2" colspan="2">
                          <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                          <asp:Label ID="Label4" runat="server" Text='<%# Eval("p_name") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="style2" align="center" colspan="2">
                          <asp:Label ID="Label5" runat="server" Text="size"></asp:Label>
                          <asp:Label ID="Label6" runat="server" Text='<%# Eval("p_size") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="style2" align="center" colspan="2">
                         
                          <img alt="" src='./img/<%#Eval("p_img") %>' height="200px" width="200px" /></a>
                          </td>
                  </tr>
                  <tr>
                      <td class="style2" align="center" colspan="2">
                          <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                          <asp:Label ID="Label8" runat="server" Text='<%# Eval("p_price") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="style3" align="center">
                          <asp:Button ID="Button1" runat="server" Text="Add to cart" />
                      </td>
                      <td align="center">
                          <asp:Button ID="Button2" runat="server" Text="Buy Now" />
                      </td>
                  </tr>
              </table>
          </ItemTemplate>
      </asp:DataList>
  
  </div>

  <div class="col-sm-1"></div>
  </div>
  </div>
  
    </form>
</body>
</html>
