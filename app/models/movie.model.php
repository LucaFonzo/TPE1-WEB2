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
  public function getAllMoviesAndGenderName(){
    $query = $this->db->prepare("SELECT movies.*, genders.* FROM movies JOIN genders ON movies.id_genero_fk = genders.ID_GENERO");
    $query->execute();
    $movies = $query->fetchAll(PDO::FETCH_OBJ);
    return $movies;
  }
  public function getMoviesByGender($id){
    $query = $this->db->prepare("SELECT movies.*, genders.* FROM movies JOIN genders ON movies.id_genero_fk = genders.ID_GENERO WHERE movies.id_genero_fk = ?");
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
  public function addMovie($titulo,$descripcion,$autor,$fechaEstreno,$idGenero,$imagen = null){
    $pathImagen = '';
    if ($imagen){
      $pathImagen = $this->uploadImage($imagen);
    }
    $query = $this->db->prepare("INSERT INTO `movies` (`titulo`, `descripcion`, `autor`, `fecha_estreno`, `id_genero_fk`, `imagen`) VALUES (?,?,?,?,?,?)");
    $query->execute([$titulo,$descripcion,$autor,$fechaEstreno,$idGenero,$pathImagen]);
  }
  public function editMovie($titulo,$descripcion,$autor,$fechaEstreno,$idGenero,$id,$imagen = null){
    $pathImagen = '';
    if ($imagen){
      $pathImagen = $this->uploadImage($imagen);
    }
    $query = $this->db->prepare("UPDATE `movies` SET `titulo` = ?, `descripcion` = ?, `autor` = ?, `fecha_estreno` = ?, `imagen` = ?, `id_genero_fk` = ? WHERE `movies`.`ID` = ?");
    $query->execute([$titulo,$descripcion,$autor,$fechaEstreno,$pathImagen,$idGenero,$id]);
  }
  public function deleteMovie($id){
    $query = $this->db->prepare("DELETE FROM movies WHERE `movies`.`ID` = ?");
    $query->execute([$id]);
  }

  private function uploadImage($image){
        $target = "img/movie/" . uniqid() . "." . strtolower(pathinfo($image['name'], PATHINFO_EXTENSION));
        move_uploaded_file($image['tmp_name'], $target);
        return $target;
    }
}
