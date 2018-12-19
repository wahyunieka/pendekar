-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql2
-- Generation Time: Dec 18, 2018 at 04:33 PM
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
-- Table structure for table `tm_class`
--

CREATE TABLE `tm_class` (
  `id_class` bigint(20) NOT NULL,
  `nama_ruang_kelas` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `agama` varchar(45) NOT NULL,
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
  `visi` longtext NOT NULL,
  `misi` longtext NOT NULL,
  `file_url` text NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `agama` varchar(45) NOT NULL,
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
  `agama` varchar(45) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `dari` year(4) NOT NULL,
  `sampai` year(4) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id_parents`);

--
-- Indexes for table `tm_school`
--
ALTER TABLE `tm_school`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `tm_students`
--
ALTER TABLE `tm_students`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tm_subjects`
--
ALTER TABLE `tm_subjects`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `tm_teachers`
--
ALTER TABLE `tm_teachers`
  ADD PRIMARY KEY (`peg_id`);

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
  ADD UNIQUE KEY `id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD UNIQUE KEY `id_class` (`id_class`),
  ADD UNIQUE KEY `peg_id` (`peg_id`),
  ADD UNIQUE KEY `mid` (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tm_class`
--
ALTER TABLE `tm_class`
  MODIFY `id_class` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `mid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_teachers`
--
ALTER TABLE `tm_teachers`
  MODIFY `peg_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tp_school_year`
--
ALTER TABLE `tp_school_year`
  MODIFY `id_tahun_ajaran` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tx_extracuricullar`
--
ALTER TABLE `tx_extracuricullar`
  MODIFY `extra_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tx_schedule`
--
ALTER TABLE `tx_schedule`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
