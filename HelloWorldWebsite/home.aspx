<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title></title>
      <script type="text/javascript">
        function checkLength(source, args) {
            var v = args.Value;
          //  alert(v);
            if(v.length>5)
            {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 463px;
        }
        .auto-style2 {
            width: 463px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Height="30px" Text="VALIDATION CONTROL"></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Enter ecode:</td>
                <td>
                    <asp:TextBox ID="textecode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textecode" Display="Dynamic" ErrorMessage="Ecode Must Not be Empty" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textecode" Display="Dynamic" ErrorMessage="Mustbe 3 digit" ValidationExpression="\d{3,3}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Enter Password:</td>
                <td>
                    <asp:TextBox ID="textpwd" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="White" ControlToCompare="textpwd" ControlToValidate="textcpwd" ErrorMessage="PASSWORD WRONG " ForeColor="#3333FF"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="textcpwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Enter Salary:</td>
                <td>
                    <asp:TextBox ID="textsalary" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" BackColor="White" ControlToValidate="textsalary" ErrorMessage="Salary range must be 10000 to 30000" MaximumValue="30000" MinimumValue="10000" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Data:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="textdata" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="textdata" ErrorMessage="invalid data" ClientValidationFunction="checkLength" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#FF66CC" BorderColor="#FF33CC" Font-Bold="True" Font-Italic="True" ForeColor="#FF3399" ShowMessageBox="True" ShowSummary="False" />
    </form>
</body>
</html>
