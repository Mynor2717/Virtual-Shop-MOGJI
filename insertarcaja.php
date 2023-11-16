<?php 
include "./conexion.php";

if(isset($_POST['cod']) &&  isset($_POST['nom'])   &&  isset($_POST['Cods'])
&&  isset($_POST['bodega']) &&  isset($_POST['sucursal']) 
&&  isset($_POST['inicial'])){
    
    $carpeta="../images/";
    $nombre = $_FILES['imagen']['name'];
   
    //imagen.casa.jpg
    $temp= explode( '.' ,$nombre);
    $extension= end($temp);
    
    $nombreFinal = time().'.'.$extension;
   
    if($extension=='jpg' || $extension == 'png'){
        if(move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$nombreFinal)){
            $conexion->query("insert into caja 
                (CodCaja,CJ_NombreCaja, CJ_Serie,CJ_Bodega,CJ_CodSucursal,MontoInicial) values
                (
                
                    '".$_POST['cod']."',
                    '$nombreFinal',
                    '".$_POST['nom']."',
                    ".$_POST['Cods'].",
                    '".$_POST['bodega']."',
                    '".$_POST['sucursal']."',
                    ".$_POST['inicial']."
                    
                )   ")or die($conexion->error);
                header("Location: ../admin/caja.php?success");
        }else{
            header("Location: ../admin/caja.php?error=No se pudo subir la imagen");
        }
    }

}

?>