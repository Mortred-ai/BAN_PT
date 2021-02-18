<div class="card text-left">
	<div class="card-body">
		<h2>Menu Utama</h2>
	</div>
</div>

<div class="card text-left">
	<h4 class="card-body">
		<center>AKREDITASI PROGRAM STUDI<br>BADAN AKREDITASI NASIONAL - PERGURUAN TINGGI</center>
	</h4>
	
	<div class="card-body">
		<form action="../config/submit_prodi.php" method="POST">
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label" require>Nama Program Studi </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="prodi">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Jenis Program </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="jenis">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Peringkat Akreditasi PS </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="peringkat">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Nomor SK BAN-PT </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="sk">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Tanggal Kadaluarsa </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="kadaluarsa">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Nama Unit Pengelola </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="unit">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Nama Perguruan Tinggi </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="perti">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Alamat </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="alamat">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label"></label>
			<label for="inputEmail3" class="col-sm-2 col-form-label">Kota/Kabupaten</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="kota">
			</div>
			<label for="inputEmail3" class="col-sm-2 col-form-label">Kode Pos   </label>
			<div class="col-sm-2">
				<input type="text" class="form-control" name="pos">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Nomor Telepon </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="tlp">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">E-mail </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="email">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">Website </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="web">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-3 col-form-label">TS *) </label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="ts">
			</div>
		</div>
        	<button type="submit" class="btn btn-primary mt-3 mb-1" style="width:10%;">Kirim</button>
   		</form>
	</div>

</div>