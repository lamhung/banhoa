<style type="text/css">
    #divhuongdan  { width:700px; background-color:#CCCCCC; height:320px;
        border:solid 2px #444444; margin:auto; border-radius:15px; }
#divhuongdan .caption { background-color:#006699; color:#CCCCCC; 
padding-top:5px; padding-bottom:5px; padding-left:10px; margin:0px; 
    border-top-left-radius:15px; border-top-right-radius:15px; }
#divhuongdan ul { margin-top:10px; list-style:circle }
#divdangnhap    { border:solid 2px #069; width:500px;margin-top:20px;
height:150px; background-color:#66CCCC; margin-left:100px; 
    border-radius:15px; }
#divdangnhap #formdangnhap { margin:20px}
#divdangnhap  span { color:#996600; width:100px; float:left;  }
#divdangnhap  p{margin-top:5px; margin-bottom:5px;margin-left:50px; float:left}
#divhuongdan  a{ color:#CC0066; text-decoration:none}
#divhuongdan a:hover { color:#003366}
#divdangnhap #email, #divdangnhap #password{    
background-color:#069; color:#6FF; padding:3px;
    border:solid 1px #990; width:280px;}
#divdangnhap #btnLog{ background-color:#036; color:#6FF; width:120px; 
padding:3px; border:solid 1px #6FF}
#divhuongdan h4.thongbao{ color:#F06; }
.error {border: 2px solid #E92A2A !important}

</style>

<div id="divhuongdan">
<p class="caption">ĐĂNG NHẬP</p>
<ul><li>Nếu bạn là khách hàng cũ, vui lòng đăng nhập trong form bên dưới.</li>
<li>Nếu quên mật khẩu, nhắp vào: <a href="<?=BASE_DIR?>/sanpham/quenpass">quên mật khẩu</a> để chúng tôi cấp lại mật khẩu cho bạn. </li>
<li>Nếu bạn là khách mới, vui lòng <a href="<?=BASE_DIR?>/sanpham/dangky">đăng ký</a> một tài khoản trước khi giao dịch.</li>
</ul>
<div id="divdangnhap">
<form id="formdangnhap" method="post" action="">

<p><span>Email</span><input type="text" name="email" value="<?php echo set_value('email',"")?>" id="email" class="<?php if(isset($error['email'])) echo 'error';?>" /></p>

<p><span>Pass</span><input type="password"  name="password" id="password" class="<?php if(isset($error['email'])) echo 'error';?>" /></p>
<p><span>&nbsp;</span>
   <input type="submit" name="btnLog" id="btnLog" value="Đăng nhập"/>&nbsp;
   <input type="checkbox" name="nho" id="nho" /> Ghi nhớ   
</p>
</form>
</div>
<h4 align="center" class="thongbao">
    <?php if(isset($msg)) echo $msg; ?>
</h4>
</div>
