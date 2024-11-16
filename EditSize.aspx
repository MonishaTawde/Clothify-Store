<%@ Page Title="" Language="C#" MasterPageFile="~/Root/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditSize.aspx.cs" Inherits="NyraShopping.Root.EditSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
  <h2></h2>  
  <br /><br /><br /><br />
    
            <div class="row" style="border:5px solid Black; padding:30px" >
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Enter ID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true" OnTextChanged="TxtID_TextChanged"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Enter Size</label>
                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Select Brand</label>
                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label>Select Category</label>
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label>Sub Category</label>
                        <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label>Gender</label>
                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnUpdateSize" CssClass="btn btn-primary" runat="server" Text="UPDATE" OnClick="BtnUpdateSize_Click" />
                        <asp:Button ID="btnDeleteSize" CssClass="btn btn-danger" runat="server" Text="DELETE" OnClick="BtnDeleteSize_Click" />
                    </div>
                </div>


            </div>
          </div>
        <br />
            <div class="col-sm-12">

                <div class="row">
                    <div class="col-md-12">
                        <h2 class="alert-warning text-center">All Size</h2>
                        <br />
                        <asp:TextBox ID="txtFilterGrid1Record" Style="border: 2px solid blue" CssClass="form-control" runat="server" placeholder="Search Category...." onkeyup="Search_Gridview(this)"></asp:TextBox>
                        <hr />
                        <div class="table table-responsive">
                            <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" EmptyDataText="Record not found...">
                            </asp:GridView>
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
       


</asp:Content>
