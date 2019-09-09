<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsViewDemo.aspx.cs" Inherits="DetailsViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Ecode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="330px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Ecode" HeaderText="Ecode" ReadOnly="True" SortExpression="Ecode" />
                <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Deptid" HeaderText="Deptid" SortExpression="Deptid" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ValtechDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_employee] WHERE [Ecode] = @original_Ecode AND (([Ename] = @original_Ename) OR ([Ename] IS NULL AND @original_Ename IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([Deptid] = @original_Deptid) OR ([Deptid] IS NULL AND @original_Deptid IS NULL))" InsertCommand="INSERT INTO [tbl_employee] ([Ecode], [Ename], [Salary], [Deptid]) VALUES (@Ecode, @Ename, @Salary, @Deptid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_employee]" UpdateCommand="UPDATE [tbl_employee] SET [Ename] = @Ename, [Salary] = @Salary, [Deptid] = @Deptid WHERE [Ecode] = @original_Ecode AND (([Ename] = @original_Ename) OR ([Ename] IS NULL AND @original_Ename IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([Deptid] = @original_Deptid) OR ([Deptid] IS NULL AND @original_Deptid IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Ecode" Type="Int32" />
                <asp:Parameter Name="original_Ename" Type="String" />
                <asp:Parameter Name="original_Salary" Type="Int32" />
                <asp:Parameter Name="original_Deptid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ecode" Type="Int32" />
                <asp:Parameter Name="Ename" Type="String" />
                <asp:Parameter Name="Salary" Type="Int32" />
                <asp:Parameter Name="Deptid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ename" Type="String" />
                <asp:Parameter Name="Salary" Type="Int32" />
                <asp:Parameter Name="Deptid" Type="Int32" />
                <asp:Parameter Name="original_Ecode" Type="Int32" />
                <asp:Parameter Name="original_Ename" Type="String" />
                <asp:Parameter Name="original_Salary" Type="Int32" />
                <asp:Parameter Name="original_Deptid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
