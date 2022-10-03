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
      return false;
    }
  }

  public function getAllGenders(){
    try {
    $query = $this->db->prepare("SELECT * FROM genders");
    $query->execute();
    $genders = $query->fetchAll(PDO::FETCH_OBJ);
    return $genders;
  } catch (PDOException $error) {
    return false;
  }
  }

  public function getGenderByID($id){
    $query = $this->db->prepare("SELECT * FROM genders WHERE ID = ?");
    $query->execute([$id]);
    $gender = $query->fetchAll(PDO::FETCH_OBJ);
    return $gender;
  }

  public function addGender($gender){
    try {
      $query = $this->db->prepare('INSERT INTO `genders` (`ID`, `nombre`) VALUES (?, ?)');
      $query->execute([null,$gender]);
    } catch (PDOException $error) {
      return false;
    }
  }
  public function editGender($gender,$id){
    $query = $this->db->prepare('UPDATE `genders` SET `nombre` = ? WHERE `genders`.`ID` = ?');
    $query->execute([$gender,$id]);
  }

  public function deleteGender($id){
    try {
      $query = $this->db->prepare("DELETE FROM genders WHERE `genders`.`ID` = ?");
      $query->execute([$id]);
    } catch (\Throwable $th) {
      echo $th;
    }
    
  }
}