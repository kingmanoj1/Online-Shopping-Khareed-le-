<%@ Page Language="C#" AutoEventWireup="true" CodeFile="operation.aspx.cs" Inherits="operation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 34%;
            height: 155px;
        }
        .style2
        {
            width: 101px;
        }
        .style3
        {
            width: 90px;
        }
        .style4
        {
            width: 38%;
            height: 261px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 100%;
        }
        .style7
        {
            height: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:LinkButton ID="LinkButton2" runat="server">New User??</asp:LinkButton>
            </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Login" />
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="style4">
        <tr>
            <td align="center" class="style5">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="165px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="162px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Login" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server">New User???</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server">Forgot Password</asp:LinkButton>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            p_name:
            <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
            <br />
            p_desc:
            <asp:Label ID="p_descLabel" runat="server" Text='<%# Eval("p_desc") %>' />
            <br />
            p_price:
            <asp:Label ID="p_priceLabel" runat="server" Text='<%# Eval("p_price") %>' />
            <br />
            p_qty:
            <asp:Label ID="p_qtyLabel" runat="server" Text='<%# Eval("p_qty") %>' />
            <br />
            p_img:
            <asp:Label ID="p_imgLabel" runat="server" Text='<%# Eval("p_img") %>' />
            <br />
            p_size:
            <asp:Label ID="p_sizeLabel" runat="server" Text='<%# Eval("p_size") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT * FROM [product]">
    </asp:SqlDataSource>
    <br />
    <asp:Repeater ID="Repeater1" runat="server" 
        onitemcommand="Repeater1_ItemCommand">
    </asp:Repeater>
    <br />
    <asp:GridView ID="GridView1" runat="server">
        <EmptyDataTemplate>
            <asp:Image ID="Image2" runat="server" Height="101px" />
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
    <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            p_name:
            <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
            <br />
            p_desc:
            <asp:Label ID="p_descLabel" runat="server" Text='<%# Eval("p_desc") %>' />
            <br />
            p_price:
            <asp:Label ID="p_priceLabel" runat="server" Text='<%# Eval("p_price") %>' />
            <br />
            p_qty:
            <asp:Label ID="p_qtyLabel" runat="server" Text='<%# Eval("p_qty") %>' />
            <br />
            p_img:
            <asp:Label ID="p_imgLabel" runat="server" Text='<%# Eval("p_img") %>' />
            <br />
            p_size:
            <asp:Label ID="p_sizeLabel" runat="server" Text='<%# Eval("p_size") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:EditorZone ID="EditorZone1" runat="server" Height="204px" Width="346px">
        <ZoneTemplate>
            <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
        </ZoneTemplate>
    </asp:EditorZone>
    <br />
    <table class="style6">
        <tr>
            <td class="style7">
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                </asp:Repeater>
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
