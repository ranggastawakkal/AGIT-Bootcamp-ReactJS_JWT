-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 09:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblat`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `createdAt`, `updatedAt`) VALUES
(1, 'Laptop A', 15000, '2022-05-18 10:10:38', '2022-05-18 10:10:38'),
(2, 'Monitor B', 20000, '2022-05-18 08:12:59', '2022-05-18 08:12:59'),
(3, 'Paket PC C', 60000, '2022-05-18 08:13:54', '2022-05-18 08:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `rolename`, `createdAt`, `updatedAt`) VALUES
(1, 'ADMIN', '2022-05-19 04:05:58', '2022-05-19 04:05:58'),
(2, 'USER', '2022-05-19 04:06:04', '2022-05-19 07:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `role`, `createdAt`, `updatedAt`) VALUES
(13, 'Giffari Zakawaly', 'giff@mail.com', '$2b$10$NLSfqI5gjn9dvPFOYAHCye5tgbai/DT.8pACzOEcJbOxWYhPXxBmy', NULL, 'ADMIN', '2022-05-19 06:18:09', '2022-05-20 04:16:55'),
(29, 'Userawan', 'user@mail.com', '$2b$10$8Q1n/W0LxBI5XpSlAb0gceTfgPdMiV682j9wPytG0bTYvQiEc8why', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiVXNlciIsImVtYWlsIjoidXNlckBtYWlsLmNvbSIsInJvbGUiOiJVU0VSIiwiaWF0IjoxNjUzMDIwMjIzLCJleHAiOjE2NTMxMDY2MjN9.4GguNDJ0O8-jreYIwA1KUPfiYoSf6ycnAgYCP0xWTFk', 'USER', '2022-05-19 23:41:37', '2022-05-20 04:17:35'),
(31, 'Test', 'test@mail.com', '$2b$10$0DEGDWf4A77OhTlMPmW4Vu8a6TekP.Hsp1G3Wu/t4M5bQGWtUzcB2', NULL, 'USER', '2022-05-20 02:48:42', '2022-05-20 02:48:42'),
(32, 'Admin Cadangan', 'admin@mail.com', '$2b$10$7Dnic4l8j3.2tISSdvfTkucS.6ZPXPpi21Hl1Q1mr5YpKHX/TcEqe', NULL, 'ADMIN', '2022-05-20 02:49:22', '2022-05-20 02:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
