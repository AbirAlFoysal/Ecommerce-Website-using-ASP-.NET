﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Abir's Shop</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top bg-info shadow" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img src="icons/safeIcons.png" alt="MyEShoppoing" height="30" /></span>
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a> </li>
                        <li><a href="About.aspx">About</a> </li>
                        <li class="drodown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b
                            class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                <li><a href="Products.aspx">All Products</a></li>
                            </ul>
                        </li>
                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>
                            </button>
                        </li>
                        <li id="btnSignUP" runat="server"><a href="SignUp.aspx">SignUp</a> </li>
                        <li id="btnSignIN" runat="server"><a href="SignIn.aspx">SignIn</a> </li>
                        <li>
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server"
                                Text="Sign Out" OnClick="btnlogout_Click" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!---image slider---->
        <div class="container">
            <h2>
                Carousel Example</h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="ImgSlider/1.jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="item">
                        <img src="ImgSlider/2.jpg" alt="" style="width: 100%;">
                    </div>
                    <div class="item">
                        <img src="ImgSlider/3.jpg" alt="" style="width: 100%;">
                    </div>
                                        <div class="item">
                        <img src="ImgSlider/4.jpg" alt="" style="width: 100%;">
                    </div>                    <div class="item">
                        <img src="ImgSlider/5.jpg" alt="" style="width: 100%;">
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                    href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                    </span><span class="sr-only">Next</span> </a>
            </div>
        </div>
        <!---image slider End---->
    </div>
    <!---Middle COntents start---->
    <hr />
    <div class="container center ">
        <div class="panel panel-success">
            <div class="panel-heading">
                <b>Product List</b></div>
            <div class="panel-body">
                <div class="row" style="padding-top: 50px">
                    <asp:Repeater ID="rptrProducts" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-3 col-md-3">
                                <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                    <div class="thumbnail">
                                        <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                            alt="<%# Eval("ImageName") %>" />
                                        <div class="caption">
                                            <div class="probrand">
                                                 <%# Eval ("PName") %>
                                            </div>
                                            <div class="proName">
                                               <%# Eval ("BrandName") %>
                                            </div>
                                            <div class="proPrice">
                                                <span class="proOgPrice">
                                                    <%# Eval ("PPrice","{0:0,00}") %>
                                                </span>
                                                <%# Eval ("PSelPrice","{0:c}") %>
                                                <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                                    off) </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!---Middle COntents End---->
    <!---Footer COntents Start here---->
    <hr />
    <footer>
            <div class ="container ">
             <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
            </div>
        </footer>
    <!---Footer COntents End---->
    </form>
</body>
</html>
