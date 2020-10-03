-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 06:10 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `access_level` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`admin_id`, `first_name`, `last_name`, `admin_email`, `admin_password`, `shift`, `access_level`) VALUES
(25, 'Zain', 'Habib', 'zain', '$2y$12$wLn6VqSiz74Rtu3nPxe3N.kWCxSwSFhZJ7uPIaMqWdVSBQvQbk5r2', 'Morning', 1),
(27, 'sadaf2', 'zia', 'sadaf', '$2y$10$93RGZgljJMWkIispsgVwo.3UW27cZFSu1RQn2F1QBhZuFEgBZ193u', 'Morning', 1),
(28, 'omer', 'farooq', 'omer', '$2y$10$XkHlTuf3wgCr/BQC/Iob2.IOYCEPkE3pbSR7kv5KjTuQvNLD70.ye', 'Morning', 1),
(29, 'Nazia', 'Kiran', 'nazia', '$2y$10$RGOXP2JCy/Swbcm39Vak8.gFq.g09NIVijLGwgcLz7vfdgV/ioqiG', 'Evening', 1),
(31, 'Zakir', 'Hussain', 'zakir', '$2y$10$sxLP3zomQx/V7wS/9b7Sk.mYUXm6MrE4yXXM4shiaYiLmha5AbKQ.', 'Morning', 1),
(34, 'Mubashir', 'Javed', 'mubashir', '$2y$10$7N/Pft12D2KX6lj2RbSDEu6Im0v68sbBxeB0t.vh1avkBqSzFbXZ.', 'Evening', 1),
(35, 'Arslan', 'Mohammad', 'arslan', '$2b$10$K06XwUGI82KVbBHdj8GgF.rDw0neNWVDPcUObMWK4fwJHLzjG/IWO', 'Morning', 1),
(36, 'hanzala', 'afzal', 'hanzala', '$2y$10$YdmUotvnwrA0cEQ9AH235Oia/fsX7t1LV1mqIMXc9Ux8.i18YEHnq', 'evening', 1),
(39, 'bajwa', 'bawjwa', 'b@gm.com', '$2y$10$xTNbk4DQ.pqnLq4KvlTyWuzqlGeRI4iqJOT4bY56n7Up3XHwh6/pG', 'Morning', 2),
(41, 'demo', 'demo', 'demo', '$2y$10$7p3EYyXD/bTqiO6iZi5ok.FDT77ctgpJx3F4mKWYGTwiAcL/P/37q', 'Morning', 1),
(42, 'demo', 'demo', 'demo1', '$2y$10$VEpqsl/bVn.u.iviSdFZ7.ELGCuuvcV7CAVhA8tQmLIuBum3Pv92e', 'Morning', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `shift` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `admin_email`, `admin_password`, `shift`) VALUES
(1, 'Omer', 'Farooq', 'omer', '$2y$10$zCdb6iIHx2uRWJOcToYSZ.6dXvz06DNNq/vZKJ6j5hMPAyXMAE46W', 'Morning'),
(3, 'Zain', 'Habib', 'zain', '$2y$10$VV4sWAgqpS4putVP.aku1.WjtF4tkAvfy3ji.g4emLyL1ebpmPYTW', 'Morning');

-- --------------------------------------------------------

--
-- Table structure for table `bar`
--

