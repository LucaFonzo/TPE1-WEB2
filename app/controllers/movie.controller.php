<?php
include_once 'app/models/movie.model.php';
include_once 'app/views/movie.view.php';
class MovieController {
  private $view;
  private $model;

  function __construct(){
    $this->view = new MovieView();
    $this->model = new MovieModel();
  }

  public function showMovies(){
    $movies = $this->model->getAllMovies();

    $this->view->showMovies($movies);
  }
}
