<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';
class MovieView{
  private $smarty;

  public function __construct(){
    $this->smarty = new Smarty();
  }
  public function showMovies($movies,$genders){
  $this->smarty->assign('movies',$movies);
  $this->smarty->assign('genders',$genders);
  $this->smarty->display('movies.tpl');
  }
  public function showMovie($data,$genders){
    $this->smarty->assign('data',$data);
    $this->smarty->assign('genders',$genders);
    $this->smarty->display('item.tpl');
  }
  public function showAddMovie($genders){
    $this->smarty->assign("tituloBoton","Enviar");
    $this->smarty->assign("h2","Agregar Pelicula");
    $this->smarty->assign('action',"addMovie");
    $this->smarty->assign('genders',$genders);
    $this->smarty->display("formMovie.tpl");
  }
  public function showEditMovie($movie,$id,$genders){
    $this->smarty->assign("tituloBoton","Guardar Cambios");
    $this->smarty->assign("h2","Editar Pelicula");
    $this->smarty->assign('action',"editMovie/$id");
    $this->smarty->assign('genders',$genders);
    $this->smarty->assign('movie',$movie[0]);
    $this->smarty->assign('id',$id);
    $this->smarty->display("formMovie.tpl");
  }
}
