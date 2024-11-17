<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="NyraShopping.Root.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    
    <h1>Welcome Admin......!</h1>
    <div>
        

        <h2 style="border:1px solid green" class="alert-success text-center">Quantity Details</h2>
                <div class="row center" >
                    <div class="col-md-5 " style="width:800px; border:1px solid; margin-top:30px; margin-left:170px; margin-right:200px; margin-bottom:50px;  border: 5px solid; border-color:chartreuse" >
                        <div class="table-responsive ">
                            <asp:Repeater ID="rptrreports" runat="server">
                                <HeaderTemplate>
                                    <table class="table">
                                        <thead>
                                            <tr>

                                                <th>PName</th>
                                                <th>Quantity</th>
                                                <th>View</th>


                                            </tr>

                                        </thead>



                                        <tbody>
                                </HeaderTemplate>


                                <ItemTemplate>
                                    <tr>

                                        <td><%# Eval("PName") %>   </td>
                                        <td><%# Eval("Quantity") %>   </td>
                                        <td><a href="ProductReport.aspx" >View</a></td>



                                    </tr>
                                </ItemTemplate>


                                <FooterTemplate>
                                    </tbody>

             </table>
                                </FooterTemplate>

                            </asp:Repeater>


                        </div>
                    </div>
                        </div>
</div>
                    <br />
                    
                        <br />
    <h2 class="alert-danger text-center" style="border:1px solid red">Ordered Details</h2>
                        <div>
                            <div class="row" >
                                <br />
                            <div class="col-md-5 " style="width: 1175px; border: 5px solid;margin-bottom:30px; border-color:brown">
                                <div class="table-responsive text-center">

                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PurchaseID" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="PurchaseID" HeaderText="PurchaseID" InsertVisible="False" ReadOnly="True" SortExpression="PurchaseID" />
                                            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="TotalPayed" HeaderText="TotalPayed" SortExpression="TotalPayed" />
                                            <asp:BoundField DataField="PaymentStatus" HeaderText="PaymentStatus" SortExpression="PaymentStatus" />
                                            <asp:BoundField DataField="DateOfPurchase" HeaderText="DateOfPurchase" SortExpression="DateOfPurchase" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                                        </Columns>
                                    </asp:GridView>
                                    
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NyraShoppingDBConnectionString9 %>" ProviderName="<%$ ConnectionStrings:NyraShoppingDBConnectionString9.ProviderName %>" SelectCommand="SELECT [PurchaseID], [UserID], [Name], [TotalPayed], [PaymentStatus], [DateOfPurchase], [Address], [MobileNumber] FROM [tblPurchase]"></asp:SqlDataSource>
                                </div>
                            </div>
                         </div>
                            </div>

              
       
      <script type="text/javascript">
          function Search_Gridview(strKey) {
              var strData = strKey.value.toLowerCase().split(" ");
              var tblData = document.getElementById("<%=rptrreports.ClientID %>");
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
