<?php
include "Bot.php";
$bot = new Bot;
$questions = [
    //que es mogji
    "que es mogji?" => "MOGJI es un proyecto de innovacion que fue fundado el 12 de junio del 2019 principalmente por Mynor Parrales y en compania de Ivan Torres, Jasson ulloa, Omar porras y johusa sanchez empezaron a crear este proyecto viendo la oportunidad en el mercado nicaraguense.",
    "que significa mogji?" => "M Mynor O omar G german J jasson I ivan .",
    "necesito informacion de los modulos" => "contamos con lo siguiente: tienes categorias, catalogos, inicio, nuevos productos, reclamos y perfiles.",
    "modulos" => "Venta, Compra, Admin, Usuario, Red socil, Chat.",
    "tengo un reclamo" => "El numero de su venta es?.",
    "reclamo" => "Escriba a este numero.",
    "devolucion" => "MOGJI ofrece a sus clientes la posibilidad de realizar cambios y devoluciones de su compra 
    durante los primeros diez (10) días naturales después de la entrega del pedido.
    2. Los cambios deberán ser solicitados a través de nuestro apartado de devoluciones 
    ubicado en “Contáctanos” de nuestro sitio web, para el cual deberá ingresar los datos 
    solicitados ademas de mencionar los productos que se desea devolver, seguido del 
    motivo.
    3. Para poder ejercer el derecho de cambio, el consumidor deberá cumplir con unas 
    condiciones generales. Cuando un producto tenga unas condiciones específicas para 
    poder ejercer el derecho de devolución, esto será especificado en las características del 
    producto.",


    //Ventas
    "como puedo comprar?" =>"Te diriges en el apartado de que dice catalogo, puedes seleccionar entre las categorias la que mas te guste, selecionas el producto de tu preferencia lo añades al carrito, podras visualizar el costo mas el Iva y el envio, ahora si aun no estas registrado tienes un formulario para hacerlo, ahora continuas pagando con tu tarjeta, verificas tu producto y el proceso de entrega empieza.",
    "cuanto dura el proceso de entrega?" =>"Esto dependera de tu localizacion." ,
    "donde estan ubicados?" =>"Barrio el eden.",
    "que funciones tienes?" =>"puedo guiarte en tu proceso de compra, asistirte en reclamos o contarte un chiste.",
    "dime un chiste" =>"¿Por qué las focas del circo miran siempre hacia arriba? Porque es donde están los focos.",
    "a ver otro chiste" =>"¿Sabes cómo se queda un mago después de comer? Magordito.",
    "dime otro chiste" =>" ¿Qué le dice un techo a otro? Techo de menos.",
    "a ver otro" =>"  Buenos días, quería una camiseta de un personaje inspirador.

    — ¿Ghandi?
    
    — No, mediani..",
    "condiciones generales" =>"Tener en cuenta que para ejercer el derecho de cambios se debe tener en cuenta los siguientes 
    puntos:
    1. Todo cambio o devolución se realizará hasta diez (10) días naturales (para productos 
    locales) después de la entrega del pedido.
    2. Es indispensable contar con el producto completo, tal y como fue entregado, es decir con 
    todos sus elementos tales como: etiquetas, accesorios y empaques en buen estado y sin 
    señales de uso.
    3. Recuerde que tanto el producto como la documentación original (boleta/factura), es 
    importante para solicitar una devolución. Importante: De no tener la documentación del 
    comprobante de pago, el reclamo de este documento deberá hacerse dentro de las 48 
    horas luego de recibir el producto.
    4. En el caso de productos en promoción, se requiere la entrega de todos los productos 
    incluidos en la promoción correspondiente.
    5. Es importante además la veracidad de la información proporcionada en la solicitud para 
    el reemplazo del producto.
    6. Toda devolución de reembolso o devolución dinero de transacciones 
    realizadas a través de transferencias o pagos con tarjeta se hará efectivo en 
    un plazo de 21 días hábiles.
    (no se supone no habrá devolución de ningun tipo monetario ya aquí lo que se aplicaría 
    es una reeversion de la transferencia).",

    
    //apariciones
      "cuando aparecen los síntomas" => "El período de incubación es el tiempo que transcurre entre la infección por el virus y la aparición de los síntomas de la enfermedad. La mayoría de las estimaciones respecto al periodo de incubación de la COVID-19 oscilan entre 1 y 14 días, y en general se sitúan en torno a 5-6 días.",
      "apariciones de sintomas?" => "El período de incubación es el tiempo que transcurre entre la infección por el virus y la aparición de los síntomas de la enfermedad. La mayoría de las estimaciones respecto al periodo de incubación de la COVID-19 oscilan entre 1 y 14 días, y en general se sitúan en torno a 5-6 días.",
      "en cuantos dias aparecen los sintomas?" => "El período de incubación es el tiempo que transcurre entre la infección por el virus y la aparición de los síntomas de la enfermedad. La mayoría de las estimaciones respecto al periodo de incubación de la COVID-19 oscilan entre 1 y 14 días, y en general se sitúan en torno a 5-6 días.",


    //duracion

    "cuanto duran los sintomas?" => "El tiempo medio desde el inicio de los síntomas hasta la recuperación es de 2 semanas cuando la enfermedad ha sido leve y 3-6 semanas cuando ha sido grave o crítica.",
    "duracion de sintomas" => "El tiempo medio desde el inicio de los síntomas hasta la recuperación es de 2 semanas cuando la enfermedad ha sido leve y 3-6 semanas cuando ha sido grave o crítica.",
    "recuperacion covid?" => "El tiempo medio desde el inicio de los síntomas hasta la recuperación es de 2 semanas cuando la enfermedad ha sido leve y 3-6 semanas cuando ha sido grave o crítica.",

    //vulnerables

    "personas que corren mas riesgo?" => "Los principales grupos vulnerables son los mayores de 60 años, hipertensión arterial, diabetes, enfermedades cardiovasculares, enfermedades pulmonares crónicas, cáncer, inmunodeficiencias, y el embarazo por el principio de precaución.",
    "personas en peligros?" => "Los principales grupos vulnerables son los mayores de 60 años, hipertensión arterial, diabetes, enfermedades cardiovasculares, enfermedades pulmonares crónicas, cáncer, inmunodeficiencias, y el embarazo por el principio de precaución.",
    "personas vulnerables?" => "Los principales grupos vulnerables son los mayores de 60 años, hipertensión arterial, diabetes, enfermedades cardiovasculares, enfermedades pulmonares crónicas, cáncer, inmunodeficiencias, y el embarazo por el principio de precaución.",

    //transmision


    "como se transmite el coronavirus?" => "La transmisión es por contacto estrecho con las secreciones respiratorias que se generan con la tos o el estornudo de una persona enferma.",
    "como se transmite el covid?" => "La transmisión es por contacto estrecho con las secreciones respiratorias que se generan con la tos o el estornudo de una persona enferma.",
    "como se transmite?" => "La transmisión es por contacto estrecho con las secreciones respiratorias que se generan con la tos o el estornudo de una persona enferma.",
    
    //recontagio

    "es posible volverse a contagiar por el virus?" =>"Actualmente no existe evidencia suficiente que permita afirmar que una persona que ha pasado la enfermedad pueda volver a infectarse.",
    "es posible volverse a contagiar por el coronavirus?" =>"Actualmente no existe evidencia suficiente que permita afirmar que una persona que ha pasado la enfermedad pueda volver a infectarse.",
    "volverse a contagiar" =>"Actualmente no existe evidencia suficiente que permita afirmar que una persona que ha pasado la enfermedad pueda volver a infectarse.",

    //vacuna
    "existe alguna vacuna?" =>"Por el momento no se dispone de vacuna que proteja frente a la COVID-19, pero se están realizando estudios clínicos con diversos candidatos, y sería previsible que en un plazo prudente de tiempo (1-2 años) se autorice alguna vacuna frente al nuevo coronavirus.",
    "existen vacunas?" =>"Por el momento no se dispone de vacuna que proteja frente a la COVID-19, pero se están realizando estudios clínicos con diversos candidatos, y sería previsible que en un plazo prudente de tiempo (1-2 años) se autorice alguna vacuna frente al nuevo coronavirus.",
    "vacunas disponibles?" =>"Por el momento no se dispone de vacuna que proteja frente a la COVID-19, pero se están realizando estudios clínicos con diversos candidatos, y sería previsible que en un plazo prudente de tiempo (1-2 años) se autorice alguna vacuna frente al nuevo coronavirus.",
    
    ///antibioticos
    "son eficaces los antibióticos para prevenir o tratar el COVID-19?" =>"No. La norma general que debemos recordar es que los antibióticos no son eficaces contra los virus, solo contra las infecciones bacterianas. La COVID-19 está causada por un virus, de modo que los antibióticos no sirven frente a ella.",
    "antibioticos para el covid 19?" =>"No. La norma general que debemos recordar es que los antibióticos no son eficaces contra los virus, solo contra las infecciones bacterianas. La COVID-19 está causada por un virus, de modo que los antibióticos no sirven frente a ella.",
    "antibioticos?" =>"No. La norma general que debemos recordar es que los antibióticos no son eficaces contra los virus, solo contra las infecciones bacterianas. La COVID-19 está causada por un virus, de modo que los antibióticos no sirven frente a ella.",
    
    //mascotas
    "mi mascota me puede contagiar la covid 19?" =>"Aunque ha habido un caso de un perro infectado en Hong Kong, hasta la fecha no hay pruebas de que un perro, un gato o cualquier mascota pueda transmitir la COVID-19.",
    "las mascotas se contagian?" =>"Aunque ha habido un caso de un perro infectado en Hong Kong, hasta la fecha no hay pruebas de que un perro, un gato o cualquier mascota pueda transmitir la COVID-19.",
    "animales se pueden contagiar?" =>"Aunque ha habido un caso de un perro infectado en Hong Kong, hasta la fecha no hay pruebas de que un perro, un gato o cualquier mascota pueda transmitir la COVID-19.",
   
    //conceptos
    "que es un virus?" =>"Los virus surgen continuamente y representan un desafío para la salud pública.",
    "que es una Epidemia?" =>"Una epidemia es la aparición de más casos de una enfermedad que los esperados en un área dada en un período de tiempo establecido. En este momento, en la epidemia de COVID-19 nos encontramos en el escenario de importación viral.",
    "que es el Coronavirus?" =>"El coronavirus SARS-Cov-2 es un virus que apareció en China. Después se extendió a todos los continentes del mundo provocando una pandemia. Actualmente Europa y América son los más afectados.",
    
    //info
    "información importante a considerar?" =>"La mayoría de las personas (alrededor del 80%) se recupera de la enfermedad sin necesidad de realizar ningún tratamiento especial.",
    "informacion que se debe tomar en cuenta?" =>"Alrededor de 1 de cada 6 personas que contraen el nuevo coronavirus puede desarrollar una enfermedad grave con dificultad para respirar.",
    "dato importante?" =>"En torno al 2% de las personas que han contraído la enfermedad han muerto. Las personas que tengan fiebre, tos y dificultad para respirar deben buscar atención médica.",
    
       
    //name
    "como te llamas?" =>"Soy MOGbot y estoy para servirte",
    "cual es tu nombre?" =>"Soy MOGbot y estoy para servirte",
    "tienes nombre?" =>"Soy MOGbot y estoy para servirte",
    "quien eres?" =>"Soy MOGbot un chatbot que te ayudara, te guiara y podre sugerirte procesos de la tienda MOGJI",


    //saludo
    "hola" =>"Hola que tal!",
    "hola buenas" =>"Hola que tal! como puedo ayudarlo estimado?",
    "un saludo" =>"como te va",
    "hello" =>"un gusto de verte",
    "hey" =>"sup mi dog",
    "y entonces dog" =>"que nota chatel",
    "oe compa" =>"en que te ayudo mi amigo turkudo cabeza de bloque",
    "unas vichas?" =>"2 que 3",
    "Entonces mae" =>"que tal te va"
    
 
    //despedida
    "adios" =>"cuidate",
    "hasta la proxima" =>"nos vemos pronto",
    "nos vemos" =>"te estare esperando",
    "bye" =>"Good bye ♥",
    "see you" =>"see you lader ♥",
    //
    "what is your name?" =>" my name is CoroBot",
   


    "tu nombre es?" => "Mi nombre es " . $bot->getName(),
    "tu eres?" => "Yo soy una " . $bot->getGender()
    
];

if (isset($_GET['msg'])) {
   
    $msg = strtolower($_GET['msg']);
    $bot->hears($msg, function (Bot $botty) {
        global $msg;
        global $questions;
        if ($msg == 'hi' || $msg == "hello") {
            $botty->reply('Hola');
        } elseif ($botty->ask($msg, $questions) == "") {
            $botty->reply("Lo siento, Las preguntas deben estar relacionadas con MOGJI o asistencia.");
        } else {
            $botty->reply($botty->ask($msg,$questions));
        }
    });
}
