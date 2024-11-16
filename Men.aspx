<%@ Page Title="" Language="C#" MasterPageFile="~/Root/User.Master" AutoEventWireup="true" CodeBehind="Men.aspx.cs" Inherits="NyraShopping.Root.Men" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Men:Clothes Online Shopping</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="container">
  <h2>Men </h2>  

    <div class="panel panel-primary">
      <div class="panel-heading">Men </div>
      <div class="panel-body">

      <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server" 
              placeholder="Search Products...." AutoPostBack="true" 
              ontextchanged="TxtFilterGrid1Record_TextChanged" onkeyup="Search_Gridview(this)"  ></asp:TextBox>
      <br />
      <hr />
       <div class="row" style="padding-top: 50px">
     <asp:Repeater ID="rptrProducts" runat="server">
         <ItemTemplate>
             <div class="col-sm-3 col-md-3">
                 <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                     <div class="thumbnail">
                         <img src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention")%> "
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
      <div class="panel-footer">  </div>
    </div>
    
</div>
        <hr />
     <footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="SignIn.aspx">Back to top</a></p>
        <p>&copy;2024 NyraFashion.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="Default.aspx">Products</a> </p>
    </div>

</footer>

        <script type="text/javascript">
function Search_Gridview(strKey) {
    var strData = strKey.value.toLowerCase().split(" ");
    var tblData = document.getElementById("<%=rptrProducts.ClientID %>");
    var rowData;
    for (var i = 1; i < tblData.rows.length; i++) {
        rowData = tblData.rows[i].innerHTML;
        var styleDisplay = 'none';
        for (var j = 0; j < strData.length; j++) {
            if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                styleDisplay = '';
            else {
                styleDisplay = 'none';
                break;
            }
        }
        tblData.rows[i].style.display = styleDisplay;
    }
}
        </script>

</asp:Content>
