<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="signup_login.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbluser" runat="server" Text="Username : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbuser" runat="server" ToolTip="Please enter your username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblpass" runat="server" Text="Password : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbpass" runat="server" TextMode="Password" ToolTip="Please enter your password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreg" runat="server" OnClick="btnreg_Click" Text="Register" />
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">click here to Login</asp:LinkButton>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
