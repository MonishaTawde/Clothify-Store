<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="NyraShopping.Root.Wishlist" %>


<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wishlist App</title>

    <!-- Boostrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />

    <style>
        /* Your CSS styles here */
        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 94vh;
        }

        .wishlist-container {
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.6);
            width: 80%;
            height: 800px;
            border-radius: 10px;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }

        .container-header h3 {
            font-weight: bold !important;
        }

        .card {
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            border-radius: 10px;
            position: relative;
        }

        .card h5 {
            font-weight: bold !important;
        }
        
        .modal-dialog {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 94vh;
        }

        .buttons {
            position:absolute;
            right: 10px;
            top: 10px;
        }

        .buttons button {
            width: 20px;
            font-size: 25px;
            background-color: transparent;
            border: none;
            margin: 3px;
        }
    </style>
    
</head>
<body>

    <form id="form1" runat="server">
    
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand ml-3" href="#">Wishlist App</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="./index.aspx">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="./wishlist.aspx">View Wishlist</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="main">

            <div class="wishlist-container">
            
                <div class="card-wishlist">
                
                <div class="container-header row">
                    <h3>List of Wishes</h3>
                    <button type="button" class="btn btn-dark ml-auto" data-toggle="modal" data-target="#addWishlistModal">Add Wishlist</button>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="addWishlistModal" tabindex="-1" aria-labelledby="addWishlist" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="addWishlist">Add Wishlist</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                <asp:PlaceHolder ID="phWishes" runat="server"></asp:PlaceHolder>
                                <button type="button" class="btn btn-secondary form-control" onclick="addWishlist()">+ Add Wishlist</button>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    <asp:Button ID="btnSave" runat="server" Text="Save changes" CssClass="btn btn-dark"  />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr>

                <div class="cards">
                    <%-- ASP.NET code-behind will populate cards here --%>
                </div>

            </div>

        </div>
            </div>

    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function addWishlist() {
            const wishlistInput = document.querySelector('.wishlist-input input');
            const wishlistInputClone = wishlistInput.cloneNode(true);
            wishlistInputClone.value = '';
            wishlistInputClone.style.marginTop = '10px';

            document.querySelector('.wishlist-input').appendChild(wishlistInputClone);
        }

        function deleteWishlist(name) {
            if (confirm('Do you want to delete this wishlist?')) {
                window.location.href = "./endpoint/delete-wish.aspx?name=" + name;
            }
        }

    </script>
</body>
</html>
