<?php
class DB {
	protected $db;
	function connect() {
		$this->db = new mysqli(HOST, USER_DB, PASS_DB, DB_NAME);
		$this->db->set_charset('utf8');
		return $this->db;
	}
	
}
