<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="NyraShopping.Root.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Clothes Online Shopping</title >
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
    <img src="../Image/dbgnd.jpg" height="650" width="1365" />
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
      <h1 style="font-family: 'Sitka Text'; font-weight: normal; text-decoration: blink">Reset Password</h1>
     
   <div class="wrapper">
       
        <form id="form2" runat="server" >
                
                <div class="input-box">
                    <asp:Label ID="lblNewPassword" CssClass ="col-md-2 control-label" runat="server" Text=" NewPassword" Visible="False"></asp:Label>
                    <asp:TextBox ID="txtNewPass" class="input" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="txtNewPass" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <div class="input-box">
                    <asp:Label ID="lblConfirmPass" CssClass ="col-md-2 control-label" runat="server" Text="ConfirmNewPassword" Visible="False"></asp:Label>
                    <asp:TextBox ID="txtConfirmPass" class="input" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Confirm New Password" ControlToValidate="txtConfirmPass" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPass" CssClass ="Text-danger" runat="server" ErrorMessage="confirm password not match...try again" ControlToCompare="txtConfirmPass" ForeColor="Red" ControlToValidate="txtNewPass" Display="Dynamic"></asp:CompareValidator>
                </div>


                <br />
                <asp:Button ID="btnResetPass"  class="btn" CssClass ="btn btn-success" runat="server" Text="Reset" Visible="False" OnClick="BtnResetPass_Click"  />
             
                   
                         

        </form>

   </div>
   <asp:Label ID="lblmsg" CssClass ="text-success" runat="server" ForeColor="#33CC33" Font-Size="X-Large" Font-Bold="True"></asp:Label>
     

</div>

     <!---Footer COntents Start here---->
        <hr />
     
       

         <!---Footer COntents End---->


</body>
</html>