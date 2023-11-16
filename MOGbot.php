<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChatBot MOGJI</title>
    <link rel="stylesheet" href="css/estiloBot.css">
</head>

<body>
    <div class="container">
       
            <div class="chatbox">
                    <div class="header">
                        <h4> <img src='img/MOGJI.jpg' class='imgRedonda'/> MOGbot </h4>
                                    
                    </div>
                    
                        <div class="body" id="chatbody">
                        <p class="alicia">Hola! soy MOGBot, Estoy para responder preguntas y guiarte. Espero poder ayudarte.</p>
                            <div class="scroller"></div>
                        </div>

                    <form class="chat" method="post" autocomplete="off">
                    
                                <div>
                                    <input type="text" name="chat" id="chat" placeholder="Preguntale algo" style=" font-family: cursive; font-size: 20px;">
                                </div>
                                <div>
                                    <input type="submit" value="Enviar" id="btn">
                                </div>
                    </form>

            <input type=button class="creador" value="Creadores" onClick="mi_alerta()">
        </div>
    </div>
    
    <script src="js/app.js"></script>
    
            <SCRIPT LANGUAGE="JavaScript">
        function mi_alerta () {
        alert ("Mynor"+
               "\n"+
               "\nMOGJI VIRTUAL SHOP");
        }
        </SCRIPT>
        
</body>

</html>