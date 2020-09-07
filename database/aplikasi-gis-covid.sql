-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 07:59 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi-gis-covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `id_desa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `id_desa`) VALUES
(1, 'Administrator', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bantuan`
--

CREATE TABLE `bantuan` (
  `id_bantuan` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `id_jenis_bantuan` int(11) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `kk` varchar(20) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `keterangan` text NOT NULL,
  `lat_bantuan` varchar(225) NOT NULL,
  `lng_bantuan` varchar(225) NOT NULL,
  `foto_tampak_depan` varchar(225) NOT NULL,
  `foto_tampak_samping` varchar(225) NOT NULL,
  `foto_tampak_ruang_tamu` varchar(225) NOT NULL,
  `nominal_bantuan` int(11) NOT NULL,
  `tanggal_terima_bantuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bantuan`
--

INSERT INTO `bantuan` (`id_bantuan`, `id_desa`, `id_jenis_bantuan`, `nik`, `kk`, `nama`, `jk`, `alamat`, `keterangan`, `lat_bantuan`, `lng_bantuan`, `foto_tampak_depan`, `foto_tampak_samping`, `foto_tampak_ruang_tamu`, `nominal_bantuan`, `tanggal_terima_bantuan`) VALUES
(7, 1, 1, '500010', '500011', 'Rahardian Era Muliawan', 'L', 'Dusun Jatiwera', '<p>Butuh Pelukan</p>\r\n', '-7.463278600000001', '109.8544112', '', '', '', 0, '0000-00-00 00:00:00'),
(12, 1, 2, '2389428482', '726346278', 'pendi', 'L', 'asjdklajdks', '<p>ajkalsjdlkajdslk</p>\r\n', '-7.463278600000001', '109.8544112', '', '', '', 0, '0000-00-00 00:00:00'),
(13, 1, 2, '1234567812345678', '1234567812345678', 'Antonius', 'L', 'daksldjkasjd', '<p>daskdjsakdjkasjdkasjld</p>\r\n', '-4.466535479759057', '102.93850697699233', 'Jadwal UTS.jpeg', 'Logo UTY Baru.png', 'LOGO AMIKOM.png', 600000, '2020-08-31 10:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `kecamatan` varchar(225) NOT NULL,
  `kabupaten` varchar(225) NOT NULL,
  `provinsi` varchar(225) NOT NULL,
  `nama_desa` varchar(225) NOT NULL,
  `lat_desa` varchar(225) NOT NULL,
  `lng_desa` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `kecamatan`, `kabupaten`, `provinsi`, `nama_desa`, `lat_desa`, `lng_desa`) VALUES
(1, 'Depok', 'Sleman', 'DI Yogyakarta', 'Dero', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_bantuan`
--

CREATE TABLE `jenis_bantuan` (
  `id_jenis_bantuan` int(11) NOT NULL,
  `nama_jenis_bantuan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_bantuan`
--

INSERT INTO `jenis_bantuan` (`id_jenis_bantuan`, `nama_jenis_bantuan`) VALUES
(1, 'Sembako'),
(2, 'Paket 5KG');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kegiatan`
--

CREATE TABLE `jenis_kegiatan` (
  `id_jenis_kegiatan` int(11) NOT NULL,
  `nama_jenis_kegiatan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_kegiatan`
--

INSERT INTO `jenis_kegiatan` (`id_jenis_kegiatan`, `nama_jenis_kegiatan`) VALUES
(1, 'Bakti Sosial'),
(3, 'Kerja Bakti');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_jenis_kegiatan` int(11) DEFAULT NULL,
  `id_jenis_bantuan` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `judul_kegiatan` varchar(225) NOT NULL,
  `tanggal_kegiatan` datetime NOT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `lat_kegiatan` varchar(225) NOT NULL,
  `lng_kegiatan` varchar(225) NOT NULL,
  `nominal_bantuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_jenis_kegiatan`, `id_jenis_bantuan`, `id_desa`, `judul_kegiatan`, `tanggal_kegiatan`, `deskripsi_kegiatan`, `lat_kegiatan`, `lng_kegiatan`, `nominal_bantuan`) VALUES
(10, 3, 0, 1, 'Baksos', '2020-08-31 01:15:00', '<p>era rahardian</p>\r\n', '-7.3748057', '109.8998181', 0),
(11, 1, 0, 1, 'ajsdajs', '2020-08-31 01:18:00', '<p>ahskjdahdjh</p>\r\n', '-7.3748057', '109.8998181', 0);

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id_superadmin` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id_superadmin`, `nama`, `username`, `password`) VALUES
(1, 'Superadmin', 'superadmin', '889a3a791b3875cfae413574b53da4bb8a90d53e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bantuan`
--
ALTER TABLE `bantuan`
  ADD PRIMARY KEY (`id_bantuan`),
  ADD KEY `id_jenis_bantuan` (`id_jenis_bantuan`),
  ADD KEY `id_desa` (`id_desa`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `jenis_bantuan`
--
ALTER TABLE `jenis_bantuan`
  ADD PRIMARY KEY (`id_jenis_bantuan`);

--
-- Indexes for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  ADD PRIMARY KEY (`id_jenis_kegiatan`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_desa` (`id_desa`),
  ADD KEY `id_jenis_kegiatan` (`id_jenis_kegiatan`) USING BTREE;

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id_superadmin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bantuan`
--
ALTER TABLE `bantuan`
  MODIFY `id_bantuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenis_bantuan`
--
ALTER TABLE `jenis_bantuan`
  MODIFY `id_jenis_bantuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  MODIFY `id_jenis_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id_superadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bantuan`
--
ALTER TABLE `bantuan`
  ADD CONSTRAINT `bantuan_ibfk_1` FOREIGN KEY (`id_jenis_bantuan`) REFERENCES `jenis_bantuan` (`id_jenis_bantuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bantuan_ibfk_2` FOREIGN KEY (`id_desa`) REFERENCES `desa` (`id_desa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `desa` (`id_desa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kegiatan_ibfk_2` FOREIGN KEY (`id_jenis_kegiatan`) REFERENCES `jenis_kegiatan` (`id_jenis_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
