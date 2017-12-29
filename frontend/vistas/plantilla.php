<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-sacale=1.0, maximun-scale=1.0, user-scalable=no">

	<meta name="title" content="Tienda Virtual">

	<meta name="description" content="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo beatae libero facere">

	<meta name="keyword" content="Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Illo beatae, libero facere">


	<title>Tienda Virtual</title>

	<?php
		$icono = ControladorPlantilla::ctrEstiloPlantilla();
		echo '<link rel="icon" href="http://localhost/MADS/backend/'.$icono["icono"].'">';
		
		/*=============================================
		MANTENER LA RUTA FIJA DEL PROYECTO
		=============================================*/	

		$url = Ruta::ctrRuta();

	?>

	
	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plugins/bootstrap.min.css">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plugins/font-awesome.min.css">

	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Ubuntu|Ubuntu+Condensed" rel="stylesheet">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plantilla.css">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/cabezote.css">

	<script src="<?php echo $url; ?>vistas/js/plugins/jquery.min.js"></script>

	<script src="<?php echo $url; ?>vistas/js/plugins/bootstrap.min.js"></script>
</head>
<body>

<?php

/*=============================================
CABEZOTE
=============================================*/

include "modulos/cabezote.php";

/*=============================================
CONTENIDO DINAMICO
=============================================*/

$rutas = array();
$ruta = "";


if(isset($_GET["ruta"])){

	$rutas = explode("/",$_GET["ruta"]);

	$item = "ruta";
	$valor = $rutas[0];

	/*=============================================
	URL'S AMIGABLES DE CATEGORIAS
	=============================================*/

	$rutaCategorias = ControladorProductos::ctrMostrarCategorias($item, $valor);

	if($rutas[0] == $rutaCategorias["ruta"]){

		$ruta = $rutas[0];

	}
	/*=============================================
	URL'S AMIGABLES DE SUBCATEGORIAS
	=============================================*/

	$rutaSubCategorias = ControladorProductos::ctrMostrarSubCategorias($item, $valor);

	foreach ($rutaSubCategorias as $key => $value) {
		if($rutas[0] == $value["ruta"]){

			$ruta = $rutas[0];
		}
	}


	/*=============================================
	LISTA BLANCA DE URL'S AMIGABLES
	=============================================*/

	if($ruta != null){

		include "modulos/productos.php";

	}else{
		include "modulos/error404.php";
	}
}

?>

<script src="<?php echo $url; ?>vistas/js/cabezote.js"></script>
<script src="<?php echo $url; ?>vistas/js/plantilla.js"></script>

</body>
</html>