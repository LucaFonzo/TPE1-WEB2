<?php

class MovieModel{
  private $db;
  public function __construct(){
    $this->db = $this->connectDB();
  }

  private function connectDB(){
  try {
    $db = new PDO('mysql:host=localhost;'.'dbname=db_movies;charset=utf8', 'root', '');
    return $db;
  } catch (PDOException $error) {
    echo $error;
  }
}
function getAllMovies(){
  try {
    $query = $this->db->prepare("SELECT * FROM movie");
    $query->execute();
    $movies = $query->fetchAll(PDO::FETCH_OBJ);
    return $movies;
  } catch (PDOException $error) {
    echo $error;
  }
}
}




