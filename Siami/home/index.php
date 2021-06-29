<!DOCTYPE html>
<html lang="en" dir="ltr">

<?php
include "../config/database.php";

$query = mysqli_query($db, "SELECT * FROM tbl_akred_prodi");

?>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>BAN-PT</title>

	<link type="text/css" href="assets/css/vendor-morris.css" rel="stylesheet">
	<link type="text/css" href="assets/css/vendor-bootstrap-datepicker.css" rel="stylesheet">

	<!-- App CSS -->
	<link type="text/css" href="assets/css/app.css" rel="stylesheet">
	<link type="text/css" href="assets/css/app.rtl.css" rel="stylesheet">

	<!-- Simplebar -->
	<link type="text/css" href="assets/vendor/simplebar.css" rel="stylesheet">
</head>

<body>
	<div class="mdk-drawer-layout js-mdk-drawer-layout" data-fullbleed data-push data-responsive-width="992px" data-has-scrolling-region>

		<div class="mdk-drawer-layout__content">
			<!-- header-layout -->
			<div class="mdk-header-layout js-mdk-header-layout  mdk-header--fixed  mdk-header-layout__content--scrollable">
				<!-- header -->
				<div class="mdk-header js-mdk-header bg-primary" data-fixed>
					<div class="mdk-header__content">

						<nav class="navbar navbar-expand-md bg-primary navbar-dark d-flex-none">
							<button class="btn btn-link text-white pl-0" type="button" data-toggle="sidebar">
								<i class="material-icons align-middle md-36">short_text</i>
							</button>
							<div class="page-title m-0">SIAMI - Sistem Informasi Akreditasi Mutu Internal</div>

							<div class="collapse navbar-collapse" id="mainNavbar">
								<ul class="navbar-nav ml-auto align-items-center">
									<li class="nav-item nav-divider">
									<li class="nav-item">
										<a href="#" class="nav-link dropdown-toggle dropdown-clear-caret" data-toggle="sidebar" data-target="#user-drawer">
											Frontted
											<img src="https://pbs.twimg.com/profile_images/928893978266697728/3enwe0fO_400x400.jpg" class="img-fluid rounded-circle ml-1" width="35" alt="">
										</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>

				<!-- content -->
				<!-- <div class="mdk-header-layout__content top-navbar mdk-header-layout__content--scrollable h-100">
					<div class="container-fluid">
						<div class="card">
							<div class="card-header">
								<div class="row align-items-center">
									<div class="col-lg-4">
										<div class="card-title">Recent Orders</div>
									</div>
									<div class="col-lg-8 col-md-12">
										<div class="row">
											<div class="col-md-4 col-lg-6 d-flex justify-content-md-end sort-index">
												<div class="dropdown mr-2">
													<button class="btn btn-white dropdown-toggle" type="button" id="sortOrdersDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
														Sort By
													</button>
													<div class="dropdown-menu">
														<a class="dropdown-item" href="#">Date</a>
														<a class="dropdown-item" href="#">ID</a>
														<a class="dropdown-item" href="#">Name</a>
													</div>
												</div>
												<div class="dropdown mr-4">
													<button class="btn btn-white dropdown-toggle" type="button" id="filterOrdersDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
														Filter
													</button>
													<div class="dropdown-menu" aria-labelledby="filterOrdersDropdown">
														<a class="dropdown-item" href="#">Delivered</a>
														<a class="dropdown-item" href="#">Failed</a>
														<a class="dropdown-item" href="#">Pending</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> -->
				<div class="mdk-header-layout__content top-navbar mdk-header-layout__content--scrollable h-100">
					<div class="container-fluid">
						<?php

						if (isset($_GET['p'])) {
							$page = $_GET['p'];
							if ($page == 'dashboard') {
								require "dashboard.php";
							} else if ($page == "menu_utama") {
								require "menu_utama.php";
							} else if ($page == "tbl_pendidikan") {
								require "tbl_pendidikan.php";
							} else if ($page == "tbl_penelitian") {
								require "tbl_penelitian.php";
							} else if ($page == "tbl_pengabdian_masyarakat") {
								require "tbl_pen_mas.php";
							} else if ($page == "tbl_seleksi_mhs") {
								require "tbl_sel_mhs.php";
							} else if ($page == "tbl_mhs_asing") {
								require "tbl_mhs_asing.php";
							} else if ($page == "tbl_dosen_tetap") {
								require "tbl_dst.php";
							} else if ($page == "tbl_dosen_pembimbing") {
								require "tbl_dospem.php";
							} else if ($page == "tbl_ewmp_dosen_tetap") {
								require "tbl_ewmp.php";
							} else if ($page == "tbl_dosen_tidak_tetap") {
								require "tbl_dtt.php";
							} else if ($page == "tbl_pengakuan_rekognisi_dtps") {
								require "tbl_pengakuan_dtps.php";
							} else if ($page == "tbl_penelitian_dtps") {
								require "tbl_pen_dtps.php";
							} else if ($page == "tbl_pkm_dtps") {
								require "tbl_pkm_dtps.php";
							} else if ($page == "tbl_publikasi_ilmiah_dtps") {
								require "tbl_publ_dtps.php";
							} else if ($page == "tbl_karya_ilmiah_dtps") {
								require "tbl_karya_dtps.php";
							} else if ($page == "tbl_hki_paten") {
								require "tbl_hki_paten.php";
							} else if ($page == "tbl_hki_hakcipta") {
								require "tbl_hki_hakcipta.php";
							} else if ($page == "tbl_ttg_dll") {
								require "tbl_ttg.php";
							} else if ($page == "tbl_isbn_book") {
								require "tbl_isbn.php";
							} else if ($page == "tbl_penggunaan_dana") {
								require "tbl_penggunaan_dana.php";
							} else if ($page == "tbl_kurikulum") {
								require "tbl_kurikulum.php";
							} else if ($page == "tbl_integrasi") {
								require "tbl_integrasi.php";
							} else if ($page == "tbl_kepuasan_mhs") {
								require "tbl_kep_mhs.php";
							} else if ($page == "tbl_penelitian_dtps_mhs") {
								require "tbl_penelitian_dtps_mhs.php";
							} else if ($page == "tbl_pkm_dtps_mhs") {
								require "tbl_pkm_dtps_mhs.php";
							}


							// else
							else {
								echo "Tes";
							}
						} else {
							require "dashboard.php";
						}
						?>
					</div>
				</div>
			</div>

		</div>
		<!-- // END drawer-layout__content -->

		<!-- drawer -->
		<div class="mdk-drawer js-mdk-drawer" id="default-drawer">
			<div class="mdk-drawer__content">
				<div class="mdk-drawer__inner" data-simplebar data-simplebar-force-enabled="true">

					<nav class="drawer  drawer--dark">
						<div class="drawer-spacer">
							<div class="media align-items-center">
								<a href="index.html" class="drawer-brand-circle mr-2">S</a>
								<div class="media-body">
									<a href="#" class="h5 m-0 text-link"><b>SIAMI</b> </a>
								</div>
							</div>
						</div>
						<!-- HEADING -->
						<div class="py-2 drawer-heading">
							Menu
						</div>
						<!-- DASHBOARDS MENU -->
						<ul class="drawer-menu" id="dasboardMenu" data-children=".drawer-submenu">
							<li class="drawer-menu-item">
								<a href="?p=dashboard">
									<i class="material-icons">poll</i>
									<span class="drawer-menu-text"> Dashboard</span>
								</a>
							</li>
							<li class="drawer-menu-item ">
								<a href="?p=menu_utama">
									<i class="material-icons">poll</i>
									<span class="drawer-menu-text"> Menu Utama</span>
								</a>
							</li>
							<li class="drawer-menu-item drawer-submenu">
								<a data-toggle="collapse" data-parent="#componentsMenu" href="#" data-target="#uiComponentsMenu" aria-controls="uiComponentsMenu" aria-expanded="false" class="collapsed">
									<i class="material-icons">library_books</i>
									<span class="drawer-menu-text"> Daftar Tabel</span>
								</a>
								<ul class="collapse " id="uiComponentsMenu">
									<li class="drawer-menu-item "><a href="?p=tbl_pendidikan">Pendidikan</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_penelitian">Penelitian</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_pengabdian_masyarakat">Pengabdian Masyarakat</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_seleksi_mhs">Seleksi Mahasiswa</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_mhs_asing">Mahasiswa Asing</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_dosen_tetap">Dosen Tetap</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_dosen_pembimbing">Dosen Pembimbing TA</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_ewmp_dosen_tetap">EWMP Dosen Tetap</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_dosen_tidak_tetap">Dosen Tetap</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_pengakuan_rekognisi_dtps">Pengakuan/Rekognisi DTPS</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_penelitian_dtps">Penelitian DTPS</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_pkm_dtps">PKM DTPS</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_publikasi_ilmiah_dtps">Publikasi Ilmiah DTPS</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_karya_ilmiah_dtps">Karya Ilmiah DTPS</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_hki_paten">HKI (Paten,PatenSederhana)</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_hki_hakcipta">HKI (Hak Cipta, Desain, Dll)</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_ttg_dll">Teknologi Tepat Guna, Dll</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_isbn_book">Buku Ber-ISBN</a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_penggunaan_dana">Penggunaan dana</a></li>
									<li class="drawer-menu-item mb-4 "><a href="?p=tbl_kurikulum">Kurikulum, Capaian Pembelajaran, dan Rencana(X)</a></li>
									<li class="drawer-menu-item mb-4"><a href="?p=tbl_integrasi">Integrasi Kegiatan Penelitian dalam Pembelajaran </a></li>
									<li class="drawer-menu-item "><a href="?p=tbl_kepuasan_mhs">Kepuasan Mahasiswa</a></li>
									<li class="drawer-menu-item mb-4"><a href="?p=tbl_penelitian_dtps_mhs">Penelitian DTPS yang Melibatkan Mahasiswa</a></li>
									<li class="drawer-menu-item mb-4"><a href="?p=tbl_pkm_dtps_mhs">PkM DTPS yang Melibatkan Mahasiswa</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- // END drawer -->

		<!-- drawer -->
		<div class="mdk-drawer js-mdk-drawer" id="user-drawer" data-position="right" data-align="end">
			<div class="mdk-drawer__content">
				<div class="mdk-drawer__inner" data-simplebar data-simplebar-force-enabled="true">
					<nav class="drawer drawer--light">
						<div class="drawer-spacer drawer-spacer-border">
							<div class="media align-items-center">
								<img src="https://pbs.twimg.com/profile_images/928893978266697728/3enwe0fO_400x400.jpg" class="img-fluid rounded-circle mr-2" width="35" alt="">
								<div class="media-body">
									<a href="#" class="h5 m-0">Admin</a>
									<div>Admin Akreditasi</div>
								</div>
							</div>
						</div>
						<ul class="drawer-menu" id="userMenu" data-children=".drawer-submenu">
							<li class="drawer-menu-item">
								<a href="login.html">
									<i class="material-icons">exit_to_app</i>
									<span class="drawer-menu-text"> Logout</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- // END drawer-layout -->

	<!-- jQuery -->
	<script src="assets/vendor/jquery.min.js"></script>

	<!-- Bootstrap -->
	<script src="assets/vendor/popper.js"></script>
	<script src="assets/vendor/bootstrap.min.js"></script>

	<!-- Simplebar -->
	<!-- Used for adding a custom scrollbar to the drawer -->
	<script src="assets/vendor/simplebar.js"></script>


	<!-- Vendor -->
	<script src="assets/vendor/Chart.min.js"></script>
	<script src="assets/vendor/moment.min.js"></script>


	<!-- APP -->
	<script src="assets/js/color_variables.js"></script>
	<script src="assets/js/app.js"></script>


	<script src="assets/vendor/dom-factory.js"></script>
	<!-- DOM Factory -->
	<script src="assets/vendor/material-design-kit.js"></script>
	<!-- MDK -->



	<script>
		(function() {
			'use strict';
			// Self Initialize DOM Factory Components
			domFactory.handler.autoInit()

			// Connect button(s) to drawer(s)
			var sidebarToggle = document.querySelectorAll('[data-toggle="sidebar"]')

			sidebarToggle.forEach(function(toggle) {
				toggle.addEventListener('click', function(e) {
					var selector = e.currentTarget.getAttribute('data-target') || '#default-drawer'
					var drawer = document.querySelector(selector)
					if (drawer) {
						if (selector == '#default-drawer') {
							$('.container-fluid').toggleClass('container-fluid');
						}
						drawer.mdkDrawer.toggle();
					}
				})
			})
		})()
	</script>

	<script src="assets/vendor/morris.min.js"></script>
	<script src="assets/vendor/raphael.min.js"></script>
	<script src="assets/vendor/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/datepicker.js"></script>
</body>

</html>