<?php
class DB {
	private $_connection;
	private static $_instance; //The single instance
	private $db;

	public static function getInstance(){
		if(!self::$_instance) {
			self::$_instance = new self();
		}
		return self::$_instance;
	}
	private function __construct(){
		$this->_connection = new mysqli(HOST, USER_DB, PASS_DB, DB_NAME);
		if(mysqli_connect_error()) {
			trigger_error("Failed to conencto to MySQL: " . mysqli_connect_error(),
				 E_USER_ERROR);
		}
	}

	public function getConnection(){
		return $this->_connection;
	}

	public function __destruct() {
		$this->_connection->close();
	}
	
}
