<?php
class AuthModel {
  private $db;

  public function __construct() {
    $this->db = $this->connectDB();
  }

  private function connectDB(){
    $db = new PDO('mysql:host=localhost;'.'dbname=db_movies;charset=utf8', 'root', '');
    return $db;
  }
}