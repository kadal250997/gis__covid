<?php
$total_bantuan = count($bantuan->tampil_admin($_SESSION['admin']['id_desa']));
$total_kegiatan = count($kegiatan->tampil_admin($_SESSION['admin']['id_desa']));
$databantuan = $bantuan->tampil_admin($_SESSION['admin']['id_desa']);
?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
	<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
</div>

<div class="row">
	<div class="col-xl-3 col-md-6 mb-4">
		<div class="card border-left-primary shadow h-100 py-2">
			<div class="card-body">
				<div class="row no-gutters align-items-center">
					<div class="col mr-2">
						<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Kegiatan</div>
						<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $total_kegiatan; ?></div>
					</div>
					<div class="col-auto">
						<i class="fas fa-skating fa-2x text-gray-300"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-md-6 mb-4">
		<div class="card border-left-success shadow h-100 py-2">
			<div class="card-body">
				<div class="row no-gutters align-items-center">
					<div class="col mr-2">
						<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Bantuan</div>
						<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $total_bantuan; ?></div>
					</div>
					<div class="col-auto">
						<i class="fas fa-hands-helping fa-2x text-gray-300"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-xl-12 col-md-12 mb-4">
		<div class="card">
			<div class="card-body">
				<h3 class="card-title">Visualisasi Data Bantuan</h3>
				<div id="map" style="width: 100$;height: 500px;"></div>
			</div>
		</div>
	</div>
</div>