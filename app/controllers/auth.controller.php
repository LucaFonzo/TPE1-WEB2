<?php
require_once 'app/views/auth.view.php';
require_once 'app/models/user.model.php';
require_once 'app/models/gender.model.php';

class AuthController {
  private $model;
  private $view;
  private $modelGenders;
  private $authHelper;

  public function __construct(){
    $this->view = new AuthView();
    $this->model = new UserModel();
    $this->genderModel = new GenderModel();
  }

  public function showFormLogin(){
    $genders = $this->genderModel->getAllGenders();
    $this->view->showFormLogin($genders);
  }

  public function verifyUser(){
    $email = $_POST["email"];
    $password = $_POST["password"];

    $user = $this->model->getUserByEmail($email);

    if ($user && password_verify($password,$user->password)){

      session_start();
      $_SESSION["ID_USER"] = $user->id_user;
      $_SESSION["EMAIL_USER"] = $user->email;
      $_SESSION["IS_LOGGED"] = true;

      header("Location: " . BASE_URL);
    }else {
      header("Location: " . FORM_LOGIN);
    }
  }

  public function logOut(){
    session_start();
    session_destroy();
    header("Location: " . BASE_URL);
  }
}