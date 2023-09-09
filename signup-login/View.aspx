<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="signup_login.View" %>

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
            margin-left: 45px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#CC0066" BorderColor="#660033" CssClass="auto-style1" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="70px" Width="203px">
                &nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; History </asp:Panel>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None" Width="262px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Showbtn" runat="server" BackColor="#CC0066" ForeColor="White" Height="39px" OnClick="Showbtn_Click" Text="Show" Width="88px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Totalbtn" runat="server" BackColor="#CC0066" ForeColor="White" Height="39px" OnClick="Totalbtn_Click" Text="Total Expense" />
&nbsp;
            <asp:TextBox ID="Total" runat="server" ForeColor="#CC0066" Height="31px" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
