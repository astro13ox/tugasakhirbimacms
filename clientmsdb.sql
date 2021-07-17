-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 09:40 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clientmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555562, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-21 07:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ContactName` varchar(120) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `State` varchar(120) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Workphnumber` bigint(12) DEFAULT NULL,
  `Cellphnumber` bigint(12) DEFAULT NULL,
  `Otherphnumber` bigint(12) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `WebsiteAddress` varchar(200) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `AccountID`, `AccountType`, `ContactName`, `CompanyName`, `Address`, `City`, `State`, `ZipCode`, `Workphnumber`, `Cellphnumber`, `Otherphnumber`, `Email`, `WebsiteAddress`, `Notes`, `Password`, `CreationDate`) VALUES
(1, 900370752, 'Active Account', 'Ardean Bima Saputra', 'Prisma Profesional', 'Surabaya, Jawa Timur, Indonesia', 'Surabaya', 'Jawa Timur', 61256, 812339939, 821104975, 812345678, 'ardeanbimasaputra@gmail.com', 'www.ardean.com', 'Owner', '202cb962ac59075b964b07152d234b70', '2019-10-22 04:40:11'),
(2, 884010538, 'Active Account', 'Bryan Novaldy', 'Prisma Profesional', 'Nabire, Papua, Indonesia', 'Nabire', 'Papua', 98811, 899999999, 899999999, 899999999, 'bryan@gmail.com', 'www.bryan.com', 'Klien', '202cb962ac59075b964b07152d234b70', '2019-10-22 05:24:39'),
(3, 809338201, 'Contact/Lead', 'Fahmi Abdul Malik', 'Prisma Profesional', 'Jayapura, Papua, Indonesia', 'Jayapura', 'Papua', 56789, 830000000, 830000000, 830000000, 'fahmi@gmail.com', 'www.fahmi.com', 'Klien', '202cb962ac59075b964b07152d234b70', '2019-10-22 05:26:50'),
(4, 639974991, 'Active Account', 'Adelia Febriani', 'Prisma Profesional', 'Pontianak, Kalimantan Barat, Indonesia', 'Pontianak', 'Kalimantan Barat', 78111, 811111111, 811111111, 811111111, 'adeliafebriani@gmail.com', 'www.adeliafebriani.com', 'Klien', '202cb962ac59075b964b07152d234b70', '2019-10-22 05:29:59'),
(5, 602410634, 'Active Account', 'Fitrah Jayanti', 'Prisma Profesional', 'Gorontalo, Sulawesi Utara, Indonesia', 'Gorontalo', 'Sulawesi Utara', 96112, 821000000, 821000000, 821000000, 'fitrah@gmail.com', 'www.fitrah.com', 'Klien', '202cb962ac59075b964b07152d234b70', '2019-10-23 10:42:52'),
(6, 426546224, 'Active Account', 'Muhammad Rafi', 'PT. MRA Fimansyah', 'Ternate, Maluku Utara, Indonesia', 'Ternate', 'Maluku Utara', 91778, 800000000, 800000000, 800000000, 'rafi@mra.com', 'www.mrafimansyah.com', 'Klien Terbaik', 'f925916e2754e5e03f75dd58a5733251', '2019-11-27 16:00:24'),
(7, 784068935, 'Active Account', 'Arianna Shirvani', 'Aria Shira', 'Guia De Isola, Tenerife, Spain', 'Guia De Isola', 'Tenerife', 34492, 900000000, 900000000, 900000000, 'ariashira@gmail.com', 'www.ariashira.com', 'Klien', 'b93939873fd4923043b9dec975811f66', '2021-07-16 17:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` varchar(120) DEFAULT NULL,
  `ServiceId` varchar(120) DEFAULT NULL,
  `BillingId` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`ID`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, '2', '2', '135792633', '2019-10-22 11:51:43'),
(2, '2', '3', '135792633', '2019-10-22 11:51:43'),
(3, '1', '4', '899898097', '2019-10-23 04:20:40'),
(4, '1', '6', '899898097', '2019-10-23 04:20:40'),
(5, '4', '1', '159659268', '2019-10-23 07:16:45'),
(6, '4', '2', '159659268', '2019-10-23 07:16:45'),
(7, '4', '3', '159659268', '2019-10-23 07:16:45'),
(8, '1', '1', '729070812', '2019-10-24 06:56:11'),
(9, '1', '2', '729070812', '2019-10-24 06:56:12'),
(10, '1', '4', '369333569', '2019-10-24 06:56:36'),
(11, '1', '5', '369333569', '2019-10-24 06:56:36'),
(12, '1', '1', '248174650', '2019-10-24 07:09:12'),
(13, '1', '2', '248174650', '2019-10-24 07:09:12'),
(14, '1', '1', '818388032', '2019-11-18 03:46:54'),
(15, '1', '2', '818388032', '2019-11-18 03:46:54'),
(16, '1', '2', '385373479', '2019-11-26 05:04:51'),
(17, '1', '3', '385373479', '2019-11-26 05:04:51'),
(18, '1', '9', '467109949', '2019-11-26 17:53:27'),
(19, '1', '10', '467109949', '2019-11-26 17:53:27'),
(20, '6', '1', '847895377', '2019-11-27 16:00:56'),
(21, '6', '3', '847895377', '2019-11-27 16:00:56'),
(22, '6', '8', '847895377', '2019-11-27 16:00:56'),
(23, '6', '9', '847895377', '2019-11-27 16:00:56'),
(24, '1', '12', '366131871', '2021-07-15 20:57:06'),
(25, '5', '11', '329120728', '2021-07-15 20:57:56'),
(26, '5', '12', '329120728', '2021-07-15 20:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'bghjgjhg', NULL, NULL, '2019-10-24 07:54:52'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'info@gmail.com', 8529631237, '2019-10-24 07:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Website Developments', '121', '2019-10-22 13:42:29'),
(2, 'SEO Service', '30', '2019-10-21 22:56:17'),
(3, 'SMO Services', '150', '2019-10-22 01:22:19'),
(4, 'Web designing', '120', '2019-10-22 03:14:15'),
(5, 'Network Service', '180', '2019-10-21 18:30:00'),
(6, 'Broadband Services', '120', '2019-10-21 18:30:00'),
(7, 'Website Hosting', '90', '2019-10-22 07:46:05'),
(8, 'Cyber Security', '150', '2019-10-22 07:46:30'),
(9, 'App Developement', '500', '2019-10-22 07:47:41'),
(10, 'Build Website', '1000', '2019-11-26 05:02:54'),
(11, 'Digital Marketing', '250', '2019-11-27 15:58:59'),
(12, 'Graphic Dessign', '50', '2021-07-15 20:45:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
