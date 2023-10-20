<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="signup_login.Add" %>

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
        .auto-style2 {
            margin-top: 4px;
        }
        .auto-style4 {
            
        }
        .auto-style5 {
            
        }
        .auto-style6 {
            
        }
        .auto-style7 {
            
        }
        .auto-style8 {
            
        }
        .auto-style9 {
            
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
                Add Expenses
            </asp:Panel></center>
            
            <hr class="mx-5" /> 

            <br />

            <center>
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" ForeColor="#191717" Width="136px">
                Expense Name: 
            </asp:Panel>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            </center>

            <br />

            <center>
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style4" ForeColor="#191717" Width="137px">
                Expense Amount
            </asp:Panel>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
            </center>

            <br />

            <center>
            <asp:Panel ID="Panel5" runat="server" CssClass="auto-style6" ForeColor="#191717" Width="151px">
                Expense Category
            </asp:Panel>

            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Food</asp:ListItem>
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Shopping</asp:ListItem>
                <asp:ListItem>Grooming</asp:ListItem>
                <asp:ListItem>Travel</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            </center>

            <br />

            <center>
            <asp:Panel ID="Panel6" runat="server" CssClass="auto-style8" ForeColor="#191717" Width="151px">
                Expense Date
            </asp:Panel>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
            </center>

            <br />

            <center>
            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style7" ForeColor="#191717" Width="173px">
                Expense Description
            </asp:Panel>
            <asp:TextBox ID="TextBox3" runat="server" Height="100px" Width="239px"></asp:TextBox>
            </center>

            <br />

            <center>
            <asp:Button ID="Addbtn" runat="server" BackColor="#CC0066" CssClass="auto-style9" ForeColor="White" Text="Add Expense" Width="156px" OnClick="Addbtn_Click" />
            </center>

            <br />

            <center>
            <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0066"></asp:TextBox>
            </center>

            <br />
            
        </div>

    </form>


</body>
</html>
