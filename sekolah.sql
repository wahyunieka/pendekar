-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql2
-- Generation Time: Dec 26, 2018 at 07:58 AM
-- Server version: 5.7.24
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tm_agama`
--

CREATE TABLE `tm_agama` (
  `id_agama` bigint(20) NOT NULL,
  `nama_agama` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_agama`
--

INSERT INTO `tm_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kriten Protestan'),
(3, 'Kriten Katolik'),
(4, 'Hindu'),
(5, 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `tm_class`
--

CREATE TABLE `tm_class` (
  `id_class` bigint(20) NOT NULL,
  `nama_ruang_kelas` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_class`
--

INSERT INTO `tm_class` (`id_class`, `nama_ruang_kelas`, `create_at`) VALUES
(1, 'Kelas 1 A', '2018-12-19 07:10:16'),
(2, 'Kelas 1 B', '2018-12-19 07:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `tm_contact`
--

CREATE TABLE `tm_contact` (
  `cid` bigint(20) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `no_fax` varchar(45) NOT NULL,
  `no_email` varchar(45) NOT NULL,
  `media_center` varchar(45) NOT NULL,
  `staff_direcctory` varchar(45) NOT NULL,
  `facebook` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tm_events`
--

CREATE TABLE `tm_events` (
  `id_events` bigint(20) NOT NULL,
  `holiday` datetime NOT NULL,
  `testing` datetime NOT NULL,
  `fieldtrip` date NOT NULL,
  `meeting` datetime NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tm_extracuricullar`
--

CREATE TABLE `tm_extracuricullar` (
  `id` bigint(20) NOT NULL,
  `jenis_extracuricullar` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tm_food_menu`
--

CREATE TABLE `tm_food_menu` (
  `fid` bigint(20) NOT NULL,
  `jenis_makanan` varchar(45) NOT NULL,
  `jenis_minuman` varchar(45) NOT NULL,
  `jenis_buah` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tm_parents`
--

CREATE TABLE `tm_parents` (
  `id_parents` bigint(20) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `id_agama` bigint(20) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tm_school`
--

CREATE TABLE `tm_school` (
  `id_sekolah` bigint(20) NOT NULL,
  `name_school` varchar(45) NOT NULL,
  `tanggal_pendirian` date DEFAULT NULL,
  `status_sekolah` char(10) NOT NULL,
  `akreditasi` char(15) NOT NULL,
  `sertifikasi` char(10) NOT NULL,
  `kepala_sekolah` char(30) NOT NULL,
  `alamat` longtext NOT NULL,
  `visi` longtext NOT NULL,
  `misi` longtext NOT NULL,
  `file_url` text NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_school`
--

INSERT INTO `tm_school` (`id_sekolah`, `name_school`, `tanggal_pendirian`, `status_sekolah`, `akreditasi`, `sertifikasi`, `kepala_sekolah`, `alamat`, `visi`, `misi`, `file_url`, `create_at`) VALUES
(1, 'SD ADINDA SURABAYA', '2008-12-01', 'Swasta', 'A', '-', 'Ujang Girik', 'JL.SIDOSERMO INDAH Gg PUSKESMAS I A SURABAYA, Kecamatan : Kec. Wonocolo, Desa/kel : Sidosermo', 'UNGGUL DALAM IMTAQ, IPTEK, DAN SANTUN DALAM PERILAKU SERTA BERWAWASAN GLOBAL.', 'Melaksanakan kegiatan belajar mengajar yang efektif. • Menumbuhkan cara berpikir kreatif dan berwawasan luas. • Bersikap santun untuk menuju sikap yang berakhlak mulia. • Mewujutkan kebiasaan positif yang berlandaskan nilai-nilai islam. • Melaksanakan praktik ibadah, bimbingan membaca Al-Qur’an, bimbingan kecerdasan spiritual, dan kecerdasan emosional sebagai wahana pemahaman terhadap nilai-nilai islam. • Membangun kompetensi siswa dalam pengembangan sains dan teknologi.', '00058-splash.png', '2018-12-19 05:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `tm_students`
--

CREATE TABLE `tm_students` (
  `nis` bigint(20) NOT NULL,
  `nama_panggilan` varchar(45) NOT NULL,
  `nama_depan` varchar(45) NOT NULL,
  `nama_tengah` varchar(45) NOT NULL,
  `nama_belakang` varchar(45) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `tempat` varchar(45) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_agama` bigint(20) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `hobi` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tm_subjects`
--

CREATE TABLE `tm_subjects` (
  `mid` bigint(20) NOT NULL,
  `nama_mapel` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_subjects`
--

INSERT INTO `tm_subjects` (`mid`, `nama_mapel`, `create_at`) VALUES
(1, 'Bahasa Indonesia', '2018-12-19 05:22:40'),
(2, 'Bahasa Inggris', '2018-12-19 05:23:00'),
(3, 'Matematika', '2018-12-19 05:23:10'),
(4, 'Fisika', '2018-12-19 05:23:18'),
(5, 'Pendidikan Jasmani dan Rohani', '2018-12-19 05:23:37'),
(6, 'Pendidikan Agama Islam', '2018-12-19 05:23:58'),
(7, 'Biologi', '2018-12-19 05:24:29'),
(8, 'Pendidikan Kewarganegaraan', '2018-12-19 05:25:03'),
(9, 'Ilmu Pengetahuan Alam', '2018-12-19 05:25:32'),
(10, 'Ilmu Pengetahuan Sosial', '2018-12-19 05:25:48'),
(11, 'PPKN', '2018-12-19 05:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `tm_teachers`
--

CREATE TABLE `tm_teachers` (
  `peg_id` bigint(20) NOT NULL,
  `npwp` varchar(45) NOT NULL,
  `nama_panggilan` varchar(45) NOT NULL,
  `nama_depan` varchar(45) NOT NULL,
  `nama_tengah` varchar(45) NOT NULL,
  `nama_belakang` varchar(45) NOT NULL,
  `id_agama` bigint(20) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_teachers`
--

INSERT INTO `tm_teachers` (`peg_id`, `npwp`, `nama_panggilan`, `nama_depan`, `nama_tengah`, `nama_belakang`, `id_agama`, `jenis_kelamin`, `alamat`, `telephone`, `email`, `create_at`) VALUES
(1, '7658755875858765875768765', 'Awan', 'Parwanto', 'Awan', 'Naters', 1, 1, 'Ujung Krawang Pulo Gebang Cakung Jakarta TImur', '081294447489', 'parwanto@digitalbuana.com', '2018-12-19 07:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `tp_extracuricullar_students`
--

CREATE TABLE `tp_extracuricullar_students` (
  `nis` bigint(20) NOT NULL,
  `extra_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tp_school_year`
--

CREATE TABLE `tp_school_year` (
  `id_tahun_ajaran` bigint(20) NOT NULL,
  `id_sekolah` bigint(20) NOT NULL,
  `description` char(100) NOT NULL,
  `dari` year(4) NOT NULL,
  `sampai` year(4) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tp_school_year`
--

INSERT INTO `tp_school_year` (`id_tahun_ajaran`, `id_sekolah`, `description`, `dari`, `sampai`, `create_at`) VALUES
(1, 1, '2018 - 2019', 2018, 2019, '2018-12-19 07:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `tp_student_parent`
--

CREATE TABLE `tp_student_parent` (
  `nis` bigint(20) NOT NULL,
  `id_parents` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tp_teaching_students`
--

CREATE TABLE `tp_teaching_students` (
  `nis` bigint(20) NOT NULL,
  `sid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tx_extracuricullar`
--

CREATE TABLE `tx_extracuricullar` (
  `extra_id` bigint(20) NOT NULL,
  `id_tahun_ajaran` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tx_schedule`
--

CREATE TABLE `tx_schedule` (
  `sid` bigint(20) NOT NULL,
  `id_tahun_ajaran` bigint(20) NOT NULL,
  `id_class` bigint(20) NOT NULL,
  `peg_id` bigint(20) NOT NULL,
  `mid` bigint(20) NOT NULL,
  `tgl` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tx_schedule`
--

INSERT INTO `tx_schedule` (`sid`, `id_tahun_ajaran`, `id_class`, `peg_id`, `mid`, `tgl`, `jam_mulai`, `jam_selesai`, `create_at`) VALUES
(4, 1, 1, 1, 1, '2018-12-19', '13:00:00', '15:00:00', '2018-12-19 07:35:46'),
(22, 1, 2, 1, 11, '2018-12-20', '13:00:00', '14:00:00', '2018-12-19 08:08:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tm_agama`
--
ALTER TABLE `tm_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `tm_class`
--
ALTER TABLE `tm_class`
  ADD PRIMARY KEY (`id_class`);

--
-- Indexes for table `tm_contact`
--
ALTER TABLE `tm_contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tm_events`
--
ALTER TABLE `tm_events`
  ADD PRIMARY KEY (`id_events`);

--
-- Indexes for table `tm_extracuricullar`
--
ALTER TABLE `tm_extracuricullar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_food_menu`
--
ALTER TABLE `tm_food_menu`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tm_parents`
--
ALTER TABLE `tm_parents`
  ADD PRIMARY KEY (`id_parents`),
  ADD KEY `id_agama` (`id_agama`) USING BTREE;

--
-- Indexes for table `tm_school`
--
ALTER TABLE `tm_school`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `tm_students`
--
ALTER TABLE `tm_students`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_agama` (`id_agama`);

--
-- Indexes for table `tm_subjects`
--
ALTER TABLE `tm_subjects`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `tm_teachers`
--
ALTER TABLE `tm_teachers`
  ADD PRIMARY KEY (`peg_id`),
  ADD KEY `id_agama` (`id_agama`);

--
-- Indexes for table `tp_extracuricullar_students`
--
ALTER TABLE `tp_extracuricullar_students`
  ADD UNIQUE KEY `nis` (`nis`),
  ADD UNIQUE KEY `extra_id` (`extra_id`);

--
-- Indexes for table `tp_school_year`
--
ALTER TABLE `tp_school_year`
  ADD PRIMARY KEY (`id_tahun_ajaran`),
  ADD UNIQUE KEY `dari` (`dari`),
  ADD UNIQUE KEY `sampai` (`sampai`),
  ADD UNIQUE KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `tp_student_parent`
--
ALTER TABLE `tp_student_parent`
  ADD UNIQUE KEY `nis` (`nis`),
  ADD UNIQUE KEY `id_parents` (`id_parents`);

--
-- Indexes for table `tp_teaching_students`
--
ALTER TABLE `tp_teaching_students`
  ADD UNIQUE KEY `nis` (`nis`),
  ADD UNIQUE KEY `sid` (`sid`);

--
-- Indexes for table `tx_extracuricullar`
--
ALTER TABLE `tx_extracuricullar`
  ADD PRIMARY KEY (`extra_id`),
  ADD UNIQUE KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tx_schedule`
--
ALTER TABLE `tx_schedule`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `id_class` (`id_class`),
  ADD KEY `peg_id` (`peg_id`),
  ADD KEY `mid` (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tm_agama`
--
ALTER TABLE `tm_agama`
  MODIFY `id_agama` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tm_class`
--
ALTER TABLE `tm_class`
  MODIFY `id_class` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tm_contact`
--
ALTER TABLE `tm_contact`
  MODIFY `cid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_events`
--
ALTER TABLE `tm_events`
  MODIFY `id_events` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_extracuricullar`
--
ALTER TABLE `tm_extracuricullar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_food_menu`
--
ALTER TABLE `tm_food_menu`
  MODIFY `fid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_parents`
--
ALTER TABLE `tm_parents`
  MODIFY `id_parents` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_school`
--
ALTER TABLE `tm_school`
  MODIFY `id_sekolah` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tm_students`
--
ALTER TABLE `tm_students`
  MODIFY `nis` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_subjects`
--
ALTER TABLE `tm_subjects`
  MODIFY `mid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tm_teachers`
--
ALTER TABLE `tm_teachers`
  MODIFY `peg_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tp_school_year`
--
ALTER TABLE `tp_school_year`
  MODIFY `id_tahun_ajaran` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tx_extracuricullar`
--
ALTER TABLE `tx_extracuricullar`
  MODIFY `extra_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tx_schedule`
--
ALTER TABLE `tx_schedule`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tm_parents`
--
ALTER TABLE `tm_parents`
  ADD CONSTRAINT `tm_parents_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `tm_agama` (`id_agama`);

--
-- Constraints for table `tm_students`
--
ALTER TABLE `tm_students`
  ADD CONSTRAINT `tm_students_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `tm_agama` (`id_agama`);

--
-- Constraints for table `tm_teachers`
--
ALTER TABLE `tm_teachers`
  ADD CONSTRAINT `tm_teachers_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `tm_agama` (`id_agama`);

--
-- Constraints for table `tp_extracuricullar_students`
--
ALTER TABLE `tp_extracuricullar_students`
  ADD CONSTRAINT `tp_extracuricullar_students_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tm_students` (`nis`),
  ADD CONSTRAINT `tp_extracuricullar_students_ibfk_2` FOREIGN KEY (`extra_id`) REFERENCES `tx_extracuricullar` (`extra_id`);

--
-- Constraints for table `tp_school_year`
--
ALTER TABLE `tp_school_year`
  ADD CONSTRAINT `tp_school_year_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `tm_school` (`id_sekolah`);

--
-- Constraints for table `tp_student_parent`
--
ALTER TABLE `tp_student_parent`
  ADD CONSTRAINT `tp_student_parent_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tm_students` (`nis`),
  ADD CONSTRAINT `tp_student_parent_ibfk_2` FOREIGN KEY (`id_parents`) REFERENCES `tm_parents` (`id_parents`);

--
-- Constraints for table `tp_teaching_students`
--
ALTER TABLE `tp_teaching_students`
  ADD CONSTRAINT `tp_teaching_students_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `tx_schedule` (`sid`),
  ADD CONSTRAINT `tp_teaching_students_ibfk_2` FOREIGN KEY (`nis`) REFERENCES `tm_students` (`nis`);

--
-- Constraints for table `tx_extracuricullar`
--
ALTER TABLE `tx_extracuricullar`
  ADD CONSTRAINT `tx_extracuricullar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tm_extracuricullar` (`id`),
  ADD CONSTRAINT `tx_extracuricullar_ibfk_2` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tp_school_year` (`id_tahun_ajaran`);

--
-- Constraints for table `tx_schedule`
--
ALTER TABLE `tx_schedule`
  ADD CONSTRAINT `tx_schedule_ibfk_1` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tp_school_year` (`id_tahun_ajaran`),
  ADD CONSTRAINT `tx_schedule_ibfk_2` FOREIGN KEY (`id_class`) REFERENCES `tm_class` (`id_class`),
  ADD CONSTRAINT `tx_schedule_ibfk_3` FOREIGN KEY (`peg_id`) REFERENCES `tm_teachers` (`peg_id`),
  ADD CONSTRAINT `tx_schedule_ibfk_4` FOREIGN KEY (`mid`) REFERENCES `tm_subjects` (`mid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
