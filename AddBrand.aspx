<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="NyraShopping.Root.AddBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class ="container ">
    <br />
    <br />

            <div class ="form-horizontal" style="border:3px solid black; margin-top:50px">
                <h2 class=" text-center" style="background-color:khaki; color:black; margin-left:10px; margin-right:10px">Add Brand</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="BrandName" Font-Size="x-Large"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtBrand" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Brandname" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-4 ">
                        <asp:Button ID="btnAddBrand" CssClass ="btn btn-success " runat="server" Text="Add Brand" OnClick="BtnAddBrand_Click"  />
                        
                    </div>

                   
                </div>
                
              
                 



                


            </div>
     <hr />
        <h1 class=" text-center alert-warning" style="border:2px solid brown">Lists OF Brands</h1>
        

 <div class="panel panel-default">

               <div class="panel-heading" style="text-align:center"> All Brands</div>


     <asp:repeater ID="rptrBrands" runat="server">
         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>BrandID</th>
                        <th>Brand</th>
                        <th>Edit</th>
                        <th>Delete</th>


                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("BrandID") %> </th>
                    <td><%# Eval("Name") %>   </td>

                    <td><a href="EditBrand.aspx" style="color:darkgreen">Edit</a></td>
                 <td><a href="EditBrand.aspx" style="color:red">Delete</a></td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
         
         

   
</div>

<hr />
<%--<div class="row">
         

         <div class ="col-md-6"> 

         <div class="row">
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter ID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged"></asp:TextBox> 
                        
                    </div>
                    <div class="form-group">
                   
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Brand:</label>
                        <asp:TextBox ID="txtUpdateBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
         
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server" 
                            Text="UPDATE" onclick="btnUpdateBrand_Click"  />
                    </div>
         </div>
        
         </div>
                    
                    

                    
                    
          </div>    
          <div class="col-md-6"></div>

 </div>--%>



        </div>
        <hr />
     <footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="AdminHome.aspx">Back to top</a></p>
        <p>&copy;2024 NyraFashion.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="Report.aspx">Products</a> </p>
    </div>

</footer>
</asp:Content>

