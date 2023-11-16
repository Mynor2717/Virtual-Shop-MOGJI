<?php


if(!isset($_SESSION['datos_login'])){
  
}
$arregloUsuario = $_SESSION['datos_login'];
if(isset($_SESSION['carrito'])){
    if(isset($_GET['id'])){
     $arreglo =$_SESSION['carrito'];
     $encontro=false;
     $numero = 0;
     for($i=0;$i<count($arreglo);$i++){
       if($arreglo[$i]['Id'] == $_GET['id']){
         $encontro=true;
         $numero=$i;
       }
     }
     if($encontro == true){
       $arreglo[$numero]['Cantidad']=$arreglo[$numero]['Cantidad']+1;
       $_SESSION['carrito']=$arreglo;
       header("Location: ./cart.php");
     }else{
       $nombre = "";
       $precio= "";
       $imagen= "";
       $res= $conexion->query('select * from productos where id='.$_GET['id'])or die($conexion->error);
       $fila = mysqli_fetch_row($res);
       $nombre=$fila['1'];
       $precio = $fila[3];
       $imagen = $fila[4];
       $arregloNuevo = array(
         'Id'=> $_GET['id'],
         'Nombre'=> $nombre,
         'Precio'=>$precio,
         'Imagen'=> $imagen,
         'Cantidad' => 1
       );
       array_push($arreglo, $arregloNuevo);
       $_SESSION['carrito']=$arreglo;
       header("Location: ./cart.php");
     }
    }
   
   }else{
      if(isset($_GET['id'])){
        $nombre = "";
        $precio= "";
        $imagen= "";
        $res= $conexion->query('select * from productos where id='.$_GET['id'])or die($conexion->error);
        $fila = mysqli_fetch_row($res);
        $nombre=$fila['1'];
        $precio = $fila[3];
        $imagen = $fila[4];
        $arreglo[] = array(
          'Id'=> $_GET['id'],
          'Nombre'=> $nombre,
          'Precio'=>$precio,
          'Imagen'=> $imagen,
          'Cantidad' => 1
        );
        $_SESSION['carrito']=$arreglo;
        header("Location: ./cart.php");
      }
   
   }
   if(  isset($_POST['email'])  && isset($_POST['password'])   ){
      
   }
   

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PhpMailer/Exception.php';
require 'PhpMailer/PHPMailer.php';
require 'PhpMailer/SMTP.php';

$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 0;                    //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'ratafak15@gmail.com';                     //SMTP username
    $mail->Password   = 'Sorayasuazo_157979';                               //SMTP password
    $mail->SMTPSecure = 'tls';         //Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;                                    //TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
    $mail->setFrom('ratafak15@gmail.com', 'MynorParrales');
    $mail->addAddress('ratafak15@gmail.com', 'Joe User');     //Add a recipient
    $mail->addAddress('jasson171100@gmail.com');
    $mail->addAddress('torresivan841@gmail.com');
    $mail->addAddress('leonelmartineznic@gmail.com');

    

    //Attachments
       //Optional name

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Gracias por tu compra';
    $mail->Body    = '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Factura</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <img class="anulada" src="img/anulado.png" alt="Anulada">
    <div id="page_pdf">
        <table id="factura_head">
            <tr>
                <td class="logo_factura">
                    <div>
                        <img src="../images/MOGJI.ico">
                    </div>
                </td>
                <td class="info_empresa">
                    <div>
                        <span class="h2">MOGJI STORE</span>
                        <p>Luis alfonso</p>
                        <p>Teléfono: +(505) 86625526</p>
                        <p>Email: '.$arregloUsuario['email'].'</p>
                    </div>
                </td>
                <td class="info_factura">
                    <div class="round">
                        <span class="h3">Factura</span>
                        <p>No. Factura: <strong>7698768</strong></p>
                        <p>Fecha: 8/6/2021</p>
                        <p>Hora: 10:30am</p>
                        <p>Vendedor: Jorge Pérez Hernández Cabrera</p>
                    </div>
                </td>
            </tr>
        </table>
        <table id="factura_cliente">
            <tr>
                <td class="info_cliente">
                    <div class="round">
                        <span class="h3">Cliente</span>
                        <table class="datos_cliente">
                            <tr>
                                <td><label>Nit:</label><p>'.$arregloUsuario['id_usuario'].'</p></td>
                                <td><label>Teléfono:</label> <p>7854526</p></td>
                            </tr>
                            <tr>
                                <td><label>Nombre:'.$arregloUsuario['nombre'].'</label> <p></p></td>
                                <td><label>Dirección:</label> <p></p></td>
                            </tr>
                        </table>
                    </div>
                </td>
    
            </tr>
        </table>
    
        <table id="factura_detalle">
                <thead>
                    <tr>
                        <th width="50px">Cant.</th>
                        <th class="textleft">Descripción</th>
                        <th class="textright" width="150px">.</th>
                        <th class="textright" width="150px"> Precio Total</th>
                    </tr>
                </thead>
                <tbody id="detalle_productos">
                    <tr>
                        <td class="textcenter">1</td>
                        <td></td>
                        <td class="textright">516.67</td>
                        <td class="textright">516.67</td>
                    </tr>
                    <tr>
                        <td class="textcenter">2</td>
                        <td></td>
                        <td class="textright"></td>
                        <td class="textright"></td>
                    </tr>
                    
                    
                </tbody>
                <tfoot id="detalle_totales">
                    <tr>
                        <td colspan="3" class="textright"><span>SUBTOTAL</span></td>
                        <td class="textright"><span></span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="textright"><span>IVA</span></td>
                        <td class="textright"><span>516.67</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="textright"><span>TOTAL</span></td>
                        <td class="textright"><span></span></td>
                    </tr>
            </tfoot>
        </table>
        <div>
            <p class="nota">Si usted tiene preguntas sobre esta factura, <br>pongase en contacto con nombre, teléfono y Email</p>
            <h4 class="label_gracias">¡Gracias por su compra!</h4>
        </div>
    
    </div>
    
    </body>
    </html>';
    

    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    echo 'correo enviado';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}


?>



    