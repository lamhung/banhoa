<?php
class Home extends MY_Controller{
	
	
	function __construct() {
		parent::__construct();

	}
	
	function index() {
		//if(isset($_POST['language'])) echo $_POST['language'];
		//print_r($_SESSION['login']);
		require_once "app/views/backend/layout/header.php";
		require_once "app/views/backend/layout/footer.php";
	}
}