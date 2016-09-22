<?php
	$dk  = array(
		'select' => 'idLoai, TenLoai',
		'where' => array('idLoai' => $chitietsp['idLoai'])
	);
	$loai = $this->model_loaisp->get_by($dk);
?>

<h2><?php echo $loai['TenLoai']?></h2>
<div id="sp_detail">
<h3><?=$chitietsp['TenSP']?></h3>
<img src="<?=BASE_URL?>assets/frontend/img/images/hoa/<?=$chitietsp['urlHinh'];?>" width="220" height="280" align="left"/>
<p class="price"><?=$chitietsp['MoTa'];?> </p>
<p class="price">GIÁ : <?=number_format($chitietsp['Gia'],0);?> VNĐ</p>
<div class="buynow"> 
   <a href="#" idsp="<?=$chitietsp['idSP'];?>" class="chonhang">Chọn hàng</a>
</div>
<div id="baiviet"><?=$chitietsp['baiviet']?></div>
</div> 
<hr style="clear:both" />
