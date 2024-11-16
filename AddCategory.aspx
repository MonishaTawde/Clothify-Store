<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="NyraShopping.Root.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class ="container ">
            <div class ="form-horizontal" style="border:3px solid black; margin-top:100px">
    <h2 class=" text-center" style="background-color:khaki; color:black; margin-left:10px; margin-right:10px">Add Category</h2>
    <hr />
                <
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Category Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Brandname" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddtxtCategory" CssClass ="btn btn-success " runat="server" Text="Add Category" OnClick="BtnAddtxtCategory_Click"   />
                        
                    </div>
                </div>
                

            </div>

              <h1 class=" text-center alert-success" style="border:2px solid brown">Lists OF Categories</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Categories</div>


     <asp:repeater ID="rptrCategory" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>CatID</th>
                        <th>Categories</th>
                        <th>Edit</th>
                        <th>Delete</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                 <th><%# Eval("CatID") %> </th>
                 <td><%# Eval("CatName") %>   </td>
                 <td><a href="EditCategory.aspx" style="color: darkgreen">Edit</a></td>
                 <td><a href="EditCategory.aspx" style="color: red">Delete</a></td>
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
     <p class ="pull-right "><a href ="AdminHome.aspx">Back to top</a></p>
     <p>&copy;2024 NyraFashion.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="Report.aspx">Products</a> </p>
 </div>

</footer>
</asp:Content>