<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="signup_login.Welcome" %>

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
    <form id="form1" runat="server">
        <div>
            &nbsp;<asp:Panel ID="Panel2" runat="server" BackColor="#CC0066" BorderColor="Yellow" ForeColor="White" Width="200px" Height="72px" CssClass="auto-style3">
                &nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" ForeColor="White" OnClick="Addbtn_Click">Add Expense</asp:LinkButton>
                &nbsp;
            </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server" BackColor="#CC0066" ForeColor="White" Width="200px" CssClass="auto-style3" Height="72px">
                &nbsp; &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="Viewbtn" runat="server" Font-Size="Large" ForeColor="White" OnClick="Viewbtn_Click">View History</asp:LinkButton>
                <br />
                &nbsp;
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="67px" BackColor="#CC0066" CssClass="auto-style3" Width="200px">
                &nbsp;
                <br />
                &nbsp;&nbsp;
                <asp:LinkButton ID="Dailytot" runat="server" Font-Size="Large" ForeColor="White" OnClick="Dailytot_Click">Daily Expenditure</asp:LinkButton>
                &nbsp;
            </asp:Panel>
        </div>
    </form>
</body>
</html>
