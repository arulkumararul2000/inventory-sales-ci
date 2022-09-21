-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 03:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorysalesci`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile1` varchar(15) NOT NULL,
  `mobile2` varchar(15) NOT NULL,
  `password` char(60) NOT NULL,
  `role` char(5) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `last_seen` datetime NOT NULL,
  `last_edited` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `account_status` char(1) NOT NULL DEFAULT '1',
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `email`, `mobile1`, `mobile2`, `password`, `role`, `created_on`, `last_login`, `last_seen`, `last_edited`, `account_status`, `deleted`) VALUES
(1, 'Admin', 'Demo', 'admin@gmail.com', '9876154343', '7014547000', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 'Super', '2017-01-04 22:19:16', '2022-09-21 17:43:01', '2022-09-21 18:05:35', '2022-09-21 12:35:35', '1', '0'),
(5, 'Baskar', 'R', 'baskar@gmail.com', '+919876543212', '+919876543212', '$2y$10$xk1b4.VjTl0.Hf3uMC/4w.jjC4YW8EoxEAg1seYrYxPJRvUMnOx8C', 'Basic', '2022-09-11 21:25:41', '2022-09-20 18:57:27', '2022-09-20 19:29:34', '2022-09-21 12:21:40', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `eventlog`
--

CREATE TABLE `eventlog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(200) NOT NULL,
  `eventRowIdOrRef` varchar(20) DEFAULT NULL,
  `eventDesc` text DEFAULT NULL,
  `eventTable` varchar(20) DEFAULT NULL,
  `staffInCharge` bigint(20) UNSIGNED NOT NULL,
  `eventTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventlog`
--

INSERT INTO `eventlog` (`id`, `event`, `eventRowIdOrRef`, `eventDesc`, `eventTable`, `staffInCharge`, `eventTime`) VALUES
(47, 'Stock Update (Deficit)', '24', '<p>1 quantities of Keyboard was removed from stock</p>\n                Reason: <p>old</p>', 'items', 1, '2022-08-17 11:43:26'),
(48, 'Stock Update (Deficit)', '24', '<p>1 quantities of Keyboard was removed from stock</p>\n                Reason: <p>old</p>', 'items', 1, '2022-08-17 11:43:56'),
(49, 'Stock Update (New Stock)', '24', '<p>5 quantities of Keyboard was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 1, '2022-08-17 11:44:09'),
(50, 'New Transaction', '0983986', '1 items totalling $100.00 with reference number 0983986 was purchased', 'transactions', 1, '2022-08-17 11:54:45'),
(51, 'Creation of new item', '25', 'Addition of 100 quantities of a new item \'HP 100 Wired Keyboard with USB\' with a unit price of $400.00 to stock', 'items', 1, '2022-08-29 15:40:39'),
(52, 'New Transaction', '54692087', '0 items totalling $0.00 with reference number 54692087 was purchased', 'transactions', 1, '2022-09-03 13:33:42'),
(53, 'New Transaction', '723063', '0 items totalling $0.00 with reference number 723063 was purchased', 'transactions', 1, '2022-09-03 13:33:56'),
(54, 'New Transaction', '7593641', '0 items totalling $0.00 with reference number 7593641 was purchased', 'transactions', 1, '2022-09-03 13:34:06'),
(55, 'New Transaction', '31296874', '0 items totalling $0.00 with reference number 31296874 was purchased', 'transactions', 1, '2022-09-03 13:34:18'),
(56, 'New Transaction', '7830511', '1 items totalling $400.00 with reference number 7830511 was purchased', 'transactions', 1, '2022-09-03 13:35:57'),
(57, 'New Transaction', '53791689', '1 items totalling $380.00 with reference number 53791689 was purchased', 'transactions', 1, '2022-09-11 16:08:34'),
(58, 'New Transaction', '64502706', '1 items totalling $2,000.00 with reference number 64502706 was purchased', 'transactions', 5, '2022-09-12 12:33:12'),
(59, 'Creation of new item', '26', 'Addition of 100 quantities of a new item \'Striped Men Round Neck Maroon, Grey T-Shirt\' with a unit price of $229.00 to stock', 'items', 1, '2022-09-20 14:05:13'),
(60, 'Creation of new item', '27', 'Addition of 100 quantities of a new item \'Men Slim Fit Checkered Spread Collar Casual Shirt\' with a unit price of $329.00 to stock', 'items', 1, '2022-09-20 14:05:49'),
(61, 'Creation of new item', '28', 'Addition of 100 quantities of a new item \'Slim Men Black Jeans\' with a unit price of $499.00 to stock', 'items', 1, '2022-09-20 14:06:55'),
(62, 'Creation of new item', '29', 'Addition of 50 quantities of a new item \'realme 9i 5G (Metallica Gold, 64 GB)  (4 GB RAM)\' with a unit price of $14,999.00 to stock', 'items', 1, '2022-09-20 14:08:19'),
(63, 'Stock Update (New Stock)', '25', '<p>7 quantities of HP 100 Wired Keyboard with USB was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 1, '2022-09-20 14:13:35'),
(64, 'New Transaction', '353582', '1 items totalling $32,571.00 with reference number 353582 was purchased', 'transactions', 1, '2022-09-20 14:30:17'),
(65, 'Stock Update (New Stock)', '27', '<p>10 quantities of Men Slim Fit Checkered Spread Collar Casual Shirt was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 1, '2022-09-20 14:33:01'),
(66, 'Stock Update (New Stock)', '27', '<p>10 quantities of Men Slim Fit Checkered Spread Collar Casual Shirt was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 1, '2022-09-20 14:33:18'),
(67, 'Stock Update (New Stock)', '27', '<p>10 quantities of Men Slim Fit Checkered Spread Collar Casual Shirt was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 1, '2022-09-20 14:33:28'),
(68, 'New Transaction', '903721859', '1 items totalling $4,935.00 with reference number 903721859 was purchased', 'transactions', 1, '2022-09-20 14:34:58'),
(69, 'New Transaction', '057145', '5 items totalling $16,456.00 with reference number 057145 was purchased', 'transactions', 1, '2022-09-20 14:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `quantity` int(6) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `code`, `description`, `unitPrice`, `quantity`, `dateAdded`, `lastUpdated`) VALUES
(25, 'HP 100 Wired Keyboard with USB', '101', 'Get typing in no time – enjoy quick connectivity across USB port-compatible devices with a full-frame, classic keyboard.\r\nSit in a suitable position and rest your palm and wrists easily with this height-adjustable keyboard designed for comfort.\r\nMaximize your productivity with a full range of 109 keys, including a numeric keypad for easy data entry, 12 Function keys, and 3 Hotkeys.\r\nEnjoy a 3-year manufacturer warranty on the device from the date of purchase', '400.00', 99, '2022-08-29 21:10:39', '2022-09-20 14:39:20'),
(26, 'Striped Men Round Neck Maroon, Grey T-Shirt', '102', '', '229.00', 99, '2022-09-20 19:35:13', '2022-09-20 14:39:20'),
(27, 'Men Slim Fit Checkered Spread Collar Casual Shirt', '103', '', '329.00', 15, '2022-09-20 19:35:49', '2022-09-20 14:39:20'),
(28, 'Slim Men Black Jeans', '104', '', '499.00', 99, '2022-09-20 19:36:55', '2022-09-20 14:39:20'),
(29, 'realme 9i 5G (Metallica Gold, 64 GB)  (4 GB RAM)', '105', '4 GB RAM | 64 GB ROM | Expandable Upto 1 TB\r\n16.76 cm (6.6 inch) Full HD+ Display\r\n50MP + 2MP + 2MP | 8MP Front Camera\r\n5000 mAh Lithium Ion Battery\r\nMediatek Dimensity 810 5G Processor', '14999.00', 49, '2022-09-20 19:38:19', '2022-09-20 14:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `lk_sess`
--

CREATE TABLE `lk_sess` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transId` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemCode` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(6) NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `totalMoneySpent` decimal(10,2) NOT NULL,
  `amountTendered` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(10,2) NOT NULL,
  `vatPercentage` decimal(10,2) NOT NULL,
  `vatAmount` decimal(10,2) NOT NULL,
  `changeDue` decimal(10,2) NOT NULL,
  `modeOfPayment` varchar(20) NOT NULL,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_phone` varchar(15) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `transType` char(1) NOT NULL,
  `staffId` bigint(20) UNSIGNED NOT NULL,
  `transDate` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cancelled` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transId`, `ref`, `itemName`, `itemCode`, `description`, `quantity`, `unitPrice`, `totalPrice`, `totalMoneySpent`, `amountTendered`, `discount_amount`, `discount_percentage`, `vatPercentage`, `vatAmount`, `changeDue`, `modeOfPayment`, `cust_name`, `cust_phone`, `cust_email`, `transType`, `staffId`, `transDate`, `lastUpdated`, `cancelled`) VALUES
