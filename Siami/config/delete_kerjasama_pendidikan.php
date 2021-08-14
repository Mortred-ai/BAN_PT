<?php 

include once("database.php");

$id     = $_GET['id_kerj_pend'];

mysqli_query($koneksi, "delete from tbl_kerjasama_pendidikan where id = '$id'");


header("location:home/tbl_pendidikan.php");

?> 