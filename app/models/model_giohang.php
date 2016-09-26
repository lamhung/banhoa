<?php
class model_giohang extends MY_Model {
	function __construct() {
		parent::__construct('donhang');
	}
	function checklogin(){  
		$user_login = $_SESSION['login_user'];
		if(isset($user_login['id_user'])) {
			$kq = $user_login['id_user']; 
		}
	  	 
	  	return $kq;
	}

	function tongtien(){
	  $sosp = count( $_SESSION['daysoluong'] ); if ($sosp<=0) return 0; 
	  reset( $_SESSION['daysoluong'] ); reset( $_SESSION['daydongia'] );
	  $tongtien = 0;
	  for ($i = 0; $i<$sosp ; $i++) {
	      $soluong = current( $_SESSION['daysoluong'] );
	      $dongia = current( $_SESSION['daydongia'] );
	      $tongtien += $soluong*$dongia; 
	      next( $_SESSION['daysoluong'] ); 
	      next( $_SESSION['daydongia'] );
	  }//for
	  return $tongtien;
	}//tongtien
	function userdanglogin(){
		$user_login = $_SESSION['login_user'];
		if (isset( $user_login['id_user'] )==false) return FALSE;
		return $this->model_user_front->get_by($user_login['id_user']);
	}

	function pttt(){
	  $sql="SELECT idpttt as id,tenphuongthuctt as ten 
		  FROM phuongthucthanhtoan ORDER BY thutu";
	  if(!$kq = $this->db->query($sql)) die( $this->db->error);
	  foreach ($kq as $row) $data[] = $row;
	  return $data;
	}// pttt
	function ptgh(){
	  $sql="SELECT idptgh as id,tenphuongthucgh as ten,ghichu,phi 
	        FROM phuongthucgiaohang ORDER BY thutu";
	  if(!$kq = $this->db->query($sql)) die( $this->db->error);
	  foreach ($kq as $row) $data[] = $row;
	  return $data;
	}//ptgh
	function get_row_pttt($id_pttt = ""){
		$sql="SELECT tenphuongthuctt
		  FROM phuongthucthanhtoan where idpttt = '$id_pttt'";
		 $result  = $this->query($sql);
		 //print_r($result);
		 return $result;
	}
	function get_row_ptgh($id_ptgh = ""){
		$sql="SELECT tenphuongthucgh,phi 
		  FROM phuongthucgiaohang where idptgh = '$id_ptgh'";
		  $result  = $this->query($sql);
		  return $result;
	}

	function convert_data($data = array()) {
		if(isset($data['idpttt'])) {
			$pttt = $this->get_row_pttt($data['idpttt']);
			$data['_pttt'] = $pttt[0]['tenphuongthuctt'];
		}
		if(isset($data['idptgh'])) {
			$ptgh = $this->get_row_ptgh($data['idptgh']);
			$data['_ptgh'] = $ptgh[0]['tenphuongthucgh'];
			$data['_ptgh_phi'] = $ptgh[0]['phi'].' Đồng';
		}
		return $data;
	}







	
}