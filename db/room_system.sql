-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2020 at 05:28 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `room_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_tel` varchar(10) NOT NULL,
  `bed` int(11) NOT NULL,
  `book_time` datetime NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `customer_name`, `customer_tel`, `bed`, `book_time`, `room_id`) VALUES
(1, 'Topster', '56778889', 1, '2020-08-25 13:02:08', 3),
(2, 'Topster', '56777899', 1, '2020-08-15 00:00:00', 2),
(3, 'Vvvss', '356788', 1, '2020-08-15 00:00:00', 1),
(4, 'LelounchBritania', '66332144', 1, '2020-08-14 00:00:00', 4),
(5, 'MasterVs', '5667899', 1, '2020-08-21 00:00:00', 5),
(6, 'MasterFF', '56777888', 1, '2020-08-18 00:00:00', 6),
(7, 'JopFs', '56789999', 1, '2020-08-26 00:00:00', 1),
(8, 'NinaEnt', '85672244', 1, '2020-08-21 00:00:00', 7),
(9, 'Topster', '3567888', 1, '2020-08-07 00:00:00', 5),
(10, 'YugiOh', '77897766', 1, '2020-08-06 00:00:00', 6),
(11, 'Yuyu Koshiki', '56312222', 1, '2020-08-07 00:00:00', 3),
(12, 'Susaku Kuruki', '557783333', 11, '2020-08-29 00:00:00', 4),
(13, 'Vilasone Mixay', '67889944', 1, '2020-08-13 00:00:00', 7),
(14, 'Lelounch Vithania', '55334466', 1, '0000-00-00 00:00:00', 2),
(15, 'Jam Bond', '78844466', 1, '2020-08-14 00:00:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `check_log`
--

CREATE TABLE `check_log` (
  `id` int(11) NOT NULL,
  `checkin_time` datetime NOT NULL,
  `checkout_time` datetime NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `check_log`
--

INSERT INTO `check_log` (`id`, `checkin_time`, `checkout_time`, `room_id`) VALUES
(1, '2020-08-17 00:00:00', '2020-08-17 00:00:00', 3),
(2, '2020-08-04 11:37:17', '2020-08-27 11:37:17', 3),
(3, '2020-08-05 00:00:00', '2020-08-05 00:00:00', 2),
(4, '2020-08-12 00:00:00', '2020-08-12 00:00:00', 3),
(5, '2020-08-19 00:00:00', '2020-08-19 00:00:00', 2),
(6, '2020-08-27 00:00:00', '2020-08-27 00:00:00', 1),
(7, '2020-08-05 00:00:00', '2020-08-05 00:00:00', 3),
(8, '2020-08-26 00:00:00', '2020-08-26 00:00:00', 2),
(9, '2020-08-14 00:00:00', '2020-08-14 00:00:00', 1),
(10, '2020-08-06 00:00:00', '2020-08-06 00:00:00', 1),
(11, '2020-08-06 00:00:00', '2020-08-06 00:00:00', 2),
(12, '2020-08-20 00:00:00', '2020-08-20 00:00:00', 1),
(13, '2020-08-27 00:00:00', '2020-08-27 00:00:00', 1),
(14, '2020-08-14 00:00:00', '2020-08-14 00:00:00', 3),
(15, '2020-08-04 16:53:26', '0000-00-00 00:00:00', 2),
(16, '2020-08-04 16:55:08', '0000-00-00 00:00:00', 2),
(17, '2020-08-04 16:56:27', '0000-00-00 00:00:00', 2),
(18, '2020-08-04 16:57:11', '0000-00-00 00:00:00', 2),
(19, '2020-08-13 00:58:19', '2020-08-04 00:00:00', 2),
(20, '2020-08-13 00:58:42', '2020-08-04 00:00:00', 2),
(21, '2020-08-13 00:59:51', '2020-08-04 00:00:00', 7),
(22, '2020-08-04 16:02:20', '2020-08-04 16:03:45', 2),
(23, '2020-08-04 16:34:41', '0000-00-00 00:00:00', 1),
(24, '2020-08-05 03:03:40', '2020-08-05 03:03:49', 7),
(25, '2020-08-05 15:38:27', '2020-08-05 15:38:34', 6),
(26, '2020-08-06 03:49:00', '2020-08-06 03:49:07', 2),
(27, '2020-08-10 03:23:05', '2020-08-10 03:23:09', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL DEFAULT 'anonymous ',
  `customer_tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `rate_name` varchar(30) NOT NULL,
  `rate_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `rate_name`, `rate_price`) VALUES
(1, 'Normal', 2000),
(2, 'Student', 1800);

-- --------------------------------------------------------

--
-- Table structure for table `rate_hour`
--

CREATE TABLE `rate_hour` (
  `id` int(11) NOT NULL,
  `between1` float NOT NULL,
  `between2` float NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate_hour`
--

INSERT INTO `rate_hour` (`id`, `between1`, `between2`, `price`) VALUES
(1, 6, 12, 100000),
(2, 12, 24, 115000);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_code` varchar(25) NOT NULL,
  `room_type` int(11) NOT NULL DEFAULT 1,
  `room_price` int(11) NOT NULL,
  `room_status` int(11) NOT NULL DEFAULT 1,
  `room_bed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_code`, `room_type`, `room_price`, `room_status`, `room_bed`) VALUES
(1, 'C2212', 1, 1000, 2, 2),
(2, 'Z1211', 1, 1000, 3, 2),
(3, 'S3421', 1, 1000, 3, 3),
(4, 'VV111', 2, 4000, 3, 2),
(5, 'CC10', 2, 1000, 3, 2),
(6, 'GT24', 1, 4000, 1, 1),
(7, 'ZR10', 2, 1200, 1, 1),
(10, 'TH11', 1, 1000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(15) NOT NULL,
  `status_color` varchar(15) NOT NULL,
  `status_icon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status_name`, `status_color`, `status_icon`) VALUES
(1, 'Free Room', 'Blue', 'Circle'),
(2, 'Rending', 'Grey', 'Da'),
(3, 'Booking', 'Yellow', 'vv');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(15) NOT NULL,
  `type_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type_name`, `type_price`) VALUES
(1, 'Fan', 12000),
(2, 'Air', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_log`
--
ALTER TABLE `check_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_hour`
--
ALTER TABLE `rate_hour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `check_log`
--
ALTER TABLE `check_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rate_hour`
--
ALTER TABLE `rate_hour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
