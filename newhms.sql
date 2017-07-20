-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2016 at 06:21 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `avail_medi`
--

CREATE TABLE `avail_medi` (
  `Medi_Code` varchar(100) NOT NULL,
  `Price` int(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avail_medi`
--

INSERT INTO `avail_medi` (`Medi_Code`, `Price`, `Description`) VALUES
('M001', 5, 'Disprine,Headache'),
('M002', 10, 'Crocine'),
('M003', 20, 'Paracetamol'),
('M004', 30, 'Rem-CC'),
('M005', 10, 'Pain Relief'),
('M006', 15, 'Stomach Ache'),
('M007', 20, 'Presens Hot & Cold Pack Bigger'),
('M008', 234, 'Amoxicillin'),
('M009', 1000, 'Hydrochlorothiazide (various brand names), a water pill used to lower blood pressure '),
('M010', 2000, 'Lipitor, a cholesterol-lowering statin drug '),
('M011', 500, 'Abilify, an antipsychotic drug'),
('M012', 700, 'Singulair, an oral asthma drug '),
('M013', 1200, 'Nexium, an antacid drug ');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `D_ID` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`D_ID`, `Type`, `Password`) VALUES
('E001', 'Permanent', '12345'),
('E002', 'Trainee', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Sex` varchar(100) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Experience` int(100) NOT NULL,
  `Contact` bigint(100) NOT NULL,
  `Salary` int(100) NOT NULL,
  `Age` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_ID`, `Name`, `Sex`, `Qualification`, `Experience`, `Contact`, `Salary`, `Age`) VALUES
('E001', 'Rahul Mandloi', 'Male', 'M.D.', 5, 9685677710, 100000, 25),
('E002', 'Sanjeev Rai', 'Male', 'B.H.M.S.', 4, 9977327017, 50000, 25),
('E003', 'Deepak Baghel', 'Male', '10th', 2, 8877227234, 15000, 19);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Medi_Code` varchar(100) DEFAULT NULL,
  `P_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medi_Code`, `P_ID`) VALUES
('M004', 'P001');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `N_ID` varchar(100) NOT NULL,
  `R_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`N_ID`, `R_ID`) VALUES
('E004', 'R001'),
('E005', 'R002');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `P_ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Sex` varchar(100) NOT NULL,
  `Age` int(100) NOT NULL,
  `Date_Adm` date NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `R_ID` varchar(100) NOT NULL,
  `D_ID` varchar(100) NOT NULL,
  `Info` varchar(100) NOT NULL,
  `Date_Dis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`P_ID`, `Name`, `Address`, `Sex`, `Age`, `Date_Adm`, `Contact`, `R_ID`, `D_ID`, `Info`, `Date_Dis`) VALUES
('P001', 'Govind Gaur', 'Kolar Road Bhopal', 'Male', 18, '2016-04-03', 9925887524, 'R001', 'E001', 'Fever', '2016-04-05'),
('P002', 'Deepak Baghel', 'Indore', 'Male', 21, '2016-09-09', 8955227234, 'R001', 'E001', 'Stomach Pain', ''),
('P003', 'sanjeev', 'manit', 'Male', 19, '2016-04-03', 9977864533, 'R001', 'E001', 'vomiting', '');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `Rec_ID` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`Rec_ID`, `Password`) VALUES
('E003', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `R_ID` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Extension` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`R_ID`, `Type`, `Extension`) VALUES
('R001', 'General', 'Male'),
('R002', 'General', 'Female'),
('R003', 'General', 'Others'),
('R004', 'I.C.U.', 'ICU'),
('R005', 'Special', 'Old People');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avail_medi`
--
ALTER TABLE `avail_medi`
  ADD PRIMARY KEY (`Medi_Code`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_ID`),
  ADD UNIQUE KEY `Contact` (`Contact`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`N_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`P_ID`),
  ADD UNIQUE KEY `Contact` (`Contact`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`Rec_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`R_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
