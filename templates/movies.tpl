{{include file="header.tpl"}}
<div class="container">
<div class="row row-cols-3">
  {{foreach from=$movies item=$movie}}
  <div class="card col m-3" style="width: 18rem;">
  <img src="{{$movie->image}}" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">{{$movie->title}}</h5>
    <p class="card-text">{{$movie->description|truncate:100}}</p>
    <div class="btn-container">
      <a href="item/{{$movie->id_movie}}" class="btn btn-primary">Ver Mas</a>
      {{if isset($smarty.session.ID_USER)}}
        <a href="delete/{{$movie->id_movie}}" class="btn btn-danger">Eliminar</a>
        <a href="showEditMovie/{{$movie->id_movie}}" class="btn btn-warning">Editar</a>
      {{/if}}
    </div>
  </div>
    <div>
    <p>Genero: {{$movie->name}}</p>
    <p>Autor: {{$movie->author}}</p>
  </div>
  </div>
  {{/foreach}}
  </div>
  </div>
{{include file="footer.tpl"}}