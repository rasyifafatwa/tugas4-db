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
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabcustomer`
--

CREATE TABLE `tabcustomer` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_addres` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabcustomer`
--

INSERT INTO `tabcustomer` (`customer_id`, `customer_name`, `customer_addres`) VALUES
('CS001', 'Aan', 'Pasuruan'),
('CS002', 'Hanif', 'Banyuwangi'),
('CS003', 'Mirza', 'Malang'),
('CS004', 'Tanti', 'Tegal'),
('CS005', 'Budie', 'Kediri');

-- --------------------------------------------------------

--
-- Table structure for table `taborders`
--

CREATE TABLE `taborders` (
  `order_id` varchar(10) NOT NULL,
  `order_date` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `qyt` int(30) NOT NULL,
  `amount` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taborders`
--

INSERT INTO `taborders` (`order_id`, `order_date`, `customer_id`, `qyt`, `amount`) VALUES
('CS001', '10-12-2016', 'CS001', 1, 40000),
('CS002', '11-01-2017', 'CS002', 2, 50000),
('CS003', '12-01-2017', 'CS005', 3, 35000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabcustomer`
--
ALTER TABLE `tabcustomer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `taborders`
--
ALTER TABLE `taborders`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
