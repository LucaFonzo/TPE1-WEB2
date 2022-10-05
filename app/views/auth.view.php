<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';
class AuthView {
  private $smarty;

  public function __construct(){
    $this->smarty = new Smarty();
  }

  public function showFormLogin(){
    $this->smarty->assign('action',"login");
    $this->smarty->display('formLogin.tpl');
  }

  public function showFormRegister(){
    $this->smarty->assign('action',"register");
    $this->smarty->display('formLogin.tpl');
  }
}