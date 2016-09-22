<div id="giohang_detail">
<?php  if(empty($_SESSION['daysoluong']) || count($_SESSION['daysoluong'])<=0) { ?>
<p>Chưa chọn sản phẩm nào</p>
<?php } else { ?>
<form action="" id="formGiohang" name="formGiohang" style= "margin:0">
<table width=600 border=1 align=center cellpadding=5 cellspacing=0 id=tblgiohang>
<caption> Các sản phẩm bạn đã chọn</caption>
<tr>	<th widrh=40>STT</th> 		<th width=300>Sản phẩm</th> 
	<th width=100>Số lượng</th> 	<th width=130>Tiền</th> 
	<th width=130>Chọn</th>
</tr>
<?php 
$sosp = count( $_SESSION['daysoluong'] );
reset( $_SESSION['daysoluong'] );  
reset( $_SESSION['daydongia'] );
reset( $_SESSION['daytensp'] );    
$tongtien = $tongsoluong = 0;
$dem = 0;
for ($i = 0; $i<$sosp ; $i++) {
	$idsp = key( $_SESSION['daysoluong'] );
	$tensp = current( $_SESSION['daytensp'] );
	$soluong = current( $_SESSION['daysoluong'] );
	$dongia = current( $_SESSION['daydongia'] );
	$tien = $dongia*$soluong;  $tongtien+= $tien; $tongsoluong+= $soluong;
?>
<tr>
  <td class=stt><?=$dem++?></td>
  <td class=tensp><?=$tensp;?></td>
  <td align="center">
     <input name="sl[]" id="sl" value="<?=$soluong;?>" size=2 >
     <input name="idsp[]" id="idsp" value="<?=$idsp;?>" type=hidden>
  </td>
  <td align="center"><?=$tien?></td>
  <td align="center"">
     <a href="#" class="capnhatsoluong" idsp="<?=$idsp;?>">Cập nhật</a>
     <a href="" class="removesp" idsp="<?=$idsp;?>">Xóa</a>
  </td>
</tr>
<?php  next( $_SESSION['daysoluong'] );  
	 next( $_SESSION['daydongia'] );
	 next( $_SESSION['daytensp'] );   	
}  //for ?>
<tr class="tongket">
  <th>&nbsp;</th> <th>Tổng</th> <th align="center"><?=$tongsoluong;?></th> 
  <th align="center"><?=$tongtien;?></th> <th>&nbsp;</th>
</tr>
</table>
</form>

<div id="cacnutxulygiohang" align = "center">
<input type="button" id="btntieptucmuahang" value="Tiếp tục chọn" />
<input type="button" id="btncapnhatgiohang" value="Cập nhật" />
<input type="button" id="btnxoagiohang" value="Xoá giỏ hàng" />
<input type="button" id="btnmuahang" value="Mua hàng" />
</div>
<?php } //if?>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $(".removesp").click(function(){
          var idsp = $(this).attr("idsp");
          var diachi= "addtocart/remove/" + idsp;           
          $.ajax({ 
            url:diachi, cache:false,
            success: function(dulieu) {
                    $("#giohangtt").html(dulieu);

                    $("#giohang_detail").load("showcart_detail");
                    //location.reload();
                    //alert('Đã thêm vào giỏ'); 
                    //$("body").scrollTop(0);
                  }
            });
                return false;
          }); //removesp
        $(".capnhatsoluong").click(function(){
           var idsp = $(this).attr("idsp");
           var soluong = $(this).parent().parent().find('#sl').val();
           var diachi= "addtocart/update/" + idsp + "/" + soluong;
           $.ajax({   
          url:diachi, cache:false,
          success: function(dulieu) { 
                    $("#giohangtt").html(dulieu); 
                    $("#giohang_detail").load("showcart_detail");
                  }
          });
              return false;
        });//capnhatsoluong

        $("#btnxoagiohang").click(function() { 
            var diachi= "addtocart/removeall/";
            $.ajax({ 
              url:diachi,
              cache:false,
              success: function(d) { 
                $("#giohangtt").html(d); 
                $("#giohang_detail").html(d); 
              }
            });
        });
        $("#btntieptucmuahang").click(function() {
          document.location="<?=BASE_URL?>"; 
        })
        $("#btnmuahang").click(function(){
          document.location="<?=BASE_DIR?>muahang";
        })



    }); //document.ready

</script>
