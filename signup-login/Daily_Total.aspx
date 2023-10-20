<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Daily_Total.aspx.cs" Inherits="signup_login.Daily_Total" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            margin-top: 40px;
            border-color: #040D12;
            border-width: 10px;
            border-radius: 5px;
            padding: 10px;
        }
        .auto-style3 {
            margin-left: 65px;
            margin-top: 0px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>

<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/expense_tracker_logo.png" width="30px" height="30px" />
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        </button>
         
        <div class="collapse navbar-collapse" id="navbarNav">
           <ul class="navbar-nav">
             
               <li class="nav-item">
                <a class="nav-link" href="Welcome.aspx">Home</a>
               </li>

               <li class="nav-item">
                <asp:LinkButton ID="LinkButton2" runat="server" class="nav-link" OnClick="Addbtn_Click" >Add Expense</asp:LinkButton>
               </li>

               <li class="nav-item">
                <asp:LinkButton ID="LinkButton3" runat="server" class="nav-link" OnClick="Viewbtn_Click" >View History</asp:LinkButton>
               </li>

               <li class="nav-item">
                <asp:LinkButton ID="LinkButton4" runat="server" class="nav-link" OnClick="Dailytot_Click" >Daily Expense</asp:LinkButton>
               </li>

               <li class="nav-item">
                <asp:LinkButton ID="LinkButton5" runat="server" class="nav-link" OnClick="Reportsbtn_Click" >Reports</asp:LinkButton>
               </li>

               <li>
                <asp:Button ID="Button1" runat="server" class="nav-link" OnClick="Logoutbtn_Click" Text="Logout"/>
               </li>

           </ul>
        </div>

    </nav>
       
        <div>
            <center><asp:Panel ID="Panel1" runat="server" BackColor="#CC0066" CssClass="auto-style1" Font-Bold="True" Font-Size="Large" ForeColor="White" style="width: 200px;">
                 Daily Expenditure
            </asp:Panel></center>
            
            <hr class="mx-5" /> 

            <br />
            
            <center>
            <p>
            Date:
            <asp:TextBox ID="textdt" runat="server" Height="16px" TextMode="Date" Width="150px"></asp:TextBox>
            <br />
            <br />
            Daily Expense:
            <asp:TextBox ID="Total" runat="server"></asp:TextBox>
            <asp:Button ID="Showdaily" runat="server" BackColor="#CC0066" ForeColor="White" Height="28px" OnClick="Showdaily_Click" Text="Show" Width="88px" />
            </p>
                <p>
            </p>
                <asp:Panel ID="Panel2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000">
                    Whoaa, You haven&#39;t made any Expense Today!!!</asp:Panel>
            </center>

            <br />
            <br />

            <center>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style3" ForeColor="#333333" GridLines="None" Height="210px" Width="360px">
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
            </center>

        </div>
    </form>
</body>
</html>
