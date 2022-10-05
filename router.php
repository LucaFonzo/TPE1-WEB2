<?php
require_once 'app/controllers/movie.controller.php';
require_once 'app/controllers/auth.controller.php';
require_once 'app/controllers/gender.controller.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');
define('FORM_MOVIE', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/showAddMovie');
define('FORM_GENDER', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/genderForm');

if (!empty($_GET['action'])){
  $action = $_GET['action'];
}else {
  $action = 'home';
}

$params = explode('/',$action);

switch ($params[0]) {
  case 'home':
    $controller= new MovieController();
    $controller->showMovies();
    break;
  case 'gender':
    $id = $params[1];
    $controller = new MovieController();
    $controller->showMoviesByGender($id);
    break;
  case 'item':
    $id = $params[1];
    $controller = new MovieController();
    $controller->showMovie($id);
    break;
  case 'showAddMovie':
    $controller = new MovieController();
    $controller->showAddMovie();
    break;
  case 'showEditMovie':
    $id = $params[1];
    $controller = new MovieController();
    $controller->showEditMovie($id);
    break;
  case 'addMovie':
    $controller = new MovieController();
    $controller->addMovie();
    break;
  case 'editMovie':
    $id = $params[1];
    $controller = new MovieController();
    $controller->editMovie($id);
    break;
  case 'delete':
    $id = $params[1];
    $controller = new MovieController();
    $controller->deleteMovie($id);
    break;
  case 'formLogin':
    $controller = new AuthController();
    $controller->showFormLogin();
    break;
    case 'formRegister':
      $controller = new AuthController();
      $controller->showFormRegister();
      break;
  case 'genderForm':
    $controller = new GenderController();
    $controller->showGendersAndForm();
    break;
    case 'addGender':
      $controller = new GenderController();
      $controller->addGender();
    break;
    case 'editForm':
      $id = $params[1];
      $controller = new GenderController();
      $controller->showEditForm($id);
      break;
    case 'editGender':
      $id = $params[1];
      $controller = new GenderController();
      $controller->editGender($id);
      break;
      case 'deleteGender':
        $id = $params[1];
        $controller = new GenderController();
        $controller->deleteGender($id);
        break;
    default:
    $controller = new MovieController();
    $controller->showMovies();
    break;
}