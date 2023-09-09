<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="signup_login.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 45px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            margin-left: 47px;
        }
        .auto-style4 {
            margin-left: 48px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            margin-left: 52px;
        }
        .auto-style7 {
            margin-left: 55px;
        }
        .auto-style8 {
            margin-left: 57px;
        }
        .auto-style9 {
            margin-left: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#CC0066" BorderColor="#660033" CssClass="auto-style1" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="70px" Width="203px">
                &nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Expenses</asp:Panel>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" ForeColor="#CC0066" Width="136px">
                Expense Name</asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
&nbsp;<asp:Panel ID="Panel3" runat="server" CssClass="auto-style4" ForeColor="#CC0066" Width="137px">
                Expense Amount</asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
            <br />
            <br />
            <asp:Panel ID="Panel5" runat="server" CssClass="auto-style6" ForeColor="#CC0066" Width="151px">
                Expense Category</asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Food</asp:ListItem>
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Shopping</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Panel ID="Panel6" runat="server" CssClass="auto-style8" ForeColor="#CC0066" Width="151px">
                Expense Date</asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style7" ForeColor="#CC0066" Width="173px">
                Expense Description</asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="100px" Width="239px"></asp:TextBox>
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#CC0066" CssClass="auto-style9" ForeColor="White" Text="Add Expense" Width="156px" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
