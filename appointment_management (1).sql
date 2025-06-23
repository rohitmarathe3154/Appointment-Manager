-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 07:52 PM
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
-- Database: `appointment_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `a_id` int(100) NOT NULL,
  `a_emp_id` int(100) NOT NULL,
  `a_user_id` int(100) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `a_designation` varchar(100) NOT NULL,
  `a_department` varchar(100) NOT NULL,
  `a_companyName` varchar(100) NOT NULL,
  `a_contact` varchar(100) NOT NULL,
  `a_address` varchar(100) NOT NULL,
  `a_purpose` varchar(100) NOT NULL,
  `a_discription` varchar(100) NOT NULL,
  `a_date` date NOT NULL,
  `a_time` time(6) NOT NULL,
  `a_email` varchar(100) NOT NULL,
  `a_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`a_id`, `a_emp_id`, `a_user_id`, `a_name`, `a_designation`, `a_department`, `a_companyName`, `a_contact`, `a_address`, `a_purpose`, `a_discription`, `a_date`, `a_time`, `a_email`, `a_status`) VALUES
(3, 3, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'Financial advice', 'Urgent', '2024-07-19', '01:48:00.000000', 'rohit@gmail.com', 'Approved'),
(6, 3, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'Financial advice', 'Urgent', '2024-07-27', '13:25:00.000000', 'rohit@gmail.com', 'Approved'),
(7, 4, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'Plot booking', 'Urgent', '2024-07-19', '12:51:00.000000', 'rohit@gmail.com', 'Approved'),
(8, 10, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'Plot booking', 'Urgent', '2024-07-19', '16:47:00.000000', 'rohit@gmail.com', 'Pending'),
(9, 5, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'timepass', 'abc', '2024-07-19', '10:00:00.000000', 'rohit@gmail.com', 'Approved'),
(10, 11, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'Party related meeting', 'Note : Party\'s reason is your birthday', '2024-08-12', '20:00:00.000000', 'rohit@gmail.com', 'Approved'),
(11, 11, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'Financial advice', 'Urgent', '2024-07-19', '20:00:00.000000', 'rohit@gmail.com', 'Disapproved'),
(12, 9, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'Meeting related banking', 'Urgent', '2024-07-19', '20:46:00.000000', 'rohit@gmail.com', 'Approved'),
(13, 3, 1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'srecsbv', 'dtytfry6tr', '2024-09-03', '15:42:00.000000', 'rohit@gmail.com', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `edesignation` varchar(100) NOT NULL,
  `edepartment` varchar(100) NOT NULL,
  `econtact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `epassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `edesignation`, `edepartment`, `econtact`, `email`, `epassword`) VALUES
(3, 'Ajay', 'CA', 'Finance', '1234567898', 'ajay@gmail.com', '123'),
(4, 'Mohit', 'Engineer', 'Civil', '1656569646', 'mohit@gmail.com', 'mohit'),
(9, 'Pushpa', 'ceo', 'Information Technology', '1234567892', 'Pushpa@gmail.com', 'Pushpa'),
(11, 'Puja', 'Software Engineer ', 'MCA', '985623147', 'puja@gmail.com', 'puja');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `udesignation` varchar(100) NOT NULL,
  `udepartment` varchar(100) NOT NULL,
  `ucompanyName` varchar(100) NOT NULL,
  `ucontact` varchar(100) NOT NULL,
  `uaddress` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `upassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `udesignation`, `udepartment`, `ucompanyName`, `ucontact`, `uaddress`, `uemail`, `upassword`) VALUES
(1, 'Rohit', 'Engineer', 'Information Technology', 'Softech', '09699385632', 'Shirpur , Maharashtra', 'rohit@gmail.com', 'rohit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `a_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
