-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 05:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitass`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabinstruktur`
--

CREATE TABLE `tabinstruktur` (
  `nip` int(10) NOT NULL,
  `nama_ins` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `asal_kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabinstruktur`
--

INSERT INTO `tabinstruktur` (`nip`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
(1, 'Muhammad Akbar', 'Ilmu Sejarah', 'Malang'),
(2, 'Saichul Fitrian A', 'Ilmu Komputer', 'Malang'),
(3, 'Annafia Oktafian', 'Ilmu Komputer', 'Klaten'),
(4, 'Budy Pratama', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Table structure for table `tab_ambilmk`
--

CREATE TABLE `tab_ambilmk` (
  `nip` int(10) NOT NULL,
  `kd_mk` varchar(30) NOT NULL,
  `ruangan` varchar(30) NOT NULL,
  `jumlah_mhs` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_ambilmk`
--

INSERT INTO `tab_ambilmk` (`nip`, `kd_mk`, `ruangan`, `jumlah_mhs`) VALUES
(1, 'IS101', '17312', 30),
(2, 'PTI1102', 'H5212', 45),
(3, 'PTI1101', 'H5211', 40),
(4, 'PTI1103', 'H5206', 40);

-- --------------------------------------------------------

--
-- Table structure for table `tab_matakuliah`
--

CREATE TABLE `tab_matakuliah` (
  `kd_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(25) NOT NULL,
  `sks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_matakuliah`
--

INSERT INTO `tab_matakuliah` (`kd_mk`, `nama_mk`, `sks`) VALUES
('IS101', 'Sejarah Indonesia', 3),
('PTI101', 'Algoritma dan Pemograman', 3),
('PTI102', 'Basis Data', 3),
('PTI103', 'Visual Basic', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabinstruktur`
--
ALTER TABLE `tabinstruktur`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tab_ambilmk`
--
ALTER TABLE `tab_ambilmk`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tab_matakuliah`
--
ALTER TABLE `tab_matakuliah`
  ADD PRIMARY KEY (`kd_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
