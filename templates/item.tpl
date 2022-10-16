{{include file="header.tpl"}}
  <div class="container item">
  <div>
    <h2 class="item-title">{{$movie->title}}</h2>
    <p class="author">Autor: <span>{{$movie->author}}</span></p>
    <p class="release-date">Fecha estreno: {{$movie->premiere_date}}</p>
    <div class="description-container">
    <p>{{$movie->description}}<p>
    </div>
    <div class="img-item">
    <img src="{{$movie->image}}" class="mb-3">
    </div>
    </div>
  </div>
{{include file="footer.tpl"}}