<div class="modal fade" id="modal-changepass">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Cambia la contraseña</h4>
			</div>
			<div class="modal-body">
				<!-- form -->
				<form class="form-horizontal" role="form" id="form-changepassword">
				<center>
					<strong id="changepass-msg" class="text-danger"></strong>
				</center>
				<input type="hidden" id="user-id">
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="change-username">Usuario:</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="change-username" placeholder="Introduzca su nombre de usuario">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="control-label col-sm-2" for="change-password">Contraseña:</label>
				    <div class="col-sm-10"> 
				      <input type="password" class="form-control" id="change-password" placeholder="Contraseña">
				    </div>
				  </div>

				   <div class="form-group">
				    <label class="control-label col-sm-2" for="confirm-password">Confirmar:</label>
				    <div class="col-sm-10"> 
				      <input type="password" class="form-control" id="confirm-password" placeholder="Confirmar contraseña">
				    </div>
				  </div>

				  <div class="form-group"> 
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-primary">Guardar
				      <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
				      </button>
				    </div>
				  </div>

				</form>
				<!--end  form -->
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>