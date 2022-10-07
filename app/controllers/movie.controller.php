<?php
require_once 'app/models/movie.model.php';
require_once 'app/views/movie.view.php';
require_once 'app/models/gender.model.php';
require_once 'app/helpers/auth.helper.php';

class MovieController {
  private $view;
  private $model;
  private $modelGender;

  function __construct(){
    $this->view = new MovieView();
    $this->modelMovie = new MovieModel();
    $this->modelGender = new GenderModel();
    $this->authHelper = new AuthHelper();
  }

  public function showMovies(){
    session_start();
    $movies = $this->modelMovie->getAllMoviesAndGenderName();
    $genders = $this->modelGender->getAllGenders();
    $this->view->showMovies($movies,$genders);
  }

  public function showMoviesByGender($id){
    session_start();
    $movies = $this->modelMovie->getMoviesByGender($id);
    $genders = $this->modelGender->getAllGenders();
    $this->view->showMovies($movies,$genders);
  }

  public function showMovie($id){
    session_start();
    $genders = $this->modelGender->getAllGenders();
    $movie = $this->modelMovie->getMovieById($id);
    $this->view->showMovie($movie,$genders);
  }
  public function showAddMovie(){
    $this->authHelper->verifyLoggedIn();
    $genders = $this->modelGender->getAllGenders();
    $this->view->showAddMovie($genders);
  }

  public function showEditMovie($id){
    $this->authHelper->verifyLoggedIn();
    $movie = $this->modelMovie->getMovieById($id);
    $genders = $this->modelGender->getAllGenders();
    $this->view->showEditMovie($movie,$id,$genders);
  }
  public function addMovie(){
    $this->authHelper->verifyLoggedIn();
    if (isset($_POST["titulo"]) && isset($_POST["autor"]) && $_POST["descripcion"] && $_POST["fechaEstreno"] && $_POST["imagen"] && $_POST["genero"]){
      $titulo = $_POST["titulo"];
      $autor = $_POST["autor"];
      $descripcion = $_POST["descripcion"];
      $fechaEstreno = $_POST["fechaEstreno"];
      $linkImagen = $_POST["imagen"];
      $idGenero = $_POST["genero"];
      $this->modelMovie->addMovie($titulo,$autor,$descripcion,$fechaEstreno,$linkImagen,$idGenero);
      header("Location: " . FORM_MOVIE);
    }
  }
  public function editMovie($id){
    $this->authHelper->verifyLoggedIn();
    if (isset($_POST["titulo"]) && $_POST["descripcion"] && isset($_POST["autor"])  && $_POST["fechaEstreno"] && $_POST["imagen"] && $_POST["genero"]){
      $titulo = $_POST["titulo"];
      $autor = $_POST["autor"];
      $descripcion = $_POST["descripcion"];
      $fechaEstreno = $_POST["fechaEstreno"];
      $linkImagen = $_POST["imagen"];
      $idGenero = $_POST["genero"];
      $this->modelMovie->editMovie($titulo,$descripcion,$autor,$fechaEstreno,$linkImagen,$idGenero,$id);
      header("Location: " . BASE_URL);
    }
  }

  public function deleteMovie($id){
    $this->authHelper->verifyLoggedIn();
    $this->modelMovie->deleteMovie($id);
    header("Location: " . BASE_URL);
  }
}
