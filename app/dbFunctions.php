<?php

function getDB(){
  try {
    $db = new PDO('mysql:host=localhost;'.'dbname=db_peliculas;charset=utf8', 'root', '');
    return $db;
  } catch (PDOException $error) {
    echo $error;
  }
}

function getAllData(){
  try {
    $db = getDB();
    $query = $db->prepare("select * from peliculas");
    $query->execute();
    $movies = $query->fetchAll(PDO::FETCH_OBJ);
    return $movies;
  } catch (PDOException $error) {
    echo $error;
  }
}