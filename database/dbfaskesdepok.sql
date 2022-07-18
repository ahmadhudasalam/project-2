-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 03:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbfaskesdepok`
--

-- --------------------------------------------------------

--
-- Table structure for table `faskes`
--

CREATE TABLE `faskes` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `latlong` varchar(40) DEFAULT NULL,
  `jenis_id` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `skor_rating` double DEFAULT NULL,
  `foto1` varchar(40) DEFAULT NULL,
  `foto2` varchar(40) DEFAULT NULL,
  `foto3` varchar(40) DEFAULT NULL,
  `kecamatan_id` int(11) NOT NULL,
  `website` varchar(45) DEFAULT NULL,
  `jumlah_dokter` int(11) DEFAULT NULL,
  `jumlah_pegawai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faskes`
--

INSERT INTO `faskes` (`id`, `nama`, `alamat`, `latlong`, `jenis_id`, `deskripsi`, `skor_rating`, `foto1`, `foto2`, `foto3`, `kecamatan_id`, `website`, `jumlah_dokter`, `jumlah_pegawai`) VALUES
(1, 'RS Grha Permata Ibu', 'Jl. K.H.M. Usman No.168, Kukusan, Kecamatan Beji, Kota Depok, Jawa Barat 16425', '-6.3706925,106.8134163', 1, 'Menjadi Rumah Sakit Terbaik, Modern dan mampu bersaing dalam memberikan pelayanan kesehatan di Kota Depok dan sekitarnya', 4.8, 'permataibu01.jpg', 'permataibu02.jpg', 'permataibu03.jpg', 1, 'https://www.grhapermataibu.com', 80, 200),
(2, 'Dokter Anggi Dental Clinic', 'Jl. Komjen pol M Jasin No.59, Kelapa Dua, Cimanggis Depok', '-6.3543267819760265,106.8406034543549', 2, 'Dokter Anggi Dental Clinic adalah klinik gigi yang modern,berkualitas dan maju dalam menyediakan kesehatan gigi masyarakat Indonesia.', 4.9, 'faskes2_foto1.png', 'faskes2_foto2.png', 'faskes2_foto3.png', 3, 'dokteranggi.co.id', 13, 13),
(3, 'RSUD Kota Depok', 'Jl. Raya Muchtar No.99, Sawangan Lama, Kec. Sawangan, Kota Depok, Jawa Barat 16511', '-6.403486595501756, 106.75841976791075', 1, 'RSUD Depok atau memiliki nama lain RSUD Depok Barat adalah sebuah rumah sakit pemerintah yang terletak di Kota Depok, Jawa Barat. Rumah sakit ini dikategorikan kelas C dan terletak kurang lebih 7,7 km dari Parung, Kabupaten Bogor.', 3, 'RSUD_KotaDepok1.jpg', 'RSUD_KotaDepok2.jpg', 'RSUD_KotaDepok3.jpg', 7, 'https://rsud.depok.go.id', 24, 662),
(4, 'RSU Hermina Depok', 'Jl. Siliwangi No.50, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16436', '-6.39979643338456, 106.82516062953619', 1, 'RS Hermina Depok – yang berdiri tahun 2000 – menjadi rumah sakit pilihan bagi warga Depok dalam hal masalah persalinan. Ini karena Rumah Sakit memiliki layanan unggulan dari Personal Maternity Officer di mana pasien akan mendapat manfaat informasi dan solusi menyeluruh terkait dengan kehamilan dari spesialis terbaik. Tersedia 230 tempat tidur dan didukung dengan fasilitas Hemodialisis, Thalassemia, Kemoterapi, dan Cath Lab.', 4, 'RSU_HerminaDepok1.jpg', 'RSU_HerminaDepok2.jpg', 'RSU_HerminaDepok3.jpg', 2, 'https://herminahospitals.com', 146, 471),
(5, 'Klinik Umum Paramitha Medica', 'Jl. Raya Cagar Alam, Pancoran MAS, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16436', '-6.3999428784613235, 106.81228559638123', 3, 'Klinik pratama rawat inap paramitha medika ,beroprasi setiap hari selama 24 jam ,dengan tim dokter yang selalu siap untuk melayani pasien ,dan di bantu oleh perawat ,bidan , apoteker, ass apoteker dan tenaga adminitrasi sedangkan untuk ketepatan diagnosa klinik pratama rawat inap paramitha medika juga menyediakan uji laboratorium yang bererjasama dengan lab ultra medika sehingga pasien dapat dilayani hingga mendapatkan uji laboratorium tersebut.dalam meningkat pelayanan , klinik pratama rawat inap paramitha medika juga mempunyai beberapa poli yaitu poli umum , poli KIA dan Kb , poli gigi dan apotik 1 atap', 4.2, 'Klinik_ParamithaMedica1.jpg', 'Klinik_ParamithaMedica2.jpg', 'Klinik_ParamithaMedica3.jpg', 2, 'https://piramithamedika.co.id', 6, 12),
(6, 'UPTD Puskesmas Beji', 'Jl. Bambon Raya No.7B, RT.01/RW.01, Beji Tim., Kecamatan Beji, Kota Depok, Jawa Barat 16422', '-6.3760819205552925, 106.82166839672493', 4, 'Meningkatkan tata kelola Pemerintahan dan Pelayanan Publik yang Modern dan Partifipatif. Mewujudkan Wilayah kerja UPTD Puskesmas Beji yang sehat, aman, tertib dan nyaman.', 3.3, 'UPTD_Puskesmas_BejiDepok1.jpg', 'UPTD_Puskesmas_BejiDepok2.jpg', 'UPTD_Puskesmas_BejiDepok3.jpg', 1, 'https://pkmbeji.depok.go.id', 9, 22),
(7, 'Apotek Kimia Farma Cinere 456', 'Jl. Limo Raya A-B No.101, Limo, Kec. Limo, Kota Depok, Jawa Barat 16514', '-6.350761261491549, 106.7763464390539', 5, 'Kimia Farma menempatkan kepuasan pelanggan sebagai bentuk pelayanan yang fundamental dan penting. Pelanggan Kimia Farma, baik distributor maupun pengguna akhir, merupakan pemangku kepentingan yang mempunyai peran sentral dalam menjamin keberlangsungan usaha, sehingga merupakan partner utama dalam mengembangkan usaha di masa depan.', 4.1, 'Apotek_KimiaFarmaCinere456_1.jpeg', 'Apotek_KimiaFarmaCinere456_2.jpeg', 'Apotek_KimiaFarmaCinere456_3.jpeg', 5, 'https://www.kimiafarma.co.id', 3, 8),
(8, 'Klinik Gigi drg. Antonio', ' Jl. Kemakmuran Raya No.48, Mekar Jaya, Kec. Sukmajaya, Kota Depok, Jawa Barat 16411', '-6.397726951142995, 106.83661114058555', 2, 'Ditangani oleh tim dokter gigi yang berpengalaman dan juga disupervisi oleh dokter gigi yang sudah menangani perawatan gigi selama lebih dari 20 tahun. Kami juga mengadakan pelatihan secara berkala pada dokter gigi kami agar selalu up-to-date dan tanggap dalam memberikan pelayanan yang memuaskan', 5, 'Klinik_Gigi_drg_AntonioDepok1.jpeg', 'Klinik_Gigi_drg_AntonioDepok2.jpeg', 'Klinik_Gigi_drg_AntonioDepok3.jpeg', 6, 'http://id.near-place.com', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_faskes`
--

