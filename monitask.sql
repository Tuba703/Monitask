-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 01:13 PM
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
-- Table structure for table `advance`
--

CREATE TABLE `advance` (
  `advance_id` int(50) NOT NULL,
  `aamount` int(200) NOT NULL,
  `adescription` varchar(150) NOT NULL,
  `adate` varchar(100) NOT NULL,
  `id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advance`
--

INSERT INTO `advance` (`advance_id`, `aamount`, `adescription`, `adate`, `id`) VALUES
(20, 4500, 'dfghnjm', '2021-08-11', 102),
(21, 6500, 'qwert', '2021-08-28', 102),
(22, 2300, 'zocbn', '2021-08-10', 103);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `value`, `id`, `date`, `timein`, `timeout`) VALUES
(17, 'Absent', 25, '01-08-21', '00:00:00', '00:00:00'),
(18, 'Absent', 27, '01-08-21', '00:00:00', '00:00:00'),
(19, 'Absent', 28, '01-08-21', '00:00:00', '00:00:00'),
(50, 'Absent', 33, '03-08-21', '00:00:00', '00:00:00'),
(51, 'Absent', 32, '03-08-21', '00:00:00', '00:00:00'),
(52, 'Absent', 35, '03-08-21', '00:00:00', '00:00:00'),
(53, 'Absent', 31, '03-08-21', '00:00:00', '00:00:00'),
(54, 'Absent', 34, '03-08-21', '00:00:00', '00:00:00'),
(55, 'Absent', 25, '03-08-21', '00:00:00', '00:00:00'),
(86, 'Present', 33, '04-08-21', '00:00:00', '00:00:00'),
(87, 'Absent', 32, '04-08-21', '00:00:00', '00:00:00'),
(88, 'Absent', 35, '04-08-21', '00:00:00', '00:00:00'),
(89, 'Present', 31, '04-08-21', '00:00:00', '00:00:00'),
(90, 'Absent', 34, '04-08-21', '00:00:00', '00:00:00'),
(91, 'Present', 25, '04-08-21', '00:00:00', '00:00:00'),
(92, 'Present', 33, '05-08-21', '00:00:00', '00:00:00'),
(93, 'Present', 32, '05-08-21', '00:00:00', '00:00:00'),
(94, 'Absent', 31, '05-08-21', '00:00:00', '00:00:00'),
(95, 'Present', 25, '05-08-21', '00:00:00', '00:00:00'),
(96, 'Present', 33, '08-08-21', '00:00:00', '00:00:00'),
(97, 'Present', 32, '08-08-21', '00:00:00', '00:00:00'),
(98, 'Absent', 31, '08-08-21', '00:00:00', '00:00:00'),
(99, 'Present', 25, '08-08-21', '00:00:00', '00:00:00');

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

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `cname`, `cdescription`, `ccontact`, `caddress`) VALUES
(1, '11', 'Abc ', 2147483647, 'Deconn'),
(2, '11', 'yhgfbv', 2147483647, 'Deconnn');

-- --------------------------------------------------------

--
-- Table structure for table `deduction`
--

CREATE TABLE `deduction` (
  `deduction_id` int(50) NOT NULL,
  `damount` int(200) NOT NULL,
  `ddescription` varchar(300) NOT NULL,
  `ddate` varchar(100) NOT NULL,
  `id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `location`, `description`) VALUES
(9, 'IT', '3344', 'yhgfbv'),
(40, 'Production', 'Abc Street', 'tryuio'),
(41, 'Insulation', 'Abc Building', 'wertyu'),
(42, 'Piping', 'Abc Floor', 'ertfghjn'),
(43, 'Ducting', 'Abc Floor', 'dfghjkm,'),
(44, 'Assembling', 'Abc Building', '3456789'),
(45, 'HR', 'Abc building', 'yhgfbv');

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
(33, '103', 'Aimen', 'Khan', 0, '', '', '', '', '', 'Female', '', 0, 'aimenkhan@gmail.com', 0, '05645358645', '2021-08-02 09:58:23');

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
(13, 'tuba', 'tuba@gmail.com', '3431f3331008128bbbaeeb7a0f793f52'),
(14, 'MahnoorAsim', 'mahnoor718@gmail.com', 'e99a18c428cb38d5f260853678922e03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance`
--
ALTER TABLE `advance`
  ADD PRIMARY KEY (`advance_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`deduction_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

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
-- AUTO_INCREMENT for table `advance`
--
ALTER TABLE `advance`
  MODIFY `advance_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `deduction_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
