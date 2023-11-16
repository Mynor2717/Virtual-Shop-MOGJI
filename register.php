<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Registro MOGJI</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./admin/dashboard/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="./admin/dashboard/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./admin/dashboard/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="css/estilos2.css">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
  
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="index.php"><b>MOGJI</b></a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Registrate como nuevo miembro</p>

      <div class="p-3 p-lg-5 border">
                <div class="form-group">
                  <label for="c_country" class="text-black">Country <span class="text-danger">*</span></label>
                  <select id="c_country" class="form-control" name="country">
                    <option value="1">Seleciona tu pais</option>    
                    <option value="2">bangladesh</option>    
                    <option value="3">Algeria</option>    
                    <option value="4">Afghanistan</option>    
                    <option value="5">Ghana</option>    
                    <option value="6">Albania</option>    
                    <option value="7">Bahrain</option>    
                    <option value="8">Colombia</option>    
                    <option value="9">Dominican Republic</option>    
                  </select>
                </div>
                <div class="form-group row">
                  <div class="col-md-6">
                    <label for="c_fname" class="text-black">Primer hombre <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_fname" name="c_fname">
                  </div>
                  <div class="col-md-6">
                    <label for="c_lname" class="text-black">Segundo nombre <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_lname" name="c_lname">
                  </div>
                </div>

                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_companyname" class="text-black">Nombre de compañia </label>
                    <input type="text" class="form-control" id="c_companyname" name="c_companyname">
                  </div>
                </div>

                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_address" class="text-black">direccion <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_address" name="c_address" placeholder="Street address">
                  </div>
                </div>


                <div class="form-group row">
                  <div class="col-md-6">
                    <label for="c_state_country" class="text-black">Departamento<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_state_country" name="c_state_country">
                  </div>
                  <div class="col-md-6">
                    <label for="c_postal_zip" class="text-black">Codigo postal <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_postal_zip" name="c_postal_zip">
                  </div>
                </div>

                <div class="form-group row mb-5">
                  <div class="col-md-6">
                    <label for="c_email_address" class="text-black">Direccion de correo <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email_address" name="c_email_address">
                  </div>
                  <div class="col-md-6">
                    <label for="c_phone" class="text-black">Numero de telefono <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_phone" name="c_phone" placeholder="Phone Number">
                  </div>
                </div>

                <div class="form-group">
                  <label for="c_create_account" class="text-black" data-toggle="collapse" href="#create_an_account" role="button" aria-expanded="false" aria-controls="create_an_account"><input type="checkbox" value="1" id="c_create_account"> Crear una cuenta?</label>
                  <div class="collapse" id="create_an_account">
                    <div class="py-2">
                      <p class="mb-3">Cree una cuenta ingresando la información a continuación. Si es un cliente recurrente, inicie sesión en la parte superior de la página.</p>
                      <div class="form-group">
                        <label for="c_account_password" class="text-black">Contraseña </label>
                        <input type="password" class="form-control" id="c_account_password" name="c_account_password" placeholder="">
                      </div>
                    </div>
                  </div>
                </div>


                <div class="form-group">
                  <label for="c_ship_different_address" class="text-black" data-toggle="collapse" href="#ship_different_address" role="button" aria-expanded="false" aria-controls="ship_different_address"><input type="checkbox" value="1" id="c_ship_different_address"> Envias a alguna direccion diferente?</label>
                  <div class="collapse" id="ship_different_address">
                    <div class="py-2">

                      <div class="form-group">
                        <label for="c_diff_country" class="text-black">Country <span class="text-danger">*</span></label>
                        <select id="c_diff_country" class="form-control">
                          <option value="1">Select a country</option>    
                          <option value="2">bangladesh</option>    
                          <option value="3">Algeria</option>    
                          <option value="4">Afghanistan</option>    
                          <option value="5">Ghana</option>    
                          <option value="6">Albania</option>    
                          <option value="7">Bahrain</option>    
                          <option value="8">Colombia</option>
                          <option value="8">Nicaragua</option>      
                          <option value="9">Dominican Republic</option>    
                        </select>
                      </div>


                      <div class="form-group row">
                        <div class="col-md-6">
                          <label for="c_diff_fname" class="text-black">First Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" id="c_diff_fname" name="c_diff_fname">
                        </div>
                        <div class="col-md-6">
                          <label for="c_diff_lname" class="text-black">Last Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" id="c_diff_lname" name="c_diff_lname">
                        </div>
                      </div>

                      <div class="form-group row">
                        <div class="col-md-12">
                          <label for="c_diff_companyname" class="text-black">Company Name </label>
                          <input type="text" class="form-control" id="c_diff_companyname" name="c_diff_companyname">
                        </div>
                      </div>

                      <div class="form-group row">
                        <div class="col-md-12">
                          <label for="c_diff_address" class="text-black">Address <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" id="c_diff_address" name="c_diff_address" placeholder="Street address">
                        </div>
                      </div>

                      <div class="form-group">
                        <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
                      </div>

                      <div class="form-group row">
                        <div class="col-md-6">
                          <label for="c_diff_state_country" class="text-black">State / Country <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" id="c_diff_state_country" name="c_diff_state_country">
                        </div>
                        <div class="col-md-6">
                          <label for="c_diff_postal_zip" class="text-black">Posta / Zip <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" id="c_diff_postal_zip" name="c_diff_postal_zip">
                        </div>
                      </div>

                      <div class="form-group row mb-5">
                        <div class="col-md-6">
                          <label for="c_diff_email_address" class="text-black">Email Address <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" id="c_diff_email_address" name="c_diff_email_address">
                        </div>
                        <div class="col-md-6">
                          <label for="c_diff_phone" class="text-black">Phone <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" id="c_diff_phone" name="c_diff_phone" placeholder="Phone Number">
                        </div>
                      </div>

                    </div>

                  </div>
                </div>

                <div class="form-group">
                  <label for="c_order_notes" class="text-black">Nota sobre su orden</label>
                  <textarea name="c_order_notes" id="c_order_notes" cols="30" rows="5" class="form-control" placeholder="Write your notes here..."></textarea>
                </div>

              </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Retype password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               Estoy de acuerdo con los<a href="index2.php">terminos</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block" onclick="window.location='index.php'">Registrar</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      

      <a href="login.php" class="text-center">Ya soy miembro</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="./admin/dashboard/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./admin/dashboard/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="./admin/dashboard/dist/js/adminlte.min.js"></script>
</body>
</html>
