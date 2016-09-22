<h2>Sản Phẩm Mới</h2>
<div id="spmoi">
<?php foreach($rows as $row){?>
<div class="product_box">
   <h3><?=$row['TenSP']?></h3>  
   <img src="<?php echo BASE_URL?>assets/frontend/img/images/hoa/<?=$row['urlHinh'];?>"/>
   <p class="price">GIÁ : <?=number_format($row['Gia'],0);?> VNĐ</p>
   <div class="buynow"> 
    <a href="#" idsp="<?=$row['idSP'];?>" class="chonhang"> Chọn hàng</a>
   </div>
   <a href="<?=BASE_URL.'detail/'.$row['idSP'];?>">Chi tiết</a>
</div>
<?php } ?>
</div>