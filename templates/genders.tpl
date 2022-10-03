{{include file="header.tpl"}}
  <form method="POST" action="{{$action}}">
<section class="vh-100" style="background-color: #222831;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
            <h3 class="mb-5">{{$h3}}</h3>
            <div class="form-outline mb-4">
              <input type="text" id="gender" name="gender" class="form-control form-control-lg"
              {{if isset($genderToEdit->nombre)}}
                value="{{$genderToEdit->nombre}}"
              {{/if}}
              />
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">{{$h3}}</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  </form>
<div class="list-container">
<h2>Generos:</h2>
<ul class="list-group">
{{foreach from=$genders item=$gender}}
  <li class='list-group-item d-flex justify-content-between align-items-center'>
  <span>{{$gender->nombre}}</span>
            <div class="ml-auto">
                <a href='editForm/{{$gender->ID}}' type='button' class='btn btn-warning'>Editar</a>
                <a href='deleteGender/{{$gender->ID}}' type='button' class='btn btn-danger'>Borrar</a>
            </div>
        </li>
{{/foreach}}
</ul>
<p>Para borrar un genero precisa eliminar todas las peliculas relacionadas a este *</p>
</div>
{{include file="footer.tpl"}}