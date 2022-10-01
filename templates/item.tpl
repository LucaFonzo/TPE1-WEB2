{{include file="header.tpl"}}
{{foreach from=$data item=$movie }}
  <div class="item-container">
  <div>
    <h2 class="item-title">{{$movie->titulo}}</h2>
    <p class="author">Autor: <span>{{$movie->autor}}</span></p>
    <p class="release-date">Fecha estreno: {{$movie->fecha_estreno}}</p>
    <div class="description-container">
    <img src="{{$movie->imagen}}" class="img-item">
    <p class="description-item">{{$movie->descripcion}}<p>
    </div>
    </div>
  </div>
{{/foreach}}
{{include file="footer.tpl"}}