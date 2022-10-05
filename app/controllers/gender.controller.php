<?php
require_once 'app/models/gender.model.php';
require_once 'app/views/gender.view.php';

class GenderController {
  private $model;
  private $view;

  public function __construct(){
    $this->model = new GenderModel();
    $this->view = new GenderView();
  }
  public function showGendersAndForm(){
    $genders = $this->model->getAllGenders();
    $this->view->showGendersAndForm($genders);
  }
  public function addGender(){
    if (isset($_POST["gender"])){
      $this->model->addGender($_POST["gender"]);
    }
    header("Location: " . FORM_GENDER);
  }

  public function showEditForm($id){
    $genders = $this->model->getAllGenders();
    $genderToEdit = $this->model->getGenderByID($id);
    $this->view->showEditForm($id,$genderToEdit,$genders);
  }

  public function editGender($id){
    if (isset($_POST["gender"])){
      $this->model->editGender($_POST["gender"],$id);
    }
    header("Location: ". FORM_GENDER);
  }
  public function deleteGender($id){
    $this->model->deleteGender($id);
    header("Location: " . FORM_GENDER);
  }
}