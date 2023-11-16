<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device=width, initial-scale-1.0">
    <title>Login - MOGJI</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./admin/dashboard/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="./admin/dashboard/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./admin/dashboard/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="css/estilos2.css">

</head>

<body class="hold-transition login-page">
    <img src="" alt="" class="hold-transition">
    


        <main>
        
            <div class="contenedor__todo">
                <div class="caja__trasera">
                    <div class="caja__trasera-login">
                        <h3>Tienes una cuenta?</h3>
                        <a href="forgot-password.php">Olvide mi contraseña</a>
      </p>
                        <button  id="btn__iniciar-sesion">Iniciar Sesion</button>
                        <p class="mb-1">
        
                        

                    </div>
                    <div class="caja__trasera-register">
                        <h3>Crea tu cuenta</h3>
                        <a href="LoginSocio.php">Entrar como socio</a>
                        <p>Registrate para entrar en la pagina</p>
                        <button type="submit" id="btn__registrarse">Registrarse</button>
                         
                    </div>
                    
                </div>
                   
                <div class="contenedor__login-register">
                    <form action="./php/check.php" class="formulario__login" method="post">

                        <h2>Iniciar Sesion</h2>
                        <input type="text" placeholder="Correo Electronico" name="email">
                        <input type="password" placeholder="contraseñar" name="password">
                        <button type="submit" >Entrar</button>
                        
                        

                    </form>
                    <form action="./php/check.php" class="formulario__register">
                        <h2>Registrarse</h2>
                        <input type="text" placeholder="Nombre" required>
                        <input type="email" placeholder="Correo Electronico" required>
                        <input type="text" placeholder="Direccion" required>

                        <input type="password" placeholder="Contraseña" required>
                        <button type="submit">Registrarse</button>

                    </form>
                    
                    
        
                </div>

               
            </div>
            
            


        </main>
        <script src="js/script.js"></script>

        <script src="./admin/dashboard/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./admin/dashboard/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="./admin/dashboard/dist/js/adminlte.min.js"></script>

</body>



</html>