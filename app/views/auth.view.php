<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';
class AuthView {
  private $smarty;

  public function __construct(){
    $this->smarty = new Smarty();
  }

  public function showFormLogin($genders,$error = null){
    $this->smarty->assign('error',$error);
    $this->smarty->assign('h3',"Log In");
    $this->smarty->assign('genders',$genders);
    $this->smarty->assign('action',"verifyUser");
    $this->smarty->display('formLogin.tpl');
  }


  public function showFormRegister($genders,$error = null){
    $this->smarty->assign('error',$error);
    $this->smarty->assign('h3',"Register");
    $this->smarty->assign('genders',$genders);
    $this->smarty->assign('action',"addUser");
    $this->smarty->display('formLogin.tpl');
  }

}