<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="NyraShopping.Root.SignIn" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clothes Online Shopping</title>
    <meta charset="utf-8" />
    
    <link rel="shortcut icon" type="x-icon" class="img-circle" href="../Image/hbl.jpg"/> 
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="~/css/Custome.css" rel="stylesheet" />
   
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="../Content/font-awesome.min.css" rel="stylesheet" />

    <style type="text/css">
        
        
    </style>

</head>
    <body style="background-image: url('../Image/cartimg4.jpg'); font-size:large;">
         
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
                   
                    <li ><a href ="SignUp.aspx">SignUp</a> </li>
                    <li class ="active"><a href="SignIn.aspx">SignIn</a></> </li>
                </ul>
            </div>
        </div>
    </div>
        </div>
     
   <div class="back">
       <div class="center-page" >
           <h1 style="font-family: 'Sitka Text'; font-weight: normal; text-decoration: blink">Login</h1>
           <div class="wrapper">
            
             <form id="form1" runat="server" >
                 
                 <div class="input-box">
                     <asp:Label ID="Label1"  class="contact-label" CssClass ="control-label " runat="server" Text="UserName"></asp:Label>
                     <asp:TextBox ID="txtUsername"  class="input"  runat="server"></asp:TextBox>                     
                 </div>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Username" ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                 <div class ="input-box">
                     <asp:Label ID="Label2"  class="contact-label" CssClass="control-label " runat="server" Text="Password"></asp:Label>
                     <asp:TextBox ID="txtPass" class="input"  runat="server" TextMode="Password"></asp:TextBox>                    
                 </div>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="*the password field is required" ControlToValidate="txtPass" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                  <div class ="remember-password">
                      <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" Font-Size="12px" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                  </div>
                  <asp:Button ID="btnLogin" class="btn" Width="350px" CssClass ="btn btn-success" Text="Login" runat="server" OnClick="BtnLogin_Click" />         

                 <div class="register-link">
                     <p>Don't Have Account? <asp:HyperLink ID="HyperLink1" Text="Sign Up" runat="server" NavigateUrl="~/Root/SignUp.aspx"></asp:HyperLink></p>
                     <p>OR</p>
                     <asp:HyperLink ID="HyForgotPass" Text="Forgot Password" runat="server" NavigateUrl="~/Root/ForgotPassword.aspx"></asp:HyperLink>
                 </div>

                 <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>




             </form>

        </div>

     </div>
  </div> 
                        
        <!----singin form End--->

          <!---Footer COntents Start here---->

        

         <!---Footer COntents End---->
</body>
</html>
