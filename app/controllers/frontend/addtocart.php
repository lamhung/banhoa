<?php
class addtocart extends MY_Controller {
	function __construct($action = '', $params = '') {
		parent::__construct();
		$this->params = $params;
		$this->current_action = $action;
		$this->model('model_sanpham');
		$this->model('model_giohang');
		
		$this->library('pagination');

	}
	function addcart(){
		if (!isset($_SESSION['daysoluong'])) $_SESSION['daysoluong']=array();
		if (!isset($_SESSION['daydongia']))  $_SESSION['daydongia']=array();
		if (!isset($_SESSION['daytensp']))   $_SESSION['daytensp']=array();
		if(isset($this->params[0])) {
			$what = $this->params[0];
		}
		if(isset($this->params[1])) {	
			$idsp = $this->params[1];
			settype($idsp,"int");
		}
		if(isset($this->params[2])) {
			$soluong = $this->params[2];
			settype($soluong,"int");
			if ($soluong<=0) $soluong=1;
		}

		
		$act=array("update", "add","remove","removeall","updatecart");
		if (in_array($what, $act)==false) { echo "Khong biet lam gi "; exit;}
		if ($what=="removeall"){
			unset($_SESSION['daytensp']);
			unset($_SESSION['daydongia']);
			unset($_SESSION['daysoluong']);
			echo "<p>Giỏ hàng chưa có sản phẩm nào</p> ";  
			exit();	
		}
		if ($what=="add") {					
			if ($idsp<=0) die(" Không biết sản phẩm nào để thêm/bớt");
			$row = $this->model_sanpham->get_by($idsp);

				$_SESSION['daytensp'][$idsp] = $row['TenSP'];
				$_SESSION['daydongia'][$idsp] = $row['Gia'];

				@$slhientai= $_SESSION['daysoluong'][$idsp];
				$slhientai = $slhientai + $soluong;

				if ($slhientai >$row['SoLuongTonKho']) $slhientai=$row['SoLuongTonKho'];
				$_SESSION['daysoluong'][$idsp] = $slhientai; 
			
		} //add
		if ($what=="update") {
			if ($idsp<=0) die(" Không biết sản phẩm nào để thêm/bớt");
			$row = $this->model_sanpham->get_by($idsp);		
			$_SESSION['daytensp'][$idsp] = $row['TenSP'];
			$_SESSION['daydongia'][$idsp] = $row['Gia'];		
			if ($soluong>$row['SoLuongTonKho']) $soluong = $row['SoLuongTonKho'];
			$_SESSION['daysoluong'][$idsp] = $soluong; 
		}//update
		if ($what=="remove") {
			if ($idsp<=0) die(" Không biết sản phẩm nào để thêm/bớt");
			unset($_SESSION['daytensp'][$idsp]);
			unset($_SESSION['daydongia'][$idsp]);
			unset($_SESSION['daysoluong'][$idsp]);
			if (count($_SESSION['daysoluong'])==0) {
				echo "<p>Giỏ hàng chưa có sản phẩm nào</p> ";  exit();		
			}
		}
		$this->view('frontend/giohang/cart_summary');

	}
	function showcart_summary(){
		
		$this->view('frontend/giohang/cart_summary');
	}
	function showcart_detail(){
		$this->view('frontend/giohang/cart_detail');
	}

}