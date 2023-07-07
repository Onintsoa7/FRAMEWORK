<%@ page import="java.sql.Date" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap 5 CSS link -->
        <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css">
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <title>Document</title>
    </head>

    <style>
        .carousel-image {
            height: 500px; /* Adjust the desired maximum height */
            width: 200px;
            object-fit: cover;
        }
        .logOut{
            float: left;    
        }
        /* Custom CSS */
        .scrolling-header {
            background: linear-gradient(to right, #50af91, rgb(192, 46, 47), rgb(172, 213, 247), rgb(121, 191, 160));
            background-size: 400% auto;
            animation: scrolling-gradient 10s ease infinite;
        }
        
        @keyframes scrolling-gradient {
            0% {
                background-position: 0% center;
            }
            100% {
                background-position: 100% center;
            }
        }
        </style>
    <body>
        
    <header class="scrolling-header" style="height: 70px;">
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="#">ETU1767-Framework</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Accueil</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="emp-list.gg">Liste des employes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="add-emp.gg">Ajouter un employe</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="telechargeImage.gg">Telecharger un fichier</a>
                        </li>
                        <li class="nav-item">
                            <a href="logOut.gg" class="btn btn-primary logOut">SE DECONNECTER</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
        <div class="container">
            <% String email=(String) request.getAttribute("email"); Date dateNaissance=(Date)
                request.getAttribute("dateNaissance"); %>
            <center><h1 class="mt-4">WELCOME <small> <%= email %></small></h1></center>

                <!-- Random moving carousel -->
                <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Images/1.png" class="d-block w-100 carousel-image " alt="Image 1">
                        </div>
                        <div class="carousel-item">
                            <img src="Images/2.png" class="d-block w-100 carousel-image " alt="Image 2">
                        </div>
                        <div class="carousel-item">
                            <img src="Images/3.png" class="d-block w-100 carousel-image " alt="Image 3">
                        </div>
                    </div>
                </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            // Randomly move carousel items
            setInterval(function () {
                var carouselItem = $(".carousel-item");
                var randomIndex = Math.floor(Math.random() * carouselItem.length);
                carouselItem.removeClass("active");
                carouselItem.eq(randomIndex).addClass("active");
            }, 3000); // Change slide every 3 seconds
        </script>
    </body>

    </html>
