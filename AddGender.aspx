<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddGender.aspx.cs" Inherits="NyraShopping.Root.AddGender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class ="container ">
            <div class ="form-horizontal" style="border:3px solid black; margin-top:80px">
    <h2 class=" text-center" style="background-color:khaki; color:black; margin-left:10px; margin-right:10px">Add Gender</h2>
    <hr />
               
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Gender"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Gender" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                


                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddBrand" CssClass ="btn btn-success " runat="server" Text="Add" OnClick="BtnAddBrand_Click"  />
                        
                    </div>
                </div>
                
              
                 



                


            </div>
          <h1 class=" text-center alert-success" style="border:2px solid brown">Gender</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading text-center"> All Gender</div>


     <asp:repeater ID="rptrGender" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Gender</th>
                       

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                 <th><%# Eval("GenderID") %> </th>
                 <td><%# Eval("GenderName") %>   </td>
                 
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
