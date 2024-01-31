-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 01:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'ລະຫັດສະມາຊິກ',
  `name` varchar(30) NOT NULL COMMENT 'ຊື່',
  `surname` varchar(30) NOT NULL COMMENT 'ນາມສະກຸນ',
  `telephone` int(10) NOT NULL COMMENT 'ເບີໂທລະສັບ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `surname`, `telephone`) VALUES
(000001, 'ລົ່ງທໍ່', 'ວາຈົ້ວຊົງ', 78202011),
(000020, 'ກົວວື່', 'ໄຊເຈົ້າ', 52491059),
(000021, 'ກະເລຍທໍ່', 'ວາຈົ້ວຊົງ', 52491059);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'ລະຫັດສິນຄ້າ',
  `pro_name` varchar(100) NOT NULL COMMENT 'ຊື່ສິນຄ້າ',
  `type_id` int(3) NOT NULL COMMENT 'ລະຫັດປະເພດສິນຄ້າ',
  `price` float NOT NULL COMMENT 'ລາຄາ',
  `amount` int(11) NOT NULL COMMENT 'ຈຳນວນຄົງເຫຼືອ',
  `image` varchar(100) NOT NULL COMMENT 'ຮູບພາບ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'ລະຫັດປະເພດສິນຄ້າ',
  `type_name` varchar(50) NOT NULL COMMENT 'ຊື່ປະເພດສິນຄ້າ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(001, 'ໜັງສື'),
(002, 'ຄອມພິວເຕີ'),
(003, 'ເຄື່ອງສຳອາງ'),
(004, 'ສຸຂະພາບ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ລະຫັດສະມາຊິກ', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ລະຫັດສິນຄ້າ', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ລະຫັດປະເພດສິນຄ້າ', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
