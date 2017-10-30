-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2017 at 04:11 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cubesphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `specification` longtext,
  `price` decimal(10,2) NOT NULL,
  `quantity` float NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `on_sale` tinyint(1) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tags` char(50) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `title`, `description`, `specification`, `price`, `quantity`, `category_id`, `on_sale`, `discount`, `tags`, `created_at`) VALUES
(7, 1, 'Apple iPhone7 32GB', 'Mobilni Telefon Apple iPhone7 32GB', '', '98546.21', 23, 1, 0, '0.00', '', '2016-06-12 12:53:00'),
(8, 1, 'Apple iPhone7 64GB', 'Mobilni Telefon Apple iPhone7 64GB', '', '112345.12', 2, 1, 0, '0.00', '', '2016-12-13 13:53:00'),
(9, 1, 'Apple iPhone7 32GB Gold', 'Mobilni Telefon Apple iPhone7 32GB Gold', '', '101234.23', 1, 1, 0, '0.00', '', '2016-03-14 14:53:00'),
(10, 1, 'Apple iPhone8 32GB', 'Mobilni Telefon Apple iPhone8 32GB', '', '127880.39', 12, 1, 1, '15.00', '', '2017-04-15 15:53:00'),
(11, 1, 'Apple iPhone8 64GB', 'Mobilni Telefon Apple iPhone8 64GB', '', '151339.32', 2, 1, 0, '0.00', '', '2017-06-16 16:53:00'),
(12, 1, 'Apple iPhone8 32GB Gold', 'Mobilni Telefon Apple iPhone8 32GB Gold', '', '161323.37', 0, 1, 0, '0.00', '', '2017-08-17 17:53:00'),
(14, 7, 'Samsung Galaxy S7', 'Mobilni Telefon Samsung Galaxy S7', '', '69887.34', 3, 1, 0, '0.00', '', '2016-07-19 14:53:00'),
(15, 7, 'Samsung Galaxy S6', 'Mobilni Telefon Samsung Galaxy S6', '', '55763.34', 3, 1, 0, '0.00', '', '2015-02-20 11:53:00'),
(16, 5, 'Huawei P10', 'Mobilni Telefon Huawei P10', '', '67898.77', 6, 1, 0, '0.00', '', '2016-11-21 12:53:00'),
(17, 5, 'Huawei P9', 'Mobilni Telefon Huawei P9', '', '65632.33', 12, 1, 0, '0.00', '', '2015-03-22 12:53:00'),
(18, 4, 'HTC Desire 820', 'Mobilni Telefon HTC Desire 820', '', '32456.76', 3, 1, 0, '0.00', '', '2014-08-23 12:53:00'),
(19, 4, 'HTC One A9', 'Mobilni Telefon HTC One A9', '', '38271.12', 11, 1, 1, '20.00', '', '2016-05-24 12:53:00'),
(20, 4, 'HTC U12', 'Mobilni Telefon HTC U12', '', '55736.43', 7, 1, 0, '0.00', '', '2017-06-25 12:53:00'),
(21, 7, 'Samsung UE-32J4000AWXXH', 'Televizor Samsung UE-32J4000AWXXH', '', '32985.76', 0, 2, 0, '0.00', '', '2015-12-26 12:53:00'),
(22, 7, 'Samsung UE-32K4102AKXXH', 'Televizor Samsung UE-32K4102AKXXH', '', '34323.32', 5, 2, 0, '0.00', '', '2016-11-27 12:53:00'),
(24, 6, 'LG 32LH510B', 'Televizor LG 32LH510B', '', '14544.32', 6, 2, 0, '0.00', '', '2017-01-29 12:53:00'),
(25, 6, 'LG 32LH510U', 'Televizor LG 32LH510U', '', '12345.54', 8, 2, 0, '0.00', '', '2016-08-30 12:53:00'),
(26, 8, 'Sony KD 65XE9005BAEP', 'Televizor Sony KD 65XE9005BAEP', '', '89189.33', 12, 2, 1, '10.00', '', '2015-07-01 12:53:00'),
(27, 8, 'Sony LED LCD KDL 50W755CBAEP', 'Televizor Sony LED LCD KDL 50W755CBAEP', '', '72098.23', 2, 2, 0, '0.00', '', '2014-10-02 12:53:00'),
(28, 8, 'Sony 40WD650BAEP', 'Televizor Sony 40WD650BAEP', '', '56765.32', 12, 2, 0, '0.00', '', '2013-10-03 12:53:00'),
(29, 8, 'Sony TV KDL32WE615BAEP', 'Televizor Sony TV KDL32WE615BAEP', '', '32345.56', 4, 2, 0, '0.00', '', '2015-04-04 12:53:00'),
(30, 2, 'Beko RCS A300K 20W', 'Frizider Beko RCS A300K 20W', '', '29199.99', 2, 3, 1, '5.00', '', '2013-07-05 12:53:00'),
(31, 2, 'Beko DSA 28020', 'Frizider Beko DSA 28020', '', '27654.23', 1, 3, 0, '0.00', '', '2017-08-06 12:53:00'),
(34, 3, 'Bosh KGN 36NL30', 'Frizider Bosh KGN 36NL30', '', '54320.43', 1, 3, 0, '0.00', '', '2013-07-09 12:53:00'),
(39, 1, 'iPhone6 S', 'iPhone6 S', '', '39999.99', 12, 1, 0, '0.00', NULL, '2016-10-10 18:00:00'),
(40, 1, 'iPhone5', 'iPhone5', '', '41999.99', 17, 1, 0, '0.00', '', '2016-04-07 19:00:00'),
(41, 1, 'iPhone6 SE', 'iPhone6 SE', '', '52999.99', 14, 1, 0, '0.00', NULL, '2016-11-02 15:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
