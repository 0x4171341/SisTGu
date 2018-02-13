<?php
 		session_start();
		include_once('php_conexion.php');
		include_once('Class/funciones.php');
		include_once('Class/class_registro.php');
		if($_SESSION['tipo_usu']=='a' or $_SESSION['tipo_usu']=='u'){
		}else{
			header('location:error.php');
		}

		$id='';					        $existe=FALSE;		        $titulo='Registrar Carro';
		$id_placa='';				    $id_organizacion='';		  $permisologia='';		  $capacidad_vehiculo='';     $barrio=$row['barrio'];
		$fechan=date('Y-m-d');	$folio='';	              $motor_modelo='';			$sangre='';                 $telefono=$row['telefono'];
		$s_carroceria='';		    $peso='';			            $motor_marca='';			$barrio='';
		$dibu='<img src="imagen/defecto.jpg" width="100" height="100">';

		if(!empty($_GET['doc'])){
			$doc=limpiar($_GET['doc']);
			$sql=mysql_query("SELECT * FROM carro WHERE nit='$doc'");
			if($row=mysql_fetch_array($sql)){
				$id=$placa['id'];			          			    $existe=TRUE;
				$fechan=$row['fecha'];		  		          $id_organizacion=$row['organizacion'];			 $permisologia=$row['permisologia'];	  $barrio=$row['barrio'];                  
				$s_carroceria=$row['carroceria'];			  	$folio=$row['folio'];			    	             $motor_modelo=$row['modelo'];				  $telefono=$row['telefono'];
				$marca=$row['marca'];	      		          $peso=$row['peso'];			     				         $motor_marca=$row['marca'];            $sangre=$row['sangre'];
				$titulo='Actualizar Datos "'   .$nombre.' '.$apellido.'"';

			{
				header('Location: alumnos.php');
			}
		}
?>
<head>
    <link type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>
        ::::::::::::Control de Transporte municipal:::::::
    </title>
    <div class="jumbotron">
        <h2 align="center"><strong>Control de Transporte municipal</strong>
          <img src="imagenes/guanipa.jpg"class="img-circle" width="90px" height="120px" >
    </div>
</head>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.html">Inicio</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="active"><a href="somos.html">Quienes somos <span class="sr-only">(current)</span></a></li>
          <li class="dropdown">
      <a href="rutas.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Rutas <span                    class="caret"></span></a>
      <ul class="dropdown-menu">

          <li><a href="ruta1.html">Ruta1: Floresta </a></li>
          <li><a href="ruta2.html">Ruta2: </a></li>
          <li><a href="ruta3.html">Ruta3: </a></li>
        </UL>
          <li><a href="contactenos.html">Contacto </a></li>
          <li><a href="registro.php">Registrar </a></li>
          </li>
      </ul>
</nav>

    </div>

      </div>
         <br>
           <br>
             <br>
              <br>
            </br>

<body>
</div>
                <div class="box-item-form"><label class="labels">Usuario:</label></div>
                <div class="box-item-form"><input id="usuario" name="usuario" class="ui-widget-content ui-corner-all text" style=" width: 80%; text-align: left; " value=""  /></div>
                <div class="box-item-form"><label class="labels">Password:</label></div>
                <div class="box-item-form"><input type="password" id="password" name="password" class="ui-widget-content ui-corner-all text" style=" width: 80%; text-align: left;" value=""/></div>
                <div class="box-item-form"><input type="submit" id="ingresar" value="Iniciar Sessión" class="ui-button"  /></div>
                <div class="box-item-form">
                    <a href="#">¿No Puedes iniciar session? <br/> Contactece con el WebMaster.</a>
                </div>
                </form>
</div>
</body>

<footer>
  Copyleft © 2018 Alcaldía del Municipio <em>San josé de guanipa.</em> </br> Usando tecnologias libres, haciendo el debido cumplimiento al decreto 3390,</br> y la ley infoGobierno.
</footer>
<script src="bower_components/jquery/dist/jquery.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.js"></script>
