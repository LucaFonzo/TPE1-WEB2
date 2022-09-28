<?php

include_once 'app/models/register.model.php';
include_once 'app/views/register.view.php';


class RegisterController {
  private $model;
  private $view;

  public function __construct(){
    $this->model = new RegisterModel();
    $this->view = new RegisterView();
  }

  public function showRegister(){
    $this->view->showRegister();
  }

  public function addUser(){
    $email = $_POST['emailRegister'];
    $password = $_POST['passwordRegister'];
    if (isset($email) && isset($password)){
      $this->model->addUser($email,$password);
    }
  }
}