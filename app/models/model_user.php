<?php
class model_user extends MY_Model {
	//public $abc;
	function __construct() {
		parent::__construct('lh_users');
		
	}
	
	
	function default_value() {
		return array(
			'id' => NUll,
            'fullname' => '',
            'username' => '',
            'groups' => '0',
            'image_' => BASE_URL.'assets/backend/img/icons/no_avatar_256x256.png',
            'phone' => '',
            'email' => '',
            'address' => '',
            'gender' => 1,
            'birthday' => '',
            'status' => 1
		);
	}
	
	function conver_data($data = array()) {
		if(isset($data['image'])) {
			$data['image_'] = BASE_URL.'upload/user/'.$data['image'];
		}else $data['image_'] = BASE_URL.'assets/backend/img/icons/no_avatar_256x256.png';
		if(isset($data['gender'])) {
			$data['gender_'] = "{user_gender_".$data['gender']."}";
		}
		if(isset($data['groups'])) {
			$data['groups_'] = "{user_group_".$data['groups']."}";
		}
		$data['status_'] = "{user_status_".$data['status']."}";
		if(isset($data['create_at'])) {
			$data['create_at_'] = date('d-m-Y', $data['create_at']);
		}
		
		return $data;
	
	}

	function backend_is_login() {
		$user_login = $_SESSION['login'];
		if(isset($_GET['url'])) {
			$_SESSION['back'] = $_GET['url'];
		}
		
		if(!isset($user_login['id'])) {
			header("location:".BASE_URL.'acp/login');
		}else {
			$_SESSION['back'] = "";
		}
		return true;
	}
	function backend_login($input) {
		$result = array('success' => FALSE, 'msg' => "");
		$user = $this->get_by(array('where' => array('username' => $input['u'])));
		if(!$user) {
			$result['msg'] = "{user_not_exist}";
		} else {
			if($user['groups'] != 1) {
				$result['msg'] = "{user_has_been_deny}";
			}else if($user['status'] == 0) {
				$result['msg'] = "{user_has_been_locked}";
			}else if($user['password'] != md5(md5($input['p'].$user['salt']))) {
				$result['msg'] = "{auth_password_not_available}";
			}else {
				$sesion = array(
					'id' => $user['id'],
                    'username' => $user['username'],
                    'fullname' => $user['fullname'],
                    'groups' => $user['groups'],
                    'is_admin' => 1,
				);
				$_SESSION['login'] = $sesion;
				$result['success'] = TRUE;
			}
		}

		return $result;
	}

}