<?php
class home extends MY_Controller {
	function __construct($action = '', $params = '') {
		parent::__construct();
		$this->params = $params;
		$this->current_action = $action;
		$this->model('model_sanpham');
		$this->model('model_loaisp');
		$this->library('pagination');
		$this->library('form_validation');
		$this->model('model_giohang');
		$this->model('model_donhangchitiet');
		$this->model('model_user_front');
		$this->helper('helper_validation');

		$dk_cl = array(
			'select' => 'idLoai, TenLoai',
			'where' => array('AnHien' =>1),
			'order_by' => 'ThuTu'
		);
		$this->data['cacloai'] = $this->model_loaisp->get_rows($dk_cl);
	}

	function index() {
		
		$dk_sp = array(
			'select' => 'idSP,TenSP,MoTa,urlHinh,NgayCapNhat,Gia',
			'where' =>array('AnHien'=>'1'),
			'order_by' => 'NgayCapNhat, DESC',
			'limit' => '0,12'
		);
		$rows = $this->model_sanpham->get_rows($dk_sp);

		$this->data['rows'] = $rows;

		$this->view('frontend/layout/header');
		$this->view('frontend/home/index', $this->data);
		$this->view('frontend/layout/footer');
	}
	function cat(){ 

		$idloai= $this->params[0];
		$this->data['loaisp'] = $this->model_loaisp->get_by(array('select' => 'TenLoai', 'where' => array('idLoai' =>$idloai)));

		if(empty($this->params[1])){
		  $current_page =1;
	  	}else {$current_page= $this->params[1];}

	  	settype($idloai,"int"); settype($current_page,"int");

	  	$dk_count = array(
	  		'where' => array('idLoai' => $idloai,'AnHien' => '1'),
	  	);
	  	$config = array(
			'base_url' => BASE_URL.'cat/'.$idloai.'/trang',
			'total_rows' => $this->model_sanpham->count_rows($dk_count),
			'per_page' => '5',
			'current_page' => $current_page,
			'full_tag_open' => "<div id='thanhphantrang'>",
			'full_tag_close' => "</div>",
			'cur_tag_open' => "<span>",
			'cur_tag_close' => "</span>",
			'tag_open' => '',
			'tag_close' => '',
		);

		$this->pagination->initialize_pagination($config);
		$start = ($current_page-1)*$config['per_page'];
	  	$dk_sp = array(
			'select' => 'idSP,TenSP,MoTa,urlHinh,NgayCapNhat,Gia',
			'where' =>array('AnHien'=>'1','idLoai' =>$idloai),
			'order_by' => 'NgayCapNhat, DESC',
			'limit' => '$start,'.$config['per_page']
		);
		$this->data['listsp']  = $this->model_sanpham->get_rows($dk_sp);

		$this->view('frontend/layout/header');
		$this->view('frontend/home/index', $this->data);
		$this->view('frontend/layout/footer');

	}
	function detail(){		
		$id = $this->params[0];
		settype($id,"int");
		if ($id<=0) return;
		$dk_detail = array(
			'select' => 'idSP,TenSP,MoTa,urlHinh,NgayCapNhat,Gia,SoLuongTonKho,baiviet,idLoai',
			'where' =>  array('idSP'=> $id)
		);

		$chitietsp = $this->model_sanpham->get_by($dk_detail);

		$this->data['chitietsp'] = $chitietsp;

		$this->view('frontend/layout/header');
		$this->view('frontend/home/index', $this->data);
		$this->view('frontend/layout/footer');
	}

	function showcart() {
		$this->view('frontend/layout/header');
		$this->view('frontend/home/index', $this->data);
		$this->view('frontend/layout/footer');
	}
	function muahang(){
		$kq = $this->model_giohang->checklogin();
		if (!$kq) {
			$_SESSION['back_front']=$_SERVER['REQUEST_URI'];
			header("location:". BASE_DIR."login" );
		}
		$user_login = $_SESSION['login_user'];

		$error = array();
		$post = array();
		if(isset($_POST['btntieptuc'])) {
			$error = $this->form_validation->set_empty(
						array('dtnguoinhan','diachi','tennguoinhan','idpttt','idptgh'),
						array('Điện Thoại','Địa Chỉ', 'Họ Tên','Phương thức thanh toán','Phương thức giao hàng')
					);
			if (count($_SESSION['daysoluong'])==0){
					$error['daysoluong']="Chưa chọn sản phẩm nào"; $success =  FALSE;
				}

			if(count($error) == 0){
				$success = TRUE;
				$post = $_POST;
				if($success) {
					$post['iduser'] = $user_login['id_user'];
					$post['tongtien'] = $this->model_giohang->tongtien();
					$post['thoidiemdathang'] = time();
					if (isset($_SESSION['idDH'])==false) {
						$result = $this->model_giohang->insert_row($post);
						if($result) {
							$_SESSION['idDH'] = $this->model_giohang->insert_id();
						}
					}else{
						$post['iddh']= $_SESSION['idDH'];
						$result = $this->model_giohang->update_row($post);
					}

					if($result) {
						$post_chitiet = array();
						$idDH = $_SESSION['idDH'];
						$this->model_donhangchitiet->delete_row(array('idDH'=>$idDH));

						$post_chitiet['idDH'] = $_SESSION['idDH'];
						$sosp = count($_SESSION['daysoluong']);
						reset( $_SESSION['daysoluong'] );
						reset( $_SESSION['daydongia'] );
						reset( $_SESSION['daytensp'] );

						for ($i = 0; $i<$sosp ; $i++) {

						   	$post_chitiet['idSP']= key( $_SESSION['daysoluong'] );
						   	$post_chitiet['TenSP'] = current( $_SESSION['daytensp'] );
						   	$post_chitiet['SoLuong'] = current( $_SESSION['daysoluong'] );
						   	$post_chitiet['Gia'] = current( $_SESSION['daydongia'] );
						   	$result_ct = $this->model_donhangchitiet->insert_row($post_chitiet);
						   
						   	next( $_SESSION['daysoluong'] );
						   	next( $_SESSION['daydongia'] );
						   	next( $_SESSION['daytensp'] );
						}

						if($result_ct) {
							//unset($_SESSION['daytensp']);
							//unset($_SESSION['daydongia']);
							//unset($_SESSION['daysoluong']);
							echo "<script>alert('Đặt hàng thành công')</script>";
							echo "<script>window.location.href='".BASE_URL."'</script>";
						}
					}
				}
			}
		}
		


		$this->data['user'] =$this->model_user_front->get_by($user_login['id_user']);
		$this->data['error'] = $error;

		$this->view('frontend/layout/header');
		$this->view('frontend/home/index',$this->data);
		$this->view('frontend/layout/footer');
	}



}