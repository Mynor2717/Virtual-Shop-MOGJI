<?php
session_start();
if(!isset($_SESSION['datos_login'])){
  
}
$arregloUsuario = $_SESSION['datos_login'];

if(  isset($_POST['email'])  && isset($_POST['password'])   ){
    
    $resultado = $conexion->query("select * from usuario where 
        email='".$_POST['email']."' and 
        password='".sha1($_POST['password'])."' limit 1")or die($conexion->error);
    if(mysqli_num_rows($resultado)>0){
        $datos_usuario = mysqli_fetch_row($resultado); 
        $nombre = $datos_usuario[1];
        $id_usuario = $datos_usuario[0];
        $email = $datos_usuario[3];
        $imagen_perfil = $datos_usuario[5];
        $nivel = $datos_usuario[6];

        $_SESSION['datos_login']= array(
            'nombre'=>$nombre,
            'id_usuario'=>$id_usuario,
            'email'=>$email,
            'imagen'=>$imagen_perfil,
            'nivel'=>$nivel
        );
        header("Location: ../admin/");
        
    }else{
        header("Location: ../login2.php?error=Credenciales incorrectas");
    }



}else{
    header("../login2.php");
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>MOGJI</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./admin//dashboard/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">
    <link rel="shorcut icon" type="image/x-icon" href="Mogji.ico">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
    
  
  <div class="site-wrap">
    <?php include("./layouts/header.php"); ?> 
     <form action="./php/check.php">
    <div class="site-section">
      <div class="container">

        <div class="row mb-5">
          <div class="col-md-9 order-2">

            <div class="row">
              <div class="col-md-12 mb-5">
                <div class="float-md-left mb-4"><h2 class="text-black h5">Compra todo</h2></div>
                <div class="d-flex">
                  <div class="dropdown mr-1 ml-md-auto">
                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Ultima
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                      <a class="dropdown-item" href="#">Hombre</a>
                      <a class="dropdown-item" href="#">Mujer</a>
                      <a class="dropdown-item" href="#">Niños</a>
                    </div>
                  </div>
                  <div class="btn-group">
                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuReference" data-toggle="dropdown">Referencia</button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
                      <a class="dropdown-item" href="#">Importante</a>
                      <a class="dropdown-item" href="#">Nombre, A a la Z</a>
                      <a class="dropdown-item" href="#">Nombre, Z a la A</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Precio, bajo a alto</a>
                      <a class="dropdown-item" href="#">Precio, alto a bajo</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mb-5">
               <?php  
                include('./php/conexion.php');
                  /*for($i=0;$i<50;$i++){
                    $conexion->query("insert into productos (nombre, descripcion,precio,imagen, 
                    inventario, id_categoria,talla,color) values (
                      'Producto $i','Esta es la descripcion',".rand(10,1000).",'cloth_1.jpg',".rand(1,100).",1,'XL','Blue'
                    )")or die($conexion->error);
                  }*/
                  $limite = 10;//productos por pagina
                  $totalQuery = $conexion ->query('select count(*) from productos')or die($conexion->error);
                  $totalProductos = mysqli_fetch_row($totalQuery);
                  $totalBotones = round($totalProductos[0] /$limite);
                    if(isset($_GET['limite'])){
                      $resultado = $conexion ->query("select * from productos where inventario > 0  limit ".$_GET['limite'].",".$limite)or die($conexion -> error);
                    }else{
                      $resultado = $conexion ->query("select * from productos where inventario > 0 order by id DESC limit ".$limite)or die($conexion -> error);
                    }
                  
                
                 while($fila = mysqli_fetch_array($resultado)){
               ?> 
              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="shop-single.php?id=<?php echo $fila['id'];?>">
                      <img src="images/<?php echo $fila['imagen'];?>" alt="<?php echo $fila['nombre'];?>" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="shop-single.php?id=<?php echo $fila['id'];?>"><?php echo $fila['nombre'];?></a></h3>
                    <p class="mb-0"><?php echo $fila['descripcion'];?></p>
                    <p class="text-primary font-weight-bold">$<?php echo $fila['precio'];?></p>
                   </div>
                </div>
              </div>

              <?php } ?>

            </div>
            <div class="row" data-aos="fade-up">
              <div class="col-md-12 text-center">
                <div class="site-block-27">
                  <ul>
                    
                    <?php 
                    if(isset($_GET['limite'])){
                      if($_GET['limite']>0){
                        echo '<li><a href="index.php?limite='.($_GET['limite']-10).'">&lt;</a></li>';
                      }
                    }

                  for($k=0;$k<$totalBotones;$k++){
                    echo '<li><a href="index.php?limite='.($k*10).'">'.($k+1).'</a></li>';
                  }
                  if(isset($_GET['limite'])){
                   if($_GET['limite']+10 < $totalBotones*10){
                    echo ' <li><a href="index.php?limite='.($_GET['limite']+10).'">&gt;</a></li>';
                   }
                  }else{
                    echo ' <li><a href="index.php?limite=10">>&gt;</a></li>';
                  }
                    ?>
                    
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-3 order-1 mb-5 mb-md-0">
            <div class="border p-4 rounded mb-4">
              <h3 class="mb-3 h6 text-uppercase text-black d-block">Categorias</h3>
              <ul class="list-unstyled mb-0">
                <?php 
                $re = $conexion->query("select * from categorias");
                while($f= mysqli_fetch_array($re)){
                ?>
                <li class="mb-1">
                  <a href="./busqueda.php?texto=<?php echo $f['nombre']?>" class="d-flex">
                  <span><?php echo $f['nombre'];?></span>
                  <span class="text-black ml-auto">
                    <?php 
                    $re2 = $conexion->query("select count(*) from productos where id_categoria =".$f['id']);
                    $fila = mysqli_fetch_row($re2);
                    echo $fila[0];

                    ?>
                  </span>
                  </a></li>
                
                <?php } ?>
              </ul>
            </div>

            <div class="border p-4 rounded mb-4">
              <div class="mb-4">
                <h3 class="mb-3 h6 text-uppercase text-black d-block">Filtro por precio</h3>
                <div id="slider-range" class="border-primary"></div>
                <input type="text" name="text" id="amount" class="form-control border-0 pl-0 bg-white" disabled="" />
              </div>

              <div class="mb-4">
                <h3 class="mb-3 h6 text-uppercase text-black d-block">Tamaño</h3>
                <label for="s_sm" class="d-flex">
                  <input type="checkbox" id="s_sm" class="mr-2 mt-1"> <span class="text-black">pequeño (2,319)</span>
                </label>
                <label for="s_md" class="d-flex">
                  <input type="checkbox" id="s_md" class="mr-2 mt-1"> <span class="text-black">Mediano (1,282)</span>
                </label>
                <label for="s_lg" class="d-flex">
                  <input type="checkbox" id="s_lg" class="mr-2 mt-1"> <span class="text-black">Grande (1,392)</span>
                </label>
              </div>

              <div class="mb-4">
                <h3 class="mb-3 h6 text-uppercase text-black d-block">Color</h3>
                <a href="#" class="d-flex color-item align-items-center" >
                  <span class="bg-danger color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Rojo (2,429)</span>
                </a>
                <a href="#" class="d-flex color-item align-items-center" >
                  <span class="bg-success color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Verde (2,298)</span>
                </a>
                <a href="#" class="d-flex color-item align-items-center" >
                  <span class="bg-info color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Azul (1,075)</span>
                </a>
                <a href="#" class="d-flex color-item align-items-center" >
                  <span class="bg-primary color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Purpura (1,075)</span>
                </a>
              </div>

            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12">
            <div class="site-section site-blocks-2">
                <div class="row justify-content-center text-center mb-5">
                  <div class="col-md-7 site-section-heading pt-4">
                    <h2>Categorias</h2>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="fade" data-aos-delay="">
                    <a class="block-2-item" href="busqueda.php?texto=Mujeres">
                      <figure class="image">
                        <img src="images/Mujer.png" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Coleccion</span>
                        <h3>Mujer</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
                    <a class="block-2-item" href="busqueda.php?texto=Hombres">
                      <figure class="image">
                        <img src="images/hombres.png" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Coleccion</span>
                        <h3>Hombre</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
                    <a class="block-2-item" href="busqueda.php?texto=Rock">
                      <figure class="image">
                        <img src="images/image_6483441.png" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Coleccion</span>
                        <h3>ROCK</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
                    <a class="block-2-item" href="busqueda.php?texto=anime">
                      <figure class="image">
                        <img src="images/portada_death-note.png" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Coleccion</span>
                        <h3>Anime</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
                    <a class="block-2-item" href="busqueda.php?texto=Accesorios">
                      <figure class="image">
                        <img src="images/accesorio.png" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="text-uppercase">Coleccion</span>
                        <h3>Accesorios</h3>
                      </div>
                    </a>
                  </div>
                </div>
              
            </div>
          </div>
        </div>
        
      </div>
      
    </div>
    
    <?php include("./layouts/footer.php"); ?> 

    </form>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="js/Sweetalert.js"></script>
  </body>
</html>