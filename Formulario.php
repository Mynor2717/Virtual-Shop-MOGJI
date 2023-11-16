
<html lang="es">

<head>
<meta charset="UTF-8">
	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Formulario busqueda</title>
    <link rel="stylesheet" href="css/form.css">
	
</head>
<body>
                                 
<div id="container">
	<header>
		<h1>MOGJI VIRTUAL SHOP</h1>
		<p>Responde a todo para hacer mas optima tu busqueda</p>
	</header>
	<section>
		<div id="resultado"></div>
		<form name="quizform" onsubmit="return verificarRespuesta()">

		<h3>1. Elija entre la categoria genero:</h3>
		<input type="radio" name="p1" value="a"> Mujer<br/>
		<input type="radio" name="p1" value="b"> Hombre<br/>
		<input type="radio" name="p1" value="c"> Nulo<br/>
		<input type="radio" name="p1" value="d"> LGTBQ+<br/>

		<h3>2. Elija los colores preferenciales:</h3>

		<input type="radio" name="p2" value="a"> Rojo<br/>
		<input type="radio" name="p2" value="b"> Amarillo<br/>
		<input type="radio" name="p2" value="c"> Azul<br/>
		<input type="radio" name="p2" value="d"> Blanco<br/>
		<input type="radio" name="p2" value="e"> Negro<br/>
		<input type="radio" name="p2" value="f"> Verde<br/>
		<input type="radio" name="p2" value="g"> Sin preferencia<br/>

		<h3>3. Rango de edad:</h3>

		<input type="radio" name="p3" value="a"> 0-10<br/>
		<input type="radio" name="p3" value="b"> 11-20<br/>
		<input type="radio" name="p3" value="c"> 21-30<br/>
		<input type="radio" name="p3" value="d"> 31-40<br/>
		<input type="radio" name="p3" value="e"> 41-60<br/>

		<h3>4. Cual de las siguientes categorias buscas:</h3>

		<input type="radio" name="p4" value="a"> Ropa formal<br/>
		<input type="radio" name="p4" value="b"> Ropa casual<br/>
		<input type="radio" name="p4" value="c"> Ropa deportiva<br/>
		<input type="radio" name="p4" value="d"> Rock<br/>
		<input type="radio" name="p4" value="e"> Anime<br/>
		<input type="radio" name="p4" value="f"> Temporada<br/>
		
		<h3>5. Cuanto desea invertir en su compra:</h3>

	    <input type="radio" name="p5" value="a"> $50<br/>
		<input type="radio" name="p5" value="b"> $100<br/>
		<input type="radio" name="p5" value="c"> Sin rango de precio<br/>
		


		<input type="submit" value="Enviar"><button><i class=""onclick="window.location='busqueda.php?texto=Hombres'">
		<p>General perfil <button><i class=""onclick="window.location='busqueda.php?texto=anime'">
		
		</form>
	</section>
</div>
<script src="js/form.js"></script>


</body>
</html>