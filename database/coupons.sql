-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2025 at 12:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coupon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `coupon_type_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `initial_balance` decimal(10,2) NOT NULL,
  `current_balance` decimal(10,2) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `status` enum('available','assigned','fully_redeemed') NOT NULL DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `coupon_type_id`, `buyer_id`, `recipient_id`, `initial_balance`, `current_balance`, `issue_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'B101', 1, 37, NULL, 700.00, 650.00, '2025-06-15', 'assigned', '2025-05-05 18:11:14', '2025-06-15 07:03:19'),
(2, 'B102', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(3, 'B103', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(4, 'B104', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(5, 'B105', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(6, 'B106', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(7, 'B107', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(8, 'B108', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(9, 'B109', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(10, 'B110', 1, NULL, NULL, 700.00, 700.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:00:29'),
(11, 'G101', 2, NULL, NULL, 500.00, 500.00, '2025-05-15', 'available', '2025-05-05 18:18:36', '2025-05-15 09:55:48'),
(12, 'G102', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(13, 'G103', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(14, 'G104', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(15, 'G105', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(16, 'G106', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(17, 'G107', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(18, 'G108', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(19, 'G109', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(20, 'G110', 2, NULL, NULL, 500.00, 500.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 18:01:15'),
(21, 'S101', 3, NULL, NULL, 300.00, 300.00, '2025-05-07', 'available', '2025-05-05 07:06:16', '2025-05-08 07:49:25'),
(22, 'S102', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(23, 'S103', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(24, 'S104', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(25, 'S105', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(26, 'S106', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(27, 'S107', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(28, 'S108', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(29, 'S109', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36'),
(30, 'S110', 3, NULL, NULL, 300.00, 300.00, NULL, 'available', '2025-05-05 07:06:16', '2025-05-05 17:16:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `coupon_type_id` (`coupon_type_id`),
  ADD KEY `code_2` (`code`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_ibfk_1` FOREIGN KEY (`coupon_type_id`) REFERENCES `coupon_types` (`id`),
  ADD CONSTRAINT `coupons_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `coupons_ibfk_3` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
