<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="signup_login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100px;
        }
        .auto-style3 {
            width: 100px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <asp:Image ID="expense_logo" runat="server" ImageUrl="~/expense_tracker_logo.png" width="40px" height="40px" />
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        </button>
         
        <div class="collapse navbar-collapse" id="navbarNav">
           <ul class="navbar-nav">
             
              <li class="nav-item">
                <a class="nav-link" href="#">Login</a>
              </li>
             
               <li class="nav-item">
                <a class="nav-link" href="signup.aspx">Sign Up</a>
              </li>
              
           </ul>
        </div>

    </nav>

    <%--  <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Username :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbloginuser" runat="server" placeholdaer="Enter user Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password : </td>
                <td>
                    <asp:TextBox ID="tbloginpass" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" />
        </div>
    </form> --%>
   


    <section class="vh-100">
      <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100 mt-5">
          <div class="col-md-9 col-lg-6 col-xl-5">
            <asp:Image runat="server" src="loginPage_Image.jpg" class="img-fluid" alt="Expanse Image" Width="500px" Height="500px" />
          </div>
          
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
            
              <form id="form1" runat="server">
              <!-- User input -->
              <div class="form-outline mb-4">
                <asp:TextBox ID="tbloginuser" runat="server" placeholder="Enter Username" class="form-control form-control-lg"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                     ControlToValidate="tbloginuser"
                     ErrorMessage="This field is required." 
                     ForeColor="Red">
                </asp:RequiredFieldValidator>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-3">
                <asp:TextBox ID="tbloginpass" runat="server" TextMode="Password" placeholder="Enter password" class="form-control form-control-lg"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPass" runat="server" 
                     ControlToValidate="tbloginpass"
                     ErrorMessage="This field is required." 
                     ForeColor="Red">
                </asp:RequiredFieldValidator>
              </div>

              <div class="text-center text-lg-start mt-4 pt-2">
                <asp:Button class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;" ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" />
                <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="signup.aspx" class="link-danger">Register</a></p>
              </div>

            </form>
          
            </div>
        </div>
      </div>
</section>
</body>
</html>
