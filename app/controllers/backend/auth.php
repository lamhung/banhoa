<?php
class auth extends MY_Controller {
	function __construct($action = '', $params = '') {
		$this->params = $params;
		$this->current_action = $action;
		$this->model('model_user');
		$this->library('form_validation');
		$this->helper('helper_validation');
	}

	function login() {
		if(isset($_SESSION['login'])) {
			$user_login = $_SESSION['login'];
	        if($user_login)
	        {
	           header('location:'. BASE_URL.'acp');
	        }
	        $this->data['msg'] = '';
	    }

		$input = array();
		$errors = array();
		if(isset($_POST['submit'])) {
			$errors = $this->form_validation->set_empty(
				array('u', 'p'),
				array('{user_username}','{user_password}')
			);
			if(count($errors) == 0) {
				$input['u'] = strip_tags($_POST['u']);
				$input['p'] = strip_tags($_POST['p']);
				$result = $this->model_user->backend_login($input);
				if($result['success']) {

					$back =$_SESSION['back'];
					if ($back=="") {
						$url =  BASE_URL.'acp';
					}else { 
						unset($_SESSION['back']);
						$url = BASE_URL.$back;
					}
					
					$this->view('backend/auth/loading',array('url' => $url));
					return true;
				}else {
                    $this->data['msg'] = $result['msg'];
                }
			}
		}

		$this->data['error'] = $errors;

		$this->view('backend/auth/login',$this->data);

	}

	function logout() {
		if(isset($_SESSION['login'])) {
			unset($_SESSION['login']);
		}
		header("location:".BASE_URL.'acp/login');
	}
	
}