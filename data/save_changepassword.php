<?php 
require_once('../class/Employee.php');
if(isset($_POST['uid'])){
	$id = $_POST['uid'];
	$un = $_POST['un'];
	$pwd = $_POST['pwd'];

	$pwd = md5($pwd);

	$result['valid'] = $employee->change_employee_password($id, $un, $pwd);
	if($result['valid']){
		$result['msg'] = 'Cambio de contraseña exitoso!';
		echo json_encode($result);
	}
}
$employee->Disconnect();