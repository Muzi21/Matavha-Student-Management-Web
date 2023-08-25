-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 03, 2022 at 07:09 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Muzi', 'admin', 730779358, 'Muzimkhatshwa55@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-11 02:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

DROP TABLE IF EXISTS `tblclass`;
CREATE TABLE IF NOT EXISTS `tblclass` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(12, '4', 'A', '2022-11-01 11:45:42'),
(13, '4', 'B', '2022-11-01 11:45:51'),
(14, '4', 'C', '2022-11-01 11:46:10'),
(15, '5', 'A', '2022-11-01 11:46:34'),
(16, '5', 'B', '2022-11-01 11:46:41'),
(17, '5', 'C', '2022-11-01 11:46:49'),
(18, '6', 'A', '2022-11-01 11:46:56'),
(19, '7', 'A', '2022-11-01 11:47:04'),
(20, '7', 'B', '2022-11-01 11:47:14'),
(21, '7', 'C', '2022-11-01 11:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

DROP TABLE IF EXISTS `tblnotice`;
CREATE TABLE IF NOT EXISTS `tblnotice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` mediumtext,
  `ClassId` int DEFAULT NULL,
  `NoticeMsg` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Marks of Unit Test.', 3, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 04:35:58'),
(3, 'Marks of Unit Test.', 2, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 04:35:58'),
(4, 'Test', 3, 'This is for testing.', '2022-02-02 16:17:03'),
(5, 'Test Notice', 8, 'This is for Testing.', '2022-02-02 17:03:43'),
(6, 'English Oral ', 20, 'Unprepared Speech', '2022-11-02 12:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><span style=\"font-size: 26px,font-family: Arial, Helvetica, sans-serif;\"><h1>Vision</h1>\nEvery learner feels valued and inspired in our innovative education system                                                                                         \n<h2 style=\"font-size:26px,font-family: Arial, Helvetica, sans-serif;\">Mission</h2>\nWe are committed to providing a functional and modern school where quality teaching and learning occur daily in a classroom. We aspire to promote a disciplined and inspiring environment that enables learners to achieve academic and personal excellence and to be responsible and productive individuals.</span></font><br></div>                                                         ', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Matavha Primary School, P.O Box 329.Tsahkhuma 0951. Tshakhuma Matavha Village ', 'MatavhaPrimary@gmail.com', 152637735, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

DROP TABLE IF EXISTS `tblpublicnotice`;
CREATE TABLE IF NOT EXISTS `tblpublicnotice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'School will re-open', 'Consult your class teacher.', '2022-01-20 07:11:57'),
(2, 'Test Public Notice', 'This is for Testing\r\n', '2022-02-02 17:04:10'),
(3, 'Color Fest ', 'Color fest  on friday ', '2022-10-26 20:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE IF NOT EXISTS `tblstudent` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext,
  `MotherName` mediumtext,
  `ContactNumber` bigint DEFAULT NULL,
  `AltenateNumber` bigint DEFAULT NULL,
  `Address` mediumtext,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(7, 'Karabo  Mkhatshwa', 'Karabo21@gmail.com', '20', 'Female', '2009-10-21', '1133t442', 'Ethwell', 'Portia', 753633542, 788724426, '5 Goldenrose Gardens Lane', 'Karabo@21', 'fc682459ad16341450f3a3a61b8db83f', '56b71fc76fa895ec8fc11c370f003ab11667342483.jpg', '2022-11-01 22:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `teachertimetable`
--

DROP TABLE IF EXISTS `teachertimetable`;
CREATE TABLE IF NOT EXISTS `teachertimetable` (
  `tn` varchar(50) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `cn` int NOT NULL,
  `st` int NOT NULL,
  `et` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
