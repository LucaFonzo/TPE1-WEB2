<?php
include_once 'app/controllers/movie.controller.php';
include_once 'app/controllers/register.controller.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if (!empty($_GET['action'])){
  $action = $_GET['action'];
}else {
  $action = 'home';
}

$params = explode('/',$action);

switch ($params[0]) {
  case 'home':
    $controller = new MovieController();
    $controller->showMovies();
    break;
  case 'login':
    echo "login";
    break;
  case 'register':
    $controller = new RegisterController();
    $controller->showRegister();
    break;
  case 'data':
    $controller = new RegisterController();
    $controller->addUser();
  default:
    $controller = new MovieController();
    $controller->showMovies();
    break;
}