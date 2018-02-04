-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2018 at 07:52 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `name`, `email`, `password`, `gender`, `address`, `role`) VALUES
(14, 'asdf@asdf.asdf', 'asdf@asdf.asdf', 'asdfasdf', 'male', 'asdfasdf', 'admin'),
(16, 'asdf', 'asdf@af.asdf', 'asdfasdf', 'Male', 'asdfasdf', 'Admin'),
(17, 'asdfdfg', 'adf@af.asdf', 'asdfasdf', 'Male', 'asdfasdf', 'Admin'),
(18, 'asdfdfg', 'adf@af.a', 'asdfasdf', 'Male', 'asdfasdf', 'Admin'),
(19, 'asdfdfg', 'adf@a', 'asdfasdf', 'Male', 'asdfasdf', 'Admin'),
(20, 'asdfdfg', 'a@a', 'asdfasdf', 'Male', 'asdfasdf', 'Admin'),
(22, 'asdfdfg', 'a@aj', 'asdfasdf', 'Male', 'asdfasdf', 'General');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
