<?php

class RegisterView {


  public function showRegister(){
    include './templates/header.php';
    echo '<form action="data" method="POST" class="container-register">
    <div class="mb-3">
    <label for="emailRegister" class="form-label">Email address</label>
    <input type="email" class="form-control" id="emailRegister" name="emailRegister" aria-describedby="email">
  </div>
  <div class="mb-3">
    <label for="passwordRegister" class="form-label">Password</label>
    <input type="password" class="form-control" id="passwordRegister" name="passwordRegister">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  </form>';
    include './templates/footer.php';
  }
}