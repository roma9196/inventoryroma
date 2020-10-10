<!DOCTYPE html>
<html>
<head>
	<title>SISTEMA DE INVENTARIO</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" href="assets/css/style.css" />
  <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css"/>

</head>
    
<body>

<div class="container"> 
<nav class="navbar navbar-inverse" style="margin-top:5px;">
    <div class="container-fluid">
     <div class="banner">
                    <img src="img/logo.png" width="200" height="90" style="position:absolute;margin-top:-20px;">
<div style="color:red;margin-left:250px;margin-bottom:50px;margin-top:20px;font-size:30px;font-family:Bodoni MT Black;">SISTEMA DE INVENTARIO</div>

               </div> 
     

     </div>
    </nav>

  <nav class="navbar navbar-inverse" style="margin-top:-18px;">
  	<div class="container-fluid">
   	 
  	  <ul class="nav navbar-nav">
  
  	  </ul>
 	 </div>
	</nav>

	<div class="container-fluid">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Por favor iniciar sesion</h3>
			</div>
			<div class="panel-body">
				<!-- logn form -->
					<form class="form-horizontal" role="form" id="form-login">
					<center>
						<strong class="text-danger"></strong>
					</center>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="un">Nombre de usuario:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="un" placeholder="Introduzca su nombre de usuario">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="pwd">Contraseña:</label>
					    <div class="col-sm-10"> 
					      <input type="password" class="form-control" id="pwd" placeholder="Introducir la contraseña">
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10">
					      <div class="checkbox">
					        <label><input type="checkbox"> Recordar</label>
					      </div>
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-default">Login
					      <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
					      </button>
					    </div>
					  </div>
					</form>
				<!-- logn form -->
			</div>
		</div>
		</div>
		<div class="col-md-2"></div>
	</div>

</div>

<div class="modal fade" id="modal-admin">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Administrador</h4>
			</div>
			<div class="modal-body">
				<!-- logn form -->
					<form class="form-horizontal" role="form" id="form-login-admin">
					<center>
						<strong class="text-danger"></strong>
					</center>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="un">Nombre de usuario:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="un" placeholder="Introduzca su nombre de usuario">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="pwd">Contraseña:</label>
					    <div class="col-sm-10"> 
					      <input type="password" class="form-control" id="pwd" placeholder="Introducir la contraseña">
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10">
					      <div class="checkbox">
					        <label><input type="checkbox"> Recordar</label>
					      </div>
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-default">Login
					      <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
					      </button>
					    </div>
					  </div>
					</form>
				<!-- logn form -->
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
	 
   <script type="text/javascript" src="assets/js/jquery-3.1.1.min.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="assets/js/login.js"></script>


</body>
</html>	