CREATE TABLE `bar` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bar`
--

INSERT INTO `bar` (`id`, `name`, `price`) VALUES
(1, 'Orange Juice (s)', '200'),
(4, 'Grape Fruit Juice Large', '250'),
(5, 'Knee Support', '200'),
(6, 'Aquafina  Water Small', '40'),
(7, 'Aquafina  Water Large', '70'),
(8, 'Milk Pack Small', '50'),
(9, 'Green Tea', '50'),
(10, 'Tea', '50'),
(11, 'Tea', '60'),
(12, 'Banana', '20'),
(13, 'Nestle Juice', '50'),
(14, 'Mix Fresh Juice', '250'),
(15, 'Hi jean Tissue TOWEL', '55'),
(16, 'Mineral Water Small', '40'),
(17, 'Carrot Juice Large', '250'),
(18, 'Apple Juice Large', '250'),
(19, 'Grape Fruit + Apple Juice Large', '250'),
(20, 'Grape Fruit Juice Small', '200'),
(21, 'Supplement With  Water', '250'),
(22, 'Supplement With  Milk', '250'),
(23, 'Nestle Juice', '50'),
(24, 'Banana', '25'),
(25, 'Black Coffee', '60'),
(26, 'Milk Coffee', '100'),
(27, 'Carrot + Grape Fruit Juice  Large', '250'),
(28, 'Banana Shake', '150'),
(29, 'Supplement Scoop', '200'),
(30, 'Banana + Apple Shake', '150'),
(31, 'Apple  Fresh Juice Small', '200'),
(32, 'Wrist Band', '150'),
(33, 'Orange + GrapeJuice (L)', '250'),
(34, 'Grape Fruit Piece', '40'),
(35, 'Elbow Support', '180'),
(36, 'Supplement + Juice ', '300'),
(37, 'Apple Shake', '150'),
(38, 'Milk Pack Small', '40'),
(39, 'Aquafina  Water 19 Liters', '170'),
(40, 'Tissue Towel', '55'),
(41, 'Towel Large', '350'),
(42, 'Lemo Pani', '200'),
(43, 'Lemo Pani', '100'),
(44, 'Grape Fruit Piece', '50'),
(45, 'Milk Pack Small', '50'),
(46, 'Large Towel', '600'),
(47, 'Banana Piece ', '20'),
(48, 'Shower ', '200'),
(49, 'Mango', '65'),
(50, 'Mango Shake', '150'),
(51, 'Aquafina Bottle Large', '170'),
(52, 'Rani Juice', '70'),
(53, 'Milk Pack Small', '50'),
(54, 'Medium Towel', '450'),
(55, 'Banana', '25'),
(56, 'Hi Jean Tissue Towels ', '64'),
(57, 'Hi Jean Tissue Towels ', '63'),
(58, 'test ', '1'),
(59, 'Apple Piece ', '30'),
(60, 'Grape Fruit Piece', '41'),
(61, 'Tea', '50'),
(62, 'Grape Fruit Piece', '50'),
(63, 'Supplement + Banana', '300'),
(64, 'Protein Shake', '250'),
(65, 'Carrot Juice ', '200'),
(67, 'carrot+Apple', '250'),
(68, 'supplement+Apple=Milk', '300'),
(69, 'Tissue Towel', '60'),
(70, 'Apple Juice Large', '250'),
(71, 'Large Towel', '600'),
(72, 'Grape Fruite piece', '40'),
(73, 'Tissue Towal', '71.42'),
(74, 'Towel Small', '350'),
(75, 'Green Tea', '60'),
(76, 'Rani Juice ', '40'),
(77, 'Mat Large', '1450'),
(78, 'Aquafina  Water 19 Liters', '180'),
(79, 'Banana Piece', '30'),
(80, 'Milk Pak', '30'),
(81, 'Ptotien Shake with 1 an half Supplement Scoop/W', '350'),
(82, 'Apple Juice Large', '300'),
(83, 'Banana', '10'),
(84, 'Bananas', '15'),
(85, 'Tissue Towel', '600'),
(86, 'Test juice', '9000');

-- --------------------------------------------------------

--
-- Table structure for table `bin`
--

CREATE TABLE `bin` (
  `id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `membership_no` varchar(11) DEFAULT NULL,
  `member_name` varchar(20) DEFAULT NULL,
  `member_type` varchar(10) DEFAULT NULL,
  `packages` varchar(50) DEFAULT NULL,
  `total_amount` varchar(15) DEFAULT NULL,
  `cashier` varchar(20) DEFAULT NULL,
  `fee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `balance` varchar(11) DEFAULT NULL,
  `payment_type` varchar(15) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount` varchar(15) DEFAULT NULL,
  `remarks` text NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bin`
--

INSERT INTO `bin` (`id`, `report_id`, `membership_no`, `member_name`, `member_type`, `packages`, `total_amount`, `cashier`, `fee_date`, `end_date`, `balance`, `payment_type`, `time_stamp`, `discount`, `remarks`, `type`) VALUES
(1, 3222, '1744', 'Arooj', 'Monthly', '  Aerobics/Yoga ', '4000', 'Omer', '2018-06-27', '0000-00-00', '0', 'Cash', '2018-06-27 07:21:06', '', '', ''),
(2, 5845, '1285', 'Habiba Chauhdry', 'Monthly', '1 Month + Registration   ', '2500', 'sadaf', '2018-09-27', '0000-00-00', '0', 'Cash', '2018-09-27 05:29:01', '', '', ''),
(3, 5905, '', 'Juice Bar', '', 'test , ', '1', 'Zain', '2018-09-28', '0000-00-00', '', 'Cash', '2018-09-28 11:05:09', '', '', ''),
(4, 7129, '', 'Zain Habib', 'Daily', '     Personal Training', '2000', 'sadaf', '2018-11-08', '0000-00-00', '0', 'Cash', '2018-11-08 06:53:53', '', 'This was only for test purpose by developer', ''),
(5, 7128, '', 'Zain Habib', 'Daily', '     Personal Training', '2000', 'sadaf', '2018-11-08', '0000-00-00', '0', 'Cash', '2018-11-08 06:54:10', '', 'This was only for test purpose by developer', ''),
(6, 10731, '2171', 'Ahsan Fraz', 'Monthly', 'Refunded on same day for policy reason	', '0', 'Nazia', '2019-03-27', '2019-04-26', '0', 'Cash', '2019-03-28 12:54:59', '', '', ''),
(7, 10730, '2170', 'Ammar Zaheer', 'Monthly', 'Refunded on same day for policy reason', '0', 'Nazia', '2019-03-27', '2019-04-26', '0', 'Cash', '2019-03-28 12:55:10', '', '', ''),
(8, 10729, '2169', 'Mudassar Rasheed', 'Monthly', 'Refunded on same day for policy reason', '0', 'Nazia', '2019-03-27', '2019-04-26', '0', 'Cash', '2019-03-28 12:55:19', '', '', ''),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-05 11:25:57', NULL, 'Member :Hamza,13491 Status was updated from Active to InActive By hanzala', 'Member'),
(10, 1, '1', 'Hanzala', 'Monthly', '6 Months Aerobatics/Yoga\nZumba\nPersonal Training\n', '70000', 'hanzala', '2019-08-21', '2020-02-17', '992', 'Cheque', '2019-08-21 11:52:26', '0', '', ''),
(11, 4, NULL, 'AHmed Raza', 'Daily', ' Suana Jacuzzi  Head & Shoulder Massage  Personal ', '7000', 'Zain', '2019-08-21', NULL, '424', NULL, '2019-08-21 12:34:17', NULL, 'testing by hanzala', ''),
(12, 2, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice s,Knee Support', '400', 'hanzala', NULL, NULL, '', 'Cash', '2019-08-22 03:10:59', NULL, 'hanzala test 2', '');

-- --------------------------------------------------------

--
-- Table structure for table `daily_members`
--

CREATE TABLE `daily_members` (
  `user_id` int(20) NOT NULL,
  `user_name` text DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_cellnumber` varchar(20) DEFAULT NULL,
  `user_nic` varchar(20) DEFAULT NULL,
  `balance_status` varchar(6) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_members`
--

INSERT INTO `daily_members` (`user_id`, `user_name`, `user_address`, `user_cellnumber`, `user_nic`, `balance_status`, `time_stamp`) VALUES
(17, 'Jamshed awan', 'Street#16,  H#9, Sector B, DHA', '03494514280', '612318371313', '208', '2019-08-21 09:52:56'),
(18, 'Ehtesham Arshi', 'PWD , Police Colony', '03215909253', '322032812378123', '4208', '2019-08-06 07:04:46'),
(19, 'Testing my app', 'POLICE COLONY ', '03494514280', '291873128937', '1320', '2019-08-08 08:04:30'),
(20, 'AHmed Raza', 'H#16 , Street 9, Sector A', '03494514280', '321021938213 ', NULL, '2019-08-21 08:04:38'),
(21, 'hanzala', 'dha 2', '03494514280', '322030286209', '7760', '2019-08-21 08:25:21'),
(22, 'Hamza Ali', 'haskdjadkj', '023198237', '09123809283', '120', '2019-08-22 09:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `remarks` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `operation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `type`, `remarks`, `time_stamp`, `operation`) VALUES
(1, 'Daily Visitor', 'New Daily Visitor : hanzala was added by hanzala', '2019-08-21 08:25:21', 'Insert'),
(2, 'Daily Package', 'Record of Daily package(Name: Gym) Deleted By Admin: hanzala', '2019-08-21 08:34:43', 'Delete'),
(3, 'Member', 'Member :hanzala,13490 Status was updated from Active to Dormant By hanzala', '2019-08-21 08:37:02', 'Update'),
(4, 'Member', 'Record of  Member (Name: hanzala, ID: ) Was Deleted by Admin: hanzala', '2019-08-21 09:49:41', 'Delete'),
(5, 'Daily Visitor', 'Record of Daily visitor (Name: Jamshed awan , ID : 17) was updated by Admin : hanzala', '2019-08-21 09:52:56', 'Update'),
(6, 'Member', 'Record of  Member (Name: hanzala, ID: 1) Was Deleted by Admin: hanzala', '2019-08-21 10:42:38', 'Delete'),
(7, 'Daily Package', ' Record of Daily Package(Name: Apple Juice) Updated by Admin: hanzala', '2019-08-22 03:57:43', 'Update'),
(8, 'Daily Package', ' Record of Daily Package(Name: Apple Juice) Updated by Admin: hanzala', '2019-08-22 03:58:24', 'Update'),
(9, 'Daily Package', ' Record of Daily Package(Name: Apple Juice) Updated by Admin: hanzala', '2019-08-22 03:59:09', 'Update'),
(10, 'Daily Package', ' Record of Daily Package(Name: Apple Juice) Updated by Admin: hanzala', '2019-08-22 03:59:13', 'Update'),
(11, 'Juice/Item', 'Item (Name: Apple + Beetroott) Deleted by Admin : hanzala', '2019-08-22 04:04:14', 'Delete'),
(12, 'Member', 'Member :Hanzala,1 Status was updated from Freeze to Active By hanzala', '2019-08-22 07:20:56', 'Update'),
(13, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:31', 'Update'),
(14, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:34', 'Update'),
(15, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:34', 'Update'),
(16, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:34', 'Update'),
(17, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:35', 'Update'),
(18, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:35', 'Update'),
(19, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:35', 'Update'),
(20, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:35', 'Update'),
(21, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:35', 'Update'),
(22, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:36', 'Update'),
(23, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:36', 'Update'),
(24, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:36', 'Update'),
(25, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:36', 'Update'),
(26, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:36', 'Update'),
(27, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:36', 'Update'),
(28, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:37', 'Update'),
(29, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:37', 'Update'),
(30, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:37', 'Update'),
(31, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:37', 'Update'),
(32, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:37', 'Update'),
(33, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: hanzala', '2019-08-22 07:23:37', 'Update'),
(34, 'Member', 'Member :Hanzala,1 Status was updated from Active to Unpaid By hanzala', '2019-08-22 07:45:38', 'Update'),
(35, 'Member', 'Member :Hanzala,1 Status was updated from Unpaid to Active By hanzala', '2019-08-22 07:56:28', 'Update'),
(36, 'Member', 'Member :Hanzala,1 Status was updated from Active to InActive By hanzala', '2019-08-22 07:57:37', 'Update'),
(37, 'Member', 'Member :Hanzala,1 Status was updated from InActive to Dormant By hanzala', '2019-08-22 08:01:59', 'Update'),
(38, 'Member', 'Member :Hanzala,1 Status was updated from Dormant to Freeze By hanzala', '2019-08-22 08:03:02', 'Update'),
(39, 'Member', 'New Member (No:23 Name: M. Ijaz) was added by Admin: hanzala', '2019-08-22 08:48:04', 'Insert'),
(40, 'Daily Visitor', 'New Daily Visitor : Hamza Ali was added by hanzala', '2019-08-22 09:35:55', 'Insert'),
(41, 'Monthly Package', 'Record of Monthly Package(Duration: 3Month/s) was Deleted by Admin: zain', '2020-05-13 10:30:21', 'Delete'),
(42, 'Admin', 'Record of Admin (Name: sadaf, ID: 27) updated by Admin: zain', '2020-05-13 10:32:03', 'Update'),
(43, 'Admin', 'Record of Admin (Name: sadaf, ID: 27) updated by Admin: zain', '2020-05-13 10:32:11', 'Update'),
(44, 'Admin', 'Record of Admin (Name: sadaf2, ID: 27) updated by Admin: zain', '2020-05-18 04:10:03', 'Update');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_no` int(11) DEFAULT NULL,
  `member_name` varchar(25) NOT NULL,
  `member_father_name` varchar(25) NOT NULL,
  `member_dob` varchar(20) NOT NULL,
  `member_nic` varchar(20) NOT NULL,
  `member_gender` varchar(10) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `member_bloodpressure` varchar(20) DEFAULT NULL,
  `member_heart_disease` varchar(20) DEFAULT NULL,
  `member_diabetes` varchar(20) DEFAULT NULL,
  `member_hepatitis` varchar(20) DEFAULT NULL,
  `member_asthma` varchar(15) DEFAULT NULL,
  `member_arthritis` varchar(20) DEFAULT NULL,
  `member_others` varchar(25) DEFAULT NULL,
  `member_resident` varchar(50) NOT NULL,
  `member_address` varchar(50) NOT NULL,
  `member_telephone` varchar(20) NOT NULL,
  `member_fax_no` varchar(20) DEFAULT NULL,
  `member_email` varchar(20) NOT NULL,
  `member_emergency_no` varchar(20) DEFAULT NULL,
  `member_aerobics` varchar(20) DEFAULT NULL,
  `member_gymnasium` varchar(20) DEFAULT NULL,
  `member_zumba` varchar(20) DEFAULT NULL,
  `member_personal_training` varchar(20) DEFAULT NULL,
  `member_gym_time` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `freeze_by` varchar(15) DEFAULT NULL,
  `freeze_date` date DEFAULT NULL,
  `activate_date` date DEFAULT NULL,
  `monthlyfee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fee_status` varchar(6) DEFAULT NULL,
  `balance_status` varchar(6) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateby` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_no`, `member_name`, `member_father_name`, `member_dob`, `member_nic`, `member_gender`, `image`, `member_bloodpressure`, `member_heart_disease`, `member_diabetes`, `member_hepatitis`, `member_asthma`, `member_arthritis`, `member_others`, `member_resident`, `member_address`, `member_telephone`, `member_fax_no`, `member_email`, `member_emergency_no`, `member_aerobics`, `member_gymnasium`, `member_zumba`, `member_personal_training`, `member_gym_time`, `status`, `freeze_by`, `freeze_date`, `activate_date`, `monthlyfee_date`, `end_date`, `fee_status`, `balance_status`, `time_stamp`, `updateby`) VALUES
(3, 1, 'Hanzala', 'Afzal', '18/11/1996', '3220302865209', 'Male', NULL, 'bloodpressure', 'heartdisease', 'diabetes', NULL, '', NULL, '', 'DHA 2', 'DHA 2', '03494514280', NULL, 'malik@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Freeze', 'Zain', '2019-08-22', NULL, '2019-08-21', '2020-02-17', 'Paid', NULL, '2019-08-22 08:03:02', NULL),
(4, 23, 'M. Ijaz', 'M. Ahmed', '13/03/1998', '3220302865', 'Male', NULL, 'bloodpressure', 'heartdisease', '', NULL, '', NULL, '', 'Police COlony , Rawalpindi', 'H#16, St#9, Ssector A', '03494514280', NULL, 'ijaz@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Evening', 'Dormant', NULL, NULL, NULL, '2019-08-23', '2019-09-22', 'Unpaid', NULL, '2020-05-31 16:00:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `duration` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `type`, `duration`) VALUES
(3, 'Full Body Massage', 6000, 'TM', '90'),
(9, '', 29800, 'Monthly', '6'),
(10, 'Swedish Massage', 4000, 'TM', ''),
(12, 'Head And Shoulde Massage 30 Minutes', 2000, 'TM', ''),
(13, 'Ventosa Cuppping Therapy 90 Minutes', 6000, 'TM', ''),
(15, 'Aerobatics/Yoga', 10000, 'Workout', ''),
(20, 'Suana/Steam', 1000, 'Daily', ''),
(22, 'Deep Tissue Back Massage 20 Minutes', 3000, 'TM', ''),
(24, 'Apple Juice', 9009, 'juice', NULL),
(25, 'Mango Juice', 100, 'juice', NULL),
(26, 'Orange Juice', 200, 'juice', NULL),
(28, 'test by develoepr', 666, 'Juice', ''),
(30, 'Test package', 10001, 'TM', ''),
(31, '', 6000, 'Monthly', '1'),
(33, 'Test Juice', 199, 'Juice', ''),
(34, 'Gynasium', 800, 'Workout', ''),
(35, 'Zumba', 9000, 'Workout', ''),
(36, 'Personal Training', 10000, 'Workout', '');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id_r` int(11) NOT NULL,
  `membership_no` varchar(15) DEFAULT NULL,
  `member_name` varchar(20) NOT NULL,
  `member_type` varchar(10) NOT NULL,
  `packages` varchar(50) NOT NULL,
  `total_amount` varchar(15) NOT NULL,
  `cashier` varchar(20) NOT NULL,
  `fee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `balance` varchar(11) NOT NULL,
  `payment_type` varchar(15) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount` varchar(15) NOT NULL,
  `fee` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `amount_paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id_r`, `membership_no`, `member_name`, `member_type`, `packages`, `total_amount`, `cashier`, `fee_date`, `end_date`, `balance`, `payment_type`, `time_stamp`, `discount`, `fee`, `tax`, `amount_paid`) VALUES
(1, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice s,Grape Fruit Juice Large,Knee Suppo', '850', 'hanzala', NULL, NULL, '', 'Cash', '2019-08-23 13:01:49', '0', 0, 0, 850),
(2, NULL, 'Juice Bar', 'Items/Juic', ',Mineral Water Small,Hi jean Tissue TOWEL', '150', 'hanzala', NULL, NULL, '', 'Cash', '2020-08-05 18:11:29', '0', 0, 0, 150);

-- --------------------------------------------------------

--
-- Table structure for table `therapy_pkgs`
--

CREATE TABLE `therapy_pkgs` (
  `id` int(11) NOT NULL,
  `pkg_name` varchar(50) NOT NULL,
  `pkg_price` int(11) NOT NULL,
  `pkg_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `therapy_pkgs`
--

INSERT INTO `therapy_pkgs` (`id`, `pkg_name`, `pkg_price`, `pkg_time`) VALUES
(1, 'Full Body Massage', 6000, 90),
(2, 'Swedish Massage', 4000, 60),
(3, 'Deep Tissue Back Massage', 3000, 30),
(4, 'Head And Shoulde Massage', 2000, 30),
(5, 'Ventosa Cuppping Therapy', 6000, 90),
(6, 'Deep Tissue Therapy', 2000, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bar`
--
ALTER TABLE `bar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bin`
--
ALTER TABLE `bin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_members`
--
ALTER TABLE `daily_members`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id_r`);

--
-- Indexes for table `therapy_pkgs`
--
ALTER TABLE `therapy_pkgs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bar`
--
ALTER TABLE `bar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `bin`
--
ALTER TABLE `bin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `daily_members`
--
ALTER TABLE `daily_members`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `therapy_pkgs`
--
ALTER TABLE `therapy_pkgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
