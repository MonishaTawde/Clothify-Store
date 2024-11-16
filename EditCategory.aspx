<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="NyraShopping.Root.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<br />
<div class="container">


<div class="row">
         

    <div class="col-md-6">

        <div class="row" style="border:5px solid Black; padding:30px" >
            <div class="col-md-6">
                <div class="form-group">
                    <label>Enter Category ID:</label>
                    <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true" OnTextChanged="TxtID_TextChanged"></asp:TextBox>

                </div>
                <div class="form-group">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Enter Category Name:</label>
                    <asp:TextBox ID="txtUpdateCatName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnUpdateCategory" CssClass="btn btn-primary " runat="server"
                        Text="UPDATE" OnClick="BtnUpdateCategory_Click" />
                    <asp:Button ID="btnDeleteCategory" CssClass="btn btn-danger" runat="server" Text="DELETE" OnClick="BtnDeleteCategory_Click" />
                </div>
            </div>

        </div>





    </div>    
          <div class="col-md-6">
          
             <div class="row">
                <div class="col-md-12">
                <h2 class="alert-info text-center"> All Category</h2>
                <br />
                 <asp:TextBox ID="txtFilterGrid1Record" style="border:2px solid blue" CssClass="form-control" runat="server" placeholder="Search Category...." onkeyup="Search_Gridview(this)"></asp:TextBox>
                <hr />
                   <div class="table table-responsive">
                       <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" EmptyDataText="Record not found...">
                       </asp:GridView>
                   </div>
                </div>
             </div>
          </div>

 </div>

 </div>




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
        <hr />
     <footer>
    <div class ="container ">
        <p class ="pull-right "><a href ="SignIn.aspx">Back to top</a></p>
        <p>&copy;2024 NyraFashion.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="Default.aspx">Products</a> </p>
    </div>

</footer>


</asp:Content>
