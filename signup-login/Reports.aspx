<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="signup_login.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            
            align-content:center;
        }
        .auto-style2 {
            margin-top: 40px;
            border-color: #040D12;
            border-width: 10px;
            border-radius: 5px;
            padding: 10px;
        }
        .auto-style4 {
            width: 794px;
        }
        .auto-style6 {
            width: 794px;
            height: 220px;
        }
        .auto-style7 {
            height: 220px;
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
            <asp:Panel ID="EmptyMsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000" Visible="False" Width="384px">
                There is no data for YOUR CATEGORY!!!</asp:Panel>

        </div>
            <%-- <table class="auto-style1">

            <tr>
                
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Maximum"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="Maxtb" runat="server" ForeColor="#CC0066" Height="52px" Font-Size="Large"></asp:TextBox>
                </td>
                

                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Minimum"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="Mintb" runat="server" ForeColor="#CC0066" Height="50px" Width="152px" Font-Size="Large"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Average"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="Avgtb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Total"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="Totaltb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Highest Expense"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="Hexptb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Lowest Expense"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="Lexptb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <br />
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Expense Category"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Food</asp:ListItem>
                        <asp:ListItem>Medicine</asp:ListItem>
                        <asp:ListItem>Shopping</asp:ListItem>
                        <asp:ListItem>Grooming</asp:ListItem>
                        <asp:ListItem>Travel</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Show" runat="server" BackColor="#00FFCC" BorderColor="#FF6666" Font-Size="Medium" ForeColor="Maroon" OnClick="Show_Click" Text="Show" />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>

        </table>
                --%>
            

        <div class="Container">

            <div class="row my-5">
                <div class="col-sm">
                    <center>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Maximum"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="Maxtb" runat="server" ForeColor="#CC0066" Height="52px" Font-Size="Large"></asp:TextBox>
                    </center>
                </div>
                <div class="col-sm">
                    <center>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Minimum"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="Mintb" runat="server" ForeColor="#CC0066" Height="50px" Width="152px" Font-Size="Large"></asp:TextBox>
                    </center>
                </div>
            </div>

           <div class="row my-5">
                <div class="col-sm">
                    <center>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Average"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="Avgtb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                    </center>
                </div>
                <div class="col-sm">
                    <center>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Total"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="Totaltb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                    </center>
                </div>
            </div>

            <div class="row my-5">
                <div class="col-sm">
                    <center>    
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Highest Expense"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="Hexptb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                    </center>
                </div>
                <div class="col-sm">
                    <center>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Lowest Expense"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="Lexptb" runat="server" ForeColor="#CC0066" Height="50px" Font-Size="Large"></asp:TextBox>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    <center>  
                        <br />
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style2" BackColor="#CC0066" Font-Size="Large" ForeColor="White" Text="Expense Category"></asp:Label>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Food</asp:ListItem>
                            <asp:ListItem>Medicine</asp:ListItem>
                            <asp:ListItem>Shopping</asp:ListItem>
                            <asp:ListItem>Grooming</asp:ListItem>
                            <asp:ListItem>Travel</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="Show" runat="server" BackColor="#00FFCC" BorderColor="#FF6666" Font-Size="Medium" ForeColor="Maroon" OnClick="Show_Click" Text="Show" />
                        <br />
                        <br />
                        <br />
                    </center>
                </div>
            </div>
        </div>
       
    </form>
</body>
</html>
