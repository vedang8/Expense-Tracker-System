<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Daily Expenditure.aspx.cs" Inherits="signup_login.Daily_Expenditure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            margin-left: 180px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="67px" BackColor="#CC0066" CssClass="auto-style3" Width="200px">
                &nbsp;
                <br />
                &nbsp;&nbsp;
                <asp:LinkButton ID="Dailytot" runat="server" Font-Size="Large" ForeColor="White" OnClick="Dailytot_Click">Daily Expenditure</asp:LinkButton>
                &nbsp;
            </asp:Panel>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
