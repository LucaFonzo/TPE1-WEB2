<?php

class GenderModel {
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

  public function getAllGenders(){
    try {
    $query = $this->db->prepare("SELECT * FROM genders");
    $query->execute();
    $genders = $query->fetchAll(PDO::FETCH_OBJ);
    return $genders;
  } catch (PDOException $error) {
    echo $error;
  }
  }

  public function addGender($gender){
    $query = $this->db->prepare('INSERT INTO `genero` (`ID`, `nombre`) VALUES (?, ?)');
    $query->execute([null,$gender]);
  }
}