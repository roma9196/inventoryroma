<?php 
class connection{

	protected $isConn;
	protected $datab;
	protected $transaction;

	//connect to DB use the default constructor
	public function __construct($username="sql10369981", $password="YmhqWPwT73", $host="sql10.freesqldatabase.com", $dbname="sql10369981", $options = []){
		
		$this->isConn = TRUE;
		try{
			$this->datab = new PDO("mysql:host={$host};  dbname={$dbname}; charset=utf8", $username, $password, $options);
			$this->datab->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->transaction = $this->datab;
			$this->datab->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
			//echo 'Connected Successfully!!!';

		}catch(PDOException $e){
			throw new Exception($e->getMessage());			
		}

	}//endDefaultConstructor
 

	//disconnect from db
	public function Disconnect(){
		$this->datab = NULL;//close connection in PDO
		$this->isConn = FALSE;
	}//endDisconnectFunction


	


}//endClassDatabase

 //$con = new Connection(); //for debugging only
//echo '	debug connection';
 ?>