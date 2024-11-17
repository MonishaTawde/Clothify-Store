<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="NyraShopping.Root.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
  <br />
  <br />
  <br />
        <div class="panel panel-primary">


    
      <div class="panel-footer">
             <div class="panel-heading" style="background-color:lightcoral"><h2>Quantity Start Report</h2> </div>
<div class="panel-body" style="background-color:#FFFFCC">
      <div class="panel-body">
          <div class="row">
             <div class="col-md-12">
                <div class="table-responsive">
                    <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover" Font-Size="8pt" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" AutoGenerateColumns="false">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="PID" HeaderText="ProductID" />
                            <asp:BoundField DataField="PName" HeaderText="Name" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity " />
                             <asp:TemplateField HeaderText="Product Image">
                                 <ItemTemplate>
                                     <img src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("extension")%> "
                                         alt="<%# Eval("ImageName") %>" style="height: 150px; width: 150px" />
                                 </ItemTemplate>
 </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                
                </div>
             
             </div>

             <div class="form-group">
                 <asp:Button ID="btnExportExl2" CssClass="btn btn-danger" runat="server" 
                     Text="Export Excel" onclick="BtnExportExl2_Click" />
             </div>
          </div>
      
      <div class="panel-heading" style="background-color:crimson"><h2>Product Report</h2> </div>
<div class="panel-body" style="background-color:#FFFFCC">

      <div class="row">
         <div class="col-md-12">
            <div class="table-responsive">
                
                <asp:GridView ID="GridView1" width="500px" CssClass="table table-condensed table-hover" runat="server" BackColor="White" Font-Size="8pt" 
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="1" GridLines="Both" AutoGenerateColumns="false" PageSize="1" >
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" />
                        <asp:BoundField DataField="Name" HeaderText="CName" />
                        <asp:BoundField DataField="PID" HeaderText="PID" />
                        <asp:BoundField DataField="Products" HeaderText="PName" />
                        <asp:BoundField DataField="StockOpening" HeaderText="stk" />
                        <asp:BoundField DataField="QtySell" HeaderText="Qty Sold" />
                        <asp:BoundField DataField="StockAvailable" HeaderText="Avail" />
                        <asp:BoundField DataField="CartAmount" HeaderText="Cart Amt" />
                        <asp:BoundField DataField="CartDiscount" HeaderText="Cart Disc" />
                        <asp:BoundField DataField="TotalPaid" HeaderText="Total Paid" />
                        <asp:BoundField DataField="Date"  HeaderText="Date" />
                        <asp:BoundField DataField="Address" HeaderText="Add" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <img src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("extension")%> "
                                    alt="<%# Eval("ImageName") %>" style="height: 50px; width: 50px" />
                            </ItemTemplate>
                        </asp:TemplateField>


                    </Columns>

                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Position="TopAndBottom" Mode="NextPreviousFirstLast" PageButtonCount="2" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle  BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            
            </div>
         
         </div>

         <div class="form-group">
             &nbsp;&nbsp;&nbsp; <asp:Button ID="btnExportExcel1" CssClass="btn btn-danger" 
                 runat="server" Text="Export Excel" onclick="BtnExportExcel1_Click" />
         </div>
      </div>
  
  
  </div>
      </div>
      
      </div>
    
    
</div>
        <hr />
     <footer>
    <div class ="container ">
     <p class ="pull-right "><a href ="Report.aspx"">Back to top</a></p>
     <p>&copy;2024 Clothify.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="AddProduct.aspx">AddProducts</a> &middot;<a href ="Report.aspx">Report</a></p>
 </div>
</footer>


</asp:Content>
