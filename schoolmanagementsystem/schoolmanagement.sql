-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 09:06 AM
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
-- Database: `schoolmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `ctmark` varchar(255) NOT NULL,
  `asmark` varchar(255) NOT NULL,
  `atmark` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`id`, `sid`, `sname`, `class`, `section`, `term`, `subject`, `ctmark`, `asmark`, `atmark`) VALUES
(1, 1, 'Alexa Churco', '5', 'B', 'First Term', 'General Knowledge', '15', '5', '9'),
(2, 8, 'Joseph Miller', '6', 'B', 'Second Term', 'English Literature', '11', '10', '5'),
(3, 9, 'Blakley', '2', 'A', 'First Term', 'ICT', '20', '10', '10'),
(4, 9, 'Blakley', '2', 'A', 'Second Term', 'Mechanics', '20', '10', '10'),
(5, 1, 'Alexa Churco', '5', 'B', 'Second Term', 'Mathematics', '19', '9', '10');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cid`, `classname`, `section`) VALUES
(1, '1', 'A'),
(2, '2', 'A'),
(3, '2', 'B'),
(6, '3', 'A'),
(8, '4', 'A'),
(9, '5', 'A'),
(10, '6', 'A'),
(11, '7 ', 'A'),
(12, '8', 'A'),
(13, '9', 'A'),
(14, '10', 'A'),
(15, '11', 'A'),
(16, '7 ', 'E'),
(18, '7 ', 'C'),
(19, '12', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `eid` int(11) NOT NULL,
  `shift` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`eid`, `shift`, `term`, `date`, `class`, `section`, `subject`) VALUES
(1, 'Morning', 'First Term', '2023-03-05', '8', 'A', 'Mathematics'),
(2, 'Afternoon', 'First Term', '2023-03-05', '8', 'B', 'Mathematics'),
(7, 'Morning', 'First Term', '2023-03-05', '11', 'A', 'Mechanics'),
(8, 'Afternoon', 'First Term', '2023-03-05', '11', 'B', 'Mechanics'),
(9, 'Morning', 'First Term', '2023-03-08', '8', 'A', 'Geography'),
(10, 'Afternoon', 'First Term', '2023-03-08', '8', 'B', 'Geography'),
(11, 'Morning', 'First Term', '2023-03-09', '11', 'A', 'Marketing'),
(12, 'Afternoon', 'First Term', '2023-03-09', '11', 'B', 'Marketing'),
(13, 'Morning', 'Second Term', '2023-07-09', '8', 'A', 'Mathematics'),
(14, 'Afternoon', 'Second Term', '2023-07-09', '8', 'B', 'Mathematics'),
(15, 'Morning', 'Second Term', '2023-07-10', '11', 'A', 'Mechanics'),
(16, 'Afternoon', 'Second Term', '2023-07-10', '11', 'B', 'Mechanics'),
(17, 'Morning', 'Final Term', '2023-11-19', '8', 'B', 'Mathematics'),
(18, 'Afternoon', 'Final Term', '2023-11-19', '8', 'A', 'Mathematics'),
(19, 'Morning', 'Final Term', '2023-12-03', '11', 'B', 'Mechanics'),
(20, 'Afternoon', 'Final Term', '2023-12-03', '11', 'A', 'Mechanics'),
(22, 'Morning', 'First Term', '2024-04-04', '7 ', 'A', 'Islamic Studies');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `sid`, `name`, `class`, `section`, `term`, `subject`, `mark`, `grade`) VALUES
(1, 1, 'Alexa Churco', '5', 'B', 'First Term', 'General Knowledge', '58', 'A+'),
(2, 8, 'Joseph Miller', '6', 'B', 'Second Term', 'English Literature', '60', 'A+'),
(3, 9, 'Blakley', '2', 'A', 'First Term', 'ICT', '43', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `sname`, `fname`, `dob`, `gender`, `phone`, `address`, `class`, `section`) VALUES
(1, 'Alexa Churco', 'Maverick Churco', '2008-04-02', 'Female', '398345', 'Rome Italy', '5', 'B'),
(5, 'Tinley ', 'Michael', '2016-04-21', 'Female', '5884626', 'NY USA', '3', 'A'),
(8, 'Joseph Miller', 'James Miller', '2012-08-06', 'Male', '01478965236', 'Okhlahoma, USA', '6', 'B'),
(9, 'Blakley', 'John', '2012-04-18', 'Female', '896877', 'NY USA', '2', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` int(11) NOT NULL,
  `subjectname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `subjectname`) VALUES
(1, 'English Literature'),
(4, 'General Knowledge'),
(5, 'Bangladesh Studies'),
(6, 'Mathematics'),
(7, 'Islamic Studies'),
(8, 'Mechanics'),
(9, 'Statistics'),
(10, 'Biology'),
(11, 'Physics'),
(12, 'Chemistry'),
(13, 'ICT'),
(14, 'Art'),
(15, 'Accounting'),
(16, 'Economics'),
(17, 'Marketing'),
(18, 'Geography'),
(19, 'History'),
(20, 'Social Studies'),
(21, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phn_no` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `dob`, `gender`, `degree`, `religion`, `address`, `phn_no`, `email`, `password`, `utype`) VALUES
(1, 'admin', '1999-09-09', 'Male', 'admin', 'none', 'none', 100, 'admin@gmail.com', 'admin', 'Admin'),
(2, 'John', '1998-04-03', 'Male', 'BBA', 'Islam', 'Rome,Italy', 8976745, 'john78@gmail.com', 'john', 'Admin'),
(3, 'Maria', '1999-07-06', 'Female', 'B.Sc in Mathematics', 'Islam', 'Rome,Italy', 9789687, 'maria567@gmail.com', 'maria', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
