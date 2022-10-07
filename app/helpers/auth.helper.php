<?php

class AuthHelper {

  public function verifyLoggedIn(){
    session_start();
    if (!isset($_SESSION['IS_LOGGED'])){
      header("Location: " . FORM_LOGIN);
      die();
    }
  }
}