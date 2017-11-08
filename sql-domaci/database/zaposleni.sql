-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2017 at 09:47 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zaposleni`
--

-- --------------------------------------------------------

--
-- Table structure for table `platni_razred`
--

CREATE TABLE `platni_razred` (
  `id` int(11) NOT NULL,
  `naziv_platnog_razreda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iznos_plate` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platni_razred`
--

INSERT INTO `platni_razred` (`id`, `naziv_platnog_razreda`, `iznos_plate`) VALUES
(1, 'Nulti', 0.00),
(2, 'Pocetni', 50000.00),
(3, 'Napredni', 100000.00),
(4, 'Top Management', 150000.00);

-- --------------------------------------------------------

--
-- Table structure for table `radna_pozicija`
--

CREATE TABLE `radna_pozicija` (
  `id` int(11) NOT NULL,
  `naziv_pozicije` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platni_razred_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `radna_pozicija`
--

INSERT INTO `radna_pozicija` (`id`, `naziv_pozicije`, `platni_razred_id`) VALUES
(1, 'Praktikant', 1),
(2, 'Junior programer', 2),
(3, 'Junior tester', 2),
(4, 'Office manager', 2),
(5, 'Senior programer', 3),
(6, 'Senior Tester', 3),
(7, 'Specijalista za digitalni marketing', 3),
(8, 'Tehnicki direktor', 4),
(9, 'Generalni direktor', 4),
(10, 'Operativni direktor', 4);

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `jmbg` int(13) NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni_radna_evidencija`
--

CREATE TABLE `zaposleni_radna_evidencija` (
  `jmbg` int(11) NOT NULL,
  `radna_evidencija` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni_radna_pozicija`
--

CREATE TABLE `zaposleni_radna_pozicija` (
  `id` int(11) NOT NULL,
  `zaposleni_jmbg` int(11) NOT NULL,
  `radna_pozicija_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `platni_razred`
--
ALTER TABLE `platni_razred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radna_pozicija`
--
ALTER TABLE `radna_pozicija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`jmbg`);

--
-- Indexes for table `zaposleni_radna_evidencija`
--
ALTER TABLE `zaposleni_radna_evidencija`
  ADD PRIMARY KEY (`jmbg`);

--
-- Indexes for table `zaposleni_radna_pozicija`
--
ALTER TABLE `zaposleni_radna_pozicija`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `platni_razred`
--
ALTER TABLE `platni_razred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `radna_pozicija`
--
ALTER TABLE `radna_pozicija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zaposleni_radna_evidencija`
--
ALTER TABLE `zaposleni_radna_evidencija`
  MODIFY `jmbg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zaposleni_radna_pozicija`
--
ALTER TABLE `zaposleni_radna_pozicija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
