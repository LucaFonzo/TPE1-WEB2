<?php
require_once 'app/models/movie.model.php';
require_once 'app/views/movie.view.php';
require_once 'app/models/gender.model.php';

class MovieController {
  private $view;
  private $model;

  function __construct(){
    $this->view = new MovieView();
    $this->modelMovie = new MovieModel();
    $this->modelGender = new GenderModel();
  }

  public function showMovies(){
    $movies = $this->modelMovie->getAllMovies();
    $genders = $this->modelGender->getAllGenders();
    $this->view->showMovies($movies,$genders);
  }

  public function showMoviesByGender($id){
    $movies = $this->modelMovie->getMoviesByGender($id);
    $genders = $this->modelGender->getAllGenders();
    $this->view->showMovies($movies,$genders);
  }

  public function showMovie($id){
    $genders = $this->modelGender->getAllGenders();
    $movie = $this->modelMovie->getMovieById($id);

    $this->view->showMovie($movie,$genders);
  }
  public function showAddMovie(){
    $genders = $this->modelGender->getAllGenders();
    $this->view->showAddMovie($genders);
  }

  public function showEditMovie($id){
    $movie = $this->modelMovie->getMovieById($id);
    $genders = $this->modelGender->getAllGenders();
    $this->view->showEditMovie($movie,$id,$genders);
  }
  public function addMovie(){
    if (isset($_POST["titulo"]) && isset($_POST["autor"]) && $_POST["descripcion"] && $_POST["fechaEstreno"] && $_POST["imagen"] && $_POST["genero"]){
      $titulo = $_POST["titulo"];
      $autor = $_POST["autor"];
      $descripcion = $_POST["descripcion"];
      $fechaEstreno = $_POST["fechaEstreno"];
      $linkImagen = $_POST["imagen"];
      $idGenero = $_POST["genero"];
      $this->modelMovie->addMovie($titulo,$autor,$descripcion,$fechaEstreno,$linkImagen,$idGenero);
      header("Location: " . BASE_URL);
    }
  }
  public function editMovie($id){
    if (isset($_POST["titulo"]) && isset($_POST["autor"]) && $_POST["descripcion"] && $_POST["fechaEstreno"] && $_POST["imagen"] && $_POST["genero"]){
      $titulo = $_POST["titulo"];
      $autor = $_POST["autor"];
      $descripcion = $_POST["descripcion"];
      $fechaEstreno = $_POST["fechaEstreno"];
      $linkImagen = $_POST["imagen"];
      $idGenero = $_POST["genero"];
      $this->modelMovie->editMovie($titulo,$autor,$descripcion,$fechaEstreno,$linkImagen,$idGenero,$id);
      header("Location: " . BASE_URL);
    }
  }

  public function deleteMovie($id){
    $this->modelMovie->deleteMovie($id);
    header("Location: " . BASE_URL);
  }
}
