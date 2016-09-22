<?php
class model_user_front extends MY_Model {
	//public $abc;
	function __construct() {
		parent::__construct('users');
		
	}
	
	function frontend_login($input) {
		$result = array('success' => FALSE, 'msg' => "");
		$user = $this->get_by(array('where' => array('Email' => $input['email'])));
		if(!$user) {
			$result['msg'] = "{user_not_exist}";
		} else {
			if($user['Password'] != md5($input['password'].$user['salt'])) {
				$result['msg'] = "{auth_password_not_available}";
			}else {
				$sesion = array(
					'id_user' => $user['idUser'],
                    'email' => $user['Email'],
                    'hoten' => $user['HoTen'],
                    'groups' => $user['idGroup'],
                    
				);
				$_SESSION['login_user'] = $sesion;
				$result['success'] = TRUE;
			}
		}

		return $result;
	}
}