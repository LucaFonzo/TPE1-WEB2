<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';
class GenderView {
  private $smarty;


  public function __construct(){
    $this->smarty = new Smarty();
  }

  public function showGendersAndForm($genders){
    $this->smarty->assign('action',"addGender");
    $this->smarty->assign('h3',"Agregar Genero");
    $this->smarty->assign('genders',$genders);
    $this->smarty->display("genders.tpl");
  }

  public function showEditForm($id,$genderToEdit,$genders){
    $this->smarty->assign('action',"editGender/$id");
    $this->smarty->assign('h3',"Editar Genero");
    $this->smarty->assign('genderToEdit',$genderToEdit[0]);
    $this->smarty->assign('genders',$genders);
    $this->smarty->display("genders.tpl");
  }
}