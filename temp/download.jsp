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
                            <a class="nav-link" href="telechargeImage.gg">Télecharger un fichier</a>
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
    <h1 class="mt-4">FILE UPLOAD</h1>
    <form action="download.gg"  method="post"  enctype="multipart/form-data">
        <div class="mb-3">
            <label for="nom" class="form-label">Télécharger un fichier</label>
            <input type="file" name="fichier" id="fichier" class="form-control">
        </div>
        <input type="submit" value="Valider" class="btn btn-primary">
    </form>
</div>
</body>
</html>