CREATE TABLE `jenis_faskes` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_faskes`
--

INSERT INTO `jenis_faskes` (`id`, `nama`) VALUES
(1, 'Rumah Sakit'),
(2, 'Klinik Gigi'),
(3, 'Klinik Umum'),
(4, 'Puskesmas'),
(5, 'Apotik');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`) VALUES
(1, 'Beji'),
(2, 'Pancoran Mas'),
(3, 'Cimanggis');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `faskes_id` int(11) DEFAULT NULL,
  `nilai_rating_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `tanggal`, `isi`, `users_id`, `faskes_id`, `nilai_rating_id`) VALUES
(1, '2022-06-12', 'layanan nya baik', 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_rating`
--

CREATE TABLE `nilai_rating` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_rating`
--

INSERT INTO `nilai_rating` (`id`, `nama`) VALUES
(1, 'Jelek'),
(2, 'Kurang Bagus'),
(3, 'Biasa Aja'),
(4, 'Bagus'),
(5, 'Sangat Bagus');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `status`, `role`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@gmail.com', '2022-06-12 00:32:05', '2022-06-12 00:32:05', 1, 'administrator'),
(2, 'aminah', '90b74c589f46e8f3a484082d659308bd', 'aminah@gmail.com', '2022-06-12 00:32:06', '2022-06-12 00:32:06', 1, 'public');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faskes`
--
ALTER TABLE `faskes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produk_jenis_produk_idx` (`jenis_id`),
  ADD KEY `fk_tempat_wisata_kelurahan1_idx` (`kecamatan_id`);

--
-- Indexes for table `jenis_faskes`
--
ALTER TABLE `jenis_faskes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan_users1_idx` (`users_id`),
  ADD KEY `fk_pesanan_produk1_idx` (`faskes_id`),
  ADD KEY `fk_komentar_nilai_rating1_idx` (`nilai_rating_id`);

--
-- Indexes for table `nilai_rating`
--
ALTER TABLE `nilai_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faskes`
--
ALTER TABLE `faskes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_faskes`
--
ALTER TABLE `jenis_faskes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nilai_rating`
--
ALTER TABLE `nilai_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `fk_komentar_nilai_rating1` FOREIGN KEY (`nilai_rating_id`) REFERENCES `nilai_rating` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`faskes_id`) REFERENCES `faskes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesanan_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
