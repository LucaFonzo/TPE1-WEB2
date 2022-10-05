<!DOCTYPE html>
<html lang="en">
<head>
  <base href="{BASE_URL}">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <title>Sitio Web Peliculas</title>
</head>
<body>
<header>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="home">Info Peliculas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Categorias
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
          {{foreach from=$genders item=$gender}}
            <li><a class="dropdown-item" href="gender/{{$gender->ID_GENERO}}">{{$gender->nombre}}</a></li>
          {{/foreach}}
          </ul>
        </li>
      </ul>
          <div class="dropdown mx-3">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
        Agregar Item/Genero
      </button>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
        <li><a href="showAddMovie" class="dropdown-item" type="button">Agregar Pelicula</a></li>
        <li><a href="genderForm" class="dropdown-item" type="button">Agregar/Editar/Eliminar<br>Genero</a></li>
      </ul>
      </div>
        <a href="formLogin" class="btn btn-outline-success mx-3" type="submit">Login</a>
        <a href="formRegister" class="btn btn-outline-success" type="submit">Register</a>
    </div>
  </div>
</nav>
</header>