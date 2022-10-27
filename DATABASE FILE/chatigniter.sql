-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2022 at 03:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_user`
--

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `blocked_to` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `unique_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_fname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_lname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bio` varchar(100) CHARACTER SET latin1 NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `dob` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_pass` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_avtar` varchar(200) CHARACTER SET latin1 NOT NULL,
  `user_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `last_logout` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `unique_id`, `user_fname`, `user_lname`, `user_email`, `bio`, `created_at`, `dob`, `phone`, `address`, `user_pass`, `user_avtar`, `user_status`, `last_logout`) VALUES
(1, '06e384', 'muhammad', 'farhan', 'muhammadfandi900@gmail.com', 'Mahasiswa', '4-8-2022', '06-12-2000', '0822836033', 'Jl. Kelapapati Tengah', '12345', '1905f4cb.jpg', 'active', ''),
(2, '17e6d7', 'Bengkel', 'Surya Abadi', 'SuryaAbadi@gmail.com', '', '4-8-2022', '', '', '', '12345', '320784b5.png', 'deactive', '8/10/2022, 12:00:28 PM'),
(3, '2bc812', 'Sample', 'Account', 'sample@gmail.com', 'Just a dummy account', '20-6-2021', '12-12-1980', '7410000000', '69 Dummy Address', 'password', '9b1a8f8c.jpg', 'deactive', '8/7/2022, 4:39:09 PM'),
(4, '37f10c', 'Cahaya Motor', 'Variasi', 'Cahayavariasi@gmail.com', '', '10-8-2022', '', '', '', '12345', 'ecb62dd4.jpg', 'deactive', '8/10/2022, 11:05:26 AM');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`time`, `sender_message_id`, `receiver_message_id`, `message`) VALUES
('2022-08-04 19:20:26.000000', '17e6d7', '06e384', 'Ada yang bisa dibantu ?'),
('2022-08-04 19:22:54.000000', '17e6d7', '06e384', 'wwkwkwk'),
('2022-08-04 19:23:35.000000', '06e384', '17e6d7', 'Saya ingin melakukan konsultasi'),
('2022-08-07 14:09:05.000000', '06e384', '17e6d7', 'Saya ingin melakukan konsultasi'),
('2022-08-10 11:05:21.000000', '06e384', '17e6d7', 'izin melakukan konsultasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`unique_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
