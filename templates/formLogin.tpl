{{include file="header.tpl"}}
<section class="vh-100" style="background-color: #f2f2f2;">
<form action="{{$action}}" method="POST">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
            <h3 class="mb-5">{{$h3}}</h3>
            <div class="form-outline mb-4">
              <input type="email" id="email" name="email" class="form-control form-control-lg" required />
              <label class="form-label" for="inputEmail">Email</label>
            </div>
            <div class="form-outline mb-4">
              <input type="password" id="password" name="password" class="form-control form-control-lg"  required/>
              <label class="form-label" for="password">Password</label>
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">{{$h3}}</button>
          </div>
          {{if isset({{$error}})}}
            <p class="alert-danger">{{$error}}</p>
          {{/if}}
        </div>
      </div>
    </div>
  </div>
  </form>
</section>
{{include file="footer.tpl"}}