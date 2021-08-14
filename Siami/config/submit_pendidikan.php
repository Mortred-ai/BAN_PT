<?php 

include_once("database.php");
 
    $lembaga    =   $_POST['lembaga'];
    $tingkat    =   $_POST['tingkat'];
    $judul      =   $_POST['judul'];
    $manfaat    =   $_POST['manfaat'];
    $waktu      =   $_POST['waktu'];
    $bukti      =   $_POST['bukti'];
    $berakhir   =   $_POST['berakhir'];
    

$sql =  "INSERT INTO tbl_kerjasama_pendidikan
    (lembaga_mitra,tingkat,judul_keg_kerjasama,manfaat,waktu_durasi,bukti_kerjasama,tahun_berakhir)
    VALUES
    ('$lembaga','$tingkat','$judul','$manfaat','$waktu','bukti','$berakhir')";

if (mysqli_query($db, $sql)) {
    echo "New record created successfully !"; 
header('Location:../home/?p=tbl_pendidikan');

 } else {
    echo "Error: " . $sql . "" . mysqli_error($db);
 }


?>