<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css">
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container mt-5">
        <h1 class="mt-4">LOGIN</h1>
        <form action="login.gg" method="post">
            <div class="mb-3">
              <label for="nom" class="form-label">Email :</label>
              <input type="text" id="email" name="email" class="form-control" />
            </div>
          
            <div class="mb-3">
              <label for="race" class="form-label">Mot de passe :</label>
              <input type="password" id="motDePasse" name="motDePasse" class="form-control" />
            </div>
          
            <button type="submit" class="btn btn-primary">Soumettre</button>
          </form>
          
    </div>
</body>
</html>