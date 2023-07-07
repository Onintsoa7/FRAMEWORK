<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css">
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
<body>
    
    <div class="container">
        <h1 class="mt-4">EMPLOYE</h1>
        <% 
        String nom = (String)request.getAttribute("email");
        String date_de_naissance = (String)request.getAttribute("dateNaissance");
        String poste = (String)request.getAttribute("poste");
        %>
        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <p class="form-control" id="nom"><%= nom %></p>
        </div>
        <div class="mb-3">
            <label for="date_de_naissance" class="form-label">Date de naissance</label>
            <p class="form-control" id="date_de_naissance"><%= date_de_naissance %></p>
        </div>
        <div class="mb-3">
            <label for="date_de_naissance" class="form-label">Poste</label>
            <p class="form-control" id="date_de_naissance"><%= poste %></p>
        </div>
    </div>
</body>
</html>