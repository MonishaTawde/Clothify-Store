<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="NyraShopping.Root.ForgotPassword" %>


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
<body style="font-size:large">
    <img src="../Image/dbgnd.jpg" height="640" width="1400" />
    
            <div>
            <div class ="navbar navbar-inverse navbar-fixed-top" role ="navigation" style="background-color:#000">
                <div class ="container ">
                    <div class ="navbar-header">
                        <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target="navbar-collapse">
                            <span class ="sr-only">Toggle navigat</span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>
                        </button>
                      <a class ="navbar-brand" href ="Default.aspx" ></a> <span style="font-style: normal; font-weight: lighter; text-transform: capitalize; color: #fff; font-size: xx-large; font-family: Verdana">
                          <img class="img-circle" src="../Image/hbl.jpg" height="40" /> Clothify</span></div>
                    <div class ="navbar-collapse collapse">
                <ul class ="nav navbar-nav navbar-right">
                    <li ><a href ="Default.aspx">Home</a> </li>
                    <li ><a href ="About.aspx">About</a> </li>
                    
                    <li class ="drodown">
    <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
    <ul class ="dropdown-menu ">
        <li> <a href ="Products.aspx">All Products</a></li>
        <li role="separator" class ="divider "></li> 
        <li class ="dropdown-header">Women</li>
        <li role="separator" class ="divider "></li> 
        <li> <a href ="ManShirt.aspx">Kurta & Sets</a></li>
        <li> <a href="ManPants.aspx">Sarees</a></li>
        <li> <a href ="ManDenims.aspx">Western Wear</a></li>
        <li role="separator" class ="divider "></li>
        <li class ="dropdown-header ">Men</li>
        <li role="separator" class ="divider "></li>
        <li> <a href ="WomanTop.aspx">Top Wear</a></li>
        <li> <a href ="womanLegging.aspx">Bottom Wear</a></li>
        <li> <a href ="WomanSarees.aspx">Ethnic Wear</a></li>
        <li role="separator" class ="divider "></li>
        <li class ="dropdown-header ">Kids</li>
        <li role="separator" class ="divider "></li>
        <li> <a href ="WomanTop.aspx">Girls Sets</a></li>
        <li> <a href ="womanLegging.aspx">Boys Sets</a></li>
        <li> <a href ="WomanSarees.aspx">Night Dress</a></li>
    </ul>

</li>
                        
                        <li ><a href ="SignIn.aspx">SignIn</a> </li>
                    </ul>
                </div>
            </div>
        </div>



        

    </div>


 <div class="center-page">
     <h1 style="font-family: 'Sitka Text'; font-weight: normal; text-decoration: blink">Forgot Password</h1>
     <div class="wrapper">
         
         <form id="form2" runat="server" >

                
                <div class="input-box">
                    <asp:Label ID="lblEmail" CssClass ="col-md-2 control-label" runat="server" >Email</asp:Label>
                    <asp:TextBox ID="txtEmailID" class="input" CssClass =" form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="input-box">
                    <br />
                    <asp:Button ID="btnResetPass" CssClass ="btn btn-success" runat="server" Text="Send Recovery Link" OnClick="BtnResetPass_Click" />
                    <asp:Label ID="lblResetPassMsg" CssClass ="text-success" runat="server" ForeColor="#33CC33" Font-Size="X-Large" Font-Bold="True"></asp:Label>
                </div>

          </form>
         <br />
         <br />
         <br />
     </div>
 </div>
        <hr />
    


     <!---Footer COntents Start here---->
       
         <!---Footer COntents End---->
</body>
</html>