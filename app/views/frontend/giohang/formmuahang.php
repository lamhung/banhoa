<<style type="text/css" media="screen">
    .error {margin-left: 160px;font-size: 13px;color: #0EFBD7}
</style>
<div id="divthongtintaikhoan">
    <h4 class="caption">Thông tin tài khoản</h4>
    <p><b>Họ tên: </b><span><?=$user['HoTen'];?></span></p>
    <p><b>Địa chỉ: </b><span><?=$user['DiaChi'];?></span></p>
    <p><b>Điện thoại: </b><span><?=$user['DienThoai'];?></span></p>
</div>
<div id="divnguoinhan">
<h4 class="caption">Thông tin người nhận:</h4>
<form name="formmuahang" id="formmuahang" method="post" action="" >
<p><span>Tên người nhận:</span> 
 <input type=text name='tennguoinhan' class=txt value="<?= set_value('tennguoinhan',$user['HoTen']);?>">
   <br><i class="error"><?php if(isset($error['tennguoinhan']))echo $error['tennguoinhan'];?></i>
</p>
<p><span>Điện thoại: </span>
 <input type=text name='dtnguoinhan' class=txt value="<?= set_value('dtnguoinhan',$user['DienThoai']);?>"> 
    <br><i class="error"><?php if(isset($error['dtnguoinhan']))echo $error['dtnguoinhan'];?></i>
 </p>
<p><span>Địa chỉ giao hàng: </span>
 <input type=text name='diachi' class=txt value="<?= set_value('diachi',$user['DiaChi']);?>">
    <br><i class="error"><?php if(isset($error['diachi']))echo $error['diachi'];?></i>
</p>
<p><span>Ghi chú: </span> <textarea name='GhiChu'  id=GhiChu></textarea> </p>

<div id="divthanhtoan">
    <h4>Phương thức thanh toán:</h4> <?php $pttt = $this->model_giohang->pttt(); ?>
    <?php foreach($pttt as $row) {?>
    <p><input type=radio name='idpttt' value="<?=$row['id'];?>"> <?=$row['ten'];?></p> 
    <?php }?> 
</div>
<i class="error"><?php if(isset($error['idpttt']))echo $error['idpttt'];?></i>
<div id="divgiaohang">
    <h4>Phương thức giao hàng:</h4> <?php $ptgh = $this->model_giohang->ptgh(); ?>
    <?php foreach($ptgh as $row) {?>
    <p><input type=radio name='idptgh' value="<?=$row['id'];?>"> <?=$row['ten'];?></p>
    <?php }?>
</div>
<i class="error"><?php if(isset($error['idptgh']))echo $error['idptgh'];?></i>
<div align="center">
   <input type="submit" name="btntieptuc" id="btntieptuc" value="Tiếp tục" />
</div>&nbsp;
</form>
</div>

