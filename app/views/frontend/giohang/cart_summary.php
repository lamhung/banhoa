<style type="text/css" media="screen">
	.a {color: #EF1E1E!important}	
</style>
<div id="giohang_tomtat">
<?php 
if (!empty($_SESSION['daysoluong']) && count($_SESSION['daysoluong']) > 0) {
  $str = "Đã chọn " . array_sum($_SESSION['daysoluong']). " sản phẩm. <br>";
  $str .= "Tiền =".$this->model_giohang->tongtien()." VNĐ.<br>";
  $str .=' <a href="'.BASE_URL.'showcart" class = "a">Xem</a>';
  echo $str;
} else {
	echo "Chưa chọn SP";
}?>
</div>
