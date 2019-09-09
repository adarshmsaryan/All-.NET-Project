<%@ Page Title="" Language="C#" Theme="Skinfile" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="customerid" HeaderText="customerid" ReadOnly="True" SortExpression="customerid" />
        <asp:BoundField DataField="customername" HeaderText="customername" SortExpression="customername" />
        <asp:BoundField DataField="customerCity" HeaderText="customerCity" SortExpression="customerCity" />
        <asp:BoundField DataField="pin" HeaderText="pin" SortExpression="pin" />
    </Columns>
</asp:GridView>
    <asp:Image ID="Image1" runat="server" ImageUrl="C:\Users\Adarsha.MS\Pictures\Screenshots" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerExamConnectionString %>" DeleteCommand="DELETE FROM [CustomerExam] WHERE [customerid] = @customerid" InsertCommand="INSERT INTO [CustomerExam] ([customerid], [customername], [customerCity], [pin]) VALUES (@customerid, @customername, @customerCity, @pin)" SelectCommand="SELECT * FROM [CustomerExam]" UpdateCommand="UPDATE [CustomerExam] SET [customername] = @customername, [customerCity] = @customerCity, [pin] = @pin WHERE [customerid] = @customerid">
    <DeleteParameters>
        <asp:Parameter Name="customerid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="customerid" Type="Int32" />
        <asp:Parameter Name="customername" Type="String" />
        <asp:Parameter Name="customerCity" Type="String" />
        <asp:Parameter Name="pin" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="customername" Type="String" />
        <asp:Parameter Name="customerCity" Type="String" />
        <asp:Parameter Name="pin" Type="Int32" />
        <asp:Parameter Name="customerid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

