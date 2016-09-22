<ul>
<?php foreach($cacloai as $row){?>
<li> <a href="<?php echo BASE_URL.'cat/'.$row['idLoai'];?>"><?=$row['TenLoai']?></a> </li>
<?php } ?>
</ul>