(26, '53791689', 'HP 100 Wired Keyboard with USB', '101', '', 1, '400.00', '400.00', '380.00', '400.00', '20.00', '5.00', '0.00', '0.00', '20.00', 'Cash', '', '', '', '1', 1, '2022-09-11 21:38:34', '2022-09-11 16:08:34', '0'),
(27, '64502706', 'HP 100 Wired Keyboard with USB', '101', '', 5, '400.00', '2000.00', '2000.00', '2000.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Cash', '', '', '', '1', 5, '2022-09-12 18:03:12', '2022-09-12 12:33:12', '0'),
(28, '353582', 'Men Slim Fit Checkered Spread Collar Casual Shirt', '103', '', 99, '329.00', '32571.00', '32571.00', '32571.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'POS', '', '', '', '1', 1, '2022-09-20 20:00:17', '2022-09-20 14:30:17', '0'),
(29, '903721859', 'Men Slim Fit Checkered Spread Collar Casual Shirt', '103', '', 15, '329.00', '4935.00', '4935.00', '5000.00', '0.00', '0.00', '0.00', '0.00', '65.00', 'Cash', 'test', '9876543210', 'test@gmail.com', '1', 1, '2022-09-20 20:04:58', '2022-09-20 14:34:58', '0'),
(30, '057145', 'HP 100 Wired Keyboard with USB', '101', '', 1, '400.00', '400.00', '16456.00', '16456.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'POS', 'new', '984321091', 'test123@gmail.com', '1', 1, '2022-09-20 20:09:20', '2022-09-20 14:39:20', '0'),
(31, '057145', 'Striped Men Round Neck Maroon, Grey T-Shirt', '102', '', 1, '229.00', '229.00', '16456.00', '16456.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'POS', 'new', '984321091', 'test123@gmail.com', '1', 1, '2022-09-20 20:09:20', '2022-09-20 14:39:20', '0'),
(32, '057145', 'Men Slim Fit Checkered Spread Collar Casual Shirt', '103', '', 1, '329.00', '329.00', '16456.00', '16456.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'POS', 'new', '984321091', 'test123@gmail.com', '1', 1, '2022-09-20 20:09:20', '2022-09-20 14:39:20', '0'),
(33, '057145', 'Slim Men Black Jeans', '104', '', 1, '499.00', '499.00', '16456.00', '16456.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'POS', 'new', '984321091', 'test123@gmail.com', '1', 1, '2022-09-20 20:09:20', '2022-09-20 14:39:20', '0'),
(34, '057145', 'realme 9i 5G (Metallica Gold, 64 GB)  (4 GB RAM)', '105', '', 1, '14999.00', '14999.00', '16456.00', '16456.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'POS', 'new', '984321091', 'test123@gmail.com', '1', 1, '2022-09-20 20:09:20', '2022-09-20 14:39:20', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile1` (`mobile1`);

--
-- Indexes for table `eventlog`
--
ALTER TABLE `eventlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventlog`
--
ALTER TABLE `eventlog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
