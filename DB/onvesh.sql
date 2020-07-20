-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2020 at 11:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onvesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_reg`
--

CREATE TABLE `event_reg` (
  `enrollment` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ucode` varchar(40) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `branch` varchar(40) NOT NULL,
  `year` int(11) NOT NULL,
  `event_name` varchar(25) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `played_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='enrollment,name,ucode,phone_no,branch,year,event_name,paid_s';

--
-- Dumping data for table `event_reg`
--

INSERT INTO `event_reg` (`enrollment`, `name`, `ucode`, `phone_no`, `branch`, `year`, `event_name`, `paid_status`, `played_status`) VALUES
(1500040268, 'KHANEJA NIKHIL SAJAN', '4512fc47cb44f7', 8080901400, 'cm', 0, 'code it', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `userEnroll` int(11) NOT NULL,
  `userFullName` varchar(40) NOT NULL,
  `userJoiningYear` int(11) NOT NULL,
  `userBranch` varchar(25) NOT NULL,
  `userMobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_reg`
--
ALTER TABLE `event_reg`
  ADD UNIQUE KEY `enrollment` (`enrollment`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `userEnroll` (`userEnroll`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
