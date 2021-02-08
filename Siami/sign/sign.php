<?php
include "../config/database.php";
session_start();

$uName = $_POST['username'];
$pass = $_POST['password'];
$q = "SELECT * FROM tbl_user WHERE user = '".$uName."' AND pass = '".$pass."'";
$query_admin = mysqli_query($db, $q);
$tot = mysqli_num_rows($query_admin);
if($tot == 1){
    $ekstrak = mysqli_fetch_array($query_admin);
    $_SESSION['user'] = $ekstrak['user'];
    ?>
        <script type="text/javascript">
        alert("Selamat Datang, <?php echo $ekstrak['user']; ?>");
            window.location.href = '../home/';
        </script>
    <?php
} else {
        ?>
            <script type="text/javascript">
                alert("Maaf anda bukan user yang terdaftar pada sistem !");
                window.location.href = "../";
            </script>
        <?php
}