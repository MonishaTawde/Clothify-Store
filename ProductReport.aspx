<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ProductReport.aspx.cs" Inherits="NyraShopping.Root.ProductReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:50px">
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" CssClass="alert-info text-center" runat="server" Text="Search Product Here" Font-Size="XX-Large" ></asp:Label>&nbsp;&nbsp;&nbsp; <hr />
         <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server" style="margin-left:30px; margin-right:30px"
         placeholder="Search Products...." AutoPostBack="true" 
         ontextchanged="TxtFilterGrid1Record_TextChanged" onkeyup="Search_Gridview(this)" Width="1015px" Height="45px" ></asp:TextBox>
    </div>

    <div class="container">
   
   <hr />
    <div class="panel panel-primary">
      <div class="panel-heading" style="background-color:crimson"><h2>Product Report</h2> </div>
      <div class="panel-body" style="background-color:#FFFFCC;">
           <div class="col-md-12">
              <div class="form-group">
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" CellPadding="4" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="1px" >
                        <Columns>
                            <asp:BoundField DataField="PID" HeaderText="PID" />
                            <asp:BoundField DataField="PName" HeaderText="Name" />
                            <asp:BoundField DataField="PPrice" HeaderText="Price" />
                            <asp:BoundField DataField="PSelPrice" HeaderText="SellPrice" />
                            <asp:BoundField DataField="Brand" HeaderText="Brand" />
                            <asp:BoundField DataField="CatName" HeaderText="Category" />
                            <asp:BoundField DataField="SubCatName" HeaderText="SubCat" />

                            <asp:BoundField DataField="gender" HeaderText="gender" />
                            <asp:BoundField DataField="SizeName" HeaderText="Size" />
                            <asp:BoundField DataField="Quantity" HeaderText="Qty" />
                            <asp:TemplateField HeaderText="Product Image">
                                <ItemTemplate>
                                    <img src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("extension")%> "
                                        alt="<%# Eval("ImageName") %>" style="height: 50px; width: 50px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        
                        

                            

                        </Columns> 
                       
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                       
                    </asp:GridView>
                </div>
              
              </div>
           
           </div>
      
      
      </div>
      
    </div>
    
</div>



    








    
    <footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="AddProduct.aspx">Back to top</a></p>
        <p>&copy;2024 NyraFashion.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="AdminHome.aspx">Products</a> </p>
    </div>

</footer>
    <script type="text/javascript">
    function Search_Gridview(strKey) {
        var strData = strKey.value.toLowerCase().split(" ");
        var tblData = document.getElementById("<%=GridView1.ClientID %>");
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
