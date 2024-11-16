<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NyraShopping.Root.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
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
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });
    </script>
</head>
<body style=" background-color:lightyellow; font-size:x-large">
     <form id="form1" runat="server">
       <div>
          <div class="navbar navbar-inverse navbar-fixed-top"  style="background-color:#000" role="navigation ">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                         class="icon-bar"></span><span class="icon-bar"></span>
                     </button>
                     <div class ="navbar-brand" href ="Default.aspx" >&nbsp;
                     <span style="font-style:normal; font-weight: lighter; text-transform: capitalize; color: #fff; font-size: xx-large; font-family: verdana">
                         <img class="img-circle" src="../Image/hbl.jpg" height="30" /> Clothify</span>
                    </div>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a> </li>
                        <li><a href="About.aspx">About</a> </li>
                        
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
                                <li><a href="Products.aspx">Men's</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="TopWear.aspx">Top Wear</a></li>
                                <li><a href="BottomWear.aspx">Bottom Wear</a></li>
                                <li><a href="Ethnic.aspx">Ethnic Wear</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="Products.aspx">Kid's</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="GirlsSets.aspx">Girls Sets</a></li>
                                <li><a href="BoysSets.aspx">Boys Sets</a></li>
                                <li><a href="NightDress.aspx">Night Dress</a></li>
                            </ul>

                        </li>
                        
                        <li id="btnSignUP" runat="server"><a href="SignUp.aspx">SignUp</a> </li>
                        <li id="btnSignIN" runat="server"><a href="SignIn.aspx">SignIn</a> </li>
                        <li>
                            <button id="btnCart" style="padding: 5px; border-radius: 10px; border: none" class="btn btn-info navbar-btn" href="Cart.apsx" type="button">
                                CART <span class="badge " id="pCount" runat="server"></span>
                            </button>
                            
                            <asp:Button ID="Button1" CssClass ="btn btn-link navbar-btn" style="font-family:Papyrus; color:yellow; text-decoration:solid; font-size:15px" runat="server" Text=""  Font-Bold="True" />
                            <asp:Button ID="btnlogout" style="border-radius:15px;" CssClass="btn btn-danger navbar-btn " runat="server"
                                Text="Sign Out" OnClick="Btnlogout_Click" />
                        </li>
                       
                    </ul>
                </div>
            </div>
        </div>
        <!---image slider---->



       <!-- Slideshow container -->

       <br />
       <br />
       
   
           <div class="panel" style="border:none;">
               <div class="panel-body" style="background-color:lightblue">
                   <div class="center" style="padding:40px; margin: 20px; justify-content: center; border-radius:10px; border:2px solid; border-radius:25px; box-shadow:grey">
                       <asp:ScriptManager runat="server" ID="ScriptManager1">
                       </asp:ScriptManager>
                       &nbsp;&nbsp;
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                           <ContentTemplate>
                               <asp:Timer runat="server" ID="Timer1" Interval="1500" />
                               <asp:AdRotator ID="AD1" runat="server" Class="add" AdvertisementFile="../AdXml.xml"></asp:AdRotator>
                               <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="../AdXml.xml"></asp:XmlDataSource>

                           </ContentTemplate>
                       </asp:UpdatePanel>
                                            
                       
                   </div>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button2" runat="server" Text="SHOP NOW" href="Products.aspx" CssClass="btn btn-default navbar-btn" style="justify-content:center; border-radius:10px; align-items:center; width: 221px; background-color:#FF287E; height: 38px; font-size: x-large" PostBackUrl="~/Root/Products.aspx" />
                       
&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
               </div>
           </div>
     

   
           
       <hr style="background-color:linen; color:grey" />
            <div class="panel">
                <div style="background-color:palegoldenrod; height:50px; text-align:center; border-radius:5px ">
                    <h2 style="padding:5px; border-style:dashed">Explore the Collections</h2>
                </div>
                <div class="panel-body" style="background-color:peachpuff">
                    <div class="row" style="padding-top: 50px">
                        <asp:Repeater ID="RptrProducts" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-3 col-md-3">
                                    <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                        <div class="thumbnail">
                                            <img src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("extension")%> "
                                                alt="<%# Eval("ImageName") %>" />
                                            <div class="caption">
                                                <div class="probrand">
                                                    <%# Eval ("BrandName") %>
                                                </div>
                                                <div class="proName">
                                                    <%# Eval ("PName") %>
                                                </div>
                                                <div class="proPrice">
                                                    <span class="proOgPrice">
                                                        <%# Eval ("PPrice","{0:0}") %>
                                                    </span>
                                                   <%# Eval("PSelPrice", "{0:c}") %>
                                                    <span class="proPriceDiscount">(<%# string.Format("{0:p}", Math.Round ((Convert.ToDouble(Eval("PPrice")) - Convert.ToDouble(Eval("PSelPrice"))) / Convert.ToDouble(Eval("PPrice")),2)) %>off) 

                                                    </span>

                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="panel-footer" style="background-color:palegoldenrod; border-radius:5px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong style="font-size: x-large; border-radius:5px; font-family: Verdana; font-weight: bold;">Categories to Explore</strong></div>
            </div>
       </div>
         <hr style="background-color:lightyellow" />
         <div style="background-color: lavenderblush;">
             <div class="container center" style=" padding: 10px; width: 1298px;">
                 <div class="image-row" style="justify-content:space-evenly">
                     <div class="col-lg-4" style="border-radius:10px; margin-left:auto; margin-right:auto; display:block">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="img-circle " src="../Image/Women.jpg" alt="thumb" width="140" height="140" /><h2>Women's Wear</h2>
                         <p></p>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default" style="border-radius:10px; background-color:#FF287E" href="Women.aspx" role="button">View More &raquo;</a>
                         
                     </div>
                     
                     <div class="col-lg-4" style="border-radius:10px; ">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="img-circle " src="../Image/men.jpg" alt="thumb" width="140" height="140" /><h2>Mens Wear</h2>
                         <p>
                         </p>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <a class="btn btn-default " style="border-radius:10px; background-color:#FF287E" href="Men.aspx" role="button">View More &raquo;</a>
                     </div>
                     <div class="col-lg-4" style="border-radius:10px; ">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="img-circle " src="../Image/kids.jpg" alt="thumb" width="140" height="140" /><h2>Kids Wear</h2>
                         <p>
                         </p>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default " style="border-radius:10px; background-color:#FF287E"  href="Kids.aspx" role="button">View More &raquo;</a>
                     </div>
                 </div>
             </div>
         </div>

         <div style="background-color:lemonchiffon;">
             <img src="../Image/poster.jpg" style=" padding: 30px;border:2px solid; border-radius:15px; margin: 50px; width: 1234px; height: 210px;" />
         </div>
        
    </form>

       
    
    
</body>
</html>