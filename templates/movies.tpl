{{include file="header.tpl"}}
<div class="container">
<div class="row row-cols-3">
  {{foreach from=$movies item=$movie}}
  <div class="card col m-3" style="width: 18rem;">
  <img src="{{$movie->imagen}}" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">{{$movie->titulo}}</h5>
    <p class="card-text">{{$movie->descripcion|truncate:100}}</p>
    <div class="btn-container">
      <a href="item/{{$movie->ID}}" class="btn btn-primary">Ver Mas</a>
      <a href="delete/{{$movie->ID}}" class="btn btn-danger">Eliminar</a>
      <a href="showEditMovie/{{$movie->ID}}" class="btn btn-warning">Editar</a>
    </div>
  </div>
  </div>
  {{/foreach}}
  </div>
  </div>
{{include file="footer.tpl"}}