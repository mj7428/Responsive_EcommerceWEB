5<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Pentalon</title>
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.herf = "/Cart.aspx";
            })
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
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
                                        <a class="nav-link active" aria-current="page" href="#">Home</a>
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
                                    <li>
                                       <button id="btnCart" class="btn btn-primary btn-default navbar-btn" type="button">
                                           Cart<span class="badge" id="pCount" runat="server"></span>
                                       </button>
                                    </li>
                                     
                                    <li class="nav-item">
                                        <a class="nav-link" href="Signup.aspx">Sign Up</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="Signin.aspx">Sign In</a>
                                        </li>
                                    <li>
                                        <asp:Button ID="btnSignout" runat="server" CssClass="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignout_Click" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!---Carsouel--->
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Images/Carousel 01.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>IPhone 6 Plus</h5>
                            <p>The New Iphone 6 Plus.</p>
                            <p><a class="btn btn-lg btn-primary" href="Signup.aspx" role="button">Join Us Today</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Carousel 02.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Glalaxy Note 4</h5>
                            <p>Bigger Note.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Carousel 03.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>HD Ultrawide LED Monitor</h5>
                            <p>Wide Angle.</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <br/>
        <br/>
        <!---middle content--->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb01.jpeg" alt="thumb01" width="140" height="140" />
                    <h2>Mobiles</h2>
                    <p>
                        Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery.<br />
                        4.2 out of 5 stars 163,033<br />
                        Limited time deal<br />
                        ₹6,999 ₹8,499 (18% off) 
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb02.jpg" alt="thumb02" width="140" height="140" />
                    <h2>Clothing</h2>
                    <p>
                        Univerz <br />
                        Men's Regular Fit Trackpants | Solid Joggers Gym Pants for Men | Slim Fit Athletic Track Pants | Clothing Men's | Men's Lycra Stretchable Regular Fit <br />
                        5.0 out of 5 stars 2 <br />
                        -60% ₹399 ₹999 <br />
                        FREE Delivery on first order.
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb03.jpg" alt="thumb03" width="140" height="140" />
                    <h2>Footwear</h2>
                    <p>
                      DRUNKEN <br />
                      Slipper For Men's and Women's Flip Flops Massage Fashion Slides Open Toe Non Slip<br />
                      4.2 out of 5 stars 324<br />
                      -50% ₹399 ₹799<br />
                      FREE Delivery on first order.
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
            </div>
        </div>
        <!---middle content--->
        <!---footer--->
        <hr />
        <footer>
            <div class="container">
                <p class="center" style="background-color:lightblue"><a herf="#">Back To Top</a></p>
                <p class="center" > &copy; 2022 Pentalon.com &middot; <a herf="Default.aspx">Home</a> &middot; <a herf="#">About</a> &middot; <a herf="#">Contact</a> &middot; <a herf="#">Product</a> &middot; </p>
            </div>
        </footer>
        <!---footer--->

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
</body>
</html>
