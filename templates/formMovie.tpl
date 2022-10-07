{{include file="header.tpl"}}
<h2 class="mx-4 mt-2">{{$h2}}</h2>
<form class="row g-3 container-form" method="POST" action="{{$action}}" enctype="multipart/form-data">
  <div class="col-md-6">
    <label for="titulo" class="form-label">Titulo *</label>
    <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Titanic..." 
    {{if isset($movie->titulo)}}
      value="{{$movie->titulo}}"
    {{/if}}
    >
  </div>
  <div class="col-md-6">
    <label for="autor" class="form-label">Autor *</label>
    <input type="text" class="form-control" id="autor" name="autor" placeholder="James Cameron..." 
    {{if isset($movie->autor)}}
      value="{{$movie->autor}}"
    {{/if}}
    >
  </div>
  <div class="col-12">
    <label for="descripcion" class="form-label">Descripcion *</label>
    <textarea type="text" class="form-control" rows="10" id="descripcion" name="descripcion" placeholder="Descripcion...">
    {{if isset($movie->descripcion)}}
      {{$movie->descripcion}}
    {{/if}}
    </textarea>
  </div>
  <div class="col-12">
    <label for="fechaEstreno" class="form-label">Fecha de estreno *</label>
    <input type="text" class="form-control" id="fechaEstreno" name="fechaEstreno" placeholder="dd/mm/yyyy"
    {{if isset($movie->fecha_estreno)}}
      value="{{$movie->fecha_estreno}}"
    {{/if}}
    >
  </div>
  <div class="col-md-6">
    <label for="imagen" class="form-label">Imagen *</label>
    <input type="file" class="form-control" id="imagen" name="imagen" placeholder="Ingresar link a una imagen..."
    {{if isset($movie->imagen)}}
      value="{{$movie->imagen}}"
    {{/if}}
    >
  </div>
  <div class="col-md-4">
    <label for="genero" class="form-label">Genero Pertence *</label>
    <select id="genero" name="genero" class="form-select">
    {{foreach from=$genders item=$gender}}
      <option value="{{$gender->ID_GENERO}}"
      {{if isset($movie->id_genero_fk)}}
        {{if  {{$gender->ID_GENERO}} eq {{$movie->id_genero_fk}} }}
        selected
        {{/if}}
      {{/if}}
      >{{$gender->nombre}}</option>
    {{/foreach}}
    </select>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">{{$tituloBoton}}</button>
  </div>
</form>
<p class="mx-3 p-4">* Campos Obligatorios</p>

{{include file="footer.tpl"}}