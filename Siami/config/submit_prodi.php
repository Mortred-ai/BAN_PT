<?php

require "database.php";

include_once 'database.php';

	 $prodi 		= $_POST['prodi'];
	 $jenis 		= $_POST['jenis'];
	 $peringkat 	= $_POST['peringkat'];
	 $sk 			= $_POST['sk'];
	 $kadaluarsa	= $_POST['kadaluarsa'];
	 $unit 			= $_POST['unit'];
	 $perti 		= $_POST['perti'];
	 $alamat 		= $_POST['alamat'];
	 $kota 			= $_POST['kota'];
	 $pos 			= $_POST['pos'];
	 $tlp 			= $_POST['tlp'];
	 $email 		= $_POST['email'];
	 $web 			= $_POST['web'];
	 $ts 			= $_POST['ts'];

	 $sql = "INSERT INTO tbl_akred_prodi 
	 (nama_prodi,jenis_program,peringkat_akred,nomor_sk_ban,tgl_kadaluarsa,nama_unit_pengelola,nama_perti,alamat,kota_kab,kode_post,telp,email,website,id_thajaran)
	 VALUES 
	 ('$prodi','$jenis','$peringkat','$sk','$kadaluarsa','$unit','$perti','$alamat','$kota','$pos','$tlp','$email','$web','$ts')";
	
	if (mysqli_query($db, $sql)) {
		echo "New record created successfully !";
		header('Location:../home/?p=menu_utama');
	 } else {
		echo "Error: " . $sql . "" . mysqli_error($db);
	 }
	 mysqli_close($db);

?>