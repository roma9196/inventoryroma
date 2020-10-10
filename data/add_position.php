<?php 
require_once('../class/Employee.php');

if(isset($_POST['pos'])){
	$pos = $_POST['pos'];
	$return['valid'] = $employee->insert_employee_position($pos);
	if($return['valid']){
		//if true and no error in query
		$return['msg'] = "Nueva posición agregada con éxito!";
		echo json_encode($return);
	}//end if
}

$employee->Disconnect();