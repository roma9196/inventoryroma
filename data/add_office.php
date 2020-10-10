<?php 
require_once('../class/Employee.php');
if(isset($_POST['off'])){
	$off = $_POST['off'];

	$result['valid'] = $employee->insert_employee_office($off);
	if($result['valid']){
		$result['msg'] = 'Nueva oficina agregada con éxito!';
		echo json_encode($result);
	}
}

$employee->Disconnect();