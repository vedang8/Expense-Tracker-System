<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="signup_login.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel2" runat="server" BackColor="#CC0066" BorderColor="Yellow" ForeColor="White" Width="118px">
                &nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="Addbtn_Click">Add Expense</asp:LinkButton>
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server" BackColor="#CC0066" ForeColor="White" Width="124px">
                &nbsp; View Expense
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="43px">
                <asp:Panel ID="addpanel" runat="server" BackColor="#CC0066" CssClass="auto-style1" ForeColor="#00FFCC" Height="29px" Width="129px">
                    &nbsp;&nbsp; Add Expense</asp:Panel>
                &nbsp;
            </asp:Panel>
        </div>
    </form>
</body>
</html>
