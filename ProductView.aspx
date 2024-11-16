<%@ Page Title="" Language="C#" MasterPageFile="~/Root/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="NyraShopping.Root.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <br />
    <br />
    <button id="btnCart2" runat="server" class="btn btn-info navbar-btn pull-right" style="background-color:teal" onserverclick="BtnCart2_ServerClick" type="button">
                        Cart <span id="CartBadge" runat="server" class="badge">0</span>
    </button>
    <br />
    <div style="padding-top:50px">


    <!--- Success Alert --->
        <div id="divSuccess" runat="server" class="alert alert-success alert-dismissible fade in h4">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Success! </strong>Item successfully added to cart. <a href="Cart.aspx">View Cart</a>
        </div>

        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
             <%--   for proImage slider--%>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>

                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">

                        <asp:Repeater ID="rptrImage" runat="server">
                            <ItemTemplate>
                                <div class="item <%# GetActiveImgClass(Container.ItemIndex) %>">
                                    <img src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>" onerror="this.src='Images/ImageNotAvailable.jpg'">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>


                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

              <%--  for proimage slider ending--%>
            </div>
        </div>
        <div class="col-md-5">
            <asp:Repeater ID="rptrProductDetails" runat="server" >
                <ItemTemplate>
            <div class="divDet1">
                 <h2 class="text-left" style="font-family:Verdana; font-weight:bold"><%# Eval("PName") %> </h2>
                <span class="proOgPrice" style="text-decoration:line-through; color:red; font-size:large">
    <%# Eval ("PPrice","{0:0}") %>
</span>
<span class="proPriceDiscount" style="font-size:x-large; font-weight:bold; color:black"> <%# Eval("PSelPrice","{0:c}") %></span>

<span class="proPriceDiscount" style="font-size:large">(<%# 
                                    string.Format("{0:p}", Math.Round ((Convert.ToDouble(Eval("PPrice")) - Convert.ToDouble(Eval("PSelPrice"))) / Convert.ToDouble(Eval("PPrice")),2)) %>off)
</span>
            </div>
            <div >
                <h3 class="h5size" style=""> SIZE</h3>
                <div>
                    <asp:radiobuttonlist ID="rblSize" runat="server" RepeatDirection="Horizontal" CellSpacing="2" CellPadding="2" Width="50%" Font-Size="Medium">
                        <asp:ListItem Value="S" Text="S"></asp:ListItem>
                        <asp:ListItem Value="M" Text="M"></asp:ListItem>
                        <asp:ListItem Value="L" Text="L"></asp:ListItem>
                        <asp:ListItem Value="XL" Text="XL"></asp:ListItem>
                    </asp:radiobuttonlist>
                </div>
            </div>
            <div class="divDet1">
                
                <asp:button ID="btnAddtoCart"  CssClass="mainButton" runat="server" text="ADD TO CART" OnClick="BtnAddtoCart_Click"/>
                <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
                  <br />
                
            </div>

            <div class="divDet1">
                <h3 class="h5size" style="text-align: left; text-decoration-style:solid; "> Description <i class="fa-regular fa-pen-to-square"></i></h3>
                <p>   <%#Eval("PDescription") %>         </p>

                 <h3 class="h5size" style="text-align: left;"> Product Details <i class="fa-solid fa-circle-info" style="color: #0c0c0e;"></i></h3>
                <p>   <%#Eval("PProductDetails") %>     </p>
                 <h3 class="h5size" style="text-align: left; "> Material & Care <i class="fa-solid fa-award" style="color: #e4213e;"></i></h3>
                <p> <%#Eval("PMaterialCare") %></p>
            </div>
            <div >
                <p><i class="fa-solid fa-truck" style="color: #14233e;"></i></i> <%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":""  %>    </p>
                <p><i class="fa-solid fa-right-left" style="color: #e75608;"></i> <%# ((int)Eval("7DayRet")==1)? "7 Days Returns":""  %></p>
                <p><i class="fa-solid fa-money-bill-1-wave" style="color: #FFD43B;"></i> <%# ((int)Eval("COD")==1)? "Cash on Delivery":"" %></p>
            </div>
                    <asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PcategoryID") %>' />
                    <asp:HiddenField ID="hfSubCatID" runat="server" Value='<%# Eval("PSubCatID") %>' />
                    <asp:HiddenField ID="hfGenderID" runat="server" Value='<%# Eval("PGender") %>' />
                    <asp:HiddenField ID="hfBrandID" runat="server" Value='<%# Eval("PBrandID") %>' />


</ItemTemplate>
</asp:Repeater>

        </div>

    </div>
        <hr />
     

</asp:Content>