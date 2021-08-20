
<div class="card text-left">
	<div class="card-body">
		<div class="row">
			<div class="col-sm-10 mt-2">
				<h2>Insert Data Pendidikan</h2>
			</div>
			<div class="col-sm-2 mt-2">
			 	<!-- Button trigger modal -->
				 
 
			</div>
		</div>
	</div>
</div> 

<div class="card text-left">
	<h4 class="card-body">
		<!-- <center>AKREDITASI PROGRAM STUDI<br>BADAN AKREDITASI NASIONAL - PERGURUAN TINGGI</center> -->
	</h4>
	
	<div class="card-body">
		<form action="../config/submit_pendidikan.php" method="POST">
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label" require>Lembaga mitra </label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="lembaga">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Tingkat </label>
                <div class="col-sm-9">
                    <select class="form-control " name="tingkat">
                        <option></option>
                        <option>Internasional</option>
                        <option>Nasional</option>
                        <option>Wilayah / lokal</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Judul kegiatan kerjasama</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="judul">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Manfaat bagi PS yang diakreditasi</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="manfaat">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Waktu dan durasi </label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="waktu">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Bukti kerjasama </label>
                <div class="col-sm-9">
                    <input type="file" class="form-control" name="bukti">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-3 col-form-label">Tahun berakhirnya kerjasama </label>
                <div class="col-sm-9">
                    <input type="date" class="form-control" name="berakhir">
                </div>
            </div> 
        	<button type="submit" class="btn btn-primary mt-3 mb-1" style="width:10%;">Kirim</button>
   		</form>
	</div>
</div>
