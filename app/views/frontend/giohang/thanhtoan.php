<style>
	#thongtindonhang { border:solid 2px #3FF;padding-top:20px;padding-bottom:20px}
	#thongtindonhang th { width:180px; text-align:left }
	#thongtindonhang td { color:#FF0; font-weight:bold}

</style>
<table id="thongtindonhang">
<tr><td colspan="2">Cảm ơn quý khách đã đặt hàng. Sau đây là thông tin về đơn hàng mà quý vị đã đặt mua: </td></tr>
<tr><th>Mã đơn hàng </th><td><?=$ttdh['iddh']?> </td></tr>
<tr><th>Tên người nhận </th><td><?=$ttdh['tennguoinhan']?> </td></tr>
<tr><th>Phương thức thanh toán </th><td><?=$ttdh['_pttt']?> </td></tr>
<tr><th>Phương thức giao hàng </th><td><?=$ttdh['_ptgh']?> </td></tr>

<tr><th>Số lượng SP </th><td><?=array_sum($_SESSION['daysoluong'])?></td></tr>
<tr><th>Tổng tiền </th><td><?=$ttdh['tongtien']?> </td></tr>
<tr><td colspan="2" >

<?php 
if ($ttdh["idpttt"]=="nganluong"){
	require ("vendor/nganluong/index.php");
}
?>
</td></tr>
</table>