<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Loading</title>
	<style type="text/css">
		.container {margin-top:100px;}	
		.
	</style>
	<script src="<?php echo BASE_URL.'vendor/jquery-3.1.0.min.js'?>" type="text/javascript" ></script>
</head>
<body>
<div class="container">
	<div class='row' align="center">
		<div class="col-md-6 text-center">
			<table>
				<tr><td align="center" style="color:#2950A0"><strong>Đăng Nhập Vào Hệ Thống</strong></td></tr>
				<tr align="center"><td><img src="<?php echo BASE_URL.'assets/backend/img/loading45.gif';?>"></td></tr>
				<tr><td><h4><a href="<?php echo $url;?>" style="color:#183A52; text-decoration: none">Bấm vào đây nếu hệ thống không tự chuyển</a></h4></td></tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>
<script type="text/javascript">
	$(document).ready(function(){
		setTimeout('redirect()', 1700);

	});
	function redirect() {
		location.href = "<?php echo $url;?>";
	}
</script>