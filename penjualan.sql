-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 03:57 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

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
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Jenis` varchar(20) NOT NULL,
  `Ukuran` varchar(5) NOT NULL,
  `HargaBeli` decimal(10,0) NOT NULL,
  `HargaJual` decimal(10,0) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_Barang`, `Nama_Barang`, `Jenis`, `Ukuran`, `HargaBeli`, `HargaJual`, `Stok`) VALUES
('BR001', 'Seragam Telkom', 'Kemeja', 'L', '75000', '95000', 20),
('BR002', 'Jaket Himpunan', 'Jaket', 'M', '100000', '125000', 10),
('BR003', 'Celana Hitam', 'Celana', 'XL', '50000', '57500', 12),
('BR004', 'Kaos Polos', 'Baju', 'XL', '80000', '85000', 10);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(10) NOT NULL,
  `Tanggal` varchar(15) NOT NULL,
  `ID_Customer` varchar(10) NOT NULL,
  `TotalBeli` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `ID_Customer`, `TotalBeli`) VALUES
('TR0001', '13-01-2022', 'CS001', 190000),
('TR0002', '13-01-2022', 'CS002', 425000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(10) NOT NULL,
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(100) NOT NULL,
  `Jumlah` int(10) NOT NULL,
  `Harga` int(10) NOT NULL,
  `Total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `ID_Barang`, `Nama_Barang`, `Jumlah`, `Harga`, `Total`) VALUES
('TR0001', 'BR001', 'Seragam Telkom', 2, 95000, 190000),
('TR0002', 'BR004', 'Kaos Polos', 5, 85000, 425000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);

--
-- Indexes for table `penjualanrinci`
--
ALTER TABLE `penjualanrinci`
  ADD PRIMARY KEY (`NoFaktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
