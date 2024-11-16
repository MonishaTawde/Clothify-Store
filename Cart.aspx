<%@ Page Title="" Language="C#" MasterPageFile="~/Root/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="NyraShopping.Root.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<title>Clothes Online Shopping</title>
    <link href="Styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
    <link href="~/css/Custome.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                <br />
                <br />
                    <button id="btnCart2" runat="server" style="background-color:teal; color:white; border-radius:15px" class="btn navbar-btn pull-right" onserverclick="BtnCart2_ServerClick" type="button">
                        CART <span id="CartBadge" style="background-color:white; color:black" runat="server" class="badge">0</span>
                    </button>
                    <div style="padding-top: 50px">
                        <div class="col-md-9">
                            <h3 style= "font-size:xx-large; color:black; font-weight:Bold" class="proNameViewCart" runat="server" id="h4NoItems"></h3>
                            <div id="divQtyError" runat="server" class="alert alert-danger alert-dismissible fade in h2">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close"> &times;</a>
                                Oops! Quantity cannot be less than 1.
                            </div>
                            <asp:Repeater ID="RptrCartProducts" OnItemCommand="RptrCartProducts_ItemCommand" runat="server">
                                <ItemTemplate>
                                    <%--Show cart details start--%>
                                    <div class="media" style="border: 2px solid DarkGray;height:300px; perspective: 800px; transform-style: preserve-3d; transform: rotate(0deg); border-radius: 12px;">
                                        <div class="media-left">
                                            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" target="_blank">
                                                <img class="media-object" width="250" height="300" src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention")%> " alt="<%# Eval("Name") %>" onerror="this.src='Images/NoImg.png'" style="border-radius: 12px; padding-top: 10px; padding-bottom: 10px; padding-left: 10px; padding-right: inherit" />
                                            </a>
                                        </div>
                                        <div class="media-body" style="padding-top: 20px; padding-right: inherit; padding-bottom: inherit; padding-left: 20px">
                                            <h3 style="font-size:larger" class="media-heading proNameViewCart"><%# Eval("PName") %></h3>
                                            <span class="ProPriceViewCart">Rs.<%# Eval("PSelPrice","{0:0}") %></span><span class="proOgPriceView">Rs.<%# Eval("PPrice","{0:0}") %></span><div class="proPriceDiscountView">(<%# 
                                    string.Format("{0:p}", Math.Round ((Convert.ToDouble(Eval("PPrice")) - Convert.ToDouble(Eval("PSelPrice"))) / Convert.ToDouble(Eval("PPrice")),2)) %>off)
</span></div><div class="pull-right form-inline">
                                                <asp:Label ID="lblQty" runat="server" Text="Qty:" Font-Size="Large"></asp:Label>
                                                <asp:Button ID="BtnMinus" BackColor="#808080" ForeColor="White" CommandArgument='<%# Eval("PID") %>' CommandName="DoMinus" Font-Size="Large" runat="server" Text="  -  " />&nbsp
                                                <asp:TextBox ID="txtQty" runat="server" Width="40" Font-Size="Large" TextMode="SingleLine" Style="text-align: center" Text='<%# Eval("Qty") %>'></asp:TextBox>&nbsp
                                                <asp:Button ID="BtnPlus"  BackColor="#808080" ForeColor="White" CommandArgument='<%# Eval("PID") %>' CommandName="DoPlus" runat="server" Text="  +  " Font-Size="Large" />&nbsp&nbsp&nbsp                                          
                                            </div>
                                            <br />
                                            <p>
                                                <asp:Button CommandArgument='<%#Eval("CartID") %>' CommandName="RemoveThisCart" ID="btnRemoveCart" CssClass="RemoveButton1" runat="server" Text="Remove" />
                                                 
                                                <br />
                                                <br />

                                                <div class="center">SubTotal: Rs.<%# Eval("SubSAmount","{0:0}") %></div>
                                            </p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--Show cart details Ending--%>
                        </div>

                        <div class="col-md-3" style=" border: 1px solid black; perspective: 800px; transform-style: preserve-3d; transform: rotate(0deg); border-radius: 12px;"
                            runat="server" id="divAmountSect">
                            <div>
                                <div>
                                    <h1 class="alert-success text-center" style=" height:20px; text-align:center; font-size:large">Price Details</h1>
                                </div>
                                    <hr />
                                    <div>
                                        <label class=" ">Total</label>
                                        <span class="pull-right priceGray" runat="server" id="spanCartTotal"></span>
                                    </div>
                                    <div>
                                        <label class=" ">Cart Discount</label>
                                        <span class="pull-right priceGreen" runat="server" id="spanDiscount" style="color:red" ></span>
                                    </div>
                                </div>
                            <hr />
                            <div>
                                <div class="cartTotal">
                                    <label>Cart Total</label>
                                    <span class="pull-right " runat="server" id="spanTotal"></span>
                                    <div>
                                        <asp:Button ID="btnBuyNow" CssClass="buyNowbtn" runat="server" OnClick="BtnBuyNow_Click" Text="Place Order" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <hr />
     <footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="Products.aspx">Back to top</a></p>
        <p>&copy;2024 Clothify.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="AdminAbout.aspx">About</a>&middot;<a href ="Products.aspx">Products</a> </p>
    </div>

</footer>
</asp:Content>
