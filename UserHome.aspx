﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="NyraShopping.Root.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clothes Online Shopping</title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous">

    </script>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="~/css/Custome.css" rel="stylesheet" />
   <link rel="shortcut icon" type="x-icon" class="img-circle" href="../Image/hbl.jpg"/> 
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>

</head>
    <body style="font-family:Verdana; font-size:large; background-image: url('../Image/skin.jpg')">
<body style="font-family:'Sitka Text'; font-size:large">
    <form id="form1" runat="server">
    <div>
            <div class ="navbar navbar-inverse navbar-fixed-top" style="background-color:#000; font-family:'Times New Roman', Times, serif; font-size:large"  role ="navigation">
        <div class ="container">
            <div class ="navbar-header">
                <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                    <span class ="sr-only">Toggle navigat</span>
                    <span class ="icon-bar"></span>
                    <span class ="icon-bar"></span>
                    <span class ="icon-bar"></span>

                </button>
                <a class ="navbar-brand" href ="Default.aspx" ></a> <span style="font-style: normal; font-weight: lighter; text-transform: capitalize; color: #fff; font-size: xx-large; font-family: Verdana">
    <img class="img-circle" src="../Image/hbl.jpg" height="40" /> Clothify</span>

            </div>
            <div class ="navbar-collapse collapse">
                <ul class ="nav navbar-nav navbar-right" style="color:white">
                    <li ><a href ="Default.aspx">Home</a> </li>
                    <li ><a href ="About.aspx">About</a> </li>
                    
                        <li class="drodown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                <li><a href="Products.aspx">All Products</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="Women.aspx">Women's</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="KurtaSets.aspx">Kurta & Sets</a></li>
                                <li><a href="Sarees.aspx">Sarees</a></li>
                                <li><a href="Western.aspx">Western Wear</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="Men.aspx">Men's</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="TopWear.aspx">Top Wear</a></li>
                                <li><a href="BottomWear.aspx">Bottom Wear</a></li>
                                <li><a href="Ethnic.aspx">Ethnic Wear</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="Kids.aspx">Kid's</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="GirlsSets.aspx">Girls Sets</a></li>
                                <li><a href="BoysSets.aspx">Boys Sets</a></li>
                                <li><a href="NightDress.aspx">Night Dress</a></li>
                            </ul>

                        </li>
                    <li>
                            <button id="btnCart" class="btn btn-info navbar-btn" text="CART" style="padding: 5px; font-weight: bold; border-radius: 10px; border: none" type="button">
                                CART <span class="badge" id="pCount" runat="server"></span>
                            </button>
                        </li>
                        <li>

                            <asp:Button ID="btnLogin" CssClass="btn btn-default navbar-btn " runat="server" Text="SignIn" OnClick="BtnLogin_Click" />


                        </li>
                        <li>
                        <asp:Button ID="Button1" CssClass ="btn-link navbar-btn" style="font-family:Papyrus; color:yellow; text-decoration:solid; font-size:15px" runat="server" Text=""  Font-Bold="True" Font-Size="XX-Large" />                            
                            <asp:Button ID="btnlogout" BorderStyle="None" CssClass ="btn btn-danger navbar-btn" runat="server" text="SignOut" OnClick="Btnlogout_Click" />
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
     </div>

        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


        <asp:Label ID="lblSuccess" runat="server" style="margin:100px" CssClass ="text-success " Font-Size="XX-Large"></asp:Label>
        <img src="../Image/slider5.jpg" style="width:1150px; margin:100px" />
         

         <!---Footer COntents Start here---->
        <hr />
        <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="SignIn.aspx">Back to top</a></p>
                <p>&copy;2024 Clothify.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="AdminAbout.aspx">About</a>&middot;<a href ="Products.aspx">Products</a> </p>
            </div>

        </footer>

         <!---Footer COntents End---->
    </form>
</body>
</html>