<?php

include"./layouts/header.php";

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Compras &mdash;En linea MOGJI</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="css/aos.css">
    <link rel="shorcut icon" type="image/x-icon" href="Mogji.ico">

    <link rel="stylesheet" href="css/style.css">
    
    <link rel="stylesheet" href="css/style2.css">
    
  </head>

  <body>
    
<h2>Proceso de entrega de productos</h2>
   <div class="skillsBox">
     <h3>Preparando</h3>
     <div class="numb1"></div>
     <div class="skills">
       <div class="progress">
         <div class="percent" style="width: 90%;">90%</div>
       </div>
       
     </div>
     <h3>En camino</h3>
     <div class="numb"></div>
     <div class="skills">
       <div class="progress">
         <div class="percent" style="width: 85%;"></div>
       </div>
      
     </div>
     <h3>Entregado</h3>
     <div class="skills">
       <div class="progress">
         <div class="percent" style="width: 70%;">70%</div>
       </div>
       <h4>Confirmar la entrega</h4>
       <button class="btn btn-warning">Confirmar</button>
     </div>
     
     
     
   </div>
   
   
   <script>
     const numb = document.querySelector(".numb");
     let counter = 0;
     setInterval(() => {
       if(counter ==100){
         clearInterval();
       }else{
         counter+=1;
         numb.textContent = counter + "%";
       }
     }, 15000);
   </script>


  
  </body>

</html>