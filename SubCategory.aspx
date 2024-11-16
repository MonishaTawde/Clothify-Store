<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="NyraShopping.Root.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class ="container ">
            <div class ="form-horizontal" style="border:3px solid black; margin-top:100px">
    <h2 class=" text-center" style="background-color:khaki; color:black; margin-left:10px; margin-right:10px">Add Sub-Category</h2>
    <hr />

                 <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Main CategoryID"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlMainCatID" CssClass ="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Main CategoryID" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="SubCategory Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtSubCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter SubCategory" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSubCategory" CssClass ="btn btn-success " runat="server" Text="Add SubCategory" OnClick="BtnAddSubCategory_Click"    />
                        
                    </div>
                </div>
                

            </div>

          <h1 class=" text-center alert-success" style="border:2px solid brown">Lists OF Sub-Categories</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading text-center" > All Sub Categories</div>


     <asp:repeater ID="rptrSubCat" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Sub-Category</th>
                        <th>Main Category</th>
                        <th>Edit</th>
                        <th>Delete</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                 <th><%# Eval("SubCatID") %> </th>
                 <td><%# Eval("SubCatName") %>   </td>
                 <td><%# Eval("CatName") %>   </td>
                 <td><a href="EditSubCategory.aspx" style="color: darkgreen">Edit</a></td>
                 <td><a href="EditSubCategory.aspx" style="color: red">Delete</a></td>

                 
             </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
            

   
</div>



        </div>
    <hr />
     <footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="SignIn.aspx">Back to top</a></p>
        <p>&copy;2024 NyraFashion.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="Default.aspx">Products</a> </p>
    </div>

</footer>
</asp:Content>
