<?php
class RegisterModel {
  private $db;

  public function __construct(){
    $this->db = $this->connectDB();
  }

  private function connectDB(){
    try {
      $db = new PDO('mysql:host=localhost;'.'dbname=db_movies;charset=utf8', 'root', '');
      return $db;
    } catch (PDOException) {
      echo $error;
    }
  }

  public function addUser($email,$password){
    $query = $this->db->prepare("INSERT INTO `user` (`email`, `password`) VALUES (?,?)");
    $query->execute([$email,$password]);
  }
}