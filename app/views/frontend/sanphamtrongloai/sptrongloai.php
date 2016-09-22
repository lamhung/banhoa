<h2><?php echo $loaisp['TenLoai'];?></h2>
<div id="sptrongloai">
<?php foreach($listsp as $row ){ ?>
<div class="product_box">
<img src="<?=BASE_URL?>assets/frontend/img/images/hoa/<?=$row['urlHinh']?>" align="left">
<h3><?=$row['TenSP']?></h3>
<p class="price">GIÁ : <?=$row['Gia'];?> VNĐ</p>
<div class="buynow"> 
<a href="#" idsp="<?=$row['idSP'];?>" class="chonhang">Chọn hàng</a> 
</div>
<a href="<?=BASE_URL?>detail/<?=$row['idSP'];?>">Chi tiết</a>
</div>
<?php } ?>
</div>
<?php echo $this->pagination->pageslist()?>
