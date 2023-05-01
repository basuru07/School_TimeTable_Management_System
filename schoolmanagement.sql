-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 02:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(2, 'root', 'root', 'root@abc.com');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@abc.com');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `classid` varchar(20) NOT NULL,
  `id` int(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `facultymember` varchar(20) NOT NULL,
  `seat` int(20) NOT NULL,
  `whiteboard` int(20) NOT NULL,
  `multimedia` int(30) NOT NULL,
  `intake` int(20) NOT NULL,
  `timeslot` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classid`, `id`, `subject`, `facultymember`, `seat`, `whiteboard`, `multimedia`, `intake`, `timeslot`, `date`) VALUES
('1 - ClassRoom', 1, 'DSA', 'member 01 ', 40, 1, 2, 39, '08.00 - 11.00', '28/04/2023'),
('2 - ClassRoom', 2, 'OOP II', 'Member 02', 80, 3, 2, 39, '08.00 am - 11.00 am', '02/08/2023');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `subject` varchar(50) NOT NULL,
  `facultymemeber` varchar(50) NOT NULL,
  `classroom` varchar(20) NOT NULL,
  `students` int(10) NOT NULL,
  `timeslot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `facultymember` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `noofstudent` int(11) NOT NULL,
  `timeslots` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`facultymember`, `subject`, `noofstudent`, `timeslots`) VALUES
('admin', 'CSA', 30, '8.00-11.00'),
('admin1', 'DSA', 45, '11.15-14.15'),
('admin2', 'OOP 1', 33, '8.00-11.00'),
('MEMBER', 'WD', 45, '11.15-14.15');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `subjectid` int(15) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `facultymember` varchar(30) NOT NULL,
  `noofstudent` int(100) NOT NULL,
  `timeslot` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`subjectid`, `subject`, `facultymember`, `noofstudent`, `timeslot`) VALUES
(1, 'OOP II', 'member 09', 78, '08.00 am - 11.00 am'),
(3, 'RE', 'member03', 35, '8.00-11.00'),
(4, 'dsa', 'member1', 50, '8.00-11.15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`subject`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`subject`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`subjectid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
