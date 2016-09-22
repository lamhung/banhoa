<?php
class auth extends MY_Controller {
	function __construct($action = '', $params = '') {
		$this->params = $params;
		$this->current_action = $action;
		$this->model('model_user_front');
		$this->library('form_validation');
		$this->helper('helper_validation');
	}

	function login() {
		if(isset($_SESSION['login_user'])) {
			$user_login = $_SESSION['login_user'];
	        if($user_login)
	        {
	           header('location:'. BASE_URL);
	        }
	        $this->data['msg'] = '';
	    }
		$errors = array();
		if(isset($_POST['btnLog'])) {
			$errors = $this->form_validation->set_empty(
				array('email', 'password'),
				array('Email','Mật Khẩu')
			);
			if(count($errors) == 0) {
				$input['email'] = strip_tags($_POST['email']);
				$input['password'] = strip_tags($_POST['password']);
				$result = $this->model_user_front->frontend_login($input);
				if($result['success']) {

					$back = $_SESSION['back_front'];
					if ($back=="") header('location:'. BASE_URL);
					else { unset($_SESSION['back_front']); header('location:'. $back);}
				}else {
                    $this->data['msg'] = $result['msg'];
                }
			}
		}

		$this->data['error'] = $errors;
		$this->view('frontend/auth/login', $this->data);
	}

	function logout() {
		if(isset($_SESSION['login_user'])) {
			unset($_SESSION['login_user']);
		}
		header("location:".BASE_URL);
	}
}