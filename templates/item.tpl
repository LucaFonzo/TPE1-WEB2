{{include file="header.tpl"}}
  <div class="container">
  <div>
    <h2 class="item-title">{{$movie->titulo}}</h2>
    <p class="author">Autor: <span>{{$movie->autor}}</span></p>
    <p class="release-date">Fecha estreno: {{$movie->fecha_estreno}}</p>
    <div class="description-container">
    <div>
    <img src="{{$movie->imagen}}" class="img-item mb-3">
    </div>
    <p class="description-item">{{$movie->descripcion}}<p>
    </div>
    </div>
  </div>
{{include file="footer.tpl"}}