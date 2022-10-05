<?php
require_once 'app/views/auth.view.php';
require_once 'app/models/auth.model.php';
class AuthController {
  private $model;
  private $view;

  public function __construct(){
    $this->view = new AuthView();
    $this->model = new AuthModel();
  }

  public function showFormLogin(){
    $this->view->showFormLogin();
  }

  public function showFormRegister(){
    $this->view->showFormRegister();
  }
}