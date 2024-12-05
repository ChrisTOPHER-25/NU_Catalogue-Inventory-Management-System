-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 01:53 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nucatalogue`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(32, 'Small (S)', 1),
(33, 'Medium (M)', 1),
(35, 'Large (L)', 1),
(37, 'Extra Large (XL)', 1),
(38, 'Double Extra Large (XXL)', 1),
(39, 'Triple Extra Large (XXXL)', 1),
(40, 'Extra Small (XS)', 1),
(56, 'Double Extra Small (XXS)', 1),
(57, 'Triple Extra Small (XXXS)', 1),
(58, 'N/A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `studentNumber` varchar(100) NOT NULL,
  `yearLevel` varchar(55) NOT NULL,
  `itemPurchased` varchar(99) NOT NULL,
  `itemSize` varchar(22) NOT NULL,
  `quantity` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `studentNumber`, `yearLevel`, `itemPurchased`, `itemSize`, `quantity`) VALUES
(1, 'Maria Jacksons', 'default@gmail.com', 'male', 'default', 'XL', '1'),
(4, 'aaron', '125125', 'BSIT201A', 'POLO', '21', '1');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` date NOT NULL,
  `status` varchar(55) NOT NULL,
  `remarks` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `supplier_id`, `date`, `expiry_date`, `status`, `remarks`) VALUES
