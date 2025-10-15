-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 03:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cake_details', 7, 'add_cake_details'),
(26, 'Can change cake_details', 7, 'change_cake_details'),
(27, 'Can delete cake_details', 7, 'delete_cake_details'),
(28, 'Can view cake_details', 7, 'view_cake_details'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add delivery_details', 9, 'add_delivery_details'),
(34, 'Can change delivery_details', 9, 'change_delivery_details'),
(35, 'Can delete delivery_details', 9, 'delete_delivery_details'),
(36, 'Can view delivery_details', 9, 'view_delivery_details'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add order_details', 11, 'add_order_details'),
(42, 'Can change order_details', 11, 'change_order_details'),
(43, 'Can delete order_details', 11, 'delete_order_details'),
(44, 'Can view order_details', 11, 'view_order_details'),
(45, 'Can add owner_details', 12, 'add_owner_details'),
(46, 'Can change owner_details', 12, 'change_owner_details'),
(47, 'Can delete owner_details', 12, 'delete_owner_details'),
(48, 'Can view owner_details', 12, 'view_owner_details'),
(49, 'Can add userreg', 13, 'add_userreg'),
(50, 'Can change userreg', 13, 'change_userreg'),
(51, 'Can delete userreg', 13, 'delete_userreg'),
(52, 'Can view userreg', 13, 'view_userreg'),
(53, 'Can add payment', 14, 'add_payment'),
(54, 'Can change payment', 14, 'change_payment'),
(55, 'Can delete payment', 14, 'delete_payment'),
(56, 'Can view payment', 14, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cake_cake_details`
--

CREATE TABLE `cake_cake_details` (
  `id` bigint(20) NOT NULL,
  `cakeid` varchar(20) NOT NULL,
  `cake_type` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cost_pe_kg` varchar(80) NOT NULL,
  `duration` varchar(40) NOT NULL,
  `flavors` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_cake_details`
--

INSERT INTO `cake_cake_details` (`id`, `cakeid`, `cake_type`, `image`, `cost_pe_kg`, `duration`, `flavors`) VALUES
(1, '1', 'regular', 'documents/regular_2_0H1oqRz.jpg', 'Rs 350', '30 mins', 'Red velvet'),
(2, '02', 'regular', 'documents/regular_3_wYCu1Lc.jpg', 'Rs 300', '30 mins', 'Chocolate Cake'),
(3, '03', 'regular', 'documents/regular_4_fj8Uczn.jpg', 'Rs 350 ', '30 mins', 'Rasana Cake'),
(4, '04', 'regular', 'documents/regular_11.jpg', 'Rs 150', '15 mins', 'Strawberry Cake'),
(5, '05', 'regular', 'documents/regular_9_5i5L33H.jpg', 'Rs 350', '30 mins', 'Butter Cake'),
(7, '01', 'trending', 'documents/top_10_S1DgzvV.jpg', 'Rs 400', '40 mins', 'Creamy Cake'),
(8, '02', 'trending', 'documents/top_4_6vyX4Ej.jpg', 'Rs 450', '40 mins', 'Biscuit Cake'),
(9, '03', 'trending', 'documents/top_7_rUe5AHj.jpg', 'Rs 500', '45 mins', 'Blue Berry '),
(10, '04', 'trending', 'documents/top_9_MGHYDqq.jpg', 'Rs 495', '40 mins', 'White Creamy'),
(11, '05', 'trending', 'documents/top_5_lCFYYwO.jpg', 'Rs 495', '40 mins', 'Blue Grape'),
(12, '01', 'customized', 'documents/cus_13_s2EOyej.jpg', 'Rs 850', '60 mins', 'Blue Berry'),
(13, '02', 'customized', 'documents/cus_7_YLVebwL.jpg', 'Rs 1000', '2 hrs', 'Photo Customized\r\n'),
(14, '03', 'customized', 'documents/cus_11.jpg', 'Rs 750', '2 hrs', 'Customized cake'),
(15, '04', 'customized', 'documents/cust_11_xecRrLb.png', 'Rs 950', '50 mins', 'Cartoon Cake'),
(16, '05', 'customized', 'documents/cus_12.jpg', 'Rs 750', '2 hrs', 'Strawberry cake'),
(17, '01', 'kids', 'documents/kids_1_P8dDMcK.jpg', 'Rs 1000 ', '1 hr', 'Creamy white'),
(18, '02', 'kids', 'documents/kids_2_GWNizyl.jpg', 'Rs 1500', '24 hrs', 'Customized flavour'),
(19, '06', 'customized', 'documents/kids_6.jpg', 'Rs 2000', '24 hrs', 'Customized Cake'),
(20, '03', 'kids', 'documents/kids_7.jpg', 'Rs 1000', '2 hrs', 'Panda Cake'),
(21, '04', 'kids', 'documents/kids_11.jpg', 'Rs 1199', '24 hrs', 'Vanilla Cake'),
(22, '05', 'kids', 'documents/pinkdoll.jpg', 'Rs 1999', '24 hrs', 'Strawberry Favour'),
(23, '01', 'festival', 'documents/fest_1_9puHY9Q.png', 'Rs 1000 ', '24 hrs', 'Customized Cake'),
(24, '02', 'festival', 'documents/fest_3_DYckyuP.jpg', 'Rs 1000', '24 hrs', 'Customized Cake'),
(25, '3', 'festival', 'documents/fest_5_umW19m4.jpg', 'Rs 1000', '2 hrs', 'Special Cake'),
(26, '04 ', 'festival', 'documents/fest_6.jpg', 'Rs 1500', '2 hrs', 'Special Cake'),
(27, '05', 'festival', 'documents/fest_9.jpg', 'Rs 1499', '3 hrs', 'Christmas Cake (Vanilla)'),
(28, '01', 'wedding', 'documents/wed_5.jpg', 'Rs 2500', '3 hrs', 'Red Velvet'),
(29, '02', 'wedding', 'documents/wed_2_JnxZNql.jpg', 'Rs 3000', '5 hrs', 'Creamy cake'),
(30, '03', 'wedding', 'documents/wed10_Abvbn8Y.jpg', 'Rs 5000', '6 hrs', 'Red Velvet'),
(31, '04', 'wedding', 'documents/wed_4_JJSOF95.jpg', 'Rs 1500', '5 hrs', 'Vanilla cake'),
(32, '05', 'wedding', 'documents/wed_7.jpg', 'Rs 1499', '3 hrs', 'Customized Flavor'),
(33, '01', 'icecream', 'documents/ice_2_jJF7GKF.jpg', 'Rs 999', '3 hrs', 'Vanilla (Customized Flavor)'),
(34, '02', 'icecream', 'documents/ice_5.jpg', 'Rs 1499', '3 hrs', 'Vanilla Creamy'),
(35, '03 ', 'icecream', 'documents/ice_7.jpg', 'Rs 1249', '5 hrs', 'Ice Cake (Customized Flavor)'),
(36, '04', 'icecream', 'documents/ice_8.jpg', 'Rs 1500', '4 hrs', 'Ice Cake'),
(37, '05', 'icecream', 'documents/ice_4.jpg', 'Rs 1000', '2 hrs', 'Customized Ice Flavor');

-- --------------------------------------------------------

--
-- Table structure for table `cake_customer`
--

CREATE TABLE `cake_customer` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `mobile_no` varchar(40) NOT NULL,
  `email_id` varchar(80) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cake_delivery_details`
--

CREATE TABLE `cake_delivery_details` (
  `id` bigint(20) NOT NULL,
  `orderid` varchar(20) NOT NULL,
  `customerid` varchar(50) NOT NULL,
  `charges` varchar(40) NOT NULL,
  `date` varchar(80) NOT NULL,
  `time` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_delivery_details`
--

INSERT INTO `cake_delivery_details` (`id`, `orderid`, `customerid`, `charges`, `date`, `time`, `status`) VALUES
(1, '30', 'madhu@gmail.com', '1529', '2025-04-21', '4 pm', 'Received '),
(10, '25', 'rashmim@gmail.com', 'Rs 300', '2025-04-21', '5pm', 'Received '),
(11, '27', 'anya@gmail.com', 'Rs 380', '2025-04-21', '4:30pm', 'Received '),
(12, '28', 'anya@gmail.com', 'Rs 1030', '2025-04-21', '3:30pm', 'Received '),
(13, '1', 'channu@gmail.com', 'Rs 330', '2025-04-21', '4:10pm', 'Received '),
(14, '31', 'annu@gmail.com', 'Rs 1030', '2025-04-21', '1 :10pm', 'Received ');

-- --------------------------------------------------------

--
-- Table structure for table `cake_login`
--

CREATE TABLE `cake_login` (
  `id` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_login`
--

INSERT INTO `cake_login` (`id`, `username`, `password`, `type`) VALUES
(1, 'channu@gmail.com', '12345', 'user'),
(2, 'owner', '123', 'owner'),
(3, 'user', '123', 'user'),
(4, 'channabasavamyageri@gmail.com', '123', 'user'),
(5, 'rashmim@gmail.com', '123', 'user'),
(6, 'anya@gmail.com', '1233', 'user'),
(7, 'madhu@gmail.com', '1234', 'user'),
(8, 'annu@gmail.com', '12345', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `cake_order_details`
--

CREATE TABLE `cake_order_details` (
  `id` bigint(20) NOT NULL,
  `orderid` varchar(20) NOT NULL,
  `customerid` varchar(50) NOT NULL,
  `cakeid` varchar(40) NOT NULL,
  `booking_date` varchar(80) NOT NULL,
  `total_weight` varchar(40) NOT NULL,
  `cost` varchar(40) NOT NULL,
  `Issue_date` varchar(40) NOT NULL,
  `delivery_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_order_details`
--

INSERT INTO `cake_order_details` (`id`, `orderid`, `customerid`, `cakeid`, `booking_date`, `total_weight`, `cost`, `Issue_date`, `delivery_type`) VALUES
(1, '1', 'channu@gmail.com', '02', '2025-04-20', '1', 'Rs 300', '2025-04-20', '30'),
(94, '25', 'rashmim@gmail.com', '02', '2025-04-21', '1', 'Rs 300', '2025-04-21', '30'),
(96, '27', 'anya@gmail.com', '03', '2025-04-21', '1', 'Rs 1000', '2025-04-21', '30'),
(103, '28', 'anya@gmail.com', '03', '2025-04-21', '1', 'Rs 350 ', '2025-04-21', '30'),
(104, '29', 'anya@gmail.com', '02', '2025-04-21', '1', 'Rs 1000', '2025-04-21', '30'),
(105, '30', 'madhu@gmail.com', '02', '2025-04-21', '1', 'Rs 1499', '2025-04-21', '30');

-- --------------------------------------------------------

--
-- Table structure for table `cake_owner_details`
--

CREATE TABLE `cake_owner_details` (
  `id` bigint(20) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile_no` varchar(40) NOT NULL,
  `email_id` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cake_userreg`
--

CREATE TABLE `cake_userreg` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `mobile_no` varchar(80) NOT NULL,
  `city` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_userreg`
--

INSERT INTO `cake_userreg` (`id`, `name`, `email`, `password`, `mobile_no`, `city`) VALUES
(1, 'Channu b m', 'channu@gmail.com', '12345', '09820828019', 'Hubli'),
(2, 'Channu b m', 'channabasavamyageri@gmail.com', '123', '08147950347', 'Hubli'),
(3, 'Rashmi m', 'rashmim@gmail.com', '123', '0814795099', 'Hubli'),
(4, 'Anya', 'anya@gmail.com', '1233', '814795011', 'Hubli'),
(5, 'Madhu', 'madhu@gmail.com', '1234', '8680777908', 'Hubli'),
(6, 'Annu', 'annu@gmail.com', '12345', '7891019991', 'Hubli');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'cake', 'cake_details'),
(8, 'cake', 'customer'),
(9, 'cake', 'delivery_details'),
(10, 'cake', 'login'),
(11, 'cake', 'order_details'),
(12, 'cake', 'owner_details'),
(14, 'cake', 'payment'),
(13, 'cake', 'userreg'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-19 16:03:15.789698'),
(2, 'auth', '0001_initial', '2025-04-19 16:03:16.578471'),
(3, 'admin', '0001_initial', '2025-04-19 16:03:16.756695'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-19 16:03:16.773268'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-19 16:03:16.785256'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-19 16:03:16.872597'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-19 16:03:16.943962'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-19 16:03:16.964294'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-19 16:03:16.975675'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-19 16:03:17.056980'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-19 16:03:17.064584'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-19 16:03:17.076221'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-19 16:03:17.095389'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-19 16:03:17.111889'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-19 16:03:17.133821'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-19 16:03:17.145804'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-19 16:03:17.163870'),
(18, 'cake', '0001_initial', '2025-04-19 16:03:17.263539'),
(19, 'cake', '0002_payment_cake_details_category', '2025-04-19 16:03:17.310693'),
(20, 'cake', '0003_remove_cake_details_category', '2025-04-19 16:03:17.328429'),
(21, 'sessions', '0001_initial', '2025-04-19 16:03:17.390828');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('07aykk4r9j3erapyoqpepuyje623yzta', 'eyJ1c2VybmFtZSI6ImNoYW5uYWJhc2F2YW15YWdlcmlAZ21haWwuY29tIn0:1u6d32:z4YNICiw2q4ZjzoOYMlh8y0JT-8EylXZLfji7qgth14', '2025-05-04 22:22:00.418722'),
('cx8ry6u6zchirkzbvfj3alk4zfwkjpfz', 'eyJ1c2VybmFtZSI6ImNoYW5uYWJhc2F2YW15YWdlcmlAZ21haWwuY29tIn0:1u6cWz:VUXCYkz2bQpxzOd6f7VeNkiN_Qtpepb8s0z8pJxFX6Y', '2025-05-04 21:48:53.791537'),
('mxg35kon3folenie71mkoq894b9anvo6', 'eyJ1c2VybmFtZSI6ImNoYW5uYWJhc2F2YW15YWdlcmlAZ21haWwuY29tIn0:1u6cYb:cmpusjPqVWUROpwObog2_tHw_jc79YBonpPjOD8ohFg', '2025-05-04 21:50:33.229030'),
('p56jwa8nbnuqhk2q5lvnevenepizpmuq', 'eyJ1c2VybmFtZSI6ImNoYW5udUBnbWFpbC5jb20ifQ:1u6Nca:fSNmmCqHyyupGyzKHC-RA5-YOgaCboMhRsKDTE9v9E4', '2025-05-04 05:53:40.748807'),
('pr5ikwp7g9dka6g2nrcw9lizpr17lbbp', 'eyJ1c2VybmFtZSI6ImFubnVAZ21haWwuY29tIn0:1u6pCF:1lOhjyGbh1xRrUyqJY8-dzt3QpCjkJRypoefuAet34w', '2025-05-05 11:20:19.473050'),
('zxoowqj7npe8mcc8axdf3e82aia8q447', 'eyJ1c2VybmFtZSI6InVzZXIifQ:1u6eYq:ca63YdlnhKpBp5451bexS3eThUWtvjvQctAyTDhbRQM', '2025-05-04 23:58:56.636279');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cake_cake_details`
--
ALTER TABLE `cake_cake_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake_customer`
--
ALTER TABLE `cake_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake_delivery_details`
--
ALTER TABLE `cake_delivery_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake_login`
--
ALTER TABLE `cake_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake_order_details`
--
ALTER TABLE `cake_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake_owner_details`
--
ALTER TABLE `cake_owner_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake_userreg`
--
ALTER TABLE `cake_userreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cake_cake_details`
--
ALTER TABLE `cake_cake_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cake_customer`
--
ALTER TABLE `cake_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cake_delivery_details`
--
ALTER TABLE `cake_delivery_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cake_login`
--
ALTER TABLE `cake_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cake_order_details`
--
ALTER TABLE `cake_order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `cake_owner_details`
--
ALTER TABLE `cake_owner_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cake_userreg`
--
ALTER TABLE `cake_userreg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
