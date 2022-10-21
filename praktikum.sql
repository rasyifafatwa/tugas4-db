-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 05:48 AM
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
-- Database: `praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabelmahasiswa`
--

CREATE TABLE `tabelmahasiswa` (
  `Nim` int(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabelmahasiswa`
--

INSERT INTO `tabelmahasiswa` (`Nim`, `Nama`, `jenis_kelamin`, `alamat`) VALUES
(101, 'Arif', 'L', 'jl. Kenangan'),
(102, 'Budi', 'L', 'jl. Jombang'),
(103, 'Wati', 'P', 'jl. Surabaya'),
(104, 'Ika', 'P', 'jl. Jombang'),
(105, 'Tono', 'L', 'jl. Jakarta'),
(106, 'Iwan', 'L', 'jl. Bandung'),
(107, 'Sari', 'P', 'jl. Malang');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_ambil_mk`
--

CREATE TABLE `tabel_ambil_mk` (
  `Nim` varchar(20) NOT NULL,
  `Kode_mk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_ambil_mk`
--

INSERT INTO `tabel_ambil_mk` (`Nim`, `Kode_mk`) VALUES
('101', 'PTI447'),
('103', 'TIK333'),
('101', 'PTI447'),
('103', 'TIK333'),
('104', 'PTI333'),
('104', 'PTI777'),
('111', 'PTI123'),
('123', 'PTI999');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_matakuliah`
--

CREATE TABLE `tabel_matakuliah` (
  `kode_mk` varchar(20) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_matakuliah`
--

INSERT INTO `tabel_matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI123', 'Grafika Multimedia', '3', '5'),
('PTI333', 'Basis data Terdistribusi', '3', '5'),
('PTI447', 'Praktikum Basis Data', '1', '3'),
('PTI777', 'Sistem Informasi', '2', '3'),
('TIK123', 'Jaringan Komputer', '2', '5'),
('TIK333', 'Sistem Operasi', '3', '5'),
('TIK342', 'Praktikum Basis Data', '1', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabelmahasiswa`
--
ALTER TABLE `tabelmahasiswa`
  ADD PRIMARY KEY (`Nim`);

--
-- Indexes for table `tabel_matakuliah`
--
ALTER TABLE `tabel_matakuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `nama_mk` (`nama_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
