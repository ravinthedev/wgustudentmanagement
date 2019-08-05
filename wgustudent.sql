-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2019 at 06:44 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wgustudent`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` varchar(4) NOT NULL,
  `rid` varchar(4) DEFAULT NULL,
  `bid` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `rid`, `bid`) VALUES
('1', 'R001', 'B001'),
('2', 'R001', 'B001');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `bid` varchar(4) NOT NULL,
  `hall` varchar(5) NOT NULL,
  `admission` decimal(6,2) NOT NULL,
  `byear` int(4) NOT NULL,
  `cid` varchar(4) DEFAULT NULL,
  `cday` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`bid`, `hall`, `admission`, `byear`, `cid`, `cday`) VALUES
('B001', 'H001', '1000.00', 2017, 'C001', '21/02/2019'),
('B002', 'H001', '1000.00', 2017, 'C002', 'Wednesday'),
('B003', 'H001', '1000.00', 2017, 'C002', 'Monday'),
('B004', 'H002', '1200.00', 2016, 'C003', 'Tuesday'),
('B005', 'H002', '800.00', 2017, 'C006', 'Monday');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `cid` varchar(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `stream` varchar(8) NOT NULL,
  `tid` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`cid`, `name`, `medium`, `stream`, `tid`) VALUES
('C001', 'Research Studies', 'English', 'MSc', 'T001'),
('C002', 'Java FX', 'English', 'MSc', 'T002'),
('C003', 'Internet and Mobile', 'English', 'MSc', 'T002'),
('C004', 'Website Development', 'English', 'MSc', 'T003'),
('C005', 'Database Systems', 'English', 'MSc', 'T003'),
('C006', 'Dissertation', 'English', 'MSc', 'T004');

-- --------------------------------------------------------

--
-- Table structure for table `exam_detail`
--

CREATE TABLE `exam_detail` (
  `eid` varchar(4) NOT NULL,
  `edate` date NOT NULL,
  `marks` int(3) NOT NULL,
  `rid` varchar(4) DEFAULT NULL,
  `bid` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` varchar(4) NOT NULL,
  `pdate` date NOT NULL,
  `rid` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `pdate`, `rid`) VALUES
('P001', '2019-08-05', 'R001');

-- --------------------------------------------------------

--
-- Table structure for table `reg_detail`
--

CREATE TABLE `reg_detail` (
  `rid` varchar(4) NOT NULL,
  `bid` varchar(4) DEFAULT NULL,
  `sid` varchar(4) DEFAULT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_detail`
--

INSERT INTO `reg_detail` (`rid`, `bid`, `sid`, `reg_date`) VALUES
('R001', 'B001', 'S001', '2019-08-05'),
('R002', 'B001', 'S002', '2019-08-05'),
('R003', 'B001', 'S003', '2019-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `age` int(3) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `tel1` varchar(15) NOT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `dob`, `age`, `nic`, `tel1`, `tel2`, `address`) VALUES
('S001', 'Ravindu Lokumanna', '1992-11-22', 25, '92454212421v', '0772934362', '0772934362', 'No 83, Katuwala, Boralesgamuwa'),
('S002', 'Pasindu Thiwanka', '1993-10-02', 24, '92454212421v', '0772934362', '0772934362', 'aColombo'),
('S003', 'Nuwan Balagalla', '2019-08-07', 0, '923274286v', '0772934362', '0772934362', 'Dewalapola, Sri Lanka');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` varchar(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `tel1` varchar(15) NOT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `name`, `tel1`, `tel2`, `address`) VALUES
('T001', 'Mr. Zufer', '0712345678', '0712345678', 'No. 20, Colombo'),
('T002', 'Mr. Sanjeewa', '0712345678', '0712345678', 'No.80,Panadura'),
('T003', 'Mr. Rukmal', '0712345678', '0712345678', 'No.60, Colombo 03'),
('T004', 'Mr. John', '0712345678', '0712345678', 'No.256, Boralesgamuwa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(16) NOT NULL,
  `password` varchar(12) NOT NULL,
  `privilege` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `privilege`) VALUES
('Admin', 'admin', 'Administrator'),
('User', 'user', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `rid` (`rid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `exam_detail`
--
ALTER TABLE `exam_detail`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `rid` (`rid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `reg_detail`
--
ALTER TABLE `reg_detail`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `bid` (`bid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `reg_detail` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `batch` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `batch`
--
ALTER TABLE `batch`
  ADD CONSTRAINT `batch_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `classes` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_detail`
--
ALTER TABLE `exam_detail`
  ADD CONSTRAINT `exam_detail_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `reg_detail` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_detail_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `batch` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `reg_detail` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reg_detail`
--
ALTER TABLE `reg_detail`
  ADD CONSTRAINT `reg_detail_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `batch` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reg_detail_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
