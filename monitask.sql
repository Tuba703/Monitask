-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 11:12 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitask`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `at_id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`at_id`, `value`, `id`, `date`, `timein`, `timeout`) VALUES
(17, 'Absent', 25, '01-08-21', '00:00:00', '00:00:00'),
(18, 'Absent', 27, '01-08-21', '00:00:00', '00:00:00'),
(19, 'Absent', 28, '01-08-21', '00:00:00', '00:00:00'),
(35, 'Present', 25, '02-08-21', '00:49:00', '02:49:00'),
(36, 'Absent', 27, '02-08-21', '00:49:00', '02:49:00'),
(37, 'Present', 28, '02-08-21', '00:49:00', '02:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cdescription` varchar(300) NOT NULL,
  `ccontact` int(100) NOT NULL,
  `caddress` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depid`, `name`, `location`, `description`) VALUES
(9, 'IT', '3344', 'yhgfbv'),
(40, 'Production', 'Abc Street', 'tryuio'),
(41, 'Insulation', 'Abc Building', 'wertyu'),
(42, 'Piping', 'Abc Floor', 'ertfghjn'),
(43, 'Ducting', 'Abc Floor', 'dfghjkm,'),
(44, 'Assembling', 'Abc Building', '3456789');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `cnicno` int(100) NOT NULL,
  `address` varchar(400) NOT NULL,
  `type` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `department` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `dob` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emergencyno` int(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `empid`, `firstname`, `lastname`, `cnicno`, `address`, `type`, `designation`, `image`, `department`, `gender`, `nationality`, `dob`, `email`, `emergencyno`, `phone`, `uploaded`) VALUES
(25, '101', 'Tuba', 'Saif', 0, '', '', 'Manager', '', 'IT', 'Female', 'Choose...', 2021, 'tuba@gmail.com', 2147483647, '03002368629', '2021-07-28 15:05:05'),
(31, '101', 'Mahnoor', 'Asim', 0, '', '', '', '', '', 'Female', '', 0, 'mahnoorasim@gmail.com', 0, '0345678999', '2021-08-02 09:55:26'),
(32, '102', 'Aisha', 'Khan', 0, '', '', '', '', '', 'Female', '', 0, 'aishakaha@gmail.com', 0, '0322567865', '2021-08-02 09:57:22'),
(33, '103', 'Aimen', 'Khan', 0, '', '', '', '', '', 'Female', '', 0, 'aimenkhan@gmail.com', 0, '05645358645', '2021-08-02 09:58:23'),
(34, '104', 'Rimsha', 'Khan', 0, '', '', '', '', '', 'Female', '', 0, 'rimshakhan@gmail.com', 0, '0342765477754', '2021-08-02 09:59:24'),
(35, '105', 'Amna', 'Khan', 0, '', '', '', '', '', 'Female', '', 0, 'rimshakhan@gmail.com', 0, '032254676787', '2021-08-02 10:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `email`, `password`) VALUES
(5, 'Mahnoor', 'mahnoor@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'Muhammad', 'najeeb@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759'),
(10, 'Tuba', 'tuba@gmail.com', '202cb962ac59075b964b07152d234b70'),
(11, 'Najeeb', 'tubasaif@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(12, 'maha', 'maha@yahoo.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`at_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `at_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `depid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
