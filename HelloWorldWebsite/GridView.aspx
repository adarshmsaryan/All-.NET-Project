<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 72%;
        }
        .auto-style8 {
            width: 628px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 628px;
            height: 28px;
        }
        .auto-style12 {
            width: 24%;
            height: 28px;
        }
        .auto-style13 {
            width: 24%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ecode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="825px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Ecode" HeaderText="Ecode" ReadOnly="True" SortExpression="Ecode" />
                <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Deptid" HeaderText="Deptid" SortExpression="Deptid" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ValtechDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_employee] WHERE [Ecode] = @Ecode" InsertCommand="INSERT INTO [tbl_employee] ([Ecode], [Ename], [Salary], [Deptid]) VALUES (@Ecode, @Ename, @Salary, @Deptid)" SelectCommand="SELECT * FROM [tbl_employee]" UpdateCommand="UPDATE [tbl_employee] SET [Ename] = @Ename, [Salary] = @Salary, [Deptid] = @Deptid WHERE [Ecode] = @Ecode">
            <DeleteParameters>
                <asp:Parameter Name="Ecode" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="textecode" Name="Ecode" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="textename" Name="Ename" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="textsalary" Name="Salary" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="textdepid" Name="Deptid" PropertyName="Text" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ename" Type="String" />
                <asp:Parameter Name="Salary" Type="Int32" />
                <asp:Parameter Name="Deptid" Type="Int32" />
                <asp:Parameter Name="Ecode" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <table border="1" class="auto-style4">
            <tr>
                <td colspan="2" style="color: #FF00FF; background-color: #00FFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMPLOYEE</td>
            </tr>
            <tr>
                <td class="auto-style11" style="color: #FF00FF">Ecode:</td>
                <td class="auto-style12" style="color: #00FF00">
                    <asp:TextBox ID="textecode" runat="server" CssClass="auto-style10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="color: #FF00FF">Ename:</td>
                <td class="auto-style13" style="color: #00FF00">
                    <asp:TextBox ID="textename" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="color: #FF00FF">Salary:</td>
                <td class="auto-style13" style="color: #00FF00">
                    <asp:TextBox ID="textsalary" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="color: #FF00FF">DeptId:</td>
                <td class="auto-style13" style="color: #00FF00">
                    <asp:TextBox ID="textdepid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color: #00FF00">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="INSERT" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
