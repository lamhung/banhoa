<?php
class MY_Controller extends Controller{
	public $params;
	public $lang;
	public $pagination;
	public $current_action;
	public $form_validation;
	public $upload;
	public $data = array();
	function __construct() {
		$this->model('model_user');
		
		$url = trim(parseUrl(),'/');
		$arr = explode('/',$url);
		if(isset($arr[0]) && $arr[0] == 'acp') {
			$this->model_user->backend_is_login();
		}
		
	}

	
}