(5, 8, '2018-11-06 07:34:24', '2018-11-07', '', ''),
(6, 8, '2018-11-06 07:35:03', '2018-11-05', '', ''),
(7, 8, '2018-11-06 07:35:14', '2018-11-01', '', ''),
(8, 8, '2018-11-09 01:57:21', '2018-11-08', '', ''),
(9, 8, '2023-05-13 10:29:01', '2023-05-19', '', ''),
(10, 8, '2023-05-13 10:30:01', '2023-05-19', '', ''),
(11, 8, '2023-05-13 10:32:51', '2023-05-13', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_details`
--

CREATE TABLE `delivery_details` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `item` varchar(55) NOT NULL,
  `quantity` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `remarks` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_details`
--

INSERT INTO `delivery_details` (`id`, `price`, `item`, `quantity`, `delivery_id`, `status`, `remarks`) VALUES
(6, 5, 'airo', 5, 11, 'on going', 'return 1 polo');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `action`, `date`) VALUES
(32, 6, 'Change Item Name: safeguard 10mg1 to safeguard 10mg', '2018-11-21 12:04:26'),
(33, 6, 'Change safeguard 10mg Price: 30 to 55', '2018-11-21 12:05:08'),
(34, 6, 'Log in', '2018-11-21 23:29:56'),
(35, 6, 'Stock In: 50 - safeguard 10mg', '2018-11-21 23:30:33'),
(36, 6, 'Log in', '2018-11-22 12:45:10'),
(37, 7, 'Log in', '2018-11-23 02:20:18'),
(38, 7, 'Log out', '2018-11-23 02:27:05'),
(39, 6, 'Log in', '2018-11-23 02:27:14'),
(40, 6, 'Log in', '2018-11-23 04:37:04'),
(41, 6, 'Log out', '2018-11-23 05:27:05'),
(42, 6, 'Log in', '2018-11-23 05:34:17'),
(43, 6, 'Log out', '2018-11-23 05:35:13'),
(44, 6, 'Log in', '2018-11-23 05:35:34'),
(45, 6, 'Log out', '2018-11-23 05:37:21'),
(46, 7, 'Log in', '2018-11-23 05:38:22'),
(47, 7, 'Log out', '2018-11-23 05:38:44'),
(48, 6, 'Log in', '2018-11-23 05:42:17'),
(49, 6, 'Register new item: test', '2018-11-23 08:27:51'),
(50, 6, 'Change test Category: Food to Soap', '2018-11-23 08:39:55'),
(51, 6, 'Change safeguard 10mg Category: Soap to beverage', '2018-11-23 08:40:18'),
(52, 6, 'Register new item: test', '2018-11-23 08:48:53'),
(53, 6, 'Delete Item: test', '2018-11-23 08:49:02'),
(54, 6, 'Delete Item: test', '2018-11-23 08:49:04'),
(55, 6, 'Log out', '2018-11-23 09:11:01'),
(56, 6, 'Log in', '2018-11-23 09:13:56'),
(57, 6, 'Register new item: quichaw', '2018-11-23 09:14:30'),
(58, 6, 'Stock In: 50 - quichaw', '2018-11-23 09:14:41'),
(59, 6, 'Register Category: liquor', '2018-11-23 09:15:45'),
(60, 6, 'Register Category: candy', '2018-11-23 09:16:04'),
(61, 6, 'Register new item: max', '2018-11-23 09:16:26'),
(62, 6, 'Stock In: 50 - max', '2018-11-23 09:16:38'),
(63, 6, 'Log out', '2018-11-23 09:16:54'),
(64, 7, 'Log in', '2018-11-23 09:17:00'),
(65, 7, 'Log out', '2018-11-23 09:17:39'),
(66, 6, 'Log in', '2018-11-23 09:17:43'),
(67, 6, 'Change max Price: 1.25 to 1', '2018-11-23 09:17:52'),
(68, 6, 'Log out', '2018-11-23 09:17:57'),
(69, 6, 'Log in', '2018-11-23 09:18:32'),
(70, 6, 'Register Category: shampoo', '2018-11-23 09:18:43'),
(71, 6, 'Register new item: sunsilk', '2018-11-23 09:19:05'),
(72, 6, 'Stock In: 100 - sunsilk', '2018-11-23 09:19:16'),
(73, 6, 'Change sunsilk Description: shampoo  to sunsilk 7mg', '2018-11-23 09:19:33'),
(74, 6, 'Log out', '2018-11-23 09:19:59'),
(75, 7, 'Log in', '2018-11-23 09:20:05'),
(76, 7, 'Log out', '2018-11-23 09:21:18'),
(77, 6, 'Log in', '2018-11-23 09:21:23'),
(78, 6, 'Stock In: 100 - wings', '2018-11-23 09:22:38'),
(79, 6, 'Log out', '2018-11-23 09:23:34'),
(80, 10, 'Log in', '2018-11-23 09:23:45'),
(81, 10, 'Log out', '2018-11-23 09:24:31'),
(82, 6, 'Log in', '2018-11-23 09:24:50'),
(83, 6, 'Register Category: drinks', '2018-11-23 09:25:07'),
(84, 6, 'Register new item: coke 8oz', '2018-11-23 09:25:26'),
(85, 6, 'Stock In: 55 - coke 8oz', '2018-11-23 09:25:37'),
(86, 6, 'Log out', '2018-11-23 09:25:47'),
(87, 7, 'Log in', '2018-11-23 09:25:52'),
(88, 7, 'Log out', '2018-11-23 09:26:47'),
(89, 6, 'Log in', '2018-11-23 09:26:53'),
(90, 6, 'Log out', '2018-11-23 09:28:35'),
(91, 11, 'Log in', '2018-11-23 09:28:45'),
(92, 11, 'Delete Item: coke 8oz', '2018-11-23 09:30:30'),
(93, 11, 'Log out', '2018-11-23 09:31:06'),
(94, 6, 'Log in', '2018-11-23 09:31:24'),
(95, 6, 'Register Category: bisquit', '2018-11-23 09:31:34'),
(96, 6, 'Register new item: fita', '2018-11-23 09:31:52'),
(97, 6, 'Stock In: 50 - fita', '2018-11-23 09:32:05'),
(98, 6, 'Log out', '2018-11-23 09:32:11'),
(99, 7, 'Log in', '2018-11-23 09:32:18'),
(100, 7, 'Log out', '2018-11-23 09:33:08'),
(101, 6, 'Log in', '2018-11-23 09:33:14'),
(102, 6, 'Stock In: 25 - quichaw', '2018-11-23 09:33:29'),
(103, 6, 'Log out', '2018-11-23 09:35:08'),
(104, 12, 'Log in', '2018-11-23 09:35:15'),
(105, 12, 'Change fita Description: fita to fita bravo', '2018-11-23 09:35:26'),
(106, 12, 'Delete Item: fita', '2018-11-23 09:35:30'),
(107, 6, 'Log in', '2018-11-23 23:47:25'),
(108, 6, 'Log out', '2018-11-24 00:58:26'),
(109, 6, 'Log in', '2018-11-24 00:58:57'),
(110, 6, 'Log out', '2018-11-24 01:00:20'),
(111, 7, 'Log in', '2018-11-24 01:00:26'),
(112, 6, 'Log in', '2018-11-24 09:47:34'),
(113, 6, 'Register new item: 5', '2018-11-24 09:48:56'),
(114, 6, 'Stock In: 5 - 5', '2018-11-24 09:49:01'),
(115, 6, 'Log out', '2018-11-24 09:49:47'),
(116, 7, 'Log in', '2018-11-24 09:49:51'),
(117, 7, 'Log out', '2018-11-24 09:49:54'),
(118, 6, 'Log in', '2018-11-24 09:50:01'),
(119, 6, 'Register new item: test', '2018-11-24 09:51:25'),
(120, 6, 'Delete Item: test', '2018-11-24 09:53:32'),
(121, 6, 'Deleted Category: liquor', '2018-11-24 09:54:10'),
(122, 6, 'Log out', '2018-11-24 09:54:17'),
(123, 6, 'Log in', '2018-11-24 09:54:26'),
(124, 6, 'Log out', '2018-11-24 09:54:36'),
(125, 6, 'Log in', '2018-11-24 09:55:57'),
(126, 6, 'Register Category: test', '2018-11-24 10:01:22'),
(127, 6, 'Log in', '2018-11-25 05:02:34'),
(128, 6, 'Log in', '2018-11-25 08:58:40'),
(129, 6, 'Log in', '2018-11-25 23:23:22'),
(130, 6, 'Deleted Category: Food', '2018-11-25 23:30:00'),
(131, 6, 'Deleted Category: test', '2018-11-25 23:31:20'),
(132, 6, 'Deleted Category: Food', '2018-11-25 23:32:12'),
(133, 6, 'Deleted Category: Soap', '2018-11-25 23:32:37'),
(134, 6, 'Register new item: test', '2018-11-25 23:34:58'),
(135, 6, 'Register new item: test', '2018-11-25 23:35:32'),
(136, 6, 'Log out', '2018-11-26 01:03:44'),
(137, 6, 'Log in', '2018-11-26 01:08:33'),
(138, 6, 'Log out', '2018-11-26 01:38:45'),
(139, 6, 'Log in', '2018-11-26 01:39:19'),
(140, 6, 'Deleted Category: beverage', '2018-11-26 01:42:47'),
(141, 6, 'Deleted Category: candy', '2018-11-26 01:42:50'),
(142, 6, 'Deleted Category: bisquit', '2018-11-26 01:43:17'),
(143, 6, 'Register Category: test', '2018-11-26 01:44:36'),
(144, 6, 'Deleted Category: test', '2018-11-26 01:44:51'),
(145, 6, 'Register Category: qwe', '2018-11-26 01:46:18'),
(146, 6, 'Log in', '2018-11-26 08:20:16'),
(147, 6, 'Log out', '2018-11-26 08:23:41'),
(148, 6, 'Log in', '2023-02-19 04:43:22'),
(149, 6, 'Log in', '2023-02-28 13:33:15'),
(150, 6, 'Log in', '2023-02-28 15:36:08'),
(151, 6, 'Log in', '2023-02-28 17:05:58'),
(152, 6, 'Log in', '2023-05-13 10:15:59'),
(153, 6, 'Log in', '2023-05-16 10:42:17'),
(154, 6, 'Log in', '2023-05-18 11:59:29'),
(155, 6, 'Log in', '2023-05-29 09:16:41'),
(156, 6, 'Log out', '2023-05-29 09:32:41'),
(157, 16, 'Log in', '2023-05-29 09:32:45'),
(158, 16, 'Delete Item: test', '2023-05-29 09:35:30'),
(159, 16, 'Delete Item: test', '2023-05-29 09:35:31'),
(160, 16, 'Delete Item: 5', '2023-05-29 09:35:32'),
(161, 16, 'Delete Item: sunsilk', '2023-05-29 09:35:32'),
(162, 16, 'Delete Item: max', '2023-05-29 09:35:32'),
(163, 16, 'Delete Item: quichaw', '2023-05-29 09:35:33'),
(164, 16, 'Delete Item: safeguard 10mg', '2023-05-29 09:35:34'),
(165, 16, 'Delete Item: milo', '2023-05-29 09:35:35'),
(166, 16, 'Deleted Category: adasd', '2023-05-29 09:40:34'),
(167, 16, 'Deleted Category: 123213', '2023-05-29 09:40:35'),
(168, 16, 'Deleted Category: qwe', '2023-05-29 09:40:35'),
(169, 16, 'Deleted Category: drinks', '2023-05-29 09:40:36'),
(170, 16, 'Deleted Category: shampoo', '2023-05-29 09:40:36'),
(171, 16, 'Stock In: 15 - ding dong', '2023-05-29 09:53:30'),
(172, 16, 'Stock In: 5 - ding dong', '2023-05-29 09:53:39'),
(173, 16, 'Stock In: 10 - ding dong', '2023-05-29 09:53:45'),
(174, 16, 'Stock In: 40 - ding dong', '2023-05-29 10:00:57'),
(175, 16, 'Stock In: 30 - huggies dry M', '2023-05-29 10:01:07'),
(176, 16, 'Change Item Name: ding dong to Blouse ', '2023-05-29 10:08:07'),
(177, 16, 'Change ding dong Description: ding dong to shs blouse', '2023-05-29 10:08:07'),
(178, 16, 'Change ding dong Price: 2 to 250', '2023-05-29 10:08:07'),
(179, 16, 'Change Item Name: huggies dry M to POLO', '2023-05-29 10:08:29'),
(180, 16, 'Change huggies dry M Description: Diaper medium to tourism polo', '2023-05-29 10:08:29'),
(181, 16, 'Change huggies dry M Category: Medium (M) to Double Extra Large (XXL)', '2023-05-29 10:08:29'),
(182, 16, 'Change Item Name: wings to T-shirt', '2023-05-29 10:08:44'),
(183, 16, 'Change wings Description: powder soap to pe/nstp t-shirt', '2023-05-29 10:08:44'),
(184, 16, 'Change POLO Price: 15 to 150', '2023-05-29 10:09:03'),
(185, 16, 'Change T-shirt Price: 55 to 550', '2023-05-29 10:09:06'),
(186, 16, 'Log in', '2023-06-08 07:43:24'),
(187, 16, 'Log out', '2023-06-08 08:18:24'),
(188, 16, 'Log in', '2023-06-08 14:46:53'),
(189, 16, 'Log out', '2023-06-08 14:48:15'),
(190, 16, 'Log in', '2024-12-03 13:40:25'),
(191, 18, 'Log in', '2024-12-03 14:00:59'),
(192, 16, 'Log out', '2024-12-03 14:04:54'),
(193, 16, 'Log in', '2024-12-03 14:33:19'),
(194, 16, 'Log in', '2024-12-05 11:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `barcode` varchar(55) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `barcode`, `name`, `category_id`, `description`, `supplier_id`, `status`, `created_at`) VALUES
(31, '5be4189', '3 in 1 cofee', 33, 'test', 8, 0, '2018-11-08 00:51:40'),
(32, '5be418d', 'T-shirt', 33, 'pe/nstp t-shirt', NULL, 1, '2018-11-08 01:15:48'),
(33, '5be4181', 'milo', 33, '7 mg\r\n', 8, 0, '2018-11-08 11:03:13'),
(34, '5be418e', 'test', 33, 'test', 8, 0, '2018-11-08 11:07:21'),
(35, '5be419b', 'wafer', 33, 'test', 8, 0, '2018-11-08 11:11:01'),
(36, '5be4e94', 'POLO', 38, 'tourism polo', 8, 1, '2018-11-09 01:56:54'),
(37, '5be4eaa', 'Blouse ', 32, 'shs blouse', 8, 1, '2018-11-09 02:02:49'),
(38, '5be4eb8', 'safeguard 10mg', 35, 'safeguard bar soap 10mg', 8, 0, '2018-11-09 02:06:15'),
(39, '5be6b0c', 'test', 33, 'test', 0, 0, '2018-11-10 10:20:03'),
(40, '5be6b14', 'test', 33, '5', 0, 0, '2018-11-10 10:21:57'),
(41, '5bf515d', 'test', 33, 'test', 8, 0, '2018-11-21 08:22:48'),
(44, '5bf5169', '5', 33, '5', 8, 0, '2018-11-21 08:26:11'),
(45, '5bf7b9f', 'test', 33, '5', NULL, 0, '2018-11-23 08:27:51'),
(46, '5bf7beb', 'test', 33, 'test', NULL, 0, '2018-11-23 08:48:53'),
(47, '5bf7c4d', 'quichaw', 32, 'hot and spicy', 8, 0, '2018-11-23 09:14:30'),
(48, '5bf7c55', 'max', 37, 'max candy yellow', 8, 0, '2018-11-23 09:16:25'),
(49, '5bf7c5f', 'sunsilk', 38, 'sunsilk 7mg', 8, 0, '2018-11-23 09:19:05'),
(50, '5bf7c77', 'coke 8oz', 39, 'coke 8oz', 8, 0, '2018-11-23 09:25:26'),
(51, '5bf7c8f', 'fita', 40, 'fita bravo', 8, 0, '2018-11-23 09:31:52'),
(52, '5bf91e7', '5', 32, '5', 8, 0, '2018-11-24 09:48:56'),
(53, '5bf91f1', 'test', 32, 't', 8, 0, '2018-11-24 09:51:25'),
(56, '5bfb319', 'test', 32, '5', 8, 0, '2018-11-25 23:34:58'),
(57, '5bfb31a', 'test', 33, '5', 8, 0, '2018-11-25 23:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `ordering_level`
--

CREATE TABLE `ordering_level` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordering_level`
--

INSERT INTO `ordering_level` (`id`, `quantity`, `item_id`) VALUES
(12, 100, 31),
(13, 1, 32),
(14, 15, 33),
(15, 0, 34),
(16, 0, 35),
(17, 53, 36),
(18, 48, 37),
(19, 120, 38),
(20, 55, 39),
(21, 200, 40),
(22, 15, 44),
(23, 0, 45),
(24, 0, 46),
(25, 30, 47),
(26, -5, 48),
(27, 50, 49),
(28, 50, 50),
(29, 40, 51),
(30, 4, 52),
(31, 0, 53),
(32, 0, 56),
(33, 0, 57);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `item_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `price`, `item_id`, `date_time`, `status`) VALUES
(36, 7, 31, '2018-11-08 00:51:40', 1),
(37, 550, 32, '2018-11-08 01:15:48', 1),
(38, 7, 33, '2018-11-08 11:03:13', 1),
(39, 5, 34, '2018-11-08 11:07:21', 0),
(40, 1, 35, '2018-11-08 11:11:01', 0),
(41, 150, 36, '2018-11-09 01:56:54', 1),
(42, 250, 37, '2018-11-09 02:02:49', 1),
(43, 55, 38, '2018-11-09 02:06:15', 1),
(44, 5.5, 39, '2018-11-10 10:20:04', 1),
(45, 5, 40, '2018-11-10 10:21:57', 0),
(46, 5, 44, '2018-11-21 08:26:11', 0),
(47, 5, 45, '2018-11-23 08:27:51', 1),
(48, 5, 46, '2018-11-23 08:48:53', 0),
(49, 8, 47, '2018-11-23 09:14:30', 0),
(50, 1, 48, '2018-11-23 09:16:26', 1),
(51, 7, 49, '2018-11-23 09:19:05', 1),
(52, 12, 50, '2018-11-23 09:25:26', 0),
(53, 7, 51, '2018-11-23 09:31:52', 1),
(54, 5, 52, '2018-11-24 09:48:56', 0),
(55, 5, 53, '2018-11-24 09:51:25', 0),
(56, 5, 56, '2018-11-25 23:34:58', 0),
(57, 5, 57, '2018-11-25 23:35:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `remarks` varchar(55) NOT NULL,
  `payment_status` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date_time`, `customer_id`, `remarks`, `payment_status`) VALUES
(80, '2018-11-11 03:17:39', 0, '', ''),
(81, '2018-11-11 03:18:17', 0, '', ''),
(82, '2018-11-11 03:20:14', 0, '', ''),
(83, '2018-11-11 04:20:48', 0, '', ''),
(84, '2018-11-11 04:21:30', 0, '', ''),
(85, '2018-11-11 04:22:25', 0, '', ''),
(86, '2018-11-11 04:51:48', 0, '', ''),
(87, '2018-11-18 08:30:13', 0, '', ''),
(88, '2018-11-18 08:39:14', 0, '', ''),
(89, '2018-11-20 09:32:24', 0, '', ''),
(90, '2018-11-20 09:33:33', 0, '', ''),
(91, '2018-11-20 09:39:43', 0, '', ''),
(92, '2018-11-23 04:41:44', 0, '', ''),
(93, '2018-11-23 05:12:38', 0, '', ''),
(94, '2018-11-23 05:16:01', 0, '', ''),
(95, '2018-11-23 05:36:59', 0, '', ''),
(96, '2018-11-23 05:38:31', 0, '', ''),
(97, '2018-11-23 08:56:12', 0, '', ''),
(98, '2018-11-23 09:20:58', 0, '', ''),
(99, '2018-11-23 09:26:30', 0, '', ''),
(100, '2018-11-23 09:32:52', 0, '', ''),
(101, '2018-11-23 23:57:49', 0, '', ''),
(102, '2018-11-24 01:01:04', 0, '', ''),
(103, '2018-11-24 09:52:08', 0, '', ''),
(104, '2018-11-24 09:53:12', 0, '', ''),
(105, '2018-11-24 09:56:20', 0, '', ''),
(106, '2018-11-24 09:56:52', 0, '', ''),
(107, '2018-11-24 09:57:34', 0, '', ''),
(108, '2018-11-25 05:02:44', 0, '', ''),
(109, '2018-11-26 01:36:05', 0, '', ''),
(110, '2018-11-26 01:38:19', 0, '', ''),
(111, '2023-02-19 04:43:47', 0, '', ''),
(112, '2023-02-28 13:44:40', 2, 'test remarks', 'pending'),
(113, '2023-02-28 14:19:43', 1, 'test', 'paid'),
(114, '2023-05-16 10:47:50', 1, '', 'paid'),
(115, '2023-05-29 09:54:37', 1, '', 'paid'),
(116, '2023-06-08 07:51:41', 0, '', 'pending'),
(117, '2023-06-08 08:12:48', 4, '', 'pending'),
(118, '2023-06-08 08:14:58', 0, '', 'pending'),
(119, '2023-06-08 08:15:26', 4, '', 'pending'),
(120, '2023-06-08 14:48:03', 4, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sales_description`
--

CREATE TABLE `sales_description` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_description`
--

INSERT INTO `sales_description` (`id`, `sales_id`, `item_id`, `quantity`) VALUES
(36, 80, 32, 2),
(37, 80, 33, 5),
(38, 80, 36, 5),
(39, 81, 36, 5),
(40, 81, 38, 5),
(41, 82, 38, 5),
(42, 83, 32, 5),
(43, 84, 38, 5),
(44, 85, 32, 3),
(45, 86, 32, 5),
(46, 86, 37, 100),
(47, 87, 32, 5),
(48, 87, 38, 5),
(49, 88, 32, 15),
(50, 88, 38, 5),
(51, 89, 33, 5),
(52, 89, 36, 5),
(53, 89, 32, 5),
(54, 90, 37, 5),
(55, 90, 38, 5),
(56, 91, 32, 5),
(57, 91, 38, 5),
(58, 91, 33, 10),
(59, 92, 33, 5),
(60, 93, 33, 5),
(61, 94, 32, 45),
(62, 95, 37, 5),
(63, 96, 36, 5),
(64, 97, 33, 5),
(65, 98, 32, 2),
(66, 98, 36, 5),
(67, 98, 48, 10),
(68, 98, 49, 25),
(69, 98, 37, 5),
(70, 98, 47, 15),
(71, 99, 50, 5),
(72, 99, 32, 2),
(73, 99, 48, 5),
(74, 99, 49, 10),
(75, 99, 33, 10),
(76, 100, 51, 10),
(77, 100, 36, 10),
(78, 100, 47, 30),
(79, 100, 33, 40),
(80, 101, 36, 5),
(81, 102, 36, 5),
(82, 102, 49, 10),
(83, 102, 32, 2),
(84, 103, 37, 5),
(85, 103, 49, 5),
(86, 104, 36, 25),
(87, 105, 38, 5),
(88, 106, 37, 5),
(89, 107, 37, 5),
(90, 108, 37, 5),
(91, 109, 37, 5),
(92, 110, 32, 100),
(93, 111, 52, 1),
(94, 112, 37, 25),
(95, 113, 48, 30),
(96, 114, 48, 5),
(97, 114, 48, 5),
(98, 115, 37, 5),
(99, 116, 32, 1),
(100, 117, 37, 1),
(101, 118, 32, 1),
(102, 119, 37, 1),
(103, 120, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `address`, `contact`) VALUES
(8, 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `account_type`, `date_created`, `created_by`) VALUES
(16, 'admin', '$2y$10$ST0Bf.oub4i4OrzX7ESyiusQ027Fn2BJj1BNmRqqHKPuV6fwrrxEG', 'Admin', '2023-05-29 11:17:40 am', 'admin'),
(17, 'aironic', '$2y$10$sYQPT1etQ.Xa4hOrcfJ6Mu11FXtfifD7WYHR6OqUwYZlHNoFwgb/O', 'Cashier', '2023-05-29 11:18:08 am', 'admin'),
(18, 'chris', '$2y$10$Vt/WH9tkW6VJ9XG9mWLQ3uRk4p6xALGcE1FU0xSjU.ibKpWbQQzJK', 'Cashier', '2024-12-03 03:00:41 pm', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `delivery_details`
--
ALTER TABLE `delivery_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_id` (`delivery_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barcode_2` (`barcode`),
  ADD KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `ordering_level`
--
ALTER TABLE `ordering_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_description`
--
ALTER TABLE `sales_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `delivery_details`
--
ALTER TABLE `delivery_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ordering_level`
--
ALTER TABLE `ordering_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `sales_description`
--
ALTER TABLE `sales_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `delivery_details`
--
ALTER TABLE `delivery_details`
  ADD CONSTRAINT `delivery_details_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `ordering_level`
--
ALTER TABLE `ordering_level`
  ADD CONSTRAINT `ordering_level_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
