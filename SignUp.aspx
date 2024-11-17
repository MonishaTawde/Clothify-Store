<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="NyraShopping.Root.SignUp" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clothes Online Shopping</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="~/css/Custome.css" rel="stylesheet" />
   <link rel="shortcut icon" type="x-icon" class="img-circle" href="../Image/hbl.jpg"/> 
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="../Content/font-awesome.min.css" rel="stylesheet" />

</head>
    <body style="top:auto; font-size:large;">
        <img src="../Image/cartimg4.jpg" height="1200" width="1349" />
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
                    <li class ="drodown">
    <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
    <ul class ="dropdown-menu ">
        <li> <a href ="Products.aspx">All Products</a></li>
        <li role="separator" class ="divider "></li> 
        <li class ="dropdown-header">Women</li>
        <li role="separator" class ="divider "></li> 
        <li> <a href ="KurtaSets.aspx">Kurta & Sets</a></li>
        <li> <a href="Sarees.aspx">Sarees</a></li>
        <li> <a href ="Western.aspx">Western Wear</a></li>
        <li role="separator" class ="divider "></li>
        <li class ="dropdown-header ">Men</li>
        <li role="separator" class ="divider "></li>
        <li> <a href ="TopWear.aspx">Top Wear</a></li>
        <li> <a href ="BottomWear.aspx">Bottom Wear</a></li>
        <li> <a href ="Ethnic.aspx">Ethnic Wear</a></li>
        <li role="separator" class ="divider "></li>
        <li class ="dropdown-header ">Kids</li>
        <li role="separator" class ="divider "></li>
        <li> <a href ="GirlsSets.aspx">Girls Sets</a></li>
        <li> <a href ="BoysSets.aspx">Boys Sets</a></li>
        <li> <a href ="NightDress.aspx">Night Dress</a></li>
    </ul>

</li>
                   
                    <li class ="active" ><a href ="SignUp.aspx">SignUp</a> </li>
                    <li ><a href="SignIn.aspx">SignIn</a></> </li>
                </ul>
            </div>
        </div>
    </div>
</div>

        <!---signup page--->
<div>
    <div class="center-page">
        <h1 style="font-family: 'Sitka Text'; font-weight: normal;top:80px; text-decoration: blink">SIGNUP HERE</h1>
        <div class="wrapper">
            <form id="form2" runat="server" >
                <div class="input-box">
                    <asp:Label ID="Label1"  CssClass ="control-label " runat="server" Text="UserName"></asp:Label>
                    <asp:TextBox ID="txtUname" class="input"  runat="server"></asp:TextBox>                   
                </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Username must contain: Min 8 Charaters Atleast 1 Alphabet and 1 Number" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}$" ControlToValidate="txtUname" Display="Dynamic"></asp:RegularExpressionValidator>
                

                <div class="input-box">
                    <asp:Label ID="Label2" CssClass ="control-label " runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPass" class="input" runat="server" TextMode="Password" ToolTip="Password"></asp:TextBox>                  
                </div>
                
                

                <div class="input-box">
                    <asp:Label ID="Label3" CssClass ="control-label " runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="txtCPass" class="input"  runat="server" TextMode="Password" ></asp:TextBox>
                </div>
                
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtCPass" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="Password Does Not Match" ForeColor="Red"></asp:CompareValidator>
                
                <div class="input-box">
                    <asp:Label ID="Label4" CssClass ="control-label " runat="server" Text="full Name"></asp:Label>
                    <asp:TextBox ID="txtName" class="input"  runat="server"> </asp:TextBox>                    
               </div>
                
                <div class="input-box">
                    <asp:Label ID="Label5" CssClass ="control-label " runat="server" Text="Email Id"></asp:Label>
                    <asp:TextBox ID="txtEmail" class="input"  runat="server" ></asp:TextBox>
                </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" padding="5px" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter a Correct One" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
                
                <div class="register-link" style="padding:10px">

                    <asp:Button ID="txtsignup" Class="btn"  CssClass ="btn btn-success" runat="server" text="Register" OnClick="Txtsignup_Click" Height="38px" Width="338px" />
                    <p style="font-size: large">Already Have Account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="SignIn.aspx">Login</asp:HyperLink></p>

                </div>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="True" ></asp:Label>
            </form>
        </div>

     </div>

    </div>

          

          









         

    <!---Footer COntents End---->

</body>
</html>