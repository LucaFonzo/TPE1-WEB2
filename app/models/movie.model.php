<?php
class MovieModel{
  private $db;
  public function __construct(){
    $this->db = $this->connectDB();
  }
  private function connectDB(){
      $db = new PDO('mysql:host=localhost;'.'dbname=db_movies;charset=utf8', 'root', '');
      return $db;
  }
  function getAllMovies(){
      $query = $this->db->prepare("SELECT * FROM movies");
      $query->execute();
      $movies = $query->fetchAll(PDO::FETCH_OBJ);
      return $movies;
  }
  public function getMoviesByGender($id){
    $query = $this->db->prepare("SELECT * FROM movies WHERE id_genero_fk = ?");
    $query->execute([$id]);
    $movies = $query->fetchAll(PDO::FETCH_OBJ);
    return $movies;
  }

  public function getMovieById($id){
    $query = $this->db->prepare("SELECT * FROM movies WHERE ID = ?");
    $query->execute([$id]);
    $movie = $query->fetchAll(PDO::FETCH_OBJ);
    return $movie;
  }
  public function addMovie($titulo,$autor,$descripcion,$fechaEstreno,$linkImagen,$idGenero){
    $query = $this->db->prepare("INSERT INTO `movies` (`titulo`, `descripcion`, `autor`, `fecha_estreno`, `imagen`, `id_genero_fk`) VALUES (?,?,?,?,?,?)");
    $query->execute([$titulo,$descripcion,$autor,$fechaEstreno,$linkImagen,$idGenero]);
  }
  public function editMovie($titulo,$descripcion,$autor,$fechaEstreno,$linkImagen,$idGenero,$id){
    $query = $this->db->prepare("UPDATE `movies` SET `titulo` = ?, `descripcion` = ?, `autor` = ?, `fecha_estreno` = ?, `imagen` = ?, `id_genero_fk` = ? WHERE `movies`.`ID` = ?");
    $query->execute([$titulo,$descripcion,$autor,$fechaEstreno,$linkImagen,$idGenero,$id]);
  }
  public function deleteMovie($id){
    $query = $this->db->prepare("DELETE FROM movies WHERE `movies`.`ID` = ?");
    $query->execute([$id]);
  }
}




