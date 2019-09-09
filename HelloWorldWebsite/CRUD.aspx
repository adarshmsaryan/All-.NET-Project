<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CRUD.aspx.cs" Inherits="CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .auto-style4 {
            width: 72%;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style8 {
            width: 628px;
        }
        .auto-style9 {
            width: 205px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        CRUD OPERATION<br />
        <br />
    
    </div>
    &nbsp;<table border="1" class="auto-style4">
            <tr>
                <td colspan="4" style="color: #FF00FF; background-color: #00FFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMPLOYEE</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3" style="color: #FF00FF">Ecode:</td>
                <td class="auto-style9" style="color: #00FF00">
                    <asp:TextBox ID="textecode" runat="server" CssClass="auto-style10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3" style="color: #FF00FF">Ename:</td>
                <td class="auto-style9" style="color: #00FF00">
                    <asp:TextBox ID="textename" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3" style="color: #FF00FF">Salary:</td>
                <td class="auto-style9" style="color: #00FF00">
                    <asp:TextBox ID="textsalary" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3" style="color: #FF00FF">DeptId:</td>
                <td class="auto-style9" style="color: #00FF00">
                    <asp:TextBox ID="textdepid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="color: #00FF00">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="INSERT" />
                </td>
                <td class="auto-style1" style="color: #00FF00">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="UPDATE" />
                </td>
                <td style="color: #00FF00">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="height: 26px" Text="DELETE" />
                </td>
                <td class="auto-style9" style="color: #00FF00">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style5" OnClick="Button5_Click" Text="FIND BY ID" />
        <br />
        <asp:GridView ID="gv" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="183px" Width="391px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </form>
</body>
</html>
