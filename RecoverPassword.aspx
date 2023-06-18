<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Your Password</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <div class="navbar navbar-default navabar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="Logo" src="Images/tc only 512.png" height="30" /></span>Pentalon</a>
                    </div>
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <div class="container-fluid">
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="#">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Products
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="Products">
                                            <li><a class="dropdown-item" href="#">Men</a></li>
                                            <hr class="dropdown-divider">
                                            <li><a class="dropdown-item" href="#">Shirts</a></li>
                                            <li><a class="dropdown-item" href="#">Pants</a></li>
                                            <li><a class="dropdown-item" href="#">Denims</a></li>
                                            <hr class="dropdown-divider">
                                            <li><a class="dropdown-item" href="#">Women</a></li>
                                            <hr class="dropdown-divider">
                                            <li><a class="dropdown-item" href="#">Top</a></li>
                                            <li><a class="dropdown-item" href="#">Leggins</a></li>
                                            <li><a class="dropdown-item" href="#">Denims</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contact</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="Signin.aspx">Sign In</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        </div>

        <div class="container">
            <div class="form-horizontal" >
                <h2>Reset Password</h2>
                <hr />
                
                 <div class="form-group">
                    <asp:Label ID="lblMsg" CssClass="col-md-2 control-label" runat="server" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
                     </div>
                <div class="form-group">
                    <asp:Label ID="lblPassword" CssClass="col-md-2 control-label" runat="server" Text="New Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" Cssclass="text-danger" runat="server" ErrorMessage="Please Enter Your Password !" ControlToValidate="tbNewPass" ></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblRetypePass" CssClass="col-md-2 control-label" runat="server" Text="Confirm Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbConfirmPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" Cssclass="text-danger" ErrorMessage="Both Password Must Be Same !" ControlToValidate="tbNewPass" ControlToCompare="tbConfirmPass"></asp:CompareValidator>
                    
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6"></div>
                    <asp:Button ID="btRecPass" runat="server" Cssclass="btn btn-default" Text="Reset" Visible="False" OnClick="btRecPass_Click" />
                    <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                </div>
            
            </div>
        </div>

    </form>
     <!---footer--->
        <hr />
        <footer>
            <div class="container">
                <p class="center" style="background-color:lightblue"><a herf="#">Back To Top</a></p>
                <p class="center" > &copy; 2022 Pentalon.com &middot; <a herf="Default.aspx">Home</a> &middot; <a herf="#">About</a> &middot; <a herf="#">Contact</a> &middot; <a herf="#">Product</a> &middot; </p>
            </div>
        </footer>
        <!---footer--->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
</body>
</html>

