<?php
$detail = $jenis_bantuan->detail($_GET['id']);
?>
<!-- Page Heading -->
<div class="clearfix">
	<h1 class="h3 mb-4 float-left text-gray-800">Edit Jenis Bantuan</h1>
	<a href="index.php?halaman=jenis_bantuan" class="float-right btn btn-primary btn-sm"><i class="fa fa-arrow-left"></i> Kembali</a>
</div>
<div class="card">
	<div class="card-body">
		<form method="POST">
			<div class="form-group">
				<label>Nama Jenis Bantuan</label>
				<input type="text" class="form-control" name="nama_jenis_bantuan" value="<?php echo $detail['nama_jenis_bantuan']; ?>" required>
			</div>
			<button class="btn btn-success btn-sm" name="ubah">Ubah</button>
		</form>
		<?php
		if(isset($_POST['ubah'])){
			$cek = $jenis_bantuan->edit($_POST['nama_jenis_bantuan'],$_GET['id']);
				echo "<script>alert('Data berhasil diubah');location='index.php?halaman=jenis_bantuan';</script>";
		}
		?>
	</div>
</div>