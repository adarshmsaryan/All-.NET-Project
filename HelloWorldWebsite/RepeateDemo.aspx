<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepeateDemo.aspx.cs" Inherits="RepeateDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
             <HeaderTemplate>
                 <h1>EMPLOYEE DETAILS-2019</h1>
                 <hr color="red" />
             </HeaderTemplate>

              <ItemTemplate>
                  Ecode:<asp:Label ID="Label1" runat="server" Text='<%#Eval("Ecode") %>'></asp:Label><br />
                  Ename:<asp:Label ID="Label2" runat="server" Text='<%#Eval("Ename") %>'></asp:Label><br />
                  Salary:<asp:Label ID="Label3" runat="server" Text='<%#Eval("Salary") %>'></asp:Label><br />
                  DeptID:<asp:Label ID="Label4" runat="server" Text='<%#Eval("Deptid") %>'></asp:Label><br />
                   Bonus:<asp:Label ID="Label5" runat="server" Text='<%#GetBonus(Eval("salary"))%>'></asp:Label><br />
              </ItemTemplate>
            <SeparatorTemplate>
                <hr color="green" />
            </SeparatorTemplate>

            <FooterTemplate>
                <hr />
               <h3> &copy;copyright-Valtech India,Assoc Adarsha M S,ph-9480368974</h3>
            </FooterTemplate>
        </asp:Repeater>
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
