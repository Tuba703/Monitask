-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2021 at 05:07 PM
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
(24, 4500, 'qwerty', '2021-08-26', 31),
(25, 4560, 'Abc ', '2021-08-26', 32),
(26, 3000, 'qerty', '2021-09-20', 31),
(27, 3000, 'qwerty', '2021-08-27', 31),
(28, 3000, 'asdfg', '2021-07-27', 31),
(29, 3000, 'sfvc', '2021-08-28', 31);

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
(100, 'Present', 32, '2021-08-26', '00:00:00', '00:00:00'),
(101, 'Present', 46, '2021-08-26', '00:00:00', '00:00:00'),
(102, 'Present', 31, '2021-08-26', '00:00:00', '00:00:00'),
(103, 'Present', 32, '2021-09-09', '00:00:00', '00:00:00'),
(104, 'Absent', 46, '2021-09-09', '00:00:00', '00:00:00'),
(105, 'Present', 31, '2021-09-09', '00:00:00', '00:00:00'),
(106, 'Present', 32, '2021-09-10', '00:00:00', '00:00:00'),
(107, 'Absent', 46, '2021-09-10', '00:00:00', '00:00:00'),
(108, 'Present', 58, '2021-09-10', '00:00:00', '00:00:00'),
(109, 'Absent', 31, '2021-09-10', '00:00:00', '00:00:00'),
(110, 'Present', 57, '2021-09-10', '00:00:00', '00:00:00');

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

--
-- Dumping data for table `deduction`
--

INSERT INTO `deduction` (`deduction_id`, `damount`, `ddescription`, `ddate`, `id`) VALUES
(1, 3400, 'wfg', '2021-08-11\r\n', 101);

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
(41, 'Insulation', 'Abc Building', 'wertyu'),
(42, 'Piping', 'Abc Floor', 'ertfghjn'),
(43, 'Ducting', 'Abc Floor', 'dfghjkm,'),
(44, 'Assembling', 'Abc Building', '3456789'),
(45, 'HR', 'Abc building', 'yhgfbv'),
(75, 'IT', 'Abc building', 'Abc rety'),
(76, 'Production', 'Abc building', 'dfghnjm'),
(77, 'ITT', 'Abc building', 'dfghnjm');

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
  `uploaded` datetime NOT NULL,
  `Salary` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `empid`, `firstname`, `lastname`, `cnicno`, `address`, `type`, `designation`, `image`, `department`, `gender`, `nationality`, `dob`, `email`, `emergencyno`, `phone`, `uploaded`, `Salary`) VALUES
(31, '101', 'Mahnoor', 'Asim', 0, '', '', '', '', 'IT', 'Female', '', 0, 'mahnoorasim@gmail.com', 0, '0345678999', '2021-08-02 09:55:26', '35000'),
(32, '102', 'Aisha', 'Khan', 0, '', '', '', '', 'IT', 'Female', '', 0, 'aishakaha@gmail.com', 0, '0322567865', '2021-08-02 09:57:22', '35000'),
(46, '106', 'Kaleem', 'Naeem', 0, '', '', '', '', 'IT', 'Male', '', 0, 'kaleem@gmail.com', 0, '03002368629', '2021-08-21 10:26:33', '35000'),
(57, '101', 'Tooba', 'Saif', 0, '', '', '', '', 'IT', 'Female', 'Pakistani', 0, 'tooba@gmail.com', 2147483647, '03002368629', '2021-09-09 19:07:45', '75000'),
(58, '456789', 'Kleem', 'Saif', 0, '', '', '', '', 'Assembling', 'Male', 'Choose...', 0, 'kleem@gmail.com', 2147483647, '03002368629', '2021-09-09 19:08:34', '75000'),
(59, '108', 'Tuba', 'Saif', 0, '', '', '', '', 'Ducting', 'Choose...', 'Choose...', 0, '', 0, '03002368629', '2021-09-10 15:36:42', '75000');

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
  MODIFY `advance_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `deduction_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
