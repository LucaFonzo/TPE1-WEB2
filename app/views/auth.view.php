<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';
class AuthView {
  private $smarty;

  public function __construct(){
    $this->smarty = new Smarty();
  }

  public function showFormLogin($genders){
    $this->smarty->assign('genders',$genders);
    $this->smarty->assign('action',"verifyUser");
    $this->smarty->display('formLogin.tpl');
  }

  public function showFormRegister($genders){
    $this->smarty->assign('genders',$genders);
    $this->smarty->assign('action',"register");
    $this->smarty->display('formLogin.tpl');
  }
}