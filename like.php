 <?php
include "./php/conexion.php";
 ?>
 
 
 <!DOCTYPE html>
 <html>

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

    <link rel="stylesheet" href="css/EstilosChat.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Chela+One&display=swap" rel="stylesheet">
    
</head>

<header>


</header>


<body>
<div id="contenedor">
<div id="caja-chat">
<div id="chat">
 
  <div id="datos-chat">
    <span style="color: #1c62c4;">Jenny:</span>
    <span >Hola como estas</span>
    <span style="float: right;">10:04 am</span>
  </div>
</div>
</div>
<form method="POST" action="like.php">
  <input type="text" name="nombre" placeholder="Ingresa tu nombre">
  <textarea name="mensaje" placeholder="Ingresa tu mensaje"></textarea>
  <input type="submit" name="enviar" value="Enviar">
</form>
</div>

</body>


</html>