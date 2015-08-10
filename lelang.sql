-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2015 at 07:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lelang`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id_config` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id_config`, `contact`) VALUES
('1', '0857-1815-9655');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'MOBILE PHONES'),
(2, 'DESKTOP'),
(3, 'LAPTOP'),
(4, 'ACCESSORIES'),
(5, 'SOFTWARE'),
(6, 'TOYS, KIDS & BABIES');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id_product` int(10) NOT NULL,
  `nama_product` varchar(255) DEFAULT NULL,
  `harga_product` varchar(255) DEFAULT NULL,
  `img_url_1` varchar(255) DEFAULT NULL,
  `img_url_2` varchar(255) DEFAULT NULL,
  `img_url_3` varchar(255) DEFAULT NULL,
  `img_url_4` varchar(255) DEFAULT NULL,
  `img_url_5` varchar(255) DEFAULT NULL,
  `img_url_6` varchar(255) DEFAULT NULL,
  `img_url_7` varchar(255) DEFAULT NULL,
  `img_url_8` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `kelipatan` varchar(255) DEFAULT NULL,
  `jam_close` datetime DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `nama_product`, `harga_product`, `img_url_1`, `img_url_2`, `img_url_3`, `img_url_4`, `img_url_5`, `img_url_6`, `img_url_7`, `img_url_8`, `kategori`, `kelipatan`, `jam_close`, `active`) VALUES
(1, '8GB Flash Disk Sandisk Cruzer Blade', '35000', 'sandisk.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESKTOP', '50000', '2015-08-08 00:52:12', 1),
(2, 'Kabel Mini Display To VGA Cable Mini Display', '70000', 'otg.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESKTOP', NULL, NULL, 1),
(3, 'Wifi Dongle RC3000 Wireless', '355000', 'modem.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Keyboard + Mouse Wireless Rapid R5000', NULL, 'keyboard.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id_user` int(15) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `email`, `password`, `level`, `active`, `company`) VALUES
(2, 'admin', 'anggietriejast@gmail.com', 'triejast', 'users', 1, 'triejast'),
(3, 'Gie', 'anggietriejast@gmail.com', 'ASDA', NULL, 1, 'ASDA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id_product` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id_user` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
