<?php
require_once 'app/views/auth.view.php';
require_once 'app/models/auth.model.php';
require_once 'app/models/gender.model.php';
class AuthController {
  private $model;
  private $view;
  private $modelGenders;

  public function __construct(){
    $this->view = new AuthView();
    $this->model = new AuthModel();
    $this->genderModel = new GenderModel();
  }

  public function showFormLogin(){
    $genders = $this->genderModel->getAllGenders();
    $this->view->showFormLogin($genders);
  }

  public function showFormRegister(){
    $genders = $this->genderModel->getAllGenders();
    $this->view->showFormRegister($genders);
  }
}