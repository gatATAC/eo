-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2016 at 08:49 AM
-- Server version: 5.5.50-0+deb8u1
-- PHP Version: 5.6.24-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eo`
--

-- --------------------------------------------------------

--
-- Table structure for table `acquisition_statuses`
--

CREATE TABLE IF NOT EXISTS `acquisition_statuses` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `acquisition_workflow_id` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `built` tinyint(1) DEFAULT '0',
  `keystr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acquisition_statuses`
--

INSERT INTO `acquisition_statuses` (`id`, `name`, `created_at`, `updated_at`, `acquisition_workflow_id`, `closed`, `built`, `keystr`) VALUES
(1, 'Designed', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 2, 0, 0, NULL),
(2, 'Deligned', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 2, 0, 0, NULL),
(3, 'Manufactured', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(5, 'Measured', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(6, 'Rework launched', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(7, 'Subsystems Acquired', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 1, 0, 0, NULL),
(8, 'Measured', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(9, 'Rework launched', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(11, 'Identified', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 3, 0, 0, NULL),
(12, 'Purchased', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 3, 0, 0, NULL),
(13, 'Received', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 3, 0, 1, NULL),
(15, 'Adapted', '2016-08-06 15:05:33', '2016-08-06 15:05:38', 3, 0, 1, NULL),
(17, 'Closed', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 2, 1, 1, NULL),
(18, 'Closed', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 1, 1, NULL),
(19, 'Closed', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 3, 1, 1, NULL),
(20, 'Closed', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 1, 1, NULL),
(21, 'Specified', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(22, 'Prelim. designed', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(23, 'Prototypes launched', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(24, 'Break-in done', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(25, 'Validated', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 2, 0, 1, NULL),
(26, 'Conditionally accepted', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 2, 1, 1, NULL),
(27, 'Specified', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(28, 'Prelim. designed', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(29, 'Prototypes launched', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(30, 'Designed', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(31, 'AsmDeligned', '2016-08-06 15:05:38', '2016-08-24 08:58:43', 1, 0, 1, NULL),
(32, 'Integrated', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(33, 'Break-in done', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(34, 'Validated', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 0, 1, NULL),
(35, 'Conditionally accepted', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 1, 1, 1, NULL),
(36, 'Alternatives found', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 3, 0, 1, NULL),
(37, 'Validated', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 3, 0, 1, NULL),
(38, 'Conditionally accepted', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 3, 1, 1, NULL),
(39, 'Identified', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 0, 1, NULL),
(40, 'Sow launched', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 0, 1, NULL),
(41, 'Vendor selected', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 0, 1, NULL),
(42, 'Subcontract started', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 0, 1, NULL),
(43, 'Received', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 0, 1, NULL),
(44, 'Adapted', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 0, 1, NULL),
(45, 'Validated', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 0, 1, NULL),
(46, 'Conditionally accepted', '2016-08-06 15:05:38', '2016-08-06 15:05:38', 4, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `acquisition_workflows`
--

CREATE TABLE IF NOT EXISTS `acquisition_workflows` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `keystr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acquisition_workflows`
--

INSERT INTO `acquisition_workflows` (`id`, `name`, `created_at`, `updated_at`, `keystr`) VALUES
(1, 'Integration', '2016-08-06 15:05:33', '2016-08-25 15:34:45', 'integ'),
(2, 'Fabrication', '2016-08-06 15:05:33', '2016-08-25 15:34:45', 'fab'),
(3, 'Commercial', '2016-08-06 15:05:33', '2016-08-25 15:34:45', 'comm'),
(4, 'Subcontract', '2016-08-06 15:05:33', '2016-08-25 15:34:45', 'subctr');

-- --------------------------------------------------------

--
-- Table structure for table `function_link_types`
--

CREATE TABLE IF NOT EXISTS `function_link_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `function_link_types`
--

INSERT INTO `function_link_types` (`id`, `name`, `abbrev`, `created_at`, `updated_at`) VALUES
(1, 'Includes', 'inc', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Extend', 'ext', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `function_links`
--

CREATE TABLE IF NOT EXISTS `function_links` (
`id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `function_src_id` int(11) DEFAULT NULL,
  `function_dest_id` int(11) DEFAULT NULL,
  `function_link_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `function_types`
--

CREATE TABLE IF NOT EXISTS `function_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `function_types`
--

INSERT INTO `function_types` (`id`, `name`, `abbrev`, `created_at`, `updated_at`) VALUES
(1, 'FSM', 'fsm', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Ctrl', 'ctrl', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE IF NOT EXISTS `functions` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `function_type_id` int(11) DEFAULT NULL,
  `layer_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `issue_rms`
--

CREATE TABLE IF NOT EXISTS `issue_rms` (
`id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `project_rm_id` int(11) DEFAULT NULL,
  `rm_ident` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text,
  `assignee` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `tracker` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `done_ratio` int(11) DEFAULT NULL,
  `eosys` tinyint(1) DEFAULT '0',
  `system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `layers`
--

CREATE TABLE IF NOT EXISTS `layers` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layers`
--

INSERT INTO `layers` (`id`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Specification', 1, '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Concept', 2, '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(3, 'Design', 3, '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(4, 'Implementation', 4, '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `mech_machines`
--

CREATE TABLE IF NOT EXISTS `mech_machines` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mech_machines`
--

INSERT INTO `mech_machines` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CNC', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Cutter', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(3, 'Conventional', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `mech_materials`
--

CREATE TABLE IF NOT EXISTS `mech_materials` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mech_materials`
--

INSERT INTO `mech_materials` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Steel', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Stainless Steel', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(3, '440 C Steel', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(4, 'Aluminium', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(5, 'Bronze', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(6, 'Iron', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(7, 'Glass', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(8, 'Zerodur', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(9, 'Plastic', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `mech_optical_surfaces`
--

CREATE TABLE IF NOT EXISTS `mech_optical_surfaces` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mech_optical_surfaces`
--

INSERT INTO `mech_optical_surfaces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Flat Mirror', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Spherical Mirror', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(3, 'Mask', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(4, 'Lens', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `mech_system_fab_machines`
--

CREATE TABLE IF NOT EXISTS `mech_system_fab_machines` (
`id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mech_machine_id` int(11) DEFAULT NULL,
  `mech_system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mech_system_fab_machines`
--

INSERT INTO `mech_system_fab_machines` (`id`, `created_at`, `updated_at`, `mech_machine_id`, `mech_system_id`) VALUES
(1, '2016-08-06 15:20:43', '2016-08-06 15:20:43', 1, 9),
(2, '2016-08-06 15:20:53', '2016-08-06 15:20:53', 1, 10),
(3, '2016-08-06 15:21:13', '2016-08-06 15:21:13', 1, 12),
(4, '2016-08-06 15:21:23', '2016-08-06 15:21:23', 1, 13),
(5, '2016-08-06 15:21:52', '2016-08-06 15:21:52', 1, 16),
(6, '2016-08-06 15:22:02', '2016-08-06 15:22:02', 1, 17),
(7, '2016-08-06 15:22:12', '2016-08-06 15:22:12', 1, 18),
(8, '2016-08-06 15:22:22', '2016-08-06 15:22:22', 1, 19),
(9, '2016-08-06 15:22:32', '2016-08-06 15:22:32', 1, 20),
(10, '2016-08-06 15:22:51', '2016-08-06 15:22:51', 1, 22),
(11, '2016-08-06 15:23:11', '2016-08-06 15:23:11', 1, 24),
(12, '2016-08-06 15:23:21', '2016-08-06 15:23:21', 1, 25),
(13, '2016-08-06 15:23:31', '2016-08-06 15:23:31', 1, 26),
(14, '2016-08-06 15:23:41', '2016-08-06 15:23:41', 1, 27),
(15, '2016-08-06 15:23:51', '2016-08-06 15:23:51', 1, 28),
(16, '2016-08-06 15:24:01', '2016-08-06 15:24:01', 1, 29),
(17, '2016-08-06 15:24:30', '2016-08-06 15:24:30', 1, 32),
(18, '2016-08-06 15:24:50', '2016-08-06 15:24:50', 1, 34),
(19, '2016-08-06 15:25:00', '2016-08-06 15:25:00', 1, 35),
(20, '2016-08-06 15:25:10', '2016-08-06 15:25:10', 1, 36),
(21, '2016-08-06 15:25:20', '2016-08-06 15:25:20', 1, 37),
(22, '2016-08-06 15:25:30', '2016-08-06 15:25:30', 1, 38),
(23, '2016-08-06 15:25:40', '2016-08-06 15:25:40', 1, 39),
(24, '2016-08-06 16:14:17', '2016-08-06 16:14:17', 1, 323),
(25, '2016-08-06 16:14:27', '2016-08-06 16:14:27', 1, 324),
(26, '2016-08-06 16:14:37', '2016-08-06 16:14:37', 3, 325),
(27, '2016-08-06 16:14:48', '2016-08-06 16:14:48', 3, 326),
(28, '2016-08-06 16:14:58', '2016-08-06 16:14:58', 3, 327),
(29, '2016-08-06 16:15:08', '2016-08-06 16:15:08', 3, 328),
(30, '2016-08-06 16:15:18', '2016-08-06 16:15:18', 1, 329),
(31, '2016-08-06 16:15:28', '2016-08-06 16:15:28', 3, 330),
(32, '2016-08-06 16:34:07', '2016-08-06 16:34:07', 1, 441),
(33, '2016-08-06 16:35:08', '2016-08-06 16:35:08', 1, 447),
(34, '2016-08-06 16:35:18', '2016-08-06 16:35:18', 1, 448),
(35, '2016-08-06 16:35:28', '2016-08-06 16:35:28', 3, 449),
(36, '2016-08-06 16:35:38', '2016-08-06 16:35:38', 1, 450),
(37, '2016-08-06 16:35:48', '2016-08-06 16:35:48', 1, 451),
(38, '2016-08-06 16:35:58', '2016-08-06 16:35:58', 3, 452),
(39, '2016-08-06 16:43:39', '2016-08-06 16:43:39', 1, 498),
(40, '2016-08-06 16:43:50', '2016-08-06 16:43:50', 1, 499),
(41, '2016-08-06 16:44:00', '2016-08-06 16:44:00', 1, 500),
(42, '2016-08-06 16:44:10', '2016-08-06 16:44:10', 1, 501),
(43, '2016-08-06 16:44:20', '2016-08-06 16:44:20', 1, 502),
(44, '2016-08-06 16:44:30', '2016-08-06 16:44:30', 3, 503),
(45, '2016-08-06 16:44:40', '2016-08-06 16:44:40', 3, 504),
(46, '2016-08-06 16:44:50', '2016-08-06 16:44:50', 1, 505),
(47, '2016-08-06 16:47:31', '2016-08-06 16:47:31', 1, 521),
(48, '2016-08-06 16:47:41', '2016-08-06 16:47:41', 3, 522),
(49, '2016-08-06 16:47:51', '2016-08-06 16:47:51', 3, 523),
(50, '2016-08-06 16:48:01', '2016-08-06 16:48:01', 1, 524),
(51, '2016-08-06 16:48:11', '2016-08-06 16:48:11', 1, 525),
(52, '2016-08-06 16:48:21', '2016-08-06 16:48:21', 1, 526),
(53, '2016-08-06 16:48:31', '2016-08-06 16:48:31', 1, 527),
(54, '2016-08-06 16:48:41', '2016-08-06 16:48:41', 1, 528),
(55, '2016-08-06 16:48:51', '2016-08-06 16:48:51', 1, 529),
(56, '2016-08-06 16:51:47', '2016-08-06 16:51:47', 1, 547),
(57, '2016-08-06 16:51:57', '2016-08-06 16:51:57', 3, 548),
(58, '2016-08-06 16:52:07', '2016-08-06 16:52:07', 3, 549),
(59, '2016-08-06 16:52:17', '2016-08-06 16:52:17', 1, 550),
(60, '2016-08-06 16:52:27', '2016-08-06 16:52:27', 1, 551),
(61, '2016-08-06 16:52:37', '2016-08-06 16:52:37', 1, 552),
(62, '2016-08-06 16:52:46', '2016-08-06 16:52:46', 1, 553),
(63, '2016-08-06 16:52:56', '2016-08-06 16:52:56', 3, 554),
(64, '2016-08-06 16:53:06', '2016-08-06 16:53:06', 3, 555),
(65, '2016-08-06 16:53:16', '2016-08-06 16:53:16', 3, 556),
(66, '2016-08-06 16:53:25', '2016-08-06 16:53:25', 1, 557),
(67, '2016-08-06 16:54:15', '2016-08-06 16:54:15', 1, 562),
(68, '2016-08-06 16:54:25', '2016-08-06 16:54:25', 1, 563),
(69, '2016-08-06 16:54:35', '2016-08-06 16:54:35', 1, 564),
(70, '2016-08-06 16:54:45', '2016-08-06 16:54:45', 1, 565),
(71, '2016-08-06 16:59:39', '2016-08-06 16:59:39', 1, 595),
(72, '2016-08-06 16:59:49', '2016-08-06 16:59:49', 1, 596),
(73, '2016-08-06 16:59:59', '2016-08-06 16:59:59', 1, 597),
(74, '2016-08-06 17:00:09', '2016-08-06 17:00:09', 1, 598),
(75, '2016-08-06 17:00:18', '2016-08-06 17:00:18', 1, 599),
(76, '2016-08-06 17:00:28', '2016-08-06 17:00:28', 1, 600),
(77, '2016-08-06 17:00:38', '2016-08-06 17:00:38', 1, 601),
(78, '2016-08-06 17:00:48', '2016-08-06 17:00:48', 1, 602),
(79, '2016-08-06 17:10:19', '2016-08-06 17:10:19', 1, 660),
(80, '2016-08-06 17:29:25', '2016-08-06 17:29:25', 1, 776),
(81, '2016-08-06 17:29:34', '2016-08-06 17:29:34', 1, 777),
(85, '2016-08-06 17:43:37', '2016-08-06 17:43:37', 1, 865),
(86, '2016-08-06 17:53:16', '2016-08-06 17:53:16', 1, 925),
(87, '2016-08-06 18:02:51', '2016-08-06 18:02:51', 1, 985),
(88, '2016-08-06 18:10:03', '2016-08-06 18:10:03', 1, 1030),
(89, '2016-08-06 18:10:22', '2016-08-06 18:10:22', 1, 1032),
(90, '2016-08-06 21:27:28', '2016-08-06 21:27:28', 3, 1067),
(91, '2016-08-06 21:27:39', '2016-08-06 21:27:39', 1, 1068),
(92, '2016-08-06 21:28:10', '2016-08-06 21:28:10', 1, 1071),
(93, '2016-08-06 21:28:20', '2016-08-06 21:28:20', 1, 1072),
(94, '2016-08-06 21:28:30', '2016-08-06 21:28:30', 1, 1073),
(95, '2016-08-06 21:28:49', '2016-08-06 21:28:49', 1, 1075),
(96, '2016-08-24 08:52:06', '2016-08-24 08:52:06', 1, 1094),
(97, '2016-08-24 09:19:17', '2016-08-24 09:19:17', 1, 1105);

-- --------------------------------------------------------

--
-- Table structure for table `mech_system_types`
--

CREATE TABLE IF NOT EXISTS `mech_system_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mech_system_types`
--

INSERT INTO `mech_system_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Assembly', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Component', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `mech_systems`
--

CREATE TABLE IF NOT EXISTS `mech_systems` (
`id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `mech_system_type_id` int(11) DEFAULT NULL,
  `mech_optical_surface_id` int(11) DEFAULT NULL,
  `mech_material_id` int(11) DEFAULT NULL,
  `acquisition_workflow_id` int(11) DEFAULT NULL,
  `acquisition_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1152 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mech_systems`
--

INSERT INTO `mech_systems` (`id`, `file_name`, `version`, `created_at`, `updated_at`, `system_id`, `mech_system_type_id`, `mech_optical_surface_id`, `mech_material_id`, `acquisition_workflow_id`, `acquisition_status_id`) VALUES
(1, '44v-m70-001_layout_ifu_bench.asm', NULL, '2016-08-06 15:19:24', '2016-08-06 15:19:24', 1, 1, NULL, NULL, 1, NULL),
(2, '44v-m70-100_layout_bp.asm', NULL, '2016-08-06 15:19:34', '2016-08-06 15:19:34', 2, 1, NULL, NULL, 1, NULL),
(3, '44v-m70-100_paton_taladros_ob.prt', NULL, '2016-08-06 15:19:44', '2016-08-06 15:19:44', 3, NULL, NULL, NULL, NULL, NULL),
(4, '44v-m70-100_geometria_apoyos.prt', NULL, '2016-08-06 15:19:54', '2016-08-06 15:19:54', 4, NULL, NULL, NULL, NULL, NULL),
(5, '44v-m70-001_sist_de_referencia.prt', NULL, '2016-08-06 15:20:04', '2016-08-06 15:20:04', 5, NULL, NULL, NULL, NULL, NULL),
(6, '44v-m70-110_base_plate_ifu_ob.asm', NULL, '2016-08-06 15:20:14', '2016-08-06 15:20:14', 6, 1, NULL, NULL, 1, NULL),
(7, '44v-m70-100_fov_bp_ref.prt', NULL, '2016-08-06 15:20:23', '2016-08-06 15:20:23', 7, NULL, NULL, NULL, NULL, NULL),
(8, '44v-m70-100_polarimetro_bp_ref.prt', NULL, '2016-08-06 15:20:33', '2016-08-06 15:20:33', 8, NULL, NULL, NULL, NULL, NULL),
(9, '44v-m70-110_base_plate_main.prt', NULL, '2016-08-06 15:20:43', '2016-08-24 09:31:23', 9, 2, NULL, 4, 2, 5),
(10, '44v-m70-110_rigidizador_apoyo3.prt', NULL, '2016-08-06 15:20:53', '2016-08-06 15:20:53', 10, 2, NULL, 4, 2, 1),
(11, '44v-m70-120_apoyo1.asm', NULL, '2016-08-06 15:21:03', '2016-08-06 15:21:03', 11, 1, NULL, NULL, 1, NULL),
(12, '44v-m70-120_interfase_bo.prt', NULL, '2016-08-06 15:21:13', '2016-08-06 15:21:13', 12, 2, NULL, 3, 2, 3),
(13, '44v-m70-120_alojamiento_v.prt', NULL, '2016-08-06 15:21:23', '2016-08-06 15:21:23', 13, 2, NULL, 3, 2, 3),
(14, '44v-m70-120_vee.prt', NULL, '2016-08-06 15:21:32', '2016-08-06 15:21:32', 14, 2, NULL, 2, 3, 13),
(15, '44v-m70-120_sphere100tb.prt', NULL, '2016-08-06 15:21:42', '2016-08-06 15:21:42', 15, 2, NULL, 3, 3, 12),
(16, '44v-m70-120_ring_sphere.prt', NULL, '2016-08-06 15:21:52', '2016-08-06 15:21:52', 16, 2, NULL, 5, 2, 3),
(17, '44v-m70-120_roscam16.prt', NULL, '2016-08-06 15:22:02', '2016-08-06 15:22:02', 17, 2, NULL, 2, 2, 3),
(18, '44v-m70-120_apoyo_bp.prt', NULL, '2016-08-06 15:22:12', '2016-08-06 15:22:12', 18, 2, NULL, 5, 2, 3),
(19, '44v-m70-120_contratuerca_bp.prt', NULL, '2016-08-06 15:22:22', '2016-08-06 15:22:22', 19, 2, NULL, 5, 2, 3),
(20, '44v-m70-120acople_ajuste_bp.prt', NULL, '2016-08-06 15:22:32', '2016-08-06 15:22:32', 20, 2, NULL, 2, 2, 3),
(21, '44v-m70-130_apoyo2.asm', NULL, '2016-08-06 15:22:42', '2016-08-06 15:22:42', 21, 1, NULL, NULL, 1, NULL),
(22, '44v-m70-120_interfase_bo.prt', NULL, '2016-08-06 15:22:51', '2016-08-06 15:22:51', 22, 2, NULL, 3, 2, 3),
(23, '44v-m70-120_sphere100tb.prt', NULL, '2016-08-06 15:23:01', '2016-08-06 15:23:01', 23, 2, NULL, 3, 3, 12),
(24, '44v-m70-120_ring_sphere.prt', NULL, '2016-08-06 15:23:11', '2016-08-06 15:23:11', 24, 2, NULL, 5, 2, 3),
(25, '44v-m70-120_roscam16.prt', NULL, '2016-08-06 15:23:21', '2016-08-06 15:23:21', 25, 2, NULL, 2, 2, 3),
(26, '44v-m70-120_apoyo_bp.prt', NULL, '2016-08-06 15:23:31', '2016-08-06 15:23:31', 26, 2, NULL, 5, 2, 3),
(27, '44v-m70-120_contratuerca_bp.prt', NULL, '2016-08-06 15:23:41', '2016-08-06 15:23:41', 27, 2, NULL, 5, 2, 3),
(28, '44v-m70-120acople_ajuste_bp.prt', NULL, '2016-08-06 15:23:51', '2016-08-06 15:23:51', 28, 2, NULL, 2, 2, 3),
(29, '44v-m70-130_alojamiento_v2.prt', NULL, '2016-08-06 15:24:01', '2016-08-06 15:24:01', 29, 2, NULL, 3, 2, 3),
(30, '44v-m70-130_vee2.prt', NULL, '2016-08-06 15:24:11', '2016-08-06 15:24:11', 30, 2, NULL, 2, 3, 13),
(31, '44v-m70-140_apoyo3.asm', NULL, '2016-08-06 15:24:21', '2016-08-06 15:24:21', 31, 1, NULL, NULL, 1, NULL),
(32, '44v-m70-120_interfase_bo.prt', NULL, '2016-08-06 15:24:30', '2016-08-06 15:24:30', 32, 2, NULL, 3, 2, 3),
(33, '44v-m70-120_sphere100tb.prt', NULL, '2016-08-06 15:24:40', '2016-08-06 15:24:40', 33, 2, NULL, 3, 3, 12),
(34, '44v-m70-120_ring_sphere.prt', NULL, '2016-08-06 15:24:50', '2016-08-06 15:24:50', 34, 2, NULL, 5, 2, 3),
(35, '44v-m70-120_roscam16.prt', NULL, '2016-08-06 15:25:00', '2016-08-06 15:25:00', 35, 2, NULL, 2, 2, 3),
(36, '44v-m70-120_apoyo_bp.prt', NULL, '2016-08-06 15:25:10', '2016-08-06 15:25:10', 36, 2, NULL, 5, 2, 3),
(37, '44v-m70-120_contratuerca_bp.prt', NULL, '2016-08-06 15:25:20', '2016-08-06 15:25:20', 37, 2, NULL, 5, 2, 3),
(38, '44v-m70-120acople_ajuste_bp.prt', NULL, '2016-08-06 15:25:30', '2016-08-06 15:25:30', 38, 2, NULL, 2, 2, 3),
(39, '44v-m70-140_alojamiento_v3.prt', NULL, '2016-08-06 15:25:40', '2016-08-06 15:25:40', 39, 2, NULL, 3, 2, 3),
(40, '44v-m70-140_vee3.prt', NULL, '2016-08-06 15:25:50', '2016-08-06 15:25:50', 40, 2, NULL, 2, 3, 13),
(41, 'rlp_gunnebo_m10.asm', NULL, '2016-08-06 15:26:00', '2016-08-06 15:26:00', 41, 1, NULL, NULL, 3, NULL),
(42, 'z101710.asm', NULL, '2016-08-06 15:26:10', '2016-08-06 15:26:10', 42, 1, NULL, NULL, 3, NULL),
(43, 'z768026_smitt.prt', NULL, '2016-08-06 15:26:20', '2016-08-06 15:26:20', 43, 2, NULL, NULL, NULL, NULL),
(44, 'z776041.prt', NULL, '2016-08-06 15:26:31', '2016-08-06 15:26:31', 44, 2, NULL, NULL, NULL, NULL),
(45, 'z768071.prt', NULL, '2016-08-06 15:26:41', '2016-08-06 15:26:41', 45, 2, NULL, NULL, NULL, NULL),
(46, 'z768657.prt', NULL, '2016-08-06 15:26:52', '2016-08-06 15:26:52', 46, 2, NULL, NULL, NULL, NULL),
(47, 'z7681210.prt', NULL, '2016-08-06 15:27:02', '2016-08-06 15:27:02', 47, 2, NULL, NULL, NULL, NULL),
(48, 'z776041.prt', NULL, '2016-08-06 15:27:12', '2016-08-06 15:27:12', 48, 2, NULL, NULL, NULL, NULL),
(49, 'z776041.prt', NULL, '2016-08-06 15:27:23', '2016-08-06 15:27:23', 49, 2, NULL, NULL, NULL, NULL),
(50, 'z776041.prt', NULL, '2016-08-06 15:27:34', '2016-08-06 15:27:34', 50, 2, NULL, NULL, NULL, NULL),
(51, 'z776041.prt', NULL, '2016-08-06 15:27:44', '2016-08-06 15:27:44', 51, 2, NULL, NULL, NULL, NULL),
(52, 'rlp_gunnebo_m10.asm', NULL, '2016-08-06 15:27:54', '2016-08-06 15:27:54', 52, 1, NULL, NULL, 3, NULL),
(53, 'z101710.asm', NULL, '2016-08-06 15:28:04', '2016-08-06 15:28:04', 53, 1, NULL, NULL, 3, NULL),
(54, 'z768026_smitt.prt', NULL, '2016-08-06 15:28:15', '2016-08-06 15:28:15', 54, 2, NULL, NULL, NULL, NULL),
(55, 'z776041.prt', NULL, '2016-08-06 15:28:26', '2016-08-06 15:28:26', 55, 2, NULL, NULL, NULL, NULL),
(56, 'z768071.prt', NULL, '2016-08-06 15:28:36', '2016-08-06 15:28:36', 56, 2, NULL, NULL, NULL, NULL),
(57, 'z768657.prt', NULL, '2016-08-06 15:28:46', '2016-08-06 15:28:46', 57, 2, NULL, NULL, NULL, NULL),
(58, 'z7681210.prt', NULL, '2016-08-06 15:28:56', '2016-08-06 15:28:56', 58, 2, NULL, NULL, NULL, NULL),
(59, 'z776041.prt', NULL, '2016-08-06 15:29:06', '2016-08-06 15:29:06', 59, 2, NULL, NULL, NULL, NULL),
(60, 'z776041.prt', NULL, '2016-08-06 15:29:17', '2016-08-06 15:29:17', 60, 2, NULL, NULL, NULL, NULL),
(61, 'z776041.prt', NULL, '2016-08-06 15:29:28', '2016-08-06 15:29:28', 61, 2, NULL, NULL, NULL, NULL),
(62, 'z776041.prt', NULL, '2016-08-06 15:29:38', '2016-08-06 15:29:38', 62, 2, NULL, NULL, NULL, NULL),
(63, '44v_m70_110_soporte_esl_izq.prt', NULL, '2016-08-06 15:29:48', '2016-08-06 15:29:48', 63, 2, NULL, NULL, 2, 2),
(64, 'rlp_gunnebo_m10.asm', NULL, '2016-08-06 15:29:58', '2016-08-06 15:29:58', 64, 1, NULL, NULL, 3, NULL),
(65, 'z101710.asm', NULL, '2016-08-06 15:30:09', '2016-08-06 15:30:09', 65, 1, NULL, NULL, 3, NULL),
(66, 'z768026_smitt.prt', NULL, '2016-08-06 15:30:19', '2016-08-06 15:30:19', 66, 2, NULL, NULL, NULL, NULL),
(67, 'z776041.prt', NULL, '2016-08-06 15:30:29', '2016-08-06 15:30:29', 67, 2, NULL, NULL, NULL, NULL),
(68, 'z768071.prt', NULL, '2016-08-06 15:30:39', '2016-08-06 15:30:39', 68, 2, NULL, NULL, NULL, NULL),
(69, 'z768657.prt', NULL, '2016-08-06 15:30:49', '2016-08-06 15:30:49', 69, 2, NULL, NULL, NULL, NULL),
(70, 'z7681210.prt', NULL, '2016-08-06 15:31:00', '2016-08-06 15:31:00', 70, 2, NULL, NULL, NULL, NULL),
(71, 'z776041.prt', NULL, '2016-08-06 15:31:10', '2016-08-06 15:31:10', 71, 2, NULL, NULL, NULL, NULL),
(72, 'z776041.prt', NULL, '2016-08-06 15:31:20', '2016-08-06 15:31:20', 72, 2, NULL, NULL, NULL, NULL),
(73, 'z776041.prt', NULL, '2016-08-06 15:31:30', '2016-08-06 15:31:30', 73, 2, NULL, NULL, NULL, NULL),
(74, 'z776041.prt', NULL, '2016-08-06 15:31:40', '2016-08-06 15:31:40', 74, 2, NULL, NULL, NULL, NULL),
(75, 'rlp_gunnebo_m10.asm', NULL, '2016-08-06 15:31:50', '2016-08-06 15:31:50', 75, 1, NULL, NULL, 3, NULL),
(76, 'z101710.asm', NULL, '2016-08-06 15:32:00', '2016-08-06 15:32:00', 76, 1, NULL, NULL, 3, NULL),
(77, 'z768026_smitt.prt', NULL, '2016-08-06 15:32:09', '2016-08-06 15:32:09', 77, 2, NULL, NULL, NULL, NULL),
(78, 'z776041.prt', NULL, '2016-08-06 15:32:19', '2016-08-06 15:32:19', 78, 2, NULL, NULL, NULL, NULL),
(79, 'z768071.prt', NULL, '2016-08-06 15:32:29', '2016-08-06 15:32:29', 79, 2, NULL, NULL, NULL, NULL),
(80, 'z768657.prt', NULL, '2016-08-06 15:32:39', '2016-08-06 15:32:39', 80, 2, NULL, NULL, NULL, NULL),
(81, 'z7681210.prt', NULL, '2016-08-06 15:32:49', '2016-08-06 15:32:49', 81, 2, NULL, NULL, NULL, NULL),
(82, 'z776041.prt', NULL, '2016-08-06 15:32:59', '2016-08-06 15:32:59', 82, 2, NULL, NULL, NULL, NULL),
(83, 'z776041.prt', NULL, '2016-08-06 15:33:09', '2016-08-06 15:33:09', 83, 2, NULL, NULL, NULL, NULL),
(84, 'z776041.prt', NULL, '2016-08-06 15:33:19', '2016-08-06 15:33:19', 84, 2, NULL, NULL, NULL, NULL),
(85, 'z776041.prt', NULL, '2016-08-06 15:33:28', '2016-08-06 15:33:28', 85, 2, NULL, NULL, NULL, NULL),
(86, '44v-m70-900_optical_path.asm', NULL, '2016-08-06 15:33:38', '2016-08-06 15:33:38', 86, NULL, NULL, NULL, NULL, NULL),
(87, '44v-m70-900_scan_reimaging.asm', NULL, '2016-08-06 15:33:48', '2016-08-06 15:33:48', 87, NULL, NULL, NULL, NULL, NULL),
(88, 'none-1956780.prt', NULL, '2016-08-06 15:33:58', '2016-08-06 15:33:58', 88, 2, NULL, NULL, NULL, NULL),
(89, 'none-2922560.prt', NULL, '2016-08-06 15:34:08', '2016-08-06 15:34:08', 89, 2, NULL, NULL, NULL, NULL),
(90, 'none-1485630.prt', NULL, '2016-08-06 15:34:18', '2016-08-06 15:34:18', 90, 2, NULL, NULL, NULL, NULL),
(91, 'none-1475100.prt', NULL, '2016-08-06 15:34:27', '2016-08-06 15:34:27', 91, 2, NULL, NULL, NULL, NULL),
(92, 'none-3403600.prt', NULL, '2016-08-06 15:34:37', '2016-08-06 15:34:37', 92, 2, NULL, NULL, NULL, NULL),
(93, 'none-3407940.prt', NULL, '2016-08-06 15:34:47', '2016-08-06 15:34:47', 93, 2, NULL, NULL, NULL, NULL),
(94, 'none-987870.prt', NULL, '2016-08-06 15:34:57', '2016-08-06 15:34:57', 94, 2, NULL, NULL, NULL, NULL),
(95, 'none-504340.prt', NULL, '2016-08-06 15:35:07', '2016-08-06 15:35:07', 95, 2, NULL, NULL, NULL, NULL),
(96, 'none-508040.prt', NULL, '2016-08-06 15:35:16', '2016-08-06 15:35:16', 96, 2, NULL, NULL, NULL, NULL),
(97, 'none-1478800.prt', NULL, '2016-08-06 15:35:26', '2016-08-06 15:35:26', 97, 2, NULL, NULL, NULL, NULL),
(98, 'none-1960480.prt', NULL, '2016-08-06 15:35:36', '2016-08-06 15:35:36', 98, 2, NULL, NULL, NULL, NULL),
(99, 'none-1971010.prt', NULL, '2016-08-06 15:35:46', '2016-08-06 15:35:46', 99, 2, NULL, NULL, NULL, NULL),
(100, 'none-1962330.prt', NULL, '2016-08-06 15:35:56', '2016-08-06 15:35:56', 100, 2, NULL, NULL, NULL, NULL),
(101, 'none-5940.prt', NULL, '2016-08-06 15:36:05', '2016-08-06 15:36:05', 101, 2, NULL, NULL, NULL, NULL),
(102, 'none-1966030.prt', NULL, '2016-08-06 15:36:15', '2016-08-06 15:36:15', 102, 2, NULL, NULL, NULL, NULL),
(103, 'none-8430.prt', NULL, '2016-08-06 15:36:25', '2016-08-06 15:36:25', 103, 2, NULL, NULL, NULL, NULL),
(104, 'none-2449560.prt', NULL, '2016-08-06 15:36:35', '2016-08-06 15:36:35', 104, 2, NULL, NULL, NULL, NULL),
(105, 'none-486980.prt', NULL, '2016-08-06 15:36:44', '2016-08-06 15:36:44', 105, 2, NULL, NULL, NULL, NULL),
(106, 'none-1457740.prt', NULL, '2016-08-06 15:36:54', '2016-08-06 15:36:54', 106, 2, NULL, NULL, NULL, NULL),
(107, 'none-2931240.prt', NULL, '2016-08-06 15:37:04', '2016-08-06 15:37:04', 107, 2, NULL, NULL, NULL, NULL),
(108, 'none-2447710.prt', NULL, '2016-08-06 15:37:14', '2016-08-06 15:37:14', 108, 2, NULL, NULL, NULL, NULL),
(109, 'none-1951800.prt', NULL, '2016-08-06 15:37:23', '2016-08-06 15:37:23', 109, 2, NULL, NULL, NULL, NULL),
(110, 'none-993420.prt', NULL, '2016-08-06 15:37:33', '2016-08-06 15:37:33', 110, 2, NULL, NULL, NULL, NULL),
(111, 'none-3422170.prt', NULL, '2016-08-06 15:37:43', '2016-08-06 15:37:43', 111, 2, NULL, NULL, NULL, NULL),
(112, 'none-2442160.prt', NULL, '2016-08-06 15:37:53', '2016-08-06 15:37:53', 112, 2, NULL, NULL, NULL, NULL),
(113, 'none-2939280.prt', NULL, '2016-08-06 15:38:02', '2016-08-06 15:38:02', 113, 2, NULL, NULL, NULL, NULL),
(114, 'none-972360.prt', NULL, '2016-08-06 15:38:12', '2016-08-06 15:38:12', 114, 2, NULL, NULL, NULL, NULL),
(115, 'none-1000250.prt', NULL, '2016-08-06 15:38:22', '2016-08-06 15:38:22', 115, 2, NULL, NULL, NULL, NULL),
(116, 'none-3424660.prt', NULL, '2016-08-06 15:38:32', '2016-08-06 15:38:32', 116, 2, NULL, NULL, NULL, NULL),
(117, 'none-22660.prt', NULL, '2016-08-06 15:38:42', '2016-08-06 15:38:42', 117, 2, NULL, NULL, NULL, NULL),
(118, '0000272879.prt', NULL, '2016-08-06 15:38:52', '2016-08-06 15:38:52', 118, 2, NULL, NULL, NULL, NULL),
(119, 'none-514870.prt', NULL, '2016-08-06 15:39:01', '2016-08-06 15:39:01', 119, 2, NULL, NULL, NULL, NULL),
(120, 'none-1471400.prt', NULL, '2016-08-06 15:39:11', '2016-08-06 15:39:11', 120, 2, NULL, NULL, NULL, NULL),
(121, 'none-1480650.prt', NULL, '2016-08-06 15:39:21', '2016-08-06 15:39:21', 121, 2, NULL, NULL, NULL, NULL),
(122, 'none-512380.prt', NULL, '2016-08-06 15:39:31', '2016-08-06 15:39:31', 122, 2, NULL, NULL, NULL, NULL),
(123, 'none-3399260.prt', NULL, '2016-08-06 15:39:41', '2016-08-06 15:39:41', 123, 2, NULL, NULL, NULL, NULL),
(124, 'none-2925050.prt', NULL, '2016-08-06 15:39:50', '2016-08-06 15:39:50', 124, 2, NULL, NULL, NULL, NULL),
(125, 'none-2933090.prt', NULL, '2016-08-06 15:40:00', '2016-08-06 15:40:00', 125, 2, NULL, NULL, NULL, NULL),
(126, 'none-3401110.prt', NULL, '2016-08-06 15:40:10', '2016-08-06 15:40:10', 126, 2, NULL, NULL, NULL, NULL),
(127, 'none-3416620.prt', NULL, '2016-08-06 15:40:19', '2016-08-06 15:40:19', 127, 2, NULL, NULL, NULL, NULL),
(128, 'none-1462080.prt', NULL, '2016-08-06 15:40:29', '2016-08-06 15:40:29', 128, 2, NULL, NULL, NULL, NULL),
(129, 'none-502490.prt', NULL, '2016-08-06 15:40:39', '2016-08-06 15:40:39', 129, 2, NULL, NULL, NULL, NULL),
(130, 'none-1459590.prt', NULL, '2016-08-06 15:40:49', '2016-08-06 15:40:49', 130, 2, NULL, NULL, NULL, NULL),
(131, 'none-1968520.prt', NULL, '2016-08-06 15:40:58', '2016-08-06 15:40:58', 131, 2, NULL, NULL, NULL, NULL),
(132, 'none-3414770.prt', NULL, '2016-08-06 15:41:08', '2016-08-06 15:41:08', 132, 2, NULL, NULL, NULL, NULL),
(133, 'none-2451410.prt', NULL, '2016-08-06 15:41:18', '2016-08-06 15:41:18', 133, 2, NULL, NULL, NULL, NULL),
(134, 'none-488830.prt', NULL, '2016-08-06 15:41:28', '2016-08-06 15:41:28', 134, 2, NULL, NULL, NULL, NULL),
(135, 'none-1466420.prt', NULL, '2016-08-06 15:41:38', '2016-08-06 15:41:38', 135, 2, NULL, NULL, NULL, NULL),
(136, 'none-2929390.prt', NULL, '2016-08-06 15:41:48', '2016-08-06 15:41:48', 136, 2, NULL, NULL, NULL, NULL),
(137, 'none-2456390.prt', NULL, '2016-08-06 15:41:57', '2016-08-06 15:41:57', 137, 2, NULL, NULL, NULL, NULL),
(138, 'none-983530.prt', NULL, '2016-08-06 15:42:08', '2016-08-06 15:42:08', 138, 2, NULL, NULL, NULL, NULL),
(139, 'none-2435330.prt', NULL, '2016-08-06 15:42:17', '2016-08-06 15:42:17', 139, 2, NULL, NULL, NULL, NULL),
(140, 'none-1476950.prt', NULL, '2016-08-06 15:42:27', '2016-08-06 15:42:27', 140, 2, NULL, NULL, NULL, NULL),
(141, 'none-2428500.prt', NULL, '2016-08-06 15:42:37', '2016-08-06 15:42:37', 141, 2, NULL, NULL, NULL, NULL),
(142, 'none-1964180.prt', NULL, '2016-08-06 15:42:47', '2016-08-06 15:42:47', 142, 2, NULL, NULL, NULL, NULL),
(143, 'none-2437180.prt', NULL, '2016-08-06 15:42:57', '2016-08-06 15:42:57', 143, 2, NULL, NULL, NULL, NULL),
(144, 'none-2432840.prt', NULL, '2016-08-06 15:44:27', '2016-08-06 15:44:27', 144, 2, NULL, NULL, NULL, NULL),
(145, 'none-976700.prt', NULL, '2016-08-06 15:44:37', '2016-08-06 15:44:37', 145, 2, NULL, NULL, NULL, NULL),
(146, 'none-991570.prt', NULL, '2016-08-06 15:44:47', '2016-08-06 15:44:47', 146, 2, NULL, NULL, NULL, NULL),
(147, 'none-17110.prt', NULL, '2016-08-06 15:44:57', '2016-08-06 15:44:57', 147, 2, NULL, NULL, NULL, NULL),
(148, 'none-997760.prt', NULL, '2016-08-06 15:45:07', '2016-08-06 15:45:07', 148, 2, NULL, NULL, NULL, NULL),
(149, 'none-18960.prt', NULL, '2016-08-06 15:45:17', '2016-08-06 15:45:17', 149, 2, NULL, NULL, NULL, NULL),
(150, 'none-2920710.prt', NULL, '2016-08-06 15:45:27', '2016-08-06 15:45:27', 150, 2, NULL, NULL, NULL, NULL),
(151, 'none-2915730.prt', NULL, '2016-08-06 15:45:38', '2016-08-06 15:45:38', 151, 2, NULL, NULL, NULL, NULL),
(152, 'none-491320.prt', NULL, '2016-08-06 15:45:47', '2016-08-06 15:45:47', 152, 2, NULL, NULL, NULL, NULL),
(153, 'none-3883110.prt', NULL, '2016-08-06 15:45:57', '2016-08-06 15:45:57', 153, 2, NULL, NULL, NULL, NULL),
(154, 'none-2934940.prt', NULL, '2016-08-06 15:46:07', '2016-08-06 15:46:07', 154, 2, NULL, NULL, NULL, NULL),
(155, 'none-986020.prt', NULL, '2016-08-06 15:46:18', '2016-08-06 15:46:18', 155, 2, NULL, NULL, NULL, NULL),
(156, 'none-979190.prt', NULL, '2016-08-06 15:46:28', '2016-08-06 15:46:28', 156, 2, NULL, NULL, NULL, NULL),
(157, 'none-1473250.prt', NULL, '2016-08-06 15:46:37', '2016-08-06 15:46:37', 157, 2, NULL, NULL, NULL, NULL),
(158, 'none-15260.prt', NULL, '2016-08-06 15:46:47', '2016-08-06 15:46:47', 158, 2, NULL, NULL, NULL, NULL),
(159, 'none-974210.prt', NULL, '2016-08-06 15:46:57', '2016-08-06 15:46:57', 159, 2, NULL, NULL, NULL, NULL),
(160, 'none-509890.prt', NULL, '2016-08-06 15:47:07', '2016-08-06 15:47:07', 160, 2, NULL, NULL, NULL, NULL),
(161, 'none-1464570.prt', NULL, '2016-08-06 15:47:17', '2016-08-06 15:47:17', 161, 2, NULL, NULL, NULL, NULL),
(162, 'none-995270.prt', NULL, '2016-08-06 15:47:26', '2016-08-06 15:47:26', 162, 2, NULL, NULL, NULL, NULL),
(163, 'none-20810.prt', NULL, '2016-08-06 15:47:36', '2016-08-06 15:47:36', 163, 2, NULL, NULL, NULL, NULL),
(164, 'none-506190.prt', NULL, '2016-08-06 15:47:46', '2016-08-06 15:47:46', 164, 2, NULL, NULL, NULL, NULL),
(165, 'none-3418470.prt', NULL, '2016-08-06 15:47:55', '2016-08-06 15:47:55', 165, 2, NULL, NULL, NULL, NULL),
(166, 'none-1944970.prt', NULL, '2016-08-06 15:48:06', '2016-08-06 15:48:06', 166, 2, NULL, NULL, NULL, NULL),
(167, 'none-498150.prt', NULL, '2016-08-06 15:48:16', '2016-08-06 15:48:16', 167, 2, NULL, NULL, NULL, NULL),
(168, 'none-3412920.prt', NULL, '2016-08-06 15:48:25', '2016-08-06 15:48:25', 168, 2, NULL, NULL, NULL, NULL),
(169, 'none-2453900.prt', NULL, '2016-08-06 15:48:35', '2016-08-06 15:48:35', 169, 2, NULL, NULL, NULL, NULL),
(170, 'none-3410430.prt', NULL, '2016-08-06 15:48:46', '2016-08-06 15:48:46', 170, 2, NULL, NULL, NULL, NULL),
(171, 'none-989720.prt', NULL, '2016-08-06 15:48:56', '2016-08-06 15:48:56', 171, 2, NULL, NULL, NULL, NULL),
(172, 'none-2913880.prt', NULL, '2016-08-06 15:49:06', '2016-08-06 15:49:06', 172, 2, NULL, NULL, NULL, NULL),
(173, 'none-495660.prt', NULL, '2016-08-06 15:49:16', '2016-08-06 15:49:16', 173, 2, NULL, NULL, NULL, NULL),
(174, 'none-3420320.prt', NULL, '2016-08-06 15:49:26', '2016-08-06 15:49:26', 174, 2, NULL, NULL, NULL, NULL),
(175, 'none-1483140.prt', NULL, '2016-08-06 15:49:36', '2016-08-06 15:49:36', 175, 2, NULL, NULL, NULL, NULL),
(176, 'none-1943120.prt', NULL, '2016-08-06 15:49:46', '2016-08-06 15:49:46', 176, 2, NULL, NULL, NULL, NULL),
(177, 'none-2430350.prt', NULL, '2016-08-06 15:49:56', '2016-08-06 15:49:56', 177, 2, NULL, NULL, NULL, NULL),
(178, 'none-1947460.prt', NULL, '2016-08-06 15:50:06', '2016-08-06 15:50:06', 178, 2, NULL, NULL, NULL, NULL),
(179, 'none-981040.prt', NULL, '2016-08-06 15:50:16', '2016-08-06 15:50:16', 179, 2, NULL, NULL, NULL, NULL),
(180, 'none-2445860.prt', NULL, '2016-08-06 15:50:26', '2016-08-06 15:50:26', 180, 2, NULL, NULL, NULL, NULL),
(181, 'none-3427150.prt', NULL, '2016-08-06 15:50:36', '2016-08-06 15:50:36', 181, 2, NULL, NULL, NULL, NULL),
(182, 'none-1949950.prt', NULL, '2016-08-06 15:50:46', '2016-08-06 15:50:46', 182, 2, NULL, NULL, NULL, NULL),
(183, 'none-2936790.prt', NULL, '2016-08-06 15:50:56', '2016-08-06 15:50:56', 183, 2, NULL, NULL, NULL, NULL),
(184, 'none-2941770.prt', NULL, '2016-08-06 15:51:06', '2016-08-06 15:51:06', 184, 2, NULL, NULL, NULL, NULL),
(185, 'none-24510.prt', NULL, '2016-08-06 15:51:16', '2016-08-06 15:51:16', 185, 2, NULL, NULL, NULL, NULL),
(186, 'none-500640.prt', NULL, '2016-08-06 15:51:26', '2016-08-06 15:51:26', 186, 2, NULL, NULL, NULL, NULL),
(187, 'none-2918220.prt', NULL, '2016-08-06 15:51:36', '2016-08-06 15:51:36', 187, 2, NULL, NULL, NULL, NULL),
(188, 'none-1958630.prt', NULL, '2016-08-06 15:51:46', '2016-08-06 15:51:46', 188, 2, NULL, NULL, NULL, NULL),
(189, 'none-2927540.prt', NULL, '2016-08-06 15:51:56', '2016-08-06 15:51:56', 189, 2, NULL, NULL, NULL, NULL),
(190, 'none-29490.prt', NULL, '2016-08-06 15:52:05', '2016-08-06 15:52:05', 190, 2, NULL, NULL, NULL, NULL),
(191, 'none-1468910.prt', NULL, '2016-08-06 15:52:15', '2016-08-06 15:52:15', 191, 2, NULL, NULL, NULL, NULL),
(192, 'none-2444010.prt', NULL, '2016-08-06 15:52:25', '2016-08-06 15:52:25', 192, 2, NULL, NULL, NULL, NULL),
(193, 'none-12770.prt', NULL, '2016-08-06 15:52:35', '2016-08-06 15:52:35', 193, 2, NULL, NULL, NULL, NULL),
(194, 'none-10280.prt', NULL, '2016-08-06 15:52:45', '2016-08-06 15:52:45', 194, 2, NULL, NULL, NULL, NULL),
(195, 'none-3406090.prt', NULL, '2016-08-06 15:52:57', '2016-08-06 15:52:57', 195, 2, NULL, NULL, NULL, NULL),
(196, 'none-1954290.prt', NULL, '2016-08-06 15:53:07', '2016-08-06 15:53:07', 196, 2, NULL, NULL, NULL, NULL),
(197, 'none-493810.prt', NULL, '2016-08-06 15:53:17', '2016-08-06 15:53:17', 197, 2, NULL, NULL, NULL, NULL),
(198, 'none-2439670.prt', NULL, '2016-08-06 15:53:28', '2016-08-06 15:53:28', 198, 2, NULL, NULL, NULL, NULL),
(199, 'none-27000.prt', NULL, '2016-08-06 15:53:38', '2016-08-06 15:53:38', 199, 2, NULL, NULL, NULL, NULL),
(200, 'none-3450.prt', NULL, '2016-08-06 15:53:48', '2016-08-06 15:53:48', 200, 2, NULL, NULL, NULL, NULL),
(201, '44v-m70-900_ifu_jorge.asm', NULL, '2016-08-06 15:53:57', '2016-08-06 15:53:57', 201, NULL, NULL, NULL, NULL, NULL),
(202, 'none-345290.prt', NULL, '2016-08-06 15:54:07', '2016-08-06 15:54:07', 202, 2, NULL, NULL, NULL, NULL),
(203, 'none-336450.prt', NULL, '2016-08-06 15:54:17', '2016-08-06 15:54:17', 203, 2, NULL, NULL, NULL, NULL),
(204, 'none-481800.prt', NULL, '2016-08-06 15:54:27', '2016-08-06 15:54:27', 204, 2, NULL, NULL, NULL, NULL),
(205, 'none-398640.prt', NULL, '2016-08-06 15:54:37', '2016-08-06 15:54:37', 205, 2, NULL, NULL, NULL, NULL),
(206, 'none-960.prt', NULL, '2016-08-06 15:54:47', '2016-08-06 15:54:47', 206, 2, NULL, NULL, NULL, NULL),
(207, 'none-285360.prt', NULL, '2016-08-06 15:54:57', '2016-08-06 15:54:57', 207, 2, NULL, NULL, NULL, NULL),
(208, 'none-18640.prt', NULL, '2016-08-06 15:55:07', '2016-08-06 15:55:07', 208, 2, NULL, NULL, NULL, NULL),
(209, 'none-483650.prt', NULL, '2016-08-06 15:55:16', '2016-08-06 15:55:16', 209, 2, NULL, NULL, NULL, NULL),
(210, 'none-472960.prt', NULL, '2016-08-06 15:55:26', '2016-08-06 15:55:26', 210, 2, NULL, NULL, NULL, NULL),
(211, 'none-199140.prt', NULL, '2016-08-06 15:55:36', '2016-08-06 15:55:36', 211, 2, NULL, NULL, NULL, NULL),
(212, 'none-403780.prt', NULL, '2016-08-06 15:55:46', '2016-08-06 15:55:46', 212, 2, NULL, NULL, NULL, NULL),
(213, 'none-150700.prt', NULL, '2016-08-06 15:55:56', '2016-08-06 15:55:56', 213, 2, NULL, NULL, NULL, NULL),
(214, 'none-134460.prt', NULL, '2016-08-06 15:56:06', '2016-08-06 15:56:06', 214, 2, NULL, NULL, NULL, NULL),
(215, 'none-148850.prt', NULL, '2016-08-06 15:56:16', '2016-08-06 15:56:16', 215, 2, NULL, NULL, NULL, NULL),
(216, 'none-16790.prt', NULL, '2016-08-06 15:56:26', '2016-08-06 15:56:26', 216, 2, NULL, NULL, NULL, NULL),
(217, 'none-477460.prt', NULL, '2016-08-06 15:56:36', '2016-08-06 15:56:36', 217, 2, NULL, NULL, NULL, NULL),
(218, 'none-218030.prt', NULL, '2016-08-06 15:56:45', '2016-08-06 15:56:45', 218, 2, NULL, NULL, NULL, NULL),
(219, 'none-203640.prt', NULL, '2016-08-06 15:56:55', '2016-08-06 15:56:55', 219, 2, NULL, NULL, NULL, NULL),
(220, 'none-270970.prt', NULL, '2016-08-06 15:57:05', '2016-08-06 15:57:05', 220, 2, NULL, NULL, NULL, NULL),
(221, 'none-7950.prt', NULL, '2016-08-06 15:57:15', '2016-08-06 15:57:15', 221, 2, NULL, NULL, NULL, NULL),
(222, 'none-14940.prt', NULL, '2016-08-06 15:57:25', '2016-08-06 15:57:25', 222, 2, NULL, NULL, NULL, NULL),
(223, 'none-131810.prt', NULL, '2016-08-06 15:57:35', '2016-08-06 15:57:35', 223, 2, NULL, NULL, NULL, NULL),
(224, 'none-73980.prt', NULL, '2016-08-06 15:57:45', '2016-08-06 15:57:45', 224, 2, NULL, NULL, NULL, NULL),
(225, 'none-205490.prt', NULL, '2016-08-06 15:57:55', '2016-08-06 15:57:55', 225, 2, NULL, NULL, NULL, NULL),
(226, 'none-86520.prt', NULL, '2016-08-06 15:58:05', '2016-08-06 15:58:05', 226, 2, NULL, NULL, NULL, NULL),
(227, 'none-412620.prt', NULL, '2016-08-06 15:58:15', '2016-08-06 15:58:15', 227, 2, NULL, NULL, NULL, NULL),
(228, 'none-333800.prt', NULL, '2016-08-06 15:58:25', '2016-08-06 15:58:25', 228, 2, NULL, NULL, NULL, NULL),
(229, 'none-352690.prt', NULL, '2016-08-06 15:58:35', '2016-08-06 15:58:35', 229, 2, NULL, NULL, NULL, NULL),
(230, 'none-416320.prt', NULL, '2016-08-06 15:58:45', '2016-08-06 15:58:45', 230, 2, NULL, NULL, NULL, NULL),
(231, 'none-405630.prt', NULL, '2016-08-06 15:58:55', '2016-08-06 15:58:55', 231, 2, NULL, NULL, NULL, NULL),
(232, 'none-72130.prt', NULL, '2016-08-06 15:59:05', '2016-08-06 15:59:05', 232, 2, NULL, NULL, NULL, NULL),
(233, 'none-70280.prt', NULL, '2016-08-06 15:59:15', '2016-08-06 15:59:15', 233, 2, NULL, NULL, NULL, NULL),
(234, 'none-65140.prt', NULL, '2016-08-06 15:59:25', '2016-08-06 15:59:25', 234, 2, NULL, NULL, NULL, NULL),
(235, 'none-468460.prt', NULL, '2016-08-06 15:59:35', '2016-08-06 15:59:35', 235, 2, NULL, NULL, NULL, NULL),
(236, 'none-407480.prt', NULL, '2016-08-06 15:59:45', '2016-08-06 15:59:45', 236, 2, NULL, NULL, NULL, NULL),
(237, 'none-212480.prt', NULL, '2016-08-06 15:59:55', '2016-08-06 15:59:55', 237, 2, NULL, NULL, NULL, NULL),
(238, 'none-76630.prt', NULL, '2016-08-06 16:00:05', '2016-08-06 16:00:05', 238, 2, NULL, NULL, NULL, NULL),
(239, 'none-6100.prt', NULL, '2016-08-06 16:00:15', '2016-08-06 16:00:15', 239, 2, NULL, NULL, NULL, NULL),
(240, 'none-532410.prt', NULL, '2016-08-06 16:00:25', '2016-08-06 16:00:25', 240, 2, NULL, NULL, NULL, NULL),
(241, 'none-12450.prt', NULL, '2016-08-06 16:00:35', '2016-08-06 16:00:35', 241, 2, NULL, NULL, NULL, NULL),
(242, 'none-201790.prt', NULL, '2016-08-06 16:00:45', '2016-08-06 16:00:45', 242, 2, NULL, NULL, NULL, NULL),
(243, 'none-418170.prt', NULL, '2016-08-06 16:00:55', '2016-08-06 16:00:55', 243, 2, NULL, NULL, NULL, NULL),
(244, 'none-3450.prt', NULL, '2016-08-06 16:01:05', '2016-08-06 16:01:05', 244, 2, NULL, NULL, NULL, NULL),
(245, 'none-208140.prt', NULL, '2016-08-06 16:01:15', '2016-08-06 16:01:15', 245, 2, NULL, NULL, NULL, NULL),
(246, 'none-342800.prt', NULL, '2016-08-06 16:01:25', '2016-08-06 16:01:25', 246, 2, NULL, NULL, NULL, NULL),
(247, 'none-129320.prt', NULL, '2016-08-06 16:01:35', '2016-08-06 16:01:35', 247, 2, NULL, NULL, NULL, NULL),
(248, 'none-196650.prt', NULL, '2016-08-06 16:01:45', '2016-08-06 16:01:45', 248, 2, NULL, NULL, NULL, NULL),
(249, 'none-143300.prt', NULL, '2016-08-06 16:01:55', '2016-08-06 16:01:55', 249, 2, NULL, NULL, NULL, NULL),
(250, 'none-80970.prt', NULL, '2016-08-06 16:02:05', '2016-08-06 16:02:05', 250, 2, NULL, NULL, NULL, NULL),
(251, 'none-67630.prt', NULL, '2016-08-06 16:02:15', '2016-08-06 16:02:15', 251, 2, NULL, NULL, NULL, NULL),
(252, 'none-283510.prt', NULL, '2016-08-06 16:02:26', '2016-08-06 16:02:26', 252, 2, NULL, NULL, NULL, NULL),
(253, 'none-210630.prt', NULL, '2016-08-06 16:02:36', '2016-08-06 16:02:36', 253, 2, NULL, NULL, NULL, NULL),
(254, 'none-340150.prt', NULL, '2016-08-06 16:02:45', '2016-08-06 16:02:45', 254, 2, NULL, NULL, NULL, NULL),
(255, 'none-79120.prt', NULL, '2016-08-06 16:02:56', '2016-08-06 16:02:56', 255, 2, NULL, NULL, NULL, NULL),
(256, 'none-20490.prt', NULL, '2016-08-06 16:03:06', '2016-08-06 16:03:06', 256, 2, NULL, NULL, NULL, NULL),
(257, 'none-347140.prt', NULL, '2016-08-06 16:03:16', '2016-08-06 16:03:16', 257, 2, NULL, NULL, NULL, NULL),
(258, 'none-275470.prt', NULL, '2016-08-06 16:03:25', '2016-08-06 16:03:25', 258, 2, NULL, NULL, NULL, NULL),
(259, 'none-471110.prt', NULL, '2016-08-06 16:03:35', '2016-08-06 16:03:35', 259, 2, NULL, NULL, NULL, NULL),
(260, 'none-272820.prt', NULL, '2016-08-06 16:03:45', '2016-08-06 16:03:45', 260, 2, NULL, NULL, NULL, NULL),
(261, 'none-474810.prt', NULL, '2016-08-06 16:03:55', '2016-08-06 16:03:55', 261, 2, NULL, NULL, NULL, NULL),
(262, 'none-82820.prt', NULL, '2016-08-06 16:04:05', '2016-08-06 16:04:05', 262, 2, NULL, NULL, NULL, NULL),
(263, 'none-136310.prt', NULL, '2016-08-06 16:04:15', '2016-08-06 16:04:15', 263, 2, NULL, NULL, NULL, NULL),
(264, 'none-263980.prt', NULL, '2016-08-06 16:04:25', '2016-08-06 16:04:25', 264, 2, NULL, NULL, NULL, NULL),
(265, 'none-279810.prt', NULL, '2016-08-06 16:04:34', '2016-08-06 16:04:34', 265, 2, NULL, NULL, NULL, NULL),
(266, 'none-331310.prt', NULL, '2016-08-06 16:04:44', '2016-08-06 16:04:44', 266, 2, NULL, NULL, NULL, NULL),
(267, 'none-84670.prt', NULL, '2016-08-06 16:04:54', '2016-08-06 16:04:54', 267, 2, NULL, NULL, NULL, NULL),
(268, 'none-410130.prt', NULL, '2016-08-06 16:05:04', '2016-08-06 16:05:04', 268, 2, NULL, NULL, NULL, NULL),
(269, 'none-22340.prt', NULL, '2016-08-06 16:05:14', '2016-08-06 16:05:14', 269, 2, NULL, NULL, NULL, NULL),
(270, 'none-338300.prt', NULL, '2016-08-06 16:05:24', '2016-08-06 16:05:24', 270, 2, NULL, NULL, NULL, NULL),
(271, 'none-138160.prt', NULL, '2016-08-06 16:05:34', '2016-08-06 16:05:34', 271, 2, NULL, NULL, NULL, NULL),
(272, 'none-414470.prt', NULL, '2016-08-06 16:05:44', '2016-08-06 16:05:44', 272, 2, NULL, NULL, NULL, NULL),
(273, 'none-401130.prt', NULL, '2016-08-06 16:05:54', '2016-08-06 16:05:54', 273, 2, NULL, NULL, NULL, NULL),
(274, 'none-348990.prt', NULL, '2016-08-06 16:06:04', '2016-08-06 16:06:04', 274, 2, NULL, NULL, NULL, NULL),
(275, 'none-266470.prt', NULL, '2016-08-06 16:06:14', '2016-08-06 16:06:14', 275, 2, NULL, NULL, NULL, NULL),
(276, 'none-140810.prt', NULL, '2016-08-06 16:06:24', '2016-08-06 16:06:24', 276, 2, NULL, NULL, NULL, NULL),
(277, 'none-9800.prt', NULL, '2016-08-06 16:06:34', '2016-08-06 16:06:34', 277, 2, NULL, NULL, NULL, NULL),
(278, 'none-214330.prt', NULL, '2016-08-06 16:06:45', '2016-08-06 16:06:45', 278, 2, NULL, NULL, NULL, NULL),
(279, 'none-277960.prt', NULL, '2016-08-06 16:06:55', '2016-08-06 16:06:55', 279, 2, NULL, NULL, NULL, NULL),
(280, 'none-216180.prt', NULL, '2016-08-06 16:07:05', '2016-08-06 16:07:05', 280, 2, NULL, NULL, NULL, NULL),
(281, 'none-269120.prt', NULL, '2016-08-06 16:07:15', '2016-08-06 16:07:15', 281, 2, NULL, NULL, NULL, NULL),
(282, 'none-281660.prt', NULL, '2016-08-06 16:07:25', '2016-08-06 16:07:25', 282, 2, NULL, NULL, NULL, NULL),
(283, 'none-487350.prt', NULL, '2016-08-06 16:07:35', '2016-08-06 16:07:35', 283, 2, NULL, NULL, NULL, NULL),
(284, 'none-479950.prt', NULL, '2016-08-06 16:07:45', '2016-08-06 16:07:45', 284, 2, NULL, NULL, NULL, NULL),
(285, 'none-350840.prt', NULL, '2016-08-06 16:07:55', '2016-08-06 16:07:55', 285, 2, NULL, NULL, NULL, NULL),
(286, 'none-147000.prt', NULL, '2016-08-06 16:08:05', '2016-08-06 16:08:05', 286, 2, NULL, NULL, NULL, NULL),
(287, 'none-485500.prt', NULL, '2016-08-06 16:08:15', '2016-08-06 16:08:15', 287, 2, NULL, NULL, NULL, NULL),
(288, 'none-420020.prt', NULL, '2016-08-06 16:08:25', '2016-08-06 16:08:25', 288, 2, NULL, NULL, NULL, NULL),
(289, 'none-465970.prt', NULL, '2016-08-06 16:08:35', '2016-08-06 16:08:35', 289, 2, NULL, NULL, NULL, NULL),
(290, 'none-145150.prt', NULL, '2016-08-06 16:08:45', '2016-08-06 16:08:45', 290, 2, NULL, NULL, NULL, NULL),
(291, '44v_m70_900_path_afterifu_out.prt', NULL, '2016-08-06 16:08:55', '2016-08-06 16:08:55', 291, NULL, NULL, NULL, NULL, NULL),
(292, '44v-m70-900_path_afterifu.prt', NULL, '2016-08-06 16:09:05', '2016-08-06 16:09:05', 292, NULL, NULL, NULL, NULL, NULL),
(293, '44v-m70-001_sist_de_referencia.prt', NULL, '2016-08-06 16:09:15', '2016-08-06 16:09:15', 293, NULL, NULL, NULL, NULL, NULL),
(294, '44v_m70_110_soporte_esl_der.prt', NULL, '2016-08-06 16:09:25', '2016-08-06 16:09:25', 294, 2, NULL, NULL, 2, 2),
(295, '44v-m70-200_fov_scanning.asm', NULL, '2016-08-06 16:09:35', '2016-08-06 16:09:35', 295, 1, NULL, NULL, 1, 5),
(296, '44v-m70-210_fov_ls2.asm', NULL, '2016-08-06 16:09:45', '2016-08-06 16:09:45', 296, 1, NULL, NULL, 1, 5),
(297, 'din912-m6x12-10_9.prt', NULL, '2016-08-06 16:09:55', '2016-08-06 16:09:55', 297, 2, NULL, NULL, 3, 13),
(298, 'din912-m6x12-10_9.prt', NULL, '2016-08-06 16:10:06', '2016-08-06 16:10:06', 298, 2, NULL, NULL, 3, 13),
(299, 'iso2338-4m6x12-st.prt', NULL, '2016-08-06 16:10:16', '2016-08-06 16:10:16', 299, 2, NULL, NULL, 3, 13),
(300, 'iso2338-4m6x12-st.prt', NULL, '2016-08-06 16:10:26', '2016-08-06 16:10:26', 300, 2, NULL, NULL, 3, 13),
(301, 'din84-m3x10-4_8.prt', NULL, '2016-08-06 16:10:36', '2016-08-06 16:10:36', 301, 2, NULL, NULL, 3, 13),
(302, 'iso2338-4m6x12-st.prt', NULL, '2016-08-06 16:10:46', '2016-08-06 16:10:46', 302, 2, NULL, NULL, 3, 13),
(303, 'iso2338-4m6x12-st.prt', NULL, '2016-08-06 16:10:56', '2016-08-06 16:10:56', 303, 2, NULL, NULL, 3, 13),
(304, 'din433-1-6.prt', NULL, '2016-08-06 16:11:06', '2016-08-06 16:11:06', 304, 2, NULL, NULL, 3, 13),
(305, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:11:16', '2016-08-06 16:11:16', 305, 2, NULL, NULL, 3, 13),
(306, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:11:26', '2016-08-06 16:11:26', 306, 2, NULL, NULL, 3, 13),
(307, 'din84-m3x10-4_8.prt', NULL, '2016-08-06 16:11:36', '2016-08-06 16:11:36', 307, 2, NULL, NULL, 3, 13),
(308, 'din433-1-6.prt', NULL, '2016-08-06 16:11:46', '2016-08-06 16:11:46', 308, 2, NULL, NULL, 3, 13),
(309, 'din912-m03x12.prt', NULL, '2016-08-06 16:11:56', '2016-08-06 16:11:56', 309, 2, NULL, NULL, 3, 13),
(310, 'din912-m03x12.prt', NULL, '2016-08-06 16:12:06', '2016-08-06 16:12:06', 310, 2, NULL, NULL, 3, 13),
(311, 'din912-m6x14-8_8.prt', NULL, '2016-08-06 16:12:16', '2016-08-06 16:12:16', 311, 2, NULL, NULL, 3, 13),
(312, 'din912-m03x12.prt', NULL, '2016-08-06 16:12:26', '2016-08-06 16:12:26', 312, 2, NULL, NULL, 3, 13),
(313, 'din912-m6x14-8_8.prt', NULL, '2016-08-06 16:12:36', '2016-08-06 16:12:36', 313, 2, NULL, NULL, 3, 13),
(314, 'din912-m6x14-8_8.prt', NULL, '2016-08-06 16:12:47', '2016-08-06 16:12:47', 314, 2, NULL, NULL, 3, 13),
(315, 'din912-m6x14-8_8.prt', NULL, '2016-08-06 16:12:57', '2016-08-06 16:12:57', 315, 2, NULL, NULL, 3, 13),
(316, 'din912-m03x12.prt', NULL, '2016-08-06 16:13:07', '2016-08-06 16:13:07', 316, 2, NULL, NULL, 3, 13),
(317, 'din84-m2x4-4_8.prt', NULL, '2016-08-06 16:13:17', '2016-08-06 16:13:17', 317, 2, NULL, NULL, 3, 13),
(318, 'din84-m2x4-4_8.prt', NULL, '2016-08-06 16:13:27', '2016-08-06 16:13:27', 318, 2, NULL, NULL, 3, 13),
(319, 'din_track_35.prt', NULL, '2016-08-06 16:13:37', '2016-08-06 16:13:37', 319, 2, NULL, NULL, 3, 13),
(320, 'db15_connector.prt', NULL, '2016-08-06 16:13:47', '2016-08-06 16:13:47', 320, 2, NULL, NULL, 3, 13),
(321, 'db15_plate.prt', NULL, '2016-08-06 16:13:57', '2016-08-06 16:13:57', 321, 2, NULL, NULL, 3, 13),
(322, 'pimicos_ls110_tr26.prt', NULL, '2016-08-06 16:14:07', '2016-08-06 16:14:07', 322, 2, NULL, NULL, 3, 13),
(323, '44v-m70-210_ls2_base_bench.prt', NULL, '2016-08-06 16:14:17', '2016-08-06 16:14:17', 323, 2, NULL, 4, 2, 3),
(324, '44v-m70-210_ls2_adaptor.prt', NULL, '2016-08-06 16:14:27', '2016-08-06 16:14:27', 324, 2, NULL, 4, 2, 3),
(325, '44v-m70-210_ls2_adaptor_tap.prt', NULL, '2016-08-06 16:14:37', '2016-08-06 16:14:37', 325, 2, NULL, 4, 2, 3),
(326, '44v-m70-210_rem_handle_i.prt', NULL, '2016-08-06 16:14:48', '2016-08-06 16:14:48', 326, 2, NULL, 4, 2, 3),
(327, '44v-m70-210_rem_handle_ii.prt', NULL, '2016-08-06 16:14:58', '2016-08-06 16:14:58', 327, 2, NULL, 4, 2, 3),
(328, '44v-m70-210_ls2_adr_lat_tap.prt', NULL, '2016-08-06 16:15:08', '2016-08-06 16:15:08', 328, 2, NULL, 4, 2, 3),
(329, '44v-m70-210_fov_ps_bket.prt', NULL, '2016-08-06 16:15:18', '2016-08-06 16:15:18', 329, 2, NULL, 4, 2, 3),
(330, '44v-m70-210_xport_support.prt', NULL, '2016-08-06 16:15:28', '2016-08-06 16:15:28', 330, 2, NULL, 4, 2, 3),
(331, '44v-m70-220_fov_ls1.asm', NULL, '2016-08-06 16:15:38', '2016-08-06 16:15:38', 331, 1, NULL, NULL, 1, 5),
(332, 'din127-b4.prt', NULL, '2016-08-06 16:15:48', '2016-08-06 16:15:48', 332, 2, NULL, NULL, 3, 13),
(333, 'din127-b4.prt', NULL, '2016-08-06 16:15:58', '2016-08-06 16:15:58', 333, 2, NULL, NULL, 3, 13),
(334, 'din127-b6.prt', NULL, '2016-08-06 16:16:08', '2016-08-06 16:16:08', 334, 2, NULL, NULL, 3, 13),
(335, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:16:18', '2016-08-06 16:16:18', 335, 2, NULL, NULL, 3, 13),
(336, 'iso2338-4m6x20-st.prt', NULL, '2016-08-06 16:16:28', '2016-08-06 16:16:28', 336, 2, NULL, NULL, 3, 13),
(337, 'iso2338-4m6x20-st.prt', NULL, '2016-08-06 16:16:38', '2016-08-06 16:16:38', 337, 2, NULL, NULL, 3, 13),
(338, 'din127-b4.prt', NULL, '2016-08-06 16:16:48', '2016-08-06 16:16:48', 338, 2, NULL, NULL, 3, 13),
(339, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:16:59', '2016-08-06 16:16:59', 339, 2, NULL, NULL, 3, 13),
(340, 'din127-b6.prt', NULL, '2016-08-06 16:17:09', '2016-08-06 16:17:09', 340, 2, NULL, NULL, 3, 13),
(341, 'din127-b6.prt', NULL, '2016-08-06 16:17:19', '2016-08-06 16:17:19', 341, 2, NULL, NULL, 3, 13),
(342, 'din127-b6.prt', NULL, '2016-08-06 16:17:29', '2016-08-06 16:17:29', 342, 2, NULL, NULL, 3, 13),
(343, 'din127-b4.prt', NULL, '2016-08-06 16:17:39', '2016-08-06 16:17:39', 343, 2, NULL, NULL, 3, 13),
(344, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:17:49', '2016-08-06 16:17:49', 344, 2, NULL, NULL, 3, 13),
(345, 'din127-b6.prt', NULL, '2016-08-06 16:18:00', '2016-08-06 16:18:00', 345, 2, NULL, NULL, 3, 13),
(346, 'din127-b6.prt', NULL, '2016-08-06 16:18:10', '2016-08-06 16:18:10', 346, 2, NULL, NULL, 3, 13),
(347, 'din127-b4.prt', NULL, '2016-08-06 16:18:20', '2016-08-06 16:18:20', 347, 2, NULL, NULL, 3, 13),
(348, 'din127-b4.prt', NULL, '2016-08-06 16:18:30', '2016-08-06 16:18:30', 348, 2, NULL, NULL, 3, 13),
(349, 'din127-b4.prt', NULL, '2016-08-06 16:18:40', '2016-08-06 16:18:40', 349, 2, NULL, NULL, 3, 13),
(350, 'din127-b6.prt', NULL, '2016-08-06 16:18:50', '2016-08-06 16:18:50', 350, 2, NULL, NULL, 3, 13),
(351, 'din127-b4.prt', NULL, '2016-08-06 16:19:00', '2016-08-06 16:19:00', 351, 2, NULL, NULL, 3, 13),
(352, 'din127-b4.prt', NULL, '2016-08-06 16:19:10', '2016-08-06 16:19:10', 352, 2, NULL, NULL, 3, 13),
(353, 'din127-b4.prt', NULL, '2016-08-06 16:19:20', '2016-08-06 16:19:20', 353, 2, NULL, NULL, 3, 13),
(354, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:19:30', '2016-08-06 16:19:30', 354, 2, NULL, NULL, 3, 13),
(355, 'din127-b4.prt', NULL, '2016-08-06 16:19:40', '2016-08-06 16:19:40', 355, 2, NULL, NULL, 3, 13),
(356, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:19:50', '2016-08-06 16:19:50', 356, 2, NULL, NULL, 3, 13),
(357, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:20:01', '2016-08-06 16:20:01', 357, 2, NULL, NULL, 3, 13),
(358, 'din127-b4.prt', NULL, '2016-08-06 16:20:11', '2016-08-06 16:20:11', 358, 2, NULL, NULL, 3, 13),
(359, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:20:21', '2016-08-06 16:20:21', 359, 2, NULL, NULL, 3, 13),
(360, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:20:31', '2016-08-06 16:20:31', 360, 2, NULL, NULL, 3, 13),
(361, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:20:41', '2016-08-06 16:20:41', 361, 2, NULL, NULL, 3, 13),
(362, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:20:51', '2016-08-06 16:20:51', 362, 2, NULL, NULL, 3, 13),
(363, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:21:01', '2016-08-06 16:21:01', 363, 2, NULL, NULL, 3, 13),
(364, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:21:11', '2016-08-06 16:21:11', 364, 2, NULL, NULL, 3, 13),
(365, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:21:21', '2016-08-06 16:21:21', 365, 2, NULL, NULL, 3, 13),
(366, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:21:31', '2016-08-06 16:21:31', 366, 2, NULL, NULL, 3, 13),
(367, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:21:41', '2016-08-06 16:21:41', 367, 2, NULL, NULL, 3, 13),
(368, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:21:51', '2016-08-06 16:21:51', 368, 2, NULL, NULL, 3, 13),
(369, 'din912-m6x18-8_8.prt', NULL, '2016-08-06 16:22:01', '2016-08-06 16:22:01', 369, 2, NULL, NULL, 3, 13),
(370, 'din912-m6x18-8_8.prt', NULL, '2016-08-06 16:22:11', '2016-08-06 16:22:11', 370, 2, NULL, NULL, 3, 13),
(371, 'din912-m6x18-8_8.prt', NULL, '2016-08-06 16:22:22', '2016-08-06 16:22:22', 371, 2, NULL, NULL, 3, 13),
(372, 'din912-m6x10-8_8.prt', NULL, '2016-08-06 16:22:32', '2016-08-06 16:22:32', 372, 2, NULL, NULL, 3, 13),
(373, 'din912-m6x10-8_8.prt', NULL, '2016-08-06 16:22:42', '2016-08-06 16:22:42', 373, 2, NULL, NULL, 3, 13),
(374, 'din912-m6x18-8_8.prt', NULL, '2016-08-06 16:22:52', '2016-08-06 16:22:52', 374, 2, NULL, NULL, 3, 13),
(375, 'din912-m6x18-8_8.prt', NULL, '2016-08-06 16:23:02', '2016-08-06 16:23:02', 375, 2, NULL, NULL, 3, 13),
(376, 'din912-m4x8-8_8.prt', NULL, '2016-08-06 16:23:12', '2016-08-06 16:23:12', 376, 2, NULL, NULL, 3, 13),
(377, 'din912-m4x8-8_8.prt', NULL, '2016-08-06 16:23:22', '2016-08-06 16:23:22', 377, 2, NULL, NULL, 3, 13),
(378, 'din912-m4x18-8_8.prt', NULL, '2016-08-06 16:23:32', '2016-08-06 16:23:32', 378, 2, NULL, NULL, 3, 13),
(379, 'din912-m4x18-8_8.prt', NULL, '2016-08-06 16:23:42', '2016-08-06 16:23:42', 379, 2, NULL, NULL, 3, 13),
(380, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:23:52', '2016-08-06 16:23:52', 380, 2, NULL, NULL, 3, 13),
(381, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:24:02', '2016-08-06 16:24:02', 381, 2, NULL, NULL, 3, 13),
(382, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:24:12', '2016-08-06 16:24:12', 382, 2, NULL, NULL, 3, 13),
(383, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:24:22', '2016-08-06 16:24:22', 383, 2, NULL, NULL, 3, 13),
(384, 'din912-m4x10-8_8.prt', NULL, '2016-08-06 16:24:33', '2016-08-06 16:24:33', 384, 2, NULL, NULL, 3, 13),
(385, 'din912-m4x10-8_8.prt', NULL, '2016-08-06 16:24:43', '2016-08-06 16:24:43', 385, 2, NULL, NULL, 3, 13),
(386, 'din912-m4x10-8_8.prt', NULL, '2016-08-06 16:24:53', '2016-08-06 16:24:53', 386, 2, NULL, NULL, 3, 13),
(387, 'din912-m4x10-8_8.prt', NULL, '2016-08-06 16:25:03', '2016-08-06 16:25:03', 387, 2, NULL, NULL, 3, 13),
(388, 'sph-kar-080-009.prt', NULL, '2016-08-06 16:25:13', '2016-08-06 16:25:13', 388, 2, NULL, NULL, 3, 13),
(389, 'din912-m02x04.prt', NULL, '2016-08-06 16:25:23', '2016-08-06 16:25:23', 389, 2, NULL, NULL, 3, 13),
(390, 'din912-m02x04.prt', NULL, '2016-08-06 16:25:33', '2016-08-06 16:25:33', 390, 2, NULL, NULL, 3, 13),
(391, 'sph-kar-080-009.prt', NULL, '2016-08-06 16:25:44', '2016-08-06 16:25:44', 391, 2, NULL, NULL, 3, 13),
(392, 'db15hd_connector.prt', NULL, '2016-08-06 16:25:54', '2016-08-06 16:25:54', 392, 2, NULL, NULL, 3, 13),
(393, 'kis_mask_mechanism.asm', NULL, '2016-08-06 16:26:04', '2016-08-06 16:26:04', 393, 1, NULL, NULL, 1, 5),
(394, 'parallel_pin_hardened_428902127.prt', NULL, '2016-08-06 16:26:14', '2016-08-06 16:26:14', 394, 2, NULL, NULL, 3, 13),
(395, 'kugellager_ra_3100x.prt', NULL, '2016-08-06 16:26:24', '2016-08-06 16:26:24', 395, 2, NULL, NULL, 3, 13),
(396, 'socket_head_cap_screw1385571520.prt', NULL, '2016-08-06 16:26:34', '2016-08-06 16:26:34', 396, 2, NULL, NULL, 3, 13),
(397, 'socket_head_cap_screw1385571527.prt', NULL, '2016-08-06 16:26:44', '2016-08-06 16:26:44', 397, 2, NULL, NULL, 3, 13),
(398, 'grg-ssu-105.prt', NULL, '2016-08-06 16:26:54', '2016-08-06 16:26:54', 398, 2, NULL, NULL, 3, 13),
(399, 'grg-ssu-082.prt', NULL, '2016-08-06 16:27:04', '2016-08-06 16:27:04', 399, 2, NULL, NULL, 3, 13),
(400, 'grg-ssu-109_mit_rae.prt', NULL, '2016-08-06 16:27:14', '2016-08-06 16:27:14', 400, 2, NULL, NULL, 3, 13),
(401, 'parallel_pin_hardened_428902127.prt', NULL, '2016-08-06 16:27:24', '2016-08-06 16:27:24', 401, 2, NULL, NULL, 3, 13),
(402, 'hex_thin_nut_chamfer-1611425567.prt', NULL, '2016-08-06 16:27:34', '2016-08-06 16:27:34', 402, 2, NULL, NULL, 3, 13),
(403, 'grg-ssu-086.prt', NULL, '2016-08-06 16:27:44', '2016-08-06 16:27:44', 403, 2, NULL, NULL, 3, 13),
(404, 'grg-ssu-109_mit_rae.prt', NULL, '2016-08-06 16:27:54', '2016-08-06 16:27:54', 404, 2, NULL, NULL, 3, 13),
(405, 'grg-ssu-090.prt', NULL, '2016-08-06 16:28:04', '2016-08-06 16:28:04', 405, 2, NULL, NULL, 3, 13),
(406, 'hex_thin_nut_fine_gradeab_dinhe.prt', NULL, '2016-08-06 16:28:14', '2016-08-06 16:28:14', 406, 2, NULL, NULL, 3, 13),
(407, 'socket_head_cap_screw1385571526.prt', NULL, '2016-08-06 16:28:24', '2016-08-06 16:28:24', 407, 2, NULL, NULL, 3, 13),
(408, 'grg-ssu-102.prt', NULL, '2016-08-06 16:28:35', '2016-08-06 16:28:35', 408, 2, NULL, NULL, 3, 13),
(409, 'grg-ssu-080.prt', NULL, '2016-08-06 16:28:45', '2016-08-06 16:28:45', 409, 2, NULL, NULL, 3, 13),
(410, 'rz_043i_1.prt', NULL, '2016-08-06 16:28:55', '2016-08-06 16:28:55', 410, 2, NULL, NULL, 3, 13),
(411, 'wue-020-001.prt', NULL, '2016-08-06 16:29:05', '2016-08-06 16:29:05', 411, 2, NULL, NULL, 3, 13),
(412, 'parallel_pin_hardened_428902127.prt', NULL, '2016-08-06 16:29:15', '2016-08-06 16:29:15', 412, 2, NULL, NULL, 3, 13),
(413, 'grg-ssu-109_mit_rae.prt', NULL, '2016-08-06 16:29:25', '2016-08-06 16:29:25', 413, 2, NULL, NULL, 3, 13),
(414, 'hex_thin_nut_chamfer-1611425567.prt', NULL, '2016-08-06 16:29:35', '2016-08-06 16:29:35', 414, 2, NULL, NULL, 3, 13),
(415, 'grg-ssu-108.prt', NULL, '2016-08-06 16:29:45', '2016-08-06 16:29:45', 415, 2, NULL, NULL, 3, 13),
(416, 'grg-ssu-110.prt', NULL, '2016-08-06 16:29:55', '2016-08-06 16:29:55', 416, 2, NULL, NULL, 3, 13),
(417, 'grg-ssu-090.prt', NULL, '2016-08-06 16:30:05', '2016-08-06 16:30:05', 417, 2, NULL, NULL, 3, 13),
(418, 'grg-ssu-111.prt', NULL, '2016-08-06 16:30:15', '2016-08-06 16:30:15', 418, 2, NULL, NULL, 3, 13),
(419, 'socket_head_cap_screw1385571523.prt', NULL, '2016-08-06 16:30:25', '2016-08-06 16:30:25', 419, 2, NULL, NULL, 3, 13),
(420, 'socket_head_cap_screw1385571521.prt', NULL, '2016-08-06 16:30:35', '2016-08-06 16:30:35', 420, 2, NULL, NULL, 3, 13),
(421, 'rz_043i_el17_5.prt', NULL, '2016-08-06 16:30:45', '2016-08-06 16:30:45', 421, 2, NULL, NULL, 3, 13),
(422, 'wue-20-002.prt', NULL, '2016-08-06 16:30:55', '2016-08-06 16:30:55', 422, 2, NULL, NULL, 3, 13),
(423, 'sph-kar-080-008.prt', NULL, '2016-08-06 16:31:05', '2016-08-06 16:31:05', 423, 2, NULL, NULL, 3, 13),
(424, 'parallel_pin_hardened_428902127.prt', NULL, '2016-08-06 16:31:16', '2016-08-06 16:31:16', 424, 2, NULL, NULL, 3, 13),
(425, 'grg-ssu-108.prt', NULL, '2016-08-06 16:31:26', '2016-08-06 16:31:26', 425, 2, NULL, NULL, 3, 13),
(426, 'socket_head_cap_screw1385571530.prt', NULL, '2016-08-06 16:31:36', '2016-08-06 16:31:36', 426, 2, NULL, NULL, 3, 13),
(427, 'grg-ssu-089.prt', NULL, '2016-08-06 16:31:46', '2016-08-06 16:31:46', 427, 2, NULL, NULL, 3, 13),
(428, 'socket_head_cap_screw1385571524.prt', NULL, '2016-08-06 16:31:56', '2016-08-06 16:31:56', 428, 2, NULL, NULL, 3, 13),
(429, 'grg-ssu-095.prt', NULL, '2016-08-06 16:32:06', '2016-08-06 16:32:06', 429, 2, NULL, NULL, 3, 13),
(430, 'kugellager_ra_3100x.prt', NULL, '2016-08-06 16:32:16', '2016-08-06 16:32:16', 430, 2, NULL, NULL, 3, 13),
(431, 'grg-ssu-108.prt', NULL, '2016-08-06 16:32:27', '2016-08-06 16:32:27', 431, 2, NULL, NULL, 3, 13),
(432, 'socket_head_cap_screw1385571525.prt', NULL, '2016-08-06 16:32:37', '2016-08-06 16:32:37', 432, 2, NULL, NULL, 3, 13),
(433, 'grg-ssu-109_mit_rae.prt', NULL, '2016-08-06 16:32:47', '2016-08-06 16:32:47', 433, 2, NULL, NULL, 3, 13),
(434, 'sph-kar-080-008.prt', NULL, '2016-08-06 16:32:57', '2016-08-06 16:32:57', 434, 2, NULL, NULL, 3, 13),
(435, 'wue-020-001.prt', NULL, '2016-08-06 16:33:06', '2016-08-06 16:33:06', 435, 2, NULL, NULL, 3, 13),
(436, 'grg-ssu-108.prt', NULL, '2016-08-06 16:33:16', '2016-08-06 16:33:16', 436, 2, NULL, NULL, 3, 13),
(437, 'wue-20-002.prt', NULL, '2016-08-06 16:33:26', '2016-08-06 16:33:26', 437, 2, NULL, NULL, 3, 13),
(438, 'slotted_set_screw_conepoint_di.prt', NULL, '2016-08-06 16:33:37', '2016-08-06 16:33:37', 438, 2, NULL, NULL, 3, 13),
(439, 'sph-kar-080-009.prt', NULL, '2016-08-06 16:33:47', '2016-08-06 16:33:47', 439, 2, NULL, NULL, 3, 13),
(440, 'sph-kar-080-009.prt', NULL, '2016-08-06 16:33:57', '2016-08-06 16:33:57', 440, 2, NULL, NULL, 3, 13),
(441, 'window_mask.prt', NULL, '2016-08-06 16:34:07', '2016-08-06 16:34:07', 441, 2, NULL, 4, 2, 3),
(442, 'grg-ssu-088.prt', NULL, '2016-08-06 16:34:17', '2016-08-06 16:34:17', 442, 2, NULL, NULL, 3, 13),
(443, 'grg-ssu-081.prt', NULL, '2016-08-06 16:34:27', '2016-08-06 16:34:27', 443, 2, NULL, NULL, 3, 13),
(444, 'grg-ssu-114.prt', NULL, '2016-08-06 16:34:37', '2016-08-06 16:34:37', 444, 2, NULL, NULL, 3, 13),
(445, 'grg-ssu-113.prt', NULL, '2016-08-06 16:34:47', '2016-08-06 16:34:47', 445, 2, NULL, NULL, 3, 13),
(446, 'pimicos_ls65_tr26.prt', NULL, '2016-08-06 16:34:58', '2016-08-06 16:34:58', 446, 2, NULL, NULL, 3, 13),
(447, '44v-m70-220_angular_bracket.prt', NULL, '2016-08-06 16:35:08', '2016-08-06 16:35:08', 447, 2, NULL, 4, 2, 3),
(448, '44v-m70-220_transition_plte.prt', NULL, '2016-08-06 16:35:18', '2016-08-06 16:35:18', 448, 2, NULL, 4, 2, 3),
(449, '44v-m70-220_kis_mask_tap.prt', NULL, '2016-08-06 16:35:28', '2016-08-06 16:35:28', 449, 2, NULL, 4, 2, 3),
(450, '44v-m70-220_kis_mask_filler.prt', NULL, '2016-08-06 16:35:38', '2016-08-06 16:35:38', 450, 2, NULL, 4, 2, 3),
(451, '44v-m70-220_ls65_end_stop.prt', NULL, '2016-08-06 16:35:48', '2016-08-06 16:35:48', 451, 2, NULL, 4, 2, 3),
(452, '44v-m70-220_rot_mask_tool.prt', NULL, '2016-08-06 16:35:58', '2016-08-06 16:35:58', 452, 2, NULL, 4, 2, 3),
(453, '44v-m70-230_fov_ls3.asm', NULL, '2016-08-06 16:36:08', '2016-08-06 16:36:08', 453, 1, NULL, NULL, 1, 5),
(454, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:36:18', '2016-08-06 16:36:18', 454, 2, NULL, NULL, 3, 13),
(455, 'din127-b4.prt', NULL, '2016-08-06 16:36:28', '2016-08-06 16:36:28', 455, 2, NULL, NULL, 3, 13),
(456, 'din127-b4.prt', NULL, '2016-08-06 16:36:38', '2016-08-06 16:36:38', 456, 2, NULL, NULL, 3, 13),
(457, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:36:47', '2016-08-06 16:36:47', 457, 2, NULL, NULL, 3, 13),
(458, 'din127-b4.prt', NULL, '2016-08-06 16:36:57', '2016-08-06 16:36:57', 458, 2, NULL, NULL, 3, 13),
(459, 'din127-b4.prt', NULL, '2016-08-06 16:37:08', '2016-08-06 16:37:08', 459, 2, NULL, NULL, 3, 13),
(460, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:37:18', '2016-08-06 16:37:18', 460, 2, NULL, NULL, 3, 13);
INSERT INTO `mech_systems` (`id`, `file_name`, `version`, `created_at`, `updated_at`, `system_id`, `mech_system_type_id`, `mech_optical_surface_id`, `mech_material_id`, `acquisition_workflow_id`, `acquisition_status_id`) VALUES
(461, 'din127-b4.prt', NULL, '2016-08-06 16:37:27', '2016-08-06 16:37:27', 461, 2, NULL, NULL, 3, 13),
(462, 'din127-b4.prt', NULL, '2016-08-06 16:37:37', '2016-08-06 16:37:37', 462, 2, NULL, NULL, 3, 13),
(463, 'din127-b4.prt', NULL, '2016-08-06 16:37:48', '2016-08-06 16:37:48', 463, 2, NULL, NULL, 3, 13),
(464, 'din127-b4.prt', NULL, '2016-08-06 16:37:57', '2016-08-06 16:37:57', 464, 2, NULL, NULL, 3, 13),
(465, 'din127-b4.prt', NULL, '2016-08-06 16:38:08', '2016-08-06 16:38:08', 465, 2, NULL, NULL, 3, 13),
(466, 'din127-b4.prt', NULL, '2016-08-06 16:38:18', '2016-08-06 16:38:18', 466, 2, NULL, NULL, 3, 13),
(467, 'din127-b4.prt', NULL, '2016-08-06 16:38:28', '2016-08-06 16:38:28', 467, 2, NULL, NULL, 3, 13),
(468, 'din127-b4.prt', NULL, '2016-08-06 16:38:38', '2016-08-06 16:38:38', 468, 2, NULL, NULL, 3, 13),
(469, 'iso2338-3m6x12-st.prt', NULL, '2016-08-06 16:38:48', '2016-08-06 16:38:48', 469, 2, NULL, NULL, 3, 13),
(470, 'din127-b4.prt', NULL, '2016-08-06 16:38:58', '2016-08-06 16:38:58', 470, 2, NULL, NULL, 3, 13),
(471, 'din127-b4.prt', NULL, '2016-08-06 16:39:08', '2016-08-06 16:39:08', 471, 2, NULL, NULL, 3, 13),
(472, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:39:18', '2016-08-06 16:39:18', 472, 2, NULL, NULL, 3, 13),
(473, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:39:28', '2016-08-06 16:39:28', 473, 2, NULL, NULL, 3, 13),
(474, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:39:38', '2016-08-06 16:39:38', 474, 2, NULL, NULL, 3, 13),
(475, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:39:48', '2016-08-06 16:39:48', 475, 2, NULL, NULL, 3, 13),
(476, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:39:58', '2016-08-06 16:39:58', 476, 2, NULL, NULL, 3, 13),
(477, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:40:08', '2016-08-06 16:40:08', 477, 2, NULL, NULL, 3, 13),
(478, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:40:18', '2016-08-06 16:40:18', 478, 2, NULL, NULL, 3, 13),
(479, 'din912-m4x12-8_8.prt', NULL, '2016-08-06 16:40:28', '2016-08-06 16:40:28', 479, 2, NULL, NULL, 3, 13),
(480, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:40:38', '2016-08-06 16:40:38', 480, 2, NULL, NULL, 3, 13),
(481, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:40:48', '2016-08-06 16:40:48', 481, 2, NULL, NULL, 3, 13),
(482, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:40:58', '2016-08-06 16:40:58', 482, 2, NULL, NULL, 3, 13),
(483, 'din84-m2x4-4_8.prt', NULL, '2016-08-06 16:41:08', '2016-08-06 16:41:08', 483, 2, NULL, NULL, 3, 13),
(484, 'din912-m4x10-8_8.prt', NULL, '2016-08-06 16:41:18', '2016-08-06 16:41:18', 484, 2, NULL, NULL, 3, 13),
(485, 'din912-m4x10-8_8.prt', NULL, '2016-08-06 16:41:28', '2016-08-06 16:41:28', 485, 2, NULL, NULL, 3, 13),
(486, 'din912-m4x10-8_8.prt', NULL, '2016-08-06 16:41:38', '2016-08-06 16:41:38', 486, 2, NULL, NULL, 3, 13),
(487, 'tornillo_din-912_m3x12.prt', NULL, '2016-08-06 16:41:48', '2016-08-06 16:41:48', 487, 2, NULL, NULL, 3, 13),
(488, 'tornillo_din-912_m3x12.prt', NULL, '2016-08-06 16:41:58', '2016-08-06 16:41:58', 488, 2, NULL, NULL, 3, 13),
(489, 'tornillo_din-912_m3x12.prt', NULL, '2016-08-06 16:42:08', '2016-08-06 16:42:08', 489, 2, NULL, NULL, 3, 13),
(490, 'db15hd_plate.prt', NULL, '2016-08-06 16:42:18', '2016-08-06 16:42:18', 490, 2, NULL, NULL, 3, 13),
(491, 'db15hd_connector.prt', NULL, '2016-08-06 16:42:29', '2016-08-06 16:42:29', 491, 2, NULL, NULL, 3, 13),
(492, 'fa_screw_tsbm3-10-8_5.prt', NULL, '2016-08-06 16:42:39', '2016-08-06 16:42:39', 492, 2, NULL, NULL, 3, 13),
(493, 'fa_screw_tsbm3-10-8_5.prt', NULL, '2016-08-06 16:42:49', '2016-08-06 16:42:49', 493, 2, NULL, NULL, 3, 13),
(494, 'pimicos_ls65_tr26.prt', NULL, '2016-08-06 16:42:59', '2016-08-06 16:42:59', 494, 2, NULL, NULL, 3, 13),
(495, 'din913-m2_5x03.prt', NULL, '2016-08-06 16:43:09', '2016-08-06 16:43:09', 495, 2, NULL, NULL, 3, 13),
(496, 'posicionador_m04x10.prt', NULL, '2016-08-06 16:43:19', '2016-08-06 16:43:19', 496, 2, NULL, NULL, 3, 13),
(497, 'posicionador_m04x10.prt', NULL, '2016-08-06 16:43:29', '2016-08-06 16:43:29', 497, 2, NULL, NULL, 3, 13),
(498, '44v-m70-220_ls65_end_stop.prt', NULL, '2016-08-06 16:43:39', '2016-08-06 16:43:39', 498, 2, NULL, 4, 2, 3),
(499, '44v-m70-230_ls3_plate.prt', NULL, '2016-08-06 16:43:50', '2016-08-06 16:43:50', 499, 2, NULL, 4, 2, 3),
(500, '44v-m70-230_ls3_bracket.prt', NULL, '2016-08-06 16:44:00', '2016-08-06 16:44:00', 500, 2, NULL, 4, 2, 3),
(501, '44v-m70-230_vertical_leaf.prt', NULL, '2016-08-06 16:44:10', '2016-08-06 16:44:10', 501, 2, NULL, 1, 2, 3),
(502, '44v-m70-230_ls3_adaptor.prt', NULL, '2016-08-06 16:44:20', '2016-08-06 16:44:20', 502, 2, NULL, 4, 2, 3),
(503, '44v-m70-230_ls3_adaptor_ext.prt', NULL, '2016-08-06 16:44:30', '2016-08-06 16:44:30', 503, 2, NULL, 4, 2, 3),
(504, '44v-m70-230_ls3_adaptor_ext.prt', NULL, '2016-08-06 16:44:40', '2016-08-06 16:44:40', 504, 2, NULL, 4, 2, 3),
(505, '44v-m70-250_pad.prt', NULL, '2016-08-06 16:44:50', '2016-08-06 16:44:50', 505, 2, NULL, 4, 2, 3),
(506, '44v-m70-240_fov_sm1.asm', NULL, '2016-08-06 16:45:00', '2016-08-06 16:45:00', 506, 1, NULL, NULL, 1, 5),
(507, 'din912-m03x10.prt', NULL, '2016-08-06 16:45:10', '2016-08-06 16:45:10', 507, 2, NULL, NULL, 3, 13),
(508, 'din912-m03x10.prt', NULL, '2016-08-06 16:45:20', '2016-08-06 16:45:20', 508, 2, NULL, NULL, 3, 13),
(509, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:45:30', '2016-08-06 16:45:30', 509, 2, NULL, NULL, 3, 13),
(510, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:45:40', '2016-08-06 16:45:40', 510, 2, NULL, NULL, 3, 13),
(511, 'din912-m02x04.prt', NULL, '2016-08-06 16:45:50', '2016-08-06 16:45:50', 511, 2, NULL, NULL, 3, 13),
(512, 'din912-m02x04.prt', NULL, '2016-08-06 16:46:00', '2016-08-06 16:46:00', 512, 2, NULL, NULL, 3, 13),
(513, 'din912-m02x04.prt', NULL, '2016-08-06 16:46:11', '2016-08-06 16:46:11', 513, 2, NULL, NULL, 3, 13),
(514, 'din912-m02x04.prt', NULL, '2016-08-06 16:46:21', '2016-08-06 16:46:21', 514, 2, NULL, NULL, 3, 13),
(515, 'flat_mirror_10x10x02.prt', NULL, '2016-08-06 16:46:31', '2016-08-06 16:46:31', 515, 2, 1, 7, 3, 13),
(516, 'din912-m02x12.prt', NULL, '2016-08-06 16:46:41', '2016-08-06 16:46:41', 516, 2, NULL, NULL, 3, 13),
(517, 'din127b-m02.prt', NULL, '2016-08-06 16:46:51', '2016-08-06 16:46:51', 517, 2, NULL, NULL, 3, 13),
(518, 'din127b-m02.prt', NULL, '2016-08-06 16:47:01', '2016-08-06 16:47:01', 518, 2, NULL, NULL, 3, 13),
(519, 'din912-m02x12.prt', NULL, '2016-08-06 16:47:11', '2016-08-06 16:47:11', 519, 2, NULL, NULL, 3, 13),
(520, 'posicionador_m04x10.prt', NULL, '2016-08-06 16:47:21', '2016-08-06 16:47:21', 520, 2, NULL, NULL, 3, 13),
(521, '44v-m70-240_sm1_mount.prt', NULL, '2016-08-06 16:47:31', '2016-08-06 16:47:31', 521, 2, NULL, 4, 2, 3),
(522, '44v-m70-240_rod_d04x77_5.prt', NULL, '2016-08-06 16:47:41', '2016-08-06 16:47:41', 522, 2, NULL, 1, 2, 3),
(523, '44v-m70-240_rod_d04x77_5.prt', NULL, '2016-08-06 16:47:51', '2016-08-06 16:47:51', 523, 2, NULL, 1, 2, 3),
(524, '44v-m70-240_sm1_flange_b.prt', NULL, '2016-08-06 16:48:01', '2016-08-06 16:48:01', 524, 2, NULL, 4, 2, 3),
(525, '44v-m70-240_sm1_flange_a.prt', NULL, '2016-08-06 16:48:11', '2016-08-06 16:48:11', 525, 2, NULL, 4, 2, 3),
(526, '44v-m70-240_htal_rods_stringer.prt', NULL, '2016-08-06 16:48:21', '2016-08-06 16:48:21', 526, 2, NULL, 4, 2, 3),
(527, '44v-m70-240_htal_rods_bket.prt', NULL, '2016-08-06 16:48:31', '2016-08-06 16:48:31', 527, 2, NULL, 4, 2, 3),
(528, '44v-m70-240_htal_rods_tap.prt', NULL, '2016-08-06 16:48:41', '2016-08-06 16:48:41', 528, 2, NULL, 4, 2, 3),
(529, '44v-m70-240_sm1_adl.prt', NULL, '2016-08-06 16:48:51', '2016-08-24 09:33:18', 529, 2, NULL, 4, 2, 3),
(530, '44v-m70-250_fov_sm3.asm', NULL, '2016-08-06 16:49:00', '2016-08-06 16:49:00', 530, 1, NULL, NULL, 1, 5),
(531, 'din85-m3x10-4_8.prt', NULL, '2016-08-06 16:49:10', '2016-08-06 16:49:10', 531, 2, NULL, NULL, 3, 13),
(532, 'din127-b3.prt', NULL, '2016-08-06 16:49:20', '2016-08-06 16:49:20', 532, 2, NULL, NULL, 3, 13),
(533, 'din912-m03x10.prt', NULL, '2016-08-06 16:49:30', '2016-08-06 16:49:30', 533, 2, NULL, NULL, 3, 13),
(534, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:49:40', '2016-08-06 16:49:40', 534, 2, NULL, NULL, 3, 13),
(535, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:49:49', '2016-08-06 16:49:49', 535, 2, NULL, NULL, 3, 13),
(536, 'flat_mirror_10x10x02.prt', NULL, '2016-08-06 16:49:59', '2016-08-06 16:49:59', 536, 2, 1, 7, 3, 13),
(537, 'din913-m02x04-nyl.prt', NULL, '2016-08-06 16:50:09', '2016-08-06 16:50:09', 537, 2, NULL, NULL, 3, 13),
(538, 'fa_screw_tsbm3-10-8_5.prt', NULL, '2016-08-06 16:50:19', '2016-08-06 16:50:19', 538, 2, NULL, NULL, 3, 13),
(539, 'fa_screw_tsbm3-10-8_5.prt', NULL, '2016-08-06 16:50:29', '2016-08-06 16:50:29', 539, 2, NULL, NULL, 3, 13),
(540, 'din127b-m03.prt', NULL, '2016-08-06 16:50:38', '2016-08-06 16:50:38', 540, 2, NULL, NULL, 3, 13),
(541, 'posicionador_m04x10.prt', NULL, '2016-08-06 16:50:48', '2016-08-06 16:50:48', 541, 2, NULL, NULL, 3, 13),
(542, 'din913-m2_5x03.prt', NULL, '2016-08-06 16:50:58', '2016-08-06 16:50:58', 542, 2, NULL, NULL, 3, 13),
(543, 'posicionador_m04x10.prt', NULL, '2016-08-06 16:51:08', '2016-08-06 16:51:08', 543, 2, NULL, NULL, 3, 13),
(544, 'din913-m2_5x03.prt', NULL, '2016-08-06 16:51:18', '2016-08-06 16:51:18', 544, 2, NULL, NULL, 3, 13),
(545, 'din913-m2_5x03.prt', NULL, '2016-08-06 16:51:28', '2016-08-06 16:51:28', 545, 2, NULL, NULL, 3, 13),
(546, 'din913-m2_5x03.prt', NULL, '2016-08-06 16:51:38', '2016-08-06 16:51:38', 546, 2, NULL, NULL, 3, 13),
(547, '44v-m70-250_sm3_vcal_frame.prt', NULL, '2016-08-06 16:51:47', '2016-08-06 16:51:47', 547, 2, NULL, 4, 2, 3),
(548, '44v-m70-250_rod_d04x70_0.prt', NULL, '2016-08-06 16:51:57', '2016-08-06 16:51:57', 548, 2, NULL, 1, 2, 3),
(549, '44v-m70-250_rod_d04x70_0.prt', NULL, '2016-08-06 16:52:07', '2016-08-06 16:52:07', 549, 2, NULL, 1, 2, 3),
(550, '44v-m70-250_sm3_bracket.prt', NULL, '2016-08-06 16:52:17', '2016-08-06 16:52:17', 550, 2, NULL, 4, 2, 3),
(551, '44v-m70-250_sm3_mount.prt', NULL, '2016-08-06 16:52:27', '2016-08-06 16:52:27', 551, 2, NULL, 4, 2, 3),
(552, '44v-m70-250_sm2_sm3_flange.prt', NULL, '2016-08-06 16:52:37', '2016-08-06 16:52:37', 552, 2, NULL, 4, 2, 3),
(553, '44v-m70-250_sm2_sm3_flange.prt', NULL, '2016-08-06 16:52:46', '2016-08-06 16:52:46', 553, 2, NULL, 4, 2, 3),
(554, '44v-m70-250_sm2_sm3_pastill.prt', NULL, '2016-08-06 16:52:56', '2016-08-06 16:52:56', 554, 2, NULL, 1, 2, 3),
(555, '44v-m70-250_sm2_sm3_pastill.prt', NULL, '2016-08-06 16:53:06', '2016-08-06 16:53:06', 555, 2, NULL, 1, 2, 3),
(556, '44v-m70-250_sm2_sm3_pastill.prt', NULL, '2016-08-06 16:53:16', '2016-08-06 16:53:16', 556, 2, NULL, 1, 2, 3),
(557, '44v-m70-250_sm3_adl.prt', NULL, '2016-08-06 16:53:25', '2016-08-24 09:34:13', 557, 2, NULL, 4, 2, 3),
(558, '44v-m70-260_fov_sm2.asm', NULL, '2016-08-06 16:53:35', '2016-08-06 16:53:35', 558, 1, NULL, NULL, 1, 5),
(559, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:53:45', '2016-08-06 16:53:45', 559, 2, NULL, NULL, 3, 13),
(560, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:53:55', '2016-08-06 16:53:55', 560, 2, NULL, NULL, 3, 13),
(561, 'flat_mirror_10x10x02.prt', NULL, '2016-08-06 16:54:05', '2016-08-06 16:54:05', 561, 2, 1, 7, 3, 13),
(562, '44v-m70-250_sm2_sm3_flange.prt', NULL, '2016-08-06 16:54:15', '2016-08-06 16:54:15', 562, 2, NULL, 4, 2, 3),
(563, '44v-m70-250_sm2_sm3_flange.prt', NULL, '2016-08-06 16:54:25', '2016-08-06 16:54:25', 563, 2, NULL, 4, 2, 3),
(564, '44v-m70-260_sm2_mount.prt', NULL, '2016-08-06 16:54:35', '2016-08-06 16:54:35', 564, 2, NULL, NULL, 2, 3),
(565, '44v-m70-260_sm2_adl.prt', NULL, '2016-08-06 16:54:45', '2016-08-24 09:33:48', 565, 2, NULL, 4, 2, 3),
(566, '44v-m70-270_fov_rs01.asm', NULL, '2016-08-06 16:54:55', '2016-08-06 16:54:55', 566, 1, NULL, NULL, 1, 5),
(567, 'iso2338-2m6x12-st.prt', NULL, '2016-08-06 16:55:04', '2016-08-06 16:55:04', 567, 2, NULL, NULL, 3, 13),
(568, 'din127-b4.prt', NULL, '2016-08-06 16:55:14', '2016-08-06 16:55:14', 568, 2, NULL, NULL, 3, 13),
(569, 'din127-b4.prt', NULL, '2016-08-06 16:55:24', '2016-08-06 16:55:24', 569, 2, NULL, NULL, 3, 13),
(570, 'din933-m3x12-8_8.prt', NULL, '2016-08-06 16:55:34', '2016-08-06 16:55:34', 570, 2, NULL, NULL, 3, 13),
(571, 'din127-b4.prt', NULL, '2016-08-06 16:55:44', '2016-08-06 16:55:44', 571, 2, NULL, NULL, 3, 13),
(572, 'iso2338-2m6x12-st.prt', NULL, '2016-08-06 16:55:53', '2016-08-06 16:55:53', 572, 2, NULL, NULL, 3, 13),
(573, 'din912-m03x16.prt', NULL, '2016-08-06 16:56:03', '2016-08-06 16:56:03', 573, 2, NULL, NULL, 3, 13),
(574, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:56:13', '2016-08-06 16:56:13', 574, 2, NULL, NULL, 3, 13),
(575, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:56:23', '2016-08-06 16:56:23', 575, 2, NULL, NULL, 3, 13),
(576, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:56:33', '2016-08-06 16:56:33', 576, 2, NULL, NULL, 3, 13),
(577, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:56:43', '2016-08-06 16:56:43', 577, 2, NULL, NULL, 3, 13),
(578, 'din84-m1_6x4-4_8.prt', NULL, '2016-08-06 16:56:52', '2016-08-06 16:56:52', 578, 2, NULL, NULL, 3, 13),
(579, 'din912-m4x14-8_8.prt', NULL, '2016-08-06 16:57:02', '2016-08-06 16:57:02', 579, 2, NULL, NULL, 3, 13),
(580, 'rs01_mirror_d12_7_f150.prt', NULL, '2016-08-06 16:57:12', '2016-08-06 16:57:12', 580, 2, 2, 7, 3, 13),
(581, 'din913-m2_5x05.prt', NULL, '2016-08-06 16:57:22', '2016-08-06 16:57:22', 581, 2, NULL, NULL, 3, 13),
(582, 'din913-m2_5x05.prt', NULL, '2016-08-06 16:57:32', '2016-08-06 16:57:32', 582, 2, NULL, NULL, 3, 13),
(583, 'din913-m2_5x05.prt', NULL, '2016-08-06 16:57:41', '2016-08-06 16:57:41', 583, 2, NULL, NULL, 3, 13),
(584, 'din912-m03x08.prt', NULL, '2016-08-06 16:57:51', '2016-08-06 16:57:51', 584, 2, NULL, NULL, 3, 13),
(585, 'din913-m2_5x05.prt', NULL, '2016-08-06 16:58:01', '2016-08-06 16:58:01', 585, 2, NULL, NULL, 3, 13),
(586, 'posicionador_m03x05.prt', NULL, '2016-08-06 16:58:11', '2016-08-06 16:58:11', 586, 2, NULL, NULL, 3, 13),
(587, 'din913-m2_5x05.prt', NULL, '2016-08-06 16:58:21', '2016-08-06 16:58:21', 587, 2, NULL, NULL, 3, 13),
(588, 'din934-m03.prt', NULL, '2016-08-06 16:58:31', '2016-08-06 16:58:31', 588, 2, NULL, NULL, 3, 13),
(589, 'fa_screw_tsbm3-10-8_5.prt', NULL, '2016-08-06 16:58:40', '2016-08-06 16:58:40', 589, 2, NULL, NULL, 3, 13),
(590, 'fa_screw_tsbm3-10-8_5.prt', NULL, '2016-08-06 16:58:50', '2016-08-06 16:58:50', 590, 2, NULL, NULL, 3, 13),
(591, 'din127b-m03.prt', NULL, '2016-08-06 16:59:00', '2016-08-06 16:59:00', 591, 2, NULL, NULL, 3, 13),
(592, 'din127b-m03.prt', NULL, '2016-08-06 16:59:10', '2016-08-06 16:59:10', 592, 2, NULL, NULL, 3, 13),
(593, 'posicionador_m04x10.prt', NULL, '2016-08-06 16:59:20', '2016-08-06 16:59:20', 593, 2, NULL, NULL, 3, 13),
(594, 'posicionador_m04x10.prt', NULL, '2016-08-06 16:59:29', '2016-08-06 16:59:29', 594, 2, NULL, NULL, 3, 13),
(595, '44v-m70-270_rs01_support.prt', NULL, '2016-08-06 16:59:39', '2016-08-06 16:59:39', 595, 2, NULL, 4, 2, 3),
(596, '44v-m70-270_rs01_vcal_brket.prt', NULL, '2016-08-06 16:59:49', '2016-08-06 16:59:49', 596, 2, NULL, 4, 2, 3),
(597, '44v-m70-270_rs01_htal_brket.prt', NULL, '2016-08-06 16:59:59', '2016-08-06 16:59:59', 597, 2, NULL, 4, 2, 3),
(598, '44v-m70-270_rs01_mount.prt', NULL, '2016-08-06 17:00:09', '2016-08-06 17:00:09', 598, 2, NULL, 4, 2, 3),
(599, '44v-m70-270_rs01_flange.prt', NULL, '2016-08-06 17:00:18', '2016-08-06 17:00:18', 599, 2, NULL, 4, 2, 3),
(600, '44v-m70-270_rs01_flange.prt', NULL, '2016-08-06 17:00:28', '2016-08-06 17:00:28', 600, 2, NULL, 4, 2, 3),
(601, '44v-m70-270_rs01_flange.prt', NULL, '2016-08-06 17:00:38', '2016-08-06 17:00:38', 601, 2, NULL, 4, 2, 3),
(602, '44v-m70-270_rs01_adl.prt', NULL, '2016-08-06 17:00:48', '2016-08-24 09:34:37', 602, 2, NULL, 4, 2, 3),
(603, '44v-m70-280_fov_electronics.asm', NULL, '2016-08-06 17:00:58', '2016-08-06 17:00:58', 603, 1, NULL, NULL, 1, 5),
(604, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:01:08', '2016-08-06 17:01:08', 604, 2, NULL, NULL, 3, 13),
(605, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:01:18', '2016-08-06 17:01:18', 605, 2, NULL, NULL, 3, 13),
(606, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:01:27', '2016-08-06 17:01:27', 606, 2, NULL, NULL, 3, 13),
(607, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:01:37', '2016-08-06 17:01:37', 607, 2, NULL, NULL, 3, 13),
(608, 'din84-m3x12-4_8.prt', NULL, '2016-08-06 17:01:47', '2016-08-06 17:01:47', 608, 2, NULL, NULL, 3, 13),
(609, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:01:57', '2016-08-06 17:01:57', 609, 2, NULL, NULL, 3, 13),
(610, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:02:07', '2016-08-06 17:02:07', 610, 2, NULL, NULL, 3, 13),
(611, 'din84-m3x12-4_8.prt', NULL, '2016-08-06 17:02:17', '2016-08-06 17:02:17', 611, 2, NULL, NULL, 3, 13),
(612, 'din84-m3x12-4_8.prt', NULL, '2016-08-06 17:02:27', '2016-08-06 17:02:27', 612, 2, NULL, NULL, 3, 13),
(613, 'din84-m3x12-4_8.prt', NULL, '2016-08-06 17:02:37', '2016-08-06 17:02:37', 613, 2, NULL, NULL, 3, 13),
(614, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:02:46', '2016-08-06 17:02:46', 614, 2, NULL, NULL, 3, 13),
(615, 'din84-m3x8-4_8.prt', NULL, '2016-08-06 17:02:56', '2016-08-06 17:02:56', 615, 2, NULL, NULL, 3, 13),
(616, 'din127-b3.prt', NULL, '2016-08-06 17:03:06', '2016-08-06 17:03:06', 616, 2, NULL, NULL, 3, 13),
(617, 'din127-b3.prt', NULL, '2016-08-06 17:03:16', '2016-08-06 17:03:16', 617, 2, NULL, NULL, 3, 13),
(618, 'din127-b3.prt', NULL, '2016-08-06 17:03:26', '2016-08-06 17:03:26', 618, 2, NULL, NULL, 3, 13),
(619, 'din127-b3.prt', NULL, '2016-08-06 17:03:36', '2016-08-06 17:03:36', 619, 2, NULL, NULL, 3, 13),
(620, 'din127-b3.prt', NULL, '2016-08-06 17:03:46', '2016-08-06 17:03:46', 620, 2, NULL, NULL, 3, 13),
(621, 'din127-b3.prt', NULL, '2016-08-06 17:03:56', '2016-08-06 17:03:56', 621, 2, NULL, NULL, 3, 13),
(622, 'din127-b3.prt', NULL, '2016-08-06 17:04:06', '2016-08-06 17:04:06', 622, 2, NULL, NULL, 3, 13),
(623, 'din127-b3.prt', NULL, '2016-08-06 17:04:16', '2016-08-06 17:04:16', 623, 2, NULL, NULL, 3, 13),
(624, 'din127-b3.prt', NULL, '2016-08-06 17:04:26', '2016-08-06 17:04:26', 624, 2, NULL, NULL, 3, 13),
(625, 'din127-b3.prt', NULL, '2016-08-06 17:04:36', '2016-08-06 17:04:36', 625, 2, NULL, NULL, 3, 13),
(626, 'din127-b3.prt', NULL, '2016-08-06 17:04:46', '2016-08-06 17:04:46', 626, 2, NULL, NULL, 3, 13),
(627, 'din127-b3.prt', NULL, '2016-08-06 17:04:56', '2016-08-06 17:04:56', 627, 2, NULL, NULL, 3, 13),
(628, 'din912-m03x12.prt', NULL, '2016-08-06 17:05:06', '2016-08-06 17:05:06', 628, 2, NULL, NULL, 3, 13),
(629, 'din912-m03x12.prt', NULL, '2016-08-06 17:05:15', '2016-08-06 17:05:15', 629, 2, NULL, NULL, 3, 13),
(630, 'din912-m03x12.prt', NULL, '2016-08-06 17:05:25', '2016-08-06 17:05:25', 630, 2, NULL, NULL, 3, 13),
(631, 'din912-m03x12.prt', NULL, '2016-08-06 17:05:36', '2016-08-06 17:05:36', 631, 2, NULL, NULL, 3, 13),
(632, 'din912-m03x12.prt', NULL, '2016-08-06 17:05:46', '2016-08-06 17:05:46', 632, 2, NULL, NULL, 3, 13),
(633, 'xport.prt', NULL, '2016-08-06 17:05:56', '2016-08-06 17:05:56', 633, 2, NULL, NULL, 3, 13),
(634, 'mcdc_3006s.asm', NULL, '2016-08-06 17:06:06', '2016-08-06 17:06:06', 634, 1, NULL, NULL, 1, 5),
(635, 'mcdc3006s_sldasm_part3.prt', NULL, '2016-08-06 17:06:15', '2016-08-06 17:06:15', 635, 2, NULL, NULL, NULL, NULL),
(636, 'mcdc3006s_sldasm_part2.prt', NULL, '2016-08-06 17:06:25', '2016-08-06 17:06:25', 636, 2, NULL, NULL, NULL, NULL),
(637, 'mcdc3006s_sldasm_part4.prt', NULL, '2016-08-06 17:06:35', '2016-08-06 17:06:35', 637, 2, NULL, NULL, NULL, NULL),
(638, 'modulo_encoder.prt', NULL, '2016-08-06 17:06:44', '2016-08-06 17:06:44', 638, 2, NULL, NULL, NULL, NULL),
(639, 'cosm_kis.prt', NULL, '2016-08-06 17:06:54', '2016-08-06 17:06:54', 639, 2, NULL, NULL, NULL, NULL),
(640, 'mcdc3006s_sldasm_part1.prt', NULL, '2016-08-06 17:07:04', '2016-08-06 17:07:04', 640, 2, NULL, NULL, NULL, NULL),
(641, 'mcdc_3006s.asm', NULL, '2016-08-06 17:07:14', '2016-08-06 17:07:14', 641, 1, NULL, NULL, 1, 5),
(642, 'mcdc3006s_sldasm_part3.prt', NULL, '2016-08-06 17:07:23', '2016-08-06 17:07:23', 642, 2, NULL, NULL, NULL, NULL),
(643, 'mcdc3006s_sldasm_part2.prt', NULL, '2016-08-06 17:07:33', '2016-08-06 17:07:33', 643, 2, NULL, NULL, NULL, NULL),
(644, 'mcdc3006s_sldasm_part4.prt', NULL, '2016-08-06 17:07:43', '2016-08-06 17:07:43', 644, 2, NULL, NULL, NULL, NULL),
(645, 'modulo_encoder.prt', NULL, '2016-08-06 17:07:53', '2016-08-06 17:07:53', 645, 2, NULL, NULL, NULL, NULL),
(646, 'cosm_kis.prt', NULL, '2016-08-06 17:08:03', '2016-08-06 17:08:03', 646, 2, NULL, NULL, NULL, NULL),
(647, 'mcdc3006s_sldasm_part1.prt', NULL, '2016-08-06 17:08:13', '2016-08-06 17:08:13', 647, 2, NULL, NULL, NULL, NULL),
(648, 'mcdc_3006s.asm', NULL, '2016-08-06 17:08:22', '2016-08-06 17:08:22', 648, 1, NULL, NULL, 1, 5),
(649, 'mcdc3006s_sldasm_part3.prt', NULL, '2016-08-06 17:08:32', '2016-08-06 17:08:32', 649, 2, NULL, NULL, NULL, NULL),
(650, 'mcdc3006s_sldasm_part2.prt', NULL, '2016-08-06 17:08:42', '2016-08-06 17:08:42', 650, 2, NULL, NULL, NULL, NULL),
(651, 'mcdc3006s_sldasm_part4.prt', NULL, '2016-08-06 17:08:52', '2016-08-06 17:08:52', 651, 2, NULL, NULL, NULL, NULL),
(652, 'modulo_encoder.prt', NULL, '2016-08-06 17:09:01', '2016-08-06 17:09:01', 652, 2, NULL, NULL, NULL, NULL),
(653, 'cosm_kis.prt', NULL, '2016-08-06 17:09:11', '2016-08-06 17:09:11', 653, 2, NULL, NULL, NULL, NULL),
(654, 'mcdc3006s_sldasm_part1.prt', NULL, '2016-08-06 17:09:21', '2016-08-06 17:09:21', 654, 2, NULL, NULL, NULL, NULL),
(655, 'din127b-m03.prt', NULL, '2016-08-06 17:09:30', '2016-08-06 17:09:30', 655, 2, NULL, NULL, 3, 13),
(656, 'din127b-m03.prt', NULL, '2016-08-06 17:09:40', '2016-08-06 17:09:40', 656, 2, NULL, NULL, 3, 13),
(657, 'din127b-m03.prt', NULL, '2016-08-06 17:09:50', '2016-08-06 17:09:50', 657, 2, NULL, NULL, 3, 13),
(658, 'din127b-m03.prt', NULL, '2016-08-06 17:10:00', '2016-08-06 17:10:00', 658, 2, NULL, NULL, 3, 13),
(659, 'din127b-m03.prt', NULL, '2016-08-06 17:10:09', '2016-08-06 17:10:09', 659, 2, NULL, NULL, 3, 13),
(660, '44v-m70-280_drivers_support.prt', NULL, '2016-08-06 17:10:19', '2016-08-06 17:10:19', 660, 2, NULL, 4, 2, 3),
(661, '44v-m70-310_ifu_optomechanical.asm', NULL, '2016-08-06 17:10:29', '2016-08-06 17:10:29', 661, 1, NULL, NULL, 1, NULL),
(662, 'wo4446-101-ens1_solarnet-est_as.asm', NULL, '2016-08-06 17:10:39', '2016-08-06 17:10:39', 662, 1, NULL, NULL, 1, NULL),
(663, 'wo4446-110-ens1_optics_asm_67.asm', NULL, '2016-08-06 17:10:49', '2016-08-06 17:10:49', 663, 1, NULL, NULL, 4, 2),
(664, 'wo4446-110-f005_pin_38.prt', NULL, '2016-08-06 17:10:59', '2016-08-06 17:10:59', 664, 2, NULL, NULL, NULL, NULL),
(665, 'wo4446-110-f006_plot_37.prt', NULL, '2016-08-06 17:11:09', '2016-08-06 17:11:09', 665, 2, NULL, NULL, NULL, NULL),
(666, 'wo4446-110-f001_folding-mirror_.prt', NULL, '2016-08-06 17:11:19', '2016-08-06 17:11:19', 666, 2, NULL, NULL, NULL, NULL),
(667, 'wo4446-110-f007_plot-mask_23.prt', NULL, '2016-08-06 17:11:28', '2016-08-06 17:11:28', 667, 2, NULL, NULL, NULL, NULL),
(668, 'wo4446-110-f006_plot_37.prt', NULL, '2016-08-06 17:11:38', '2016-08-06 17:11:38', 668, 2, NULL, NULL, NULL, NULL),
(669, 'wo4446-110-f006_plot_37.prt', NULL, '2016-08-06 17:11:48', '2016-08-06 17:11:48', 669, 2, NULL, NULL, NULL, NULL),
(670, 'wo4446-110-f006_plot_37.prt', NULL, '2016-08-06 17:11:57', '2016-08-06 17:11:57', 670, 2, NULL, NULL, NULL, NULL),
(671, 'wo4446-110-f003_base-plate_52.prt', NULL, '2016-08-06 17:12:07', '2016-08-06 17:12:07', 671, 2, NULL, NULL, NULL, NULL),
(672, 'wo4446-110-f006_plot_37.prt', NULL, '2016-08-06 17:12:17', '2016-08-06 17:12:17', 672, 2, NULL, NULL, NULL, NULL),
(673, 'wo4446-110-f002_talon-folding_3.prt', NULL, '2016-08-06 17:12:26', '2016-08-06 17:12:26', 673, 2, NULL, NULL, NULL, NULL),
(674, 'wo4446-110-f004_masque-pupille_.prt', NULL, '2016-08-06 17:12:36', '2016-08-06 17:12:36', 674, 2, NULL, NULL, NULL, NULL),
(675, 'wo4446-111-ens1_slicer_asm_24.asm', NULL, '2016-08-06 17:12:46', '2016-08-06 17:12:46', 675, 1, NULL, 8, 4, 2),
(676, 'wo4446-111-f009_slice-cfg9_39.prt', NULL, '2016-08-06 17:12:56', '2016-08-06 17:12:56', 676, 2, NULL, NULL, NULL, NULL),
(677, 'wo4446-111-f005_slice-cfg5_39.prt', NULL, '2016-08-06 17:13:06', '2016-08-06 17:13:06', 677, 2, NULL, NULL, NULL, NULL),
(678, 'wo4446-111-f008_slice-cfg8_39.prt', NULL, '2016-08-06 17:13:16', '2016-08-06 17:13:16', 678, 2, NULL, NULL, NULL, NULL),
(679, 'wo4446-111-f001_slice-cfg1_39.prt', NULL, '2016-08-06 17:13:25', '2016-08-06 17:13:25', 679, 2, NULL, NULL, NULL, NULL),
(680, 'wo4446-111-f004_slice-cfg4_39.prt', NULL, '2016-08-06 17:13:35', '2016-08-06 17:13:35', 680, 2, NULL, NULL, NULL, NULL),
(681, 'wo4446-111-f003_slice-cfg3_39.prt', NULL, '2016-08-06 17:13:45', '2016-08-06 17:13:45', 681, 2, NULL, NULL, NULL, NULL),
(682, 'wo4446-111-f007_slice-cfg7_39.prt', NULL, '2016-08-06 17:13:55', '2016-08-06 17:13:55', 682, 2, NULL, NULL, NULL, NULL),
(683, 'wo4446-111-f009_slice-cfg9_39.prt', NULL, '2016-08-06 17:14:04', '2016-08-06 17:14:04', 683, 2, NULL, NULL, NULL, NULL),
(684, 'wo4446-111-f006_slice-cfg6_39.prt', NULL, '2016-08-06 17:14:14', '2016-08-06 17:14:14', 684, 2, NULL, NULL, NULL, NULL),
(685, 'wo4446-111-f002_slice-cfg2_39.prt', NULL, '2016-08-06 17:14:24', '2016-08-06 17:14:24', 685, 2, NULL, NULL, NULL, NULL),
(686, 'wo4446-111-f010_talon-slice_36.prt', NULL, '2016-08-06 17:14:34', '2016-08-06 17:14:34', 686, 2, NULL, NULL, NULL, NULL),
(687, 'wo4446-112-ens1_collimator_asm_.asm', NULL, '2016-08-06 17:14:43', '2016-08-06 17:14:43', 687, 1, NULL, 8, 4, 2),
(688, 'wo4446-112-f001_collimator-cfg1.prt', NULL, '2016-08-06 17:14:54', '2016-08-06 17:14:54', 688, 2, NULL, NULL, NULL, NULL),
(689, 'wo4446-112-f002_collimator-cfg2.prt', NULL, '2016-08-06 17:15:03', '2016-08-06 17:15:03', 689, 2, NULL, NULL, NULL, NULL),
(690, 'wo4446-112-f006_collimator-cfg6.prt', NULL, '2016-08-06 17:15:13', '2016-08-06 17:15:13', 690, 2, NULL, NULL, NULL, NULL),
(691, 'wo4446-112-f005_collimator-cfg5.prt', NULL, '2016-08-06 17:15:23', '2016-08-06 17:15:23', 691, 2, NULL, NULL, NULL, NULL),
(692, 'wo4446-112-f007_collimator-cfg7.prt', NULL, '2016-08-06 17:15:32', '2016-08-06 17:15:32', 692, 2, NULL, NULL, NULL, NULL),
(693, 'wo4446-112-f008_collimator-cfg8.prt', NULL, '2016-08-06 17:15:42', '2016-08-06 17:15:42', 693, 2, NULL, NULL, NULL, NULL),
(694, 'wo4446-112-f003_collimator-cfg3.prt', NULL, '2016-08-06 17:15:52', '2016-08-06 17:15:52', 694, 2, NULL, NULL, NULL, NULL),
(695, 'wo4446-112-f009_talon-collimato.prt', NULL, '2016-08-06 17:16:01', '2016-08-06 17:16:01', 695, 2, NULL, NULL, NULL, NULL),
(696, 'wo4446-112-f004_collimator-cfg4.prt', NULL, '2016-08-06 17:16:11', '2016-08-06 17:16:11', 696, 2, NULL, NULL, NULL, NULL),
(697, 'wo4446-113-ens1_camera_asm_22.asm', NULL, '2016-08-06 17:16:21', '2016-08-06 17:16:21', 697, 1, NULL, 8, 4, 2),
(698, 'wo4446-113-f008_camera-cfg8_59.prt', NULL, '2016-08-06 17:16:31', '2016-08-06 17:16:31', 698, 2, NULL, NULL, NULL, NULL),
(699, 'wo4446-113-f003_camera-cfg3_59.prt', NULL, '2016-08-06 17:16:41', '2016-08-06 17:16:41', 699, 2, NULL, NULL, NULL, NULL),
(700, 'wo4446-113-f009_talon-camera_28.prt', NULL, '2016-08-06 17:16:53', '2016-08-06 17:16:53', 700, 2, NULL, NULL, NULL, NULL),
(701, 'wo4446-113-f002_camera-cfg2_59.prt', NULL, '2016-08-06 17:17:04', '2016-08-06 17:17:04', 701, 2, NULL, NULL, NULL, NULL),
(702, 'wo4446-113-f005_camera-cfg5_59.prt', NULL, '2016-08-06 17:17:15', '2016-08-06 17:17:15', 702, 2, NULL, NULL, NULL, NULL),
(703, 'wo4446-113-f007_camera-cfg7_59.prt', NULL, '2016-08-06 17:17:25', '2016-08-06 17:17:25', 703, 2, NULL, NULL, NULL, NULL),
(704, 'wo4446-113-f004_camera-cfg4_59.prt', NULL, '2016-08-06 17:17:34', '2016-08-06 17:17:34', 704, 2, NULL, NULL, NULL, NULL),
(705, 'wo4446-113-f006_camera-cfg6_59.prt', NULL, '2016-08-06 17:17:44', '2016-08-06 17:17:44', 705, 2, NULL, NULL, NULL, NULL),
(706, 'wo4446-113-f001_camera-cfg1_59.prt', NULL, '2016-08-06 17:17:54', '2016-08-06 17:17:54', 706, 2, NULL, NULL, NULL, NULL),
(707, 'is07155.asm', NULL, '2016-08-06 17:18:04', '2016-08-06 17:18:04', 707, 1, NULL, 8, 4, 2),
(708, 'none-9390_3.prt', NULL, '2016-08-06 17:18:16', '2016-08-06 17:18:16', 708, 2, NULL, NULL, NULL, NULL),
(709, 'none-1895750_3.prt', NULL, '2016-08-06 17:18:26', '2016-08-06 17:18:26', 709, 2, NULL, NULL, NULL, NULL),
(710, 'none-260230_3.prt', NULL, '2016-08-06 17:18:36', '2016-08-06 17:18:36', 710, 2, NULL, NULL, NULL, NULL),
(711, 'none-257580_3.prt', NULL, '2016-08-06 17:18:46', '2016-08-06 17:18:46', 711, 2, NULL, NULL, NULL, NULL),
(712, 'none-513560_3.prt', NULL, '2016-08-06 17:18:55', '2016-08-06 17:18:55', 712, 2, NULL, NULL, NULL, NULL),
(713, 'none-1887960_3.prt', NULL, '2016-08-06 17:19:07', '2016-08-06 17:19:07', 713, 2, NULL, NULL, NULL, NULL),
(714, 'none-6900_3.prt', NULL, '2016-08-06 17:19:18', '2016-08-06 17:19:18', 714, 2, NULL, NULL, NULL, NULL),
(715, 'none-1343500_3.prt', NULL, '2016-08-06 17:19:28', '2016-08-06 17:19:28', 715, 2, NULL, NULL, NULL, NULL),
(716, 'none-1890610_3.prt', NULL, '2016-08-06 17:19:37', '2016-08-06 17:19:37', 716, 2, NULL, NULL, NULL, NULL),
(717, 'none-521350_3.prt', NULL, '2016-08-06 17:19:47', '2016-08-06 17:19:47', 717, 2, NULL, NULL, NULL, NULL),
(718, 'none-265370_3.prt', NULL, '2016-08-06 17:19:57', '2016-08-06 17:19:57', 718, 2, NULL, NULL, NULL, NULL),
(719, 'none-1620870_3.prt', NULL, '2016-08-06 17:20:07', '2016-08-06 17:20:07', 719, 2, NULL, NULL, NULL, NULL),
(720, 'none-1338200_3.prt', NULL, '2016-08-06 17:20:17', '2016-08-06 17:20:17', 720, 2, NULL, NULL, NULL, NULL),
(721, 'none-1345990_3.prt', NULL, '2016-08-06 17:20:27', '2016-08-06 17:20:27', 721, 2, NULL, NULL, NULL, NULL),
(722, 'none-4250_3.prt', NULL, '2016-08-06 17:20:37', '2016-08-06 17:20:37', 722, 2, NULL, NULL, NULL, NULL),
(723, 'none-1063320_3.prt', NULL, '2016-08-06 17:20:47', '2016-08-06 17:20:47', 723, 2, NULL, NULL, NULL, NULL),
(724, 'none-788440_3.prt', NULL, '2016-08-06 17:20:57', '2016-08-06 17:20:57', 724, 2, NULL, NULL, NULL, NULL),
(725, 'none-1613080_3.prt', NULL, '2016-08-06 17:21:07', '2016-08-06 17:21:07', 725, 2, NULL, NULL, NULL, NULL),
(726, 'none-1618380_3.prt', NULL, '2016-08-06 17:21:17', '2016-08-06 17:21:17', 726, 2, NULL, NULL, NULL, NULL),
(727, 'none-518860_3.prt', NULL, '2016-08-06 17:21:27', '2016-08-06 17:21:27', 727, 2, NULL, NULL, NULL, NULL),
(728, 'none-1071110_3.prt', NULL, '2016-08-06 17:21:37', '2016-08-06 17:21:37', 728, 2, NULL, NULL, NULL, NULL),
(729, 'none-1615730_3.prt', NULL, '2016-08-06 17:21:48', '2016-08-06 17:21:48', 729, 2, NULL, NULL, NULL, NULL),
(730, 'none-1068620_3.prt', NULL, '2016-08-06 17:21:59', '2016-08-06 17:21:59', 730, 2, NULL, NULL, NULL, NULL),
(731, 'none-796230_3.prt', NULL, '2016-08-06 17:22:09', '2016-08-06 17:22:09', 731, 2, NULL, NULL, NULL, NULL),
(732, 'none-262880_3.prt', NULL, '2016-08-06 17:22:20', '2016-08-06 17:22:20', 732, 2, NULL, NULL, NULL, NULL),
(733, 'none-1600-3-k.prt', NULL, '2016-08-06 17:22:30', '2016-08-06 17:22:30', 733, 2, NULL, NULL, NULL, NULL),
(734, 'none-793740_3.prt', NULL, '2016-08-06 17:22:40', '2016-08-06 17:22:40', 734, 2, NULL, NULL, NULL, NULL),
(735, 'none-1893260_3.prt', NULL, '2016-08-06 17:22:50', '2016-08-06 17:22:50', 735, 2, NULL, NULL, NULL, NULL),
(736, 'none-1340850_3.prt', NULL, '2016-08-06 17:23:00', '2016-08-06 17:23:00', 736, 2, NULL, NULL, NULL, NULL),
(737, 'none-516210_3.prt', NULL, '2016-08-06 17:23:10', '2016-08-06 17:23:10', 737, 2, NULL, NULL, NULL, NULL),
(738, 'none-1065970_3.prt', NULL, '2016-08-06 17:23:20', '2016-08-06 17:23:20', 738, 2, NULL, NULL, NULL, NULL),
(739, 'none-2161310_3.prt', NULL, '2016-08-06 17:23:30', '2016-08-06 17:23:30', 739, 2, NULL, NULL, NULL, NULL),
(740, 'none-791090_3.prt', NULL, '2016-08-06 17:23:39', '2016-08-06 17:23:39', 740, 2, NULL, NULL, NULL, NULL),
(741, 'wo4446-120-ens1_mechanical_asm_.asm', NULL, '2016-08-06 17:23:49', '2016-08-06 17:23:49', 741, 1, NULL, NULL, 4, 12),
(742, 'wo4446-120-ens2_clamp_asm_34.asm', NULL, '2016-08-06 17:23:58', '2016-08-06 17:23:58', 742, 1, NULL, NULL, 4, 12),
(743, 'wo4446-120-f001_clamp_47.prt', NULL, '2016-08-06 17:24:08', '2016-08-24 09:04:21', 743, 2, NULL, NULL, 2, 2),
(744, 'vanel_c-095-125-0200-i_9.prt', NULL, '2016-08-06 17:24:18', '2016-08-06 17:24:18', 744, 2, NULL, NULL, NULL, NULL),
(745, 'misumi_smsb55-20_2.prt', NULL, '2016-08-06 17:24:27', '2016-08-06 17:24:27', 745, 2, NULL, NULL, NULL, NULL),
(746, 'misumi_rondelle-fwssb-d11-v6-t1.prt', NULL, '2016-08-06 17:24:37', '2016-08-06 17:24:37', 746, 2, NULL, NULL, NULL, NULL),
(747, 'misumi_rondelle-fwssb-d11-v6-t1.prt', NULL, '2016-08-06 17:24:46', '2016-08-06 17:24:46', 747, 2, NULL, NULL, NULL, NULL),
(748, 'kapton-tape_18.prt', NULL, '2016-08-06 17:24:56', '2016-08-06 17:24:56', 748, 2, NULL, NULL, NULL, NULL),
(749, 'wo4446-120-ens3_pusher-spring_a.asm', NULL, '2016-08-06 17:25:05', '2016-08-06 17:25:05', 749, 1, NULL, NULL, 4, 12),
(750, 'wo4446-120-f002_barrel_14.prt', NULL, '2016-08-06 17:25:15', '2016-08-06 17:25:15', 750, 2, NULL, NULL, NULL, NULL),
(751, 'wo4446-120-f003_finger_12.prt', NULL, '2016-08-06 17:25:24', '2016-08-06 17:25:24', 751, 2, NULL, NULL, NULL, NULL),
(752, 'st_m12x10_c_15.prt', NULL, '2016-08-06 17:25:34', '2016-08-06 17:25:34', 752, 2, NULL, NULL, NULL, NULL),
(753, 'vanel_c-076-075-0142-i_12.prt', NULL, '2016-08-06 17:25:44', '2016-08-06 17:25:44', 753, 2, NULL, NULL, NULL, NULL),
(754, 'wo4446-120-ens2_clamp_asm_34.asm', NULL, '2016-08-06 17:25:53', '2016-08-06 17:25:53', 754, 1, NULL, NULL, 4, 12),
(755, 'wo4446-120-f001_clamp_47.prt', NULL, '2016-08-06 17:26:03', '2016-08-24 09:04:31', 755, 2, NULL, NULL, 2, 2),
(756, 'vanel_c-095-125-0200-i_9.prt', NULL, '2016-08-06 17:26:13', '2016-08-06 17:26:13', 756, 2, NULL, NULL, NULL, NULL),
(757, 'misumi_smsb55-20_2.prt', NULL, '2016-08-06 17:26:22', '2016-08-06 17:26:22', 757, 2, NULL, NULL, NULL, NULL),
(758, 'misumi_rondelle-fwssb-d11-v6-t1.prt', NULL, '2016-08-06 17:26:32', '2016-08-06 17:26:32', 758, 2, NULL, NULL, NULL, NULL),
(759, 'misumi_rondelle-fwssb-d11-v6-t1.prt', NULL, '2016-08-06 17:26:41', '2016-08-06 17:26:41', 759, 2, NULL, NULL, NULL, NULL),
(760, 'kapton-tape_18.prt', NULL, '2016-08-06 17:26:51', '2016-08-06 17:26:51', 760, 2, NULL, NULL, NULL, NULL),
(761, 'wo4446-120-ens2_clamp_asm_34.asm', NULL, '2016-08-06 17:27:00', '2016-08-06 17:27:00', 761, 1, NULL, NULL, 4, 12),
(762, 'wo4446-120-f001_clamp_47.prt', NULL, '2016-08-06 17:27:10', '2016-08-24 09:04:40', 762, 2, NULL, NULL, 2, 2),
(763, 'vanel_c-095-125-0200-i_9.prt', NULL, '2016-08-06 17:27:20', '2016-08-06 17:27:20', 763, 2, NULL, NULL, NULL, NULL),
(764, 'misumi_smsb55-20_2.prt', NULL, '2016-08-06 17:27:29', '2016-08-06 17:27:29', 764, 2, NULL, NULL, NULL, NULL),
(765, 'misumi_rondelle-fwssb-d11-v6-t1.prt', NULL, '2016-08-06 17:27:39', '2016-08-06 17:27:39', 765, 2, NULL, NULL, NULL, NULL),
(766, 'misumi_rondelle-fwssb-d11-v6-t1.prt', NULL, '2016-08-06 17:27:48', '2016-08-06 17:27:48', 766, 2, NULL, NULL, NULL, NULL),
(767, 'kapton-tape_18.prt', NULL, '2016-08-06 17:27:58', '2016-08-06 17:27:58', 767, 2, NULL, NULL, NULL, NULL),
(768, '44v-m70-310_ifu_wo_base_plate.asm', NULL, '2016-08-06 17:28:07', '2016-08-06 17:28:07', 768, 1, NULL, NULL, 4, 12),
(769, 'misumi_grain_ss.prt', NULL, '2016-08-06 17:28:17', '2016-08-06 17:28:17', 769, 2, NULL, NULL, NULL, NULL),
(770, 'misumi_grain_ss.prt', NULL, '2016-08-06 17:28:27', '2016-08-06 17:28:27', 770, 2, NULL, NULL, NULL, NULL),
(771, 'misumi_grain_ss.prt', NULL, '2016-08-06 17:28:36', '2016-08-06 17:28:36', 771, 2, NULL, NULL, NULL, NULL),
(772, 'misumi_grain_ss.prt', NULL, '2016-08-06 17:28:46', '2016-08-06 17:28:46', 772, 2, NULL, NULL, NULL, NULL),
(773, '44v-m70-310_wo_ifu_base_plate.prt', NULL, '2016-08-06 17:28:56', '2016-08-06 17:28:56', 773, 2, NULL, NULL, NULL, NULL),
(775, '44v_m70_320_ifu_mount.asm', NULL, '2016-08-06 17:29:15', '2016-08-24 08:58:09', 775, 1, NULL, NULL, 1, 31),
(776, '44v_m70_320_esfera_concava.prt', NULL, '2016-08-06 17:29:25', '2016-08-24 09:20:40', 776, 2, NULL, 3, 2, 2),
(777, '44v_m70_320_alojamiento_esf_inf.prt', NULL, '2016-08-06 17:29:34', '2016-08-24 08:56:19', 777, 2, NULL, 4, 2, 2),
(778, 'pin_diam_8x15.prt', NULL, '2016-08-06 17:29:44', '2016-08-06 17:29:44', 778, 2, NULL, NULL, 3, NULL),
(779, 'pin_diam_8x15.prt', NULL, '2016-08-06 17:29:53', '2016-08-06 17:29:53', 779, 2, NULL, NULL, 3, NULL),
(780, 'pin_diam_10x15.prt', NULL, '2016-08-06 17:30:03', '2016-08-06 17:30:03', 780, 2, NULL, NULL, 3, NULL),
(784, '44v-m70-330_rs2_support.asm', NULL, '2016-08-06 17:30:41', '2016-08-06 17:30:41', 784, 1, NULL, NULL, 1, 5),
(785, '44v-m70-330_newport_gimbal_9812.asm', NULL, '2016-08-06 17:30:51', '2016-08-06 17:30:51', 785, 1, NULL, NULL, 3, 13),
(786, '902812-01_asm_1.asm', NULL, '2016-08-06 17:31:01', '2016-08-06 17:31:01', 786, 1, NULL, NULL, 3, 13),
(787, '902114_1.prt', NULL, '2016-08-06 17:31:10', '2016-08-06 17:31:10', 787, 2, NULL, NULL, NULL, NULL),
(788, '9812plt_asm_1.asm', NULL, '2016-08-06 17:31:20', '2016-08-06 17:31:20', 788, 1, NULL, NULL, 3, 13),
(789, '003550_2_2.prt', NULL, '2016-08-06 17:31:29', '2016-08-06 17:31:29', 789, 2, NULL, NULL, NULL, NULL),
(790, '903293_1.prt', NULL, '2016-08-06 17:31:39', '2016-08-06 17:31:39', 790, 2, NULL, NULL, NULL, NULL),
(791, '003550_2_2.prt', NULL, '2016-08-06 17:31:48', '2016-08-06 17:31:48', 791, 2, NULL, NULL, NULL, NULL),
(792, '003550_2_2.prt', NULL, '2016-08-06 17:31:58', '2016-08-06 17:31:58', 792, 2, NULL, NULL, NULL, NULL),
(793, '900845_2.prt', NULL, '2016-08-06 17:32:08', '2016-08-06 17:32:08', 793, 2, NULL, NULL, NULL, NULL),
(794, '900845_2.prt', NULL, '2016-08-06 17:32:17', '2016-08-06 17:32:17', 794, 2, NULL, NULL, NULL, NULL),
(795, '903943_02-02_asm_2.asm', NULL, '2016-08-06 17:32:27', '2016-08-06 17:32:27', 795, 1, NULL, NULL, 3, 13),
(796, '903943_00-02_2.prt', NULL, '2016-08-06 17:32:36', '2016-08-06 17:32:36', 796, 2, NULL, NULL, NULL, NULL),
(797, '903943_02-00_2.prt', NULL, '2016-08-06 17:32:46', '2016-08-06 17:32:46', 797, 2, NULL, NULL, NULL, NULL),
(798, '903943_02-02_asm_2.asm', NULL, '2016-08-06 17:32:55', '2016-08-06 17:32:55', 798, 1, NULL, NULL, 3, 13),
(799, '903943_00-02_2.prt', NULL, '2016-08-06 17:33:05', '2016-08-06 17:33:05', 799, 2, NULL, NULL, NULL, NULL),
(800, '903943_02-00_2.prt', NULL, '2016-08-06 17:33:15', '2016-08-06 17:33:15', 800, 2, NULL, NULL, NULL, NULL),
(801, '903943_02-02_asm_2.asm', NULL, '2016-08-06 17:33:24', '2016-08-06 17:33:24', 801, 1, NULL, NULL, 3, 13),
(802, '903943_00-02_2.prt', NULL, '2016-08-06 17:33:34', '2016-08-06 17:33:34', 802, 2, NULL, NULL, NULL, NULL),
(803, '903943_02-00_2.prt', NULL, '2016-08-06 17:33:43', '2016-08-06 17:33:43', 803, 2, NULL, NULL, NULL, NULL),
(804, '900845_2.prt', NULL, '2016-08-06 17:33:53', '2016-08-06 17:33:53', 804, 2, NULL, NULL, NULL, NULL),
(805, '44v-m70-330_rs2_mirror_1in.prt', NULL, '2016-08-06 17:34:02', '2016-08-06 17:34:02', 805, 2, NULL, NULL, 3, 13),
(806, '44v-m70-410_fma.asm', NULL, '2016-08-06 17:34:12', '2016-08-06 17:34:12', 806, 1, NULL, NULL, 1, NULL),
(807, 'dts25_m-step.asm', NULL, '2016-08-06 17:34:22', '2016-08-06 17:34:22', 807, 1, NULL, NULL, 3, 12),
(808, 'dts25_m.asm', NULL, '2016-08-06 17:34:31', '2016-08-06 17:34:31', 808, 1, NULL, NULL, 3, 12),
(809, 'cf0195_-_igus_flange_bush_4-5_5.prt', NULL, '2016-08-06 17:34:41', '2016-08-06 17:34:41', 809, 2, NULL, NULL, NULL, NULL),
(810, '137513_-_dts25_knob_drw.prt', NULL, '2016-08-06 17:34:50', '2016-08-06 17:34:50', 810, 2, NULL, NULL, NULL, NULL),
(811, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:35:00', '2016-08-06 17:35:00', 811, 2, NULL, NULL, NULL, NULL),
(812, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 17:35:10', '2016-08-06 17:35:10', 812, 2, NULL, NULL, NULL, NULL),
(813, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 17:35:19', '2016-08-06 17:35:19', 813, 2, NULL, NULL, NULL, NULL),
(814, '137604_-_dts25_moving_world_met.asm', NULL, '2016-08-06 17:35:29', '2016-08-06 17:35:29', 814, 1, NULL, NULL, 3, 12),
(815, '137511_-_dts25_moving_world_met.prt', NULL, '2016-08-06 17:35:38', '2016-08-06 17:35:38', 815, 2, NULL, NULL, NULL, NULL),
(816, 'db0219_-_m4x5_skt_set_db0219.prt', NULL, '2016-08-06 17:35:48', '2016-08-06 17:35:48', 816, 2, NULL, NULL, NULL, NULL),
(817, 'cf0195_-_igus_flange_bush_4-5_5.prt', NULL, '2016-08-06 17:35:57', '2016-08-06 17:35:57', 817, 2, NULL, NULL, NULL, NULL),
(818, 'da0169_-_m3_x_3__blk__skt_set.prt', NULL, '2016-08-06 17:36:07', '2016-08-06 17:36:07', 818, 2, NULL, NULL, NULL, NULL),
(819, '137510_-_dts25_fixed_world_metr.prt', NULL, '2016-08-06 17:36:16', '2016-08-06 17:36:16', 819, 2, NULL, NULL, NULL, NULL),
(820, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 17:36:26', '2016-08-06 17:36:26', 820, 2, NULL, NULL, NULL, NULL),
(821, '134304_-_screw_holder.prt', NULL, '2016-08-06 17:36:36', '2016-08-06 17:36:36', 821, 2, NULL, NULL, NULL, NULL),
(822, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:36:45', '2016-08-06 17:36:45', 822, 2, NULL, NULL, NULL, NULL),
(823, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:36:55', '2016-08-06 17:36:55', 823, 2, NULL, NULL, NULL, NULL),
(824, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:37:05', '2016-08-06 17:37:05', 824, 2, NULL, NULL, NULL, NULL),
(825, '137514_-_dts25_locking_plate.prt', NULL, '2016-08-06 17:37:14', '2016-08-06 17:37:14', 825, 2, NULL, NULL, NULL, NULL),
(826, '137512_-_dts25_lead_screw.prt', NULL, '2016-08-06 17:37:24', '2016-08-06 17:37:24', 826, 2, NULL, NULL, NULL, NULL),
(827, '44v-m70-410_ks4.asm', NULL, '2016-08-06 17:37:33', '2016-08-06 17:37:33', 827, 1, NULL, NULL, 3, 13),
(828, '44v-m70-410_ks4_commercial.asm', NULL, '2016-08-06 17:37:43', '2016-08-06 17:37:43', 828, 1, NULL, NULL, 3, 13),
(829, 'ks4m_meca6.prt', NULL, '2016-08-06 17:37:53', '2016-08-06 17:37:53', 829, 2, NULL, NULL, NULL, NULL),
(830, 'ks-sprg-assy-1_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:38:02', '2016-08-06 17:38:02', 830, 2, NULL, NULL, NULL, NULL),
(831, 'ks4m_meca10.prt', NULL, '2016-08-06 17:38:12', '2016-08-06 17:38:12', 831, 2, NULL, NULL, NULL, NULL),
(832, 'ks-sprg-assy-1_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:38:21', '2016-08-06 17:38:21', 832, 2, NULL, NULL, NULL, NULL),
(833, 'ks-sprg-assy-3_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:38:31', '2016-08-06 17:38:31', 833, 2, NULL, NULL, NULL, NULL),
(834, 'ss8s013-1-2-solid1.prt', NULL, '2016-08-06 17:38:40', '2016-08-06 17:38:40', 834, 2, NULL, NULL, NULL, NULL),
(835, 'ball3750gr100-1-solid1.prt', NULL, '2016-08-06 17:38:50', '2016-08-06 17:38:50', 835, 2, NULL, NULL, NULL, NULL),
(836, 'ss8s013-1-1-solid1.prt', NULL, '2016-08-06 17:39:00', '2016-08-06 17:39:00', 836, 2, NULL, NULL, NULL, NULL),
(837, '1885-001-1-solid1.prt', NULL, '2016-08-06 17:39:09', '2016-08-06 17:39:09', 837, 2, NULL, NULL, NULL, NULL),
(838, 'ks4m_meca11.prt', NULL, '2016-08-06 17:39:19', '2016-08-06 17:39:19', 838, 2, NULL, NULL, NULL, NULL),
(839, 'ks4m_meca5.prt', NULL, '2016-08-06 17:39:28', '2016-08-06 17:39:28', 839, 2, NULL, NULL, NULL, NULL),
(840, 'all1875gr100-1-solid1.prt', NULL, '2016-08-06 17:39:38', '2016-08-06 17:39:38', 840, 2, NULL, NULL, NULL, NULL),
(841, 'ks-sprg-assy-2_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:39:48', '2016-08-06 17:39:48', 841, 2, NULL, NULL, NULL, NULL),
(842, 'ks4m_meca12.prt', NULL, '2016-08-06 17:39:57', '2016-08-06 17:39:57', 842, 2, NULL, NULL, NULL, NULL),
(843, 'ss2a006-1-2-solid1.prt', NULL, '2016-08-06 17:40:07', '2016-08-06 17:40:07', 843, 2, NULL, NULL, NULL, NULL),
(844, '2783-001-2-solid1.prt', NULL, '2016-08-06 17:40:16', '2016-08-06 17:40:16', 844, 2, NULL, NULL, NULL, NULL),
(845, 'ks-sprg-assy-4_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:40:26', '2016-08-06 17:40:26', 845, 2, NULL, NULL, NULL, NULL),
(846, '2783-001-1-solid1.prt', NULL, '2016-08-06 17:40:36', '2016-08-06 17:40:36', 846, 2, NULL, NULL, NULL, NULL),
(847, 'ks4m_meca7.prt', NULL, '2016-08-06 17:40:45', '2016-08-06 17:40:45', 847, 2, NULL, NULL, NULL, NULL),
(848, 'ks-sprg-assy-4_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:40:55', '2016-08-06 17:40:55', 848, 2, NULL, NULL, NULL, NULL),
(849, '1885-003-1-solid1.prt', NULL, '2016-08-06 17:41:04', '2016-08-06 17:41:04', 849, 2, NULL, NULL, NULL, NULL),
(850, 'ks4m_meca2n.prt', NULL, '2016-08-06 17:41:14', '2016-08-06 17:41:14', 850, 2, NULL, NULL, NULL, NULL),
(851, 'ks4m_meca16.prt', NULL, '2016-08-06 17:41:23', '2016-08-06 17:41:23', 851, 2, NULL, NULL, NULL, NULL),
(852, 'ks-sprg-assy-2_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:41:33', '2016-08-06 17:41:33', 852, 2, NULL, NULL, NULL, NULL),
(853, 'ss2a006-1-4-solid1.prt', NULL, '2016-08-06 17:41:42', '2016-08-06 17:41:42', 853, 2, NULL, NULL, NULL, NULL),
(854, 'ks4m_meca17.prt', NULL, '2016-08-06 17:41:52', '2016-08-06 17:41:52', 854, 2, NULL, NULL, NULL, NULL),
(855, 'ks4m_meca15.prt', NULL, '2016-08-06 17:42:01', '2016-08-06 17:42:01', 855, 2, NULL, NULL, NULL, NULL),
(856, 'ks4m_meca3n.prt', NULL, '2016-08-06 17:42:11', '2016-08-06 17:42:11', 856, 2, NULL, NULL, NULL, NULL),
(857, 'ks4m_meca14.prt', NULL, '2016-08-06 17:42:21', '2016-08-06 17:42:21', 857, 2, NULL, NULL, NULL, NULL),
(858, 'ks-sprg-assy-3_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:42:30', '2016-08-06 17:42:30', 858, 2, NULL, NULL, NULL, NULL),
(859, 'ks4m_meca9.prt', NULL, '2016-08-06 17:42:40', '2016-08-06 17:42:40', 859, 2, NULL, NULL, NULL, NULL),
(860, 'ks4m_meca4n.prt', NULL, '2016-08-06 17:42:49', '2016-08-06 17:42:49', 860, 2, NULL, NULL, NULL, NULL),
(861, 'ss2a006-1-3-solid1.prt', NULL, '2016-08-06 17:42:59', '2016-08-06 17:42:59', 861, 2, NULL, NULL, NULL, NULL),
(862, 'ss2a006-1-1-solid1.prt', NULL, '2016-08-06 17:43:08', '2016-08-06 17:43:08', 862, 2, NULL, NULL, NULL, NULL),
(863, 'ks4m_mecan.prt', NULL, '2016-08-06 17:43:18', '2016-08-06 17:43:18', 863, 2, NULL, NULL, NULL, NULL),
(864, '44v-m70-410_pf40_fma_mirror4in.prt', NULL, '2016-08-06 17:43:28', '2016-08-06 17:43:28', 864, 2, NULL, NULL, 3, 13),
(865, '44v-m70-410_base_ks4.prt', NULL, '2016-08-06 17:43:37', '2016-08-24 09:35:13', 865, 2, NULL, 4, 2, 3),
(866, '44v-m70-410_fma.asm', NULL, '2016-08-06 17:43:47', '2016-08-06 17:43:47', 866, 1, NULL, NULL, 1, NULL),
(867, 'dts25_m-step.asm', NULL, '2016-08-06 17:43:56', '2016-08-06 17:43:56', 867, 1, NULL, NULL, 3, 12),
(868, 'dts25_m.asm', NULL, '2016-08-06 17:44:06', '2016-08-06 17:44:06', 868, 1, NULL, NULL, 3, 12),
(869, 'cf0195_-_igus_flange_bush_4-5_5.prt', NULL, '2016-08-06 17:44:16', '2016-08-06 17:44:16', 869, 2, NULL, NULL, NULL, NULL),
(870, '137513_-_dts25_knob_drw.prt', NULL, '2016-08-06 17:44:25', '2016-08-06 17:44:25', 870, 2, NULL, NULL, NULL, NULL),
(871, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:44:35', '2016-08-06 17:44:35', 871, 2, NULL, NULL, NULL, NULL),
(872, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 17:44:45', '2016-08-06 17:44:45', 872, 2, NULL, NULL, NULL, NULL),
(873, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 17:44:54', '2016-08-06 17:44:54', 873, 2, NULL, NULL, NULL, NULL),
(874, '137604_-_dts25_moving_world_met.asm', NULL, '2016-08-06 17:45:04', '2016-08-06 17:45:04', 874, 1, NULL, NULL, 3, 12),
(875, '137511_-_dts25_moving_world_met.prt', NULL, '2016-08-06 17:45:14', '2016-08-06 17:45:14', 875, 2, NULL, NULL, NULL, NULL),
(876, 'db0219_-_m4x5_skt_set_db0219.prt', NULL, '2016-08-06 17:45:23', '2016-08-06 17:45:23', 876, 2, NULL, NULL, NULL, NULL),
(877, 'cf0195_-_igus_flange_bush_4-5_5.prt', NULL, '2016-08-06 17:45:33', '2016-08-06 17:45:33', 877, 2, NULL, NULL, NULL, NULL),
(878, 'da0169_-_m3_x_3__blk__skt_set.prt', NULL, '2016-08-06 17:45:42', '2016-08-06 17:45:42', 878, 2, NULL, NULL, NULL, NULL),
(879, '137510_-_dts25_fixed_world_metr.prt', NULL, '2016-08-06 17:45:52', '2016-08-06 17:45:52', 879, 2, NULL, NULL, NULL, NULL),
(880, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 17:46:01', '2016-08-06 17:46:01', 880, 2, NULL, NULL, NULL, NULL),
(881, '134304_-_screw_holder.prt', NULL, '2016-08-06 17:46:11', '2016-08-06 17:46:11', 881, 2, NULL, NULL, NULL, NULL),
(882, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:46:21', '2016-08-06 17:46:21', 882, 2, NULL, NULL, NULL, NULL),
(883, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:46:30', '2016-08-06 17:46:30', 883, 2, NULL, NULL, NULL, NULL),
(884, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 17:46:40', '2016-08-06 17:46:40', 884, 2, NULL, NULL, NULL, NULL),
(885, '137514_-_dts25_locking_plate.prt', NULL, '2016-08-06 17:46:49', '2016-08-06 17:46:49', 885, 2, NULL, NULL, NULL, NULL),
(886, '137512_-_dts25_lead_screw.prt', NULL, '2016-08-06 17:46:59', '2016-08-06 17:46:59', 886, 2, NULL, NULL, NULL, NULL),
(887, '44v-m70-410_ks4.asm', NULL, '2016-08-06 17:47:09', '2016-08-06 17:47:09', 887, 1, NULL, NULL, 3, 13),
(888, '44v-m70-410_ks4_commercial.asm', NULL, '2016-08-06 17:47:18', '2016-08-06 17:47:18', 888, 1, NULL, NULL, 3, 13),
(889, 'ks4m_meca6.prt', NULL, '2016-08-06 17:47:28', '2016-08-06 17:47:28', 889, 2, NULL, NULL, NULL, NULL),
(890, 'ks-sprg-assy-1_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:47:37', '2016-08-06 17:47:37', 890, 2, NULL, NULL, NULL, NULL),
(891, 'ks4m_meca10.prt', NULL, '2016-08-06 17:47:48', '2016-08-06 17:47:48', 891, 2, NULL, NULL, NULL, NULL),
(892, 'ks-sprg-assy-1_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:47:58', '2016-08-06 17:47:58', 892, 2, NULL, NULL, NULL, NULL),
(893, 'ks-sprg-assy-3_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:48:08', '2016-08-06 17:48:08', 893, 2, NULL, NULL, NULL, NULL),
(894, 'ss8s013-1-2-solid1.prt', NULL, '2016-08-06 17:48:18', '2016-08-06 17:48:18', 894, 2, NULL, NULL, NULL, NULL),
(895, 'ball3750gr100-1-solid1.prt', NULL, '2016-08-06 17:48:27', '2016-08-06 17:48:27', 895, 2, NULL, NULL, NULL, NULL),
(896, 'ss8s013-1-1-solid1.prt', NULL, '2016-08-06 17:48:37', '2016-08-06 17:48:37', 896, 2, NULL, NULL, NULL, NULL),
(897, '1885-001-1-solid1.prt', NULL, '2016-08-06 17:48:46', '2016-08-06 17:48:46', 897, 2, NULL, NULL, NULL, NULL),
(898, 'ks4m_meca11.prt', NULL, '2016-08-06 17:48:56', '2016-08-06 17:48:56', 898, 2, NULL, NULL, NULL, NULL),
(899, 'ks4m_meca5.prt', NULL, '2016-08-06 17:49:06', '2016-08-06 17:49:06', 899, 2, NULL, NULL, NULL, NULL),
(900, 'all1875gr100-1-solid1.prt', NULL, '2016-08-06 17:49:16', '2016-08-06 17:49:16', 900, 2, NULL, NULL, NULL, NULL),
(901, 'ks-sprg-assy-2_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:49:25', '2016-08-06 17:49:25', 901, 2, NULL, NULL, NULL, NULL),
(902, 'ks4m_meca12.prt', NULL, '2016-08-06 17:49:35', '2016-08-06 17:49:35', 902, 2, NULL, NULL, NULL, NULL),
(903, 'ss2a006-1-2-solid1.prt', NULL, '2016-08-06 17:49:44', '2016-08-06 17:49:44', 903, 2, NULL, NULL, NULL, NULL);
INSERT INTO `mech_systems` (`id`, `file_name`, `version`, `created_at`, `updated_at`, `system_id`, `mech_system_type_id`, `mech_optical_surface_id`, `mech_material_id`, `acquisition_workflow_id`, `acquisition_status_id`) VALUES
(904, '2783-001-2-solid1.prt', NULL, '2016-08-06 17:49:54', '2016-08-06 17:49:54', 904, 2, NULL, NULL, NULL, NULL),
(905, 'ks-sprg-assy-4_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:50:03', '2016-08-06 17:50:03', 905, 2, NULL, NULL, NULL, NULL),
(906, '2783-001-1-solid1.prt', NULL, '2016-08-06 17:50:13', '2016-08-06 17:50:13', 906, 2, NULL, NULL, NULL, NULL),
(907, 'ks4m_meca7.prt', NULL, '2016-08-06 17:50:23', '2016-08-06 17:50:23', 907, 2, NULL, NULL, NULL, NULL),
(908, 'ks-sprg-assy-4_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:50:33', '2016-08-06 17:50:33', 908, 2, NULL, NULL, NULL, NULL),
(909, '1885-003-1-solid1.prt', NULL, '2016-08-06 17:50:42', '2016-08-06 17:50:42', 909, 2, NULL, NULL, NULL, NULL),
(910, 'ks4m_meca2n.prt', NULL, '2016-08-06 17:50:52', '2016-08-06 17:50:52', 910, 2, NULL, NULL, NULL, NULL),
(911, 'ks4m_meca16.prt', NULL, '2016-08-06 17:51:01', '2016-08-06 17:51:01', 911, 2, NULL, NULL, NULL, NULL),
(912, 'ks-sprg-assy-2_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:51:11', '2016-08-06 17:51:11', 912, 2, NULL, NULL, NULL, NULL),
(913, 'ss2a006-1-4-solid1.prt', NULL, '2016-08-06 17:51:21', '2016-08-06 17:51:21', 913, 2, NULL, NULL, NULL, NULL),
(914, 'ks4m_meca17.prt', NULL, '2016-08-06 17:51:30', '2016-08-06 17:51:30', 914, 2, NULL, NULL, NULL, NULL),
(915, 'ks4m_meca15.prt', NULL, '2016-08-06 17:51:40', '2016-08-06 17:51:40', 915, 2, NULL, NULL, NULL, NULL),
(916, 'ks4m_meca3n.prt', NULL, '2016-08-06 17:51:49', '2016-08-06 17:51:49', 916, 2, NULL, NULL, NULL, NULL),
(917, 'ks4m_meca14.prt', NULL, '2016-08-06 17:51:59', '2016-08-06 17:51:59', 917, 2, NULL, NULL, NULL, NULL),
(918, 'ks-sprg-assy-3_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:52:09', '2016-08-06 17:52:09', 918, 2, NULL, NULL, NULL, NULL),
(919, 'ks4m_meca9.prt', NULL, '2016-08-06 17:52:18', '2016-08-06 17:52:18', 919, 2, NULL, NULL, NULL, NULL),
(920, 'ks4m_meca4n.prt', NULL, '2016-08-06 17:52:28', '2016-08-06 17:52:28', 920, 2, NULL, NULL, NULL, NULL),
(921, 'ss2a006-1-3-solid1.prt', NULL, '2016-08-06 17:52:38', '2016-08-06 17:52:38', 921, 2, NULL, NULL, NULL, NULL),
(922, 'ss2a006-1-1-solid1.prt', NULL, '2016-08-06 17:52:47', '2016-08-06 17:52:47', 922, 2, NULL, NULL, NULL, NULL),
(923, 'ks4m_mecan.prt', NULL, '2016-08-06 17:52:57', '2016-08-06 17:52:57', 923, 2, NULL, NULL, NULL, NULL),
(924, '44v-m70-410_pf40_fma_mirror4in.prt', NULL, '2016-08-06 17:53:06', '2016-08-06 17:53:06', 924, 2, NULL, NULL, 3, 13),
(925, '44v-m70-410_base_ks4.prt', NULL, '2016-08-06 17:53:16', '2016-08-24 09:35:18', 925, 2, NULL, 4, 2, 3),
(926, '44v-m70-420_fmb.asm', NULL, '2016-08-06 17:53:26', '2016-08-06 17:53:26', 926, 1, NULL, NULL, 1, NULL),
(927, '44v-m70-410_ks4.asm', NULL, '2016-08-06 17:53:35', '2016-08-06 17:53:35', 927, 1, NULL, NULL, 3, 12),
(928, '44v-m70-410_ks4_commercial.asm', NULL, '2016-08-06 17:53:45', '2016-08-06 17:53:45', 928, 1, NULL, NULL, 3, 12),
(929, 'ks4m_meca6.prt', NULL, '2016-08-06 17:53:54', '2016-08-06 17:53:54', 929, 2, NULL, NULL, NULL, NULL),
(930, 'ks-sprg-assy-1_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:54:04', '2016-08-06 17:54:04', 930, 2, NULL, NULL, NULL, NULL),
(931, 'ks4m_meca10.prt', NULL, '2016-08-06 17:54:13', '2016-08-06 17:54:13', 931, 2, NULL, NULL, NULL, NULL),
(932, 'ks-sprg-assy-1_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:54:23', '2016-08-06 17:54:23', 932, 2, NULL, NULL, NULL, NULL),
(933, 'ks-sprg-assy-3_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:54:32', '2016-08-06 17:54:32', 933, 2, NULL, NULL, NULL, NULL),
(934, 'ss8s013-1-2-solid1.prt', NULL, '2016-08-06 17:54:42', '2016-08-06 17:54:42', 934, 2, NULL, NULL, NULL, NULL),
(935, 'ball3750gr100-1-solid1.prt', NULL, '2016-08-06 17:54:52', '2016-08-06 17:54:52', 935, 2, NULL, NULL, NULL, NULL),
(936, 'ss8s013-1-1-solid1.prt', NULL, '2016-08-06 17:55:01', '2016-08-06 17:55:01', 936, 2, NULL, NULL, NULL, NULL),
(937, '1885-001-1-solid1.prt', NULL, '2016-08-06 17:55:11', '2016-08-06 17:55:11', 937, 2, NULL, NULL, NULL, NULL),
(938, 'ks4m_meca11.prt', NULL, '2016-08-06 17:55:20', '2016-08-06 17:55:20', 938, 2, NULL, NULL, NULL, NULL),
(939, 'ks4m_meca5.prt', NULL, '2016-08-06 17:55:30', '2016-08-06 17:55:30', 939, 2, NULL, NULL, NULL, NULL),
(940, 'all1875gr100-1-solid1.prt', NULL, '2016-08-06 17:55:40', '2016-08-06 17:55:40', 940, 2, NULL, NULL, NULL, NULL),
(941, 'ks-sprg-assy-2_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:55:49', '2016-08-06 17:55:49', 941, 2, NULL, NULL, NULL, NULL),
(942, 'ks4m_meca12.prt', NULL, '2016-08-06 17:55:59', '2016-08-06 17:55:59', 942, 2, NULL, NULL, NULL, NULL),
(943, 'ss2a006-1-2-solid1.prt', NULL, '2016-08-06 17:56:08', '2016-08-06 17:56:08', 943, 2, NULL, NULL, NULL, NULL),
(944, '2783-001-2-solid1.prt', NULL, '2016-08-06 17:56:18', '2016-08-06 17:56:18', 944, 2, NULL, NULL, NULL, NULL),
(945, 'ks-sprg-assy-4_km3-sprg_-_stret.prt', NULL, '2016-08-06 17:56:27', '2016-08-06 17:56:27', 945, 2, NULL, NULL, NULL, NULL),
(946, '2783-001-1-solid1.prt', NULL, '2016-08-06 17:56:37', '2016-08-06 17:56:37', 946, 2, NULL, NULL, NULL, NULL),
(947, 'ks4m_meca7.prt', NULL, '2016-08-06 17:56:47', '2016-08-06 17:56:47', 947, 2, NULL, NULL, NULL, NULL),
(948, 'ks-sprg-assy-4_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:56:56', '2016-08-06 17:56:56', 948, 2, NULL, NULL, NULL, NULL),
(949, '1885-003-1-solid1.prt', NULL, '2016-08-06 17:57:06', '2016-08-06 17:57:06', 949, 2, NULL, NULL, NULL, NULL),
(950, 'ks4m_meca2n.prt', NULL, '2016-08-06 17:57:15', '2016-08-06 17:57:15', 950, 2, NULL, NULL, NULL, NULL),
(951, 'ks4m_meca16.prt', NULL, '2016-08-06 17:57:25', '2016-08-06 17:57:25', 951, 2, NULL, NULL, NULL, NULL),
(952, 'ks-sprg-assy-2_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:57:34', '2016-08-06 17:57:34', 952, 2, NULL, NULL, NULL, NULL),
(953, 'ss2a006-1-4-solid1.prt', NULL, '2016-08-06 17:57:44', '2016-08-06 17:57:44', 953, 2, NULL, NULL, NULL, NULL),
(954, 'ks4m_meca17.prt', NULL, '2016-08-06 17:57:53', '2016-08-06 17:57:53', 954, 2, NULL, NULL, NULL, NULL),
(955, 'ks4m_meca15.prt', NULL, '2016-08-06 17:58:03', '2016-08-06 17:58:03', 955, 2, NULL, NULL, NULL, NULL),
(956, 'ks4m_meca3n.prt', NULL, '2016-08-06 17:58:13', '2016-08-06 17:58:13', 956, 2, NULL, NULL, NULL, NULL),
(957, 'ks4m_meca14.prt', NULL, '2016-08-06 17:58:22', '2016-08-06 17:58:22', 957, 2, NULL, NULL, NULL, NULL),
(958, 'ks-sprg-assy-3_ss6s038-1-1-soli.prt', NULL, '2016-08-06 17:58:32', '2016-08-06 17:58:32', 958, 2, NULL, NULL, NULL, NULL),
(959, 'ks4m_meca9.prt', NULL, '2016-08-06 17:58:41', '2016-08-06 17:58:41', 959, 2, NULL, NULL, NULL, NULL),
(960, 'ks4m_meca4n.prt', NULL, '2016-08-06 17:58:51', '2016-08-06 17:58:51', 960, 2, NULL, NULL, NULL, NULL),
(961, 'ss2a006-1-3-solid1.prt', NULL, '2016-08-06 17:59:00', '2016-08-06 17:59:00', 961, 2, NULL, NULL, NULL, NULL),
(962, 'ss2a006-1-1-solid1.prt', NULL, '2016-08-06 17:59:10', '2016-08-06 17:59:10', 962, 2, NULL, NULL, NULL, NULL),
(963, 'ks4m_mecan.prt', NULL, '2016-08-06 17:59:19', '2016-08-06 17:59:19', 963, 2, NULL, NULL, NULL, NULL),
(964, 'dts25_m-step.asm', NULL, '2016-08-06 17:59:29', '2016-08-06 17:59:29', 964, 1, NULL, NULL, 3, 13),
(965, 'dts25_m.asm', NULL, '2016-08-06 17:59:38', '2016-08-06 17:59:38', 965, 1, NULL, NULL, 3, 13),
(966, 'cf0195_-_igus_flange_bush_4-5_5.prt', NULL, '2016-08-06 17:59:48', '2016-08-06 17:59:48', 966, 2, NULL, NULL, NULL, NULL),
(967, '137513_-_dts25_knob_drw.prt', NULL, '2016-08-06 17:59:57', '2016-08-06 17:59:57', 967, 2, NULL, NULL, NULL, NULL),
(968, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 18:00:07', '2016-08-06 18:00:07', 968, 2, NULL, NULL, NULL, NULL),
(969, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 18:00:17', '2016-08-06 18:00:17', 969, 2, NULL, NULL, NULL, NULL),
(970, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 18:00:26', '2016-08-06 18:00:26', 970, 2, NULL, NULL, NULL, NULL),
(971, '137604_-_dts25_moving_world_met.asm', NULL, '2016-08-06 18:00:36', '2016-08-06 18:00:36', 971, 1, NULL, NULL, 3, 13),
(972, '137511_-_dts25_moving_world_met.prt', NULL, '2016-08-06 18:00:46', '2016-08-06 18:00:46', 972, 2, NULL, NULL, NULL, NULL),
(973, 'db0219_-_m4x5_skt_set_db0219.prt', NULL, '2016-08-06 18:00:55', '2016-08-06 18:00:55', 973, 2, NULL, NULL, NULL, NULL),
(974, 'cf0195_-_igus_flange_bush_4-5_5.prt', NULL, '2016-08-06 18:01:05', '2016-08-06 18:01:05', 974, 2, NULL, NULL, NULL, NULL),
(975, 'da0169_-_m3_x_3__blk__skt_set.prt', NULL, '2016-08-06 18:01:14', '2016-08-06 18:01:14', 975, 2, NULL, NULL, NULL, NULL),
(976, '137510_-_dts25_fixed_world_metr.prt', NULL, '2016-08-06 18:01:24', '2016-08-06 18:01:24', 976, 2, NULL, NULL, NULL, NULL),
(977, 'db0415_-_m2_5_x_4mm_skt_btn_bzp.prt', NULL, '2016-08-06 18:01:34', '2016-08-06 18:01:34', 977, 2, NULL, NULL, NULL, NULL),
(978, '134304_-_screw_holder.prt', NULL, '2016-08-06 18:01:44', '2016-08-06 18:01:44', 978, 2, NULL, NULL, NULL, NULL),
(979, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 18:01:53', '2016-08-06 18:01:53', 979, 2, NULL, NULL, NULL, NULL),
(980, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 18:02:03', '2016-08-06 18:02:03', 980, 2, NULL, NULL, NULL, NULL),
(981, 'db0208_-_m3_x_6_hex_dog_point.prt', NULL, '2016-08-06 18:02:12', '2016-08-06 18:02:12', 981, 2, NULL, NULL, NULL, NULL),
(982, '137514_-_dts25_locking_plate.prt', NULL, '2016-08-06 18:02:22', '2016-08-06 18:02:22', 982, 2, NULL, NULL, NULL, NULL),
(983, '137512_-_dts25_lead_screw.prt', NULL, '2016-08-06 18:02:32', '2016-08-06 18:02:32', 983, 2, NULL, NULL, NULL, NULL),
(984, '44v-m70-420_pf_40_fmb_mirror4in.prt', NULL, '2016-08-06 18:02:41', '2016-08-06 18:02:41', 984, 2, NULL, NULL, 3, 13),
(985, '44v-m70-420_base_ks4.prt', NULL, '2016-08-06 18:02:51', '2016-08-24 09:35:41', 985, 2, NULL, 4, 2, 3),
(986, 'polarimetro_visible.asm', NULL, '2016-08-06 18:03:00', '2016-08-06 18:03:00', 986, 1, NULL, NULL, 1, 2),
(987, 'polarimetro_visible.prt', NULL, '2016-08-06 18:03:10', '2016-08-25 14:40:53', 987, 2, NULL, NULL, 1, 2),
(988, 'polarimetro_visible.prt', NULL, '2016-08-06 18:03:20', '2016-08-25 14:40:53', 988, 2, NULL, NULL, 1, 2),
(989, 'guia_desplazamiento_horizontal.prt', NULL, '2016-08-06 18:03:29', '2016-08-06 18:03:29', 989, 2, NULL, NULL, NULL, NULL),
(990, 'rail_guia_skf_400mm.asm', NULL, '2016-08-06 18:03:39', '2016-08-06 18:03:39', 990, 1, NULL, NULL, 3, 12),
(991, 'llmhs12tar2t1-400p1w1e_6.asm', NULL, '2016-08-06 18:03:48', '2016-08-06 18:03:48', 991, 1, NULL, NULL, 3, 12),
(992, '_llmh12tar2-400e_6_.prt', NULL, '2016-08-06 18:03:58', '2016-08-06 18:03:58', 992, 2, NULL, NULL, NULL, NULL),
(993, '_llmh12tar2s.prt', NULL, '2016-08-06 18:04:08', '2016-08-06 18:04:08', 993, 2, NULL, NULL, NULL, NULL),
(994, '_llmh12tar2s.prt', NULL, '2016-08-06 18:04:17', '2016-08-06 18:04:17', 994, 2, NULL, NULL, NULL, NULL),
(995, '_llmh12tar2s.prt', NULL, '2016-08-06 18:04:27', '2016-08-06 18:04:27', 995, 2, NULL, NULL, NULL, NULL),
(996, '_llmhc12tar_.prt', NULL, '2016-08-06 18:04:37', '2016-08-06 18:04:37', 996, 2, NULL, NULL, NULL, NULL),
(997, '_llmh12tar2s.prt', NULL, '2016-08-06 18:04:46', '2016-08-06 18:04:46', 997, 2, NULL, NULL, NULL, NULL),
(998, '_pl12h.prt', NULL, '2016-08-06 18:04:56', '2016-08-06 18:04:56', 998, 2, NULL, NULL, NULL, NULL),
(999, '_llmhc12tar_.prt', NULL, '2016-08-06 18:05:05', '2016-08-06 18:05:05', 999, 2, NULL, NULL, NULL, NULL),
(1000, '_pl12h.prt', NULL, '2016-08-06 18:05:15', '2016-08-06 18:05:15', 1000, 2, NULL, NULL, NULL, NULL),
(1001, 'rail_guia_skf_400mm.asm', NULL, '2016-08-06 18:05:24', '2016-08-06 18:05:24', 1001, 1, NULL, NULL, 3, 12),
(1002, 'llmhs12tar2t1-400p1w1e_6.asm', NULL, '2016-08-06 18:05:34', '2016-08-06 18:05:34', 1002, 1, NULL, NULL, 3, 12),
(1003, '_llmh12tar2-400e_6_.prt', NULL, '2016-08-06 18:05:44', '2016-08-06 18:05:44', 1003, 2, NULL, NULL, NULL, NULL),
(1004, '_llmh12tar2s.prt', NULL, '2016-08-06 18:05:53', '2016-08-06 18:05:53', 1004, 2, NULL, NULL, NULL, NULL),
(1005, '_llmh12tar2s.prt', NULL, '2016-08-06 18:06:03', '2016-08-06 18:06:03', 1005, 2, NULL, NULL, NULL, NULL),
(1006, '_llmh12tar2s.prt', NULL, '2016-08-06 18:06:13', '2016-08-06 18:06:13', 1006, 2, NULL, NULL, NULL, NULL),
(1007, '_llmhc12tar_.prt', NULL, '2016-08-06 18:06:22', '2016-08-06 18:06:22', 1007, 2, NULL, NULL, NULL, NULL),
(1008, '_llmh12tar2s.prt', NULL, '2016-08-06 18:06:32', '2016-08-06 18:06:32', 1008, 2, NULL, NULL, NULL, NULL),
(1009, '_pl12h.prt', NULL, '2016-08-06 18:06:41', '2016-08-06 18:06:41', 1009, 2, NULL, NULL, NULL, NULL),
(1010, '_llmhc12tar_.prt', NULL, '2016-08-06 18:06:51', '2016-08-06 18:06:51', 1010, 2, NULL, NULL, NULL, NULL),
(1011, '_pl12h.prt', NULL, '2016-08-06 18:07:00', '2016-08-06 18:07:00', 1011, 2, NULL, NULL, NULL, NULL),
(1012, 'soporte_guia_despl_hor.prt', NULL, '2016-08-06 18:07:10', '2016-08-06 18:07:10', 1012, 2, NULL, NULL, NULL, NULL),
(1013, 'soporte_fijo_resortes.prt', NULL, '2016-08-06 18:07:20', '2016-08-06 18:07:20', 1013, 2, NULL, NULL, NULL, NULL),
(1014, 'soprote_mov_desp_vert.prt', NULL, '2016-08-06 18:07:29', '2016-08-06 18:07:29', 1014, 2, NULL, NULL, NULL, NULL),
(1015, 'soporte_fijo_resortes.prt', NULL, '2016-08-06 18:07:39', '2016-08-06 18:07:39', 1015, 2, NULL, NULL, NULL, NULL),
(1016, 'soporte_guia_desp_vert.prt', NULL, '2016-08-06 18:07:48', '2016-08-06 18:07:48', 1016, 2, NULL, NULL, NULL, NULL),
(1017, 'soporte_guia_desp_vert.prt', NULL, '2016-08-06 18:07:58', '2016-08-06 18:07:58', 1017, 2, NULL, NULL, NULL, NULL),
(1018, 'regulador_reductor_focal.asm', NULL, '2016-08-06 18:08:08', '2016-08-06 18:08:08', 1018, 1, NULL, NULL, NULL, NULL),
(1019, 'carcasa_polarimetro.prt', NULL, '2016-08-06 18:08:17', '2016-08-06 18:08:17', 1019, 2, NULL, NULL, NULL, NULL),
(1020, 'base_caja_electronica.prt', NULL, '2016-08-06 18:08:27', '2016-08-06 18:08:27', 1020, 2, NULL, NULL, NULL, NULL),
(1021, 'anillo_reductor_focal.prt', NULL, '2016-08-06 18:08:36', '2016-08-06 18:08:36', 1021, 2, NULL, NULL, NULL, NULL),
(1022, 'pestana_giro.prt', NULL, '2016-08-06 18:08:46', '2016-08-06 18:08:46', 1022, 2, NULL, NULL, NULL, NULL),
(1023, 'protector_lentes.prt', NULL, '2016-08-06 18:08:56', '2016-08-06 18:08:56', 1023, 2, NULL, NULL, NULL, NULL),
(1024, 'regulador_reductor_focal.asm', NULL, '2016-08-06 18:09:05', '2016-08-06 18:09:05', 1024, 1, NULL, NULL, NULL, NULL),
(1025, 'carcasa_polarimetro.prt', NULL, '2016-08-06 18:09:15', '2016-08-06 18:09:15', 1025, 2, NULL, NULL, NULL, NULL),
(1026, 'base_caja_electronica.prt', NULL, '2016-08-06 18:09:25', '2016-08-06 18:09:25', 1026, 2, NULL, NULL, NULL, NULL),
(1027, 'anillo_reductor_focal.prt', NULL, '2016-08-06 18:09:34', '2016-08-06 18:09:34', 1027, 2, NULL, NULL, NULL, NULL),
(1028, 'pestana_giro.prt', NULL, '2016-08-06 18:09:44', '2016-08-06 18:09:44', 1028, 2, NULL, NULL, NULL, NULL),
(1029, 'protector_lentes.prt', NULL, '2016-08-06 18:09:53', '2016-08-06 18:09:53', 1029, 2, NULL, NULL, NULL, NULL),
(1030, '44v_m70_430_interf_polarimetro.prt', NULL, '2016-08-06 18:10:03', '2016-08-06 18:10:03', 1030, 2, NULL, 4, 2, 2),
(1031, '44v_m70_430_interf_polarimetro.prt', NULL, '2016-08-06 18:10:12', '2016-08-25 14:40:54', 1031, NULL, NULL, NULL, 2, 2),
(1032, '44v_m70_430_interf_patines.prt', NULL, '2016-08-06 18:10:22', '2016-08-06 18:10:22', 1032, 2, NULL, 4, 2, 2),
(1033, '44v_m70_510_fm1_mount.asm', NULL, '2016-08-06 18:10:32', '2016-08-06 18:10:32', 1033, 1, NULL, NULL, 1, NULL),
(1034, 'newport_605-4.prt', NULL, '2016-08-06 18:10:41', '2016-08-06 18:10:41', 1034, 2, NULL, NULL, 3, 13),
(1035, 'newport_605-4.prt', NULL, '2016-08-06 18:10:51', '2016-08-06 18:10:51', 1035, 2, NULL, NULL, 3, 13),
(1036, '44v_m70_510_switch_limit.prt', NULL, '2016-08-06 18:11:00', '2016-08-06 18:11:00', 1036, 2, NULL, NULL, 3, 13),
(1037, '44v_m70_510_switch_limit.prt', NULL, '2016-08-06 18:11:10', '2016-08-06 18:11:10', 1037, 2, NULL, NULL, 3, 13),
(1038, '44v_m70_510_newport_45grados.prt', NULL, '2016-08-06 18:11:19', '2016-08-06 18:11:19', 1038, 2, NULL, NULL, 3, 13),
(1039, '44v-m70-410_pf40_fma_mirror4in.prt', NULL, '2016-08-06 21:22:49', '2016-08-06 21:22:49', 1039, 2, NULL, NULL, 3, 13),
(1040, '44v_m70_510_newport_45grados.prt', NULL, '2016-08-06 21:22:59', '2016-08-25 14:40:54', 1040, NULL, NULL, NULL, 3, 13),
(1041, '44v-m70-410_pf40_fma_mirror4in.prt', NULL, '2016-08-06 21:23:09', '2016-08-25 14:40:54', 1041, NULL, NULL, NULL, 3, 13),
(1042, 'mini_rail_guia_skf.asm', NULL, '2016-08-06 21:23:20', '2016-08-06 21:23:20', 1042, 1, NULL, NULL, 3, 12),
(1043, 'llmhs9tar2t1-150p1w1e_6.asm', NULL, '2016-08-06 21:23:30', '2016-08-06 21:23:30', 1043, 1, NULL, NULL, 3, 12),
(1044, '_pl9h.prt', NULL, '2016-08-06 21:23:40', '2016-08-06 21:23:40', 1044, 2, NULL, NULL, NULL, NULL),
(1045, '_pl9h.prt', NULL, '2016-08-06 21:23:50', '2016-08-06 21:23:50', 1045, 2, NULL, NULL, NULL, NULL),
(1046, '_llmhc9tar_.prt', NULL, '2016-08-06 21:23:59', '2016-08-06 21:23:59', 1046, 2, NULL, NULL, NULL, NULL),
(1047, '_llmh9tar2-150e_6_.prt', NULL, '2016-08-06 21:24:10', '2016-08-06 21:24:10', 1047, 2, NULL, NULL, NULL, NULL),
(1048, '_llmh9tar2s.prt', NULL, '2016-08-06 21:24:20', '2016-08-06 21:24:20', 1048, 2, NULL, NULL, NULL, NULL),
(1049, '_llmh9tar2s.prt', NULL, '2016-08-06 21:24:30', '2016-08-06 21:24:30', 1049, 2, NULL, NULL, NULL, NULL),
(1050, '_llmh9tar2s.prt', NULL, '2016-08-06 21:24:40', '2016-08-06 21:24:40', 1050, 2, NULL, NULL, NULL, NULL),
(1051, '_llmh9tar2s.prt', NULL, '2016-08-06 21:24:49', '2016-08-06 21:24:49', 1051, 2, NULL, NULL, NULL, NULL),
(1052, '_llmhc9tar_.prt', NULL, '2016-08-06 21:24:59', '2016-08-06 21:24:59', 1052, 2, NULL, NULL, NULL, NULL),
(1053, 'mini_rail_guia_skf.asm', NULL, '2016-08-06 21:25:08', '2016-08-06 21:25:08', 1053, 1, NULL, NULL, 3, 12),
(1054, 'llmhs9tar2t1-150p1w1e_6.asm', NULL, '2016-08-06 21:25:18', '2016-08-06 21:25:18', 1054, 1, NULL, NULL, 3, 12),
(1055, '_pl9h.prt', NULL, '2016-08-06 21:25:27', '2016-08-06 21:25:27', 1055, 2, NULL, NULL, NULL, NULL),
(1056, '_pl9h.prt', NULL, '2016-08-06 21:25:37', '2016-08-06 21:25:37', 1056, 2, NULL, NULL, NULL, NULL),
(1057, '_llmhc9tar_.prt', NULL, '2016-08-06 21:25:46', '2016-08-06 21:25:46', 1057, 2, NULL, NULL, NULL, NULL),
(1058, '_llmh9tar2-150e_6_.prt', NULL, '2016-08-06 21:25:56', '2016-08-06 21:25:56', 1058, 2, NULL, NULL, NULL, NULL),
(1059, '_llmh9tar2s.prt', NULL, '2016-08-06 21:26:06', '2016-08-06 21:26:06', 1059, 2, NULL, NULL, NULL, NULL),
(1060, '_llmh9tar2s.prt', NULL, '2016-08-06 21:26:16', '2016-08-06 21:26:16', 1060, 2, NULL, NULL, NULL, NULL),
(1061, '_llmh9tar2s.prt', NULL, '2016-08-06 21:26:26', '2016-08-06 21:26:26', 1061, 2, NULL, NULL, NULL, NULL),
(1062, '_llmh9tar2s.prt', NULL, '2016-08-06 21:26:36', '2016-08-06 21:26:36', 1062, 2, NULL, NULL, NULL, NULL),
(1063, '_llmhc9tar_.prt', NULL, '2016-08-06 21:26:46', '2016-08-06 21:26:46', 1063, 2, NULL, NULL, NULL, NULL),
(1064, '44v_m70_520_mecanismo_elevacion.asm', NULL, '2016-08-06 21:26:57', '2016-08-06 21:26:57', 1064, NULL, NULL, NULL, NULL, NULL),
(1065, '44v_m70_520_palanca.prt', NULL, '2016-08-06 21:27:07', '2016-08-06 21:27:07', 1065, NULL, NULL, NULL, NULL, NULL),
(1066, '44v_m70_520_casquillo.prt', NULL, '2016-08-06 21:27:17', '2016-08-06 21:27:17', 1066, NULL, NULL, NULL, NULL, NULL),
(1067, '44v_m70_510_interfase_tornillos.prt', NULL, '2016-08-06 21:27:28', '2016-08-06 21:27:28', 1067, 2, NULL, 4, 2, 2),
(1068, '44v_m70_510_interface_bp.prt', NULL, '2016-08-06 21:27:39', '2016-08-06 21:27:39', 1068, 2, NULL, 4, 2, 2),
(1069, '44v_m70_510_switch_position.prt', NULL, '2016-08-06 21:27:49', '2016-08-06 21:27:49', 1069, 2, NULL, NULL, 3, 13),
(1070, '44v_m70_510_switch_position.prt', NULL, '2016-08-06 21:28:00', '2016-08-06 21:28:00', 1070, 2, NULL, NULL, 3, 13),
(1071, '44v_m70_510_fm1_fixed_frame.prt', NULL, '2016-08-06 21:28:10', '2016-08-06 21:28:10', 1071, 2, NULL, 4, 2, 2),
(1072, '44v_m70_510_interface_bp1.prt', NULL, '2016-08-06 21:28:20', '2016-08-06 21:28:20', 1072, 2, NULL, 4, 2, 2),
(1073, '44v_m70_510_fm1_mobile_frame.prt', NULL, '2016-08-06 21:28:30', '2016-08-06 21:28:30', 1073, 2, NULL, 4, 2, 2),
(1074, '44v_m70_510_fm1_mobile_frame.prt', NULL, '2016-08-06 21:28:40', '2016-08-25 14:40:55', 1074, NULL, NULL, NULL, 2, 2),
(1075, '44v_m70_510_interface_bp2.prt', NULL, '2016-08-06 21:28:49', '2016-08-06 21:28:49', 1075, 2, NULL, 4, 2, 2),
(1076, 'iso2338-4m6x10-st.prt', NULL, '2016-08-06 21:28:59', '2016-08-06 21:28:59', 1076, 2, NULL, NULL, 3, 1),
(1077, 'iso2338-3m6x10-st.prt', NULL, '2016-08-06 21:29:09', '2016-08-06 21:29:09', 1077, 2, NULL, NULL, 3, 1),
(1078, 'iso2338-3m6x10-st.prt', NULL, '2016-08-06 21:29:18', '2016-08-06 21:29:18', 1078, 2, NULL, NULL, 3, 1),
(1079, 'iso2338-3m6x10-st.prt', NULL, '2016-08-06 21:29:28', '2016-08-06 21:29:28', 1079, 2, NULL, NULL, 3, 1),
(1080, 'iso2338-10m6x20-st.prt', NULL, '2016-08-06 21:29:38', '2016-08-06 21:29:38', 1080, 2, NULL, NULL, 3, 1),
(1081, 'iso2338-4m6x10-st.prt', NULL, '2016-08-06 21:29:47', '2016-08-06 21:29:47', 1081, 2, NULL, NULL, 3, 1),
(1082, 'iso2338-3m6x10-st.prt', NULL, '2016-08-06 21:29:57', '2016-08-06 21:29:57', 1082, 2, NULL, NULL, 3, 1),
(1083, 'iso2338-6m6x12-st.prt', NULL, '2016-08-06 21:30:06', '2016-08-06 21:30:06', 1083, 2, NULL, NULL, 3, 1),
(1084, '44v_m70_120_elevador.prt', NULL, '2016-08-06 21:30:16', '2016-08-06 21:30:16', 1084, 2, NULL, NULL, 2, 1),
(1085, '44v_m70_120_sheetmetal.prt', NULL, '2016-08-06 21:30:26', '2016-08-06 21:30:26', 1085, 2, NULL, NULL, 2, 1),
(1086, '44v_m70_120_elevador.prt', NULL, '2016-08-06 21:30:35', '2016-08-06 21:30:35', 1086, 2, NULL, NULL, 2, 1),
(1087, '44v_m70_120_sheetmetal.prt', NULL, '2016-08-06 21:30:45', '2016-08-06 21:30:45', 1087, 2, NULL, NULL, 2, 1),
(1088, '44v_m70_120_elevador.prt', NULL, '2016-08-06 21:30:55', '2016-08-06 21:30:55', 1088, 2, NULL, NULL, 2, 1),
(1089, '44v_m70_120_sheetmetal.prt', NULL, '2016-08-06 21:31:04', '2016-08-06 21:31:04', 1089, 2, NULL, NULL, 2, 1),
(1090, 'iso2338-8m6x16-st.prt', NULL, '2016-08-06 21:31:14', '2016-08-06 21:31:14', 1090, 2, NULL, NULL, 3, 1),
(1091, 'iso2338-8m6x16-st.prt', NULL, '2016-08-06 21:31:23', '2016-08-06 21:31:23', 1091, 2, NULL, NULL, 3, 1),
(1092, 'din912-m8x40-8_8.prt', NULL, '2016-08-06 21:31:33', '2016-08-06 21:31:33', 1092, 2, NULL, NULL, 3, 1),
(1093, '44v_m70_320_bp_interface.prt', NULL, '2016-08-06 21:31:42', '2016-08-24 08:51:20', 1093, 2, NULL, NULL, 2, 2),
(1094, '44v_m70_320_ajuste_y.prt', NULL, '2016-08-06 21:31:52', '2016-08-24 08:52:55', 1094, 2, NULL, NULL, 2, 2),
(1095, '44v_m70_320_ifu_baseplate_iac.asm', NULL, '2016-08-06 21:32:02', '2016-08-24 09:25:28', 1095, 1, NULL, NULL, 1, 31),
(1096, 'tuerca_sombrerete_din1587_m4.prt', NULL, '2016-08-06 21:32:11', '2016-08-06 21:32:11', 1096, 2, NULL, NULL, 2, 1),
(1097, 'tuerca_sombrerete_din1587_m4.prt', NULL, '2016-08-06 21:32:21', '2016-08-06 21:32:21', 1097, 2, NULL, NULL, 2, 1),
(1098, 'tuerca_sombrerete_din1587_m4.prt', NULL, '2016-08-06 21:32:30', '2016-08-06 21:32:30', 1098, 2, NULL, NULL, 2, 1),
(1099, 'tuerca_sombrerete_din1587_m4.prt', NULL, '2016-08-06 21:32:40', '2016-08-06 21:32:40', 1099, 2, NULL, NULL, 2, 1),
(1100, '44v_m70_320_envelope.prt', NULL, '2016-08-06 21:32:50', '2016-08-24 09:23:40', 1100, 2, NULL, NULL, 2, 2),
(1101, '44v_m70_320_envelope_guides.prt', NULL, '2016-08-06 21:32:59', '2016-08-24 09:24:13', 1101, 2, NULL, NULL, 2, 2),
(1102, '44v_m70_320_envelope_guides.prt', NULL, '2016-08-06 21:33:09', '2016-08-24 09:24:16', 1102, 2, NULL, NULL, 2, 2),
(1103, '44v_m70_320_envelope_guides.prt', NULL, '2016-08-06 21:33:19', '2016-08-24 09:24:21', 1103, 2, NULL, NULL, 2, 2),
(1104, '44v_m70_320_envelope_guides.prt', NULL, '2016-08-06 21:33:28', '2016-08-24 09:24:24', 1104, 2, NULL, NULL, 2, 2),
(1105, '44v_m70_320_ifu_base_plate_gris.prt', NULL, '2016-08-06 21:33:38', '2016-08-24 09:19:25', 1105, 2, NULL, NULL, 2, 2),
(1106, '44v_m70_320_mask_interface.prt', NULL, '2016-08-06 21:33:48', '2016-08-24 09:20:03', 1106, 2, NULL, NULL, 2, 2),
(1107, '44v_m70_320_adjustment_system.asm', NULL, '2016-08-06 21:33:57', '2016-08-24 09:05:43', 1107, 1, NULL, NULL, 1, 31),
(1108, 'din912-m8x60-8_8.prt', NULL, '2016-08-06 21:34:07', '2016-08-06 21:34:07', 1108, 2, NULL, NULL, 2, 1),
(1109, '44v_m70_320screw_m8.prt', NULL, '2016-08-06 21:34:17', '2016-08-06 21:34:17', 1109, 2, NULL, NULL, 2, 1),
(1110, '44v_m70_320_adjustment_cone.prt', NULL, '2016-08-06 21:34:26', '2016-08-24 09:07:20', 1110, 2, NULL, NULL, 2, 2),
(1111, '44v_m70_320_wedge.prt', NULL, '2016-08-06 21:34:36', '2016-08-24 09:07:55', 1111, 2, NULL, NULL, 2, 2),
(1112, '44v_m70_320_adjustment_system.asm', NULL, '2016-08-06 21:34:45', '2016-08-24 09:05:29', 1112, 1, NULL, NULL, 1, 31),
(1113, 'din912-m8x60-8_8.prt', NULL, '2016-08-06 21:34:55', '2016-08-06 21:34:55', 1113, 2, NULL, NULL, 2, 1),
(1114, '44v_m70_320screw_m8.prt', NULL, '2016-08-06 21:35:04', '2016-08-06 21:35:04', 1114, 2, NULL, NULL, 2, 1),
(1115, '44v_m70_320_adjustment_cone.prt', NULL, '2016-08-06 21:35:14', '2016-08-24 09:07:26', 1115, 2, NULL, NULL, 2, 2),
(1116, '44v_m70_320_wedge.prt', NULL, '2016-08-06 21:35:24', '2016-08-24 09:08:02', 1116, 2, NULL, NULL, 2, 2),
(1117, '44v_m70_320_adjustment_system.asm', NULL, '2016-08-06 21:35:33', '2016-08-24 09:06:50', 1117, 1, NULL, NULL, 1, 31),
(1118, 'din912-m8x60-8_8.prt', NULL, '2016-08-06 21:35:43', '2016-08-06 21:35:43', 1118, 2, NULL, NULL, 2, 1),
(1119, '44v_m70_320screw_m8.prt', NULL, '2016-08-06 21:35:52', '2016-08-06 21:35:52', 1119, 2, NULL, NULL, 2, 1),
(1120, '44v_m70_320_adjustment_cone.prt', NULL, '2016-08-06 21:36:02', '2016-08-24 09:07:32', 1120, 2, NULL, NULL, 2, 2),
(1121, '44v_m70_320_wedge.prt', NULL, '2016-08-06 21:36:12', '2016-08-24 09:08:07', 1121, 2, NULL, NULL, 2, 2),
(1122, '44v_m70_320_lock01.prt', NULL, '2016-08-06 21:36:21', '2016-08-24 09:03:50', 1122, 2, NULL, NULL, 2, 2),
(1123, '44v_m70_330_rs2_kmcp_m.asm', NULL, '2016-08-25 08:18:39', '2016-08-25 08:20:01', 1123, 1, NULL, NULL, 1, 30),
(1124, '13231-e0w.asm', NULL, '2016-08-25 08:23:48', '2016-08-25 08:23:48', 1124, 1, NULL, NULL, 1, 30),
(1125, '13231-001-1-solid1.prt', NULL, '2016-08-25 08:25:42', '2016-08-25 08:25:42', 1125, 2, NULL, NULL, 2, 1),
(1126, 'as568a-113-bn__stretched_-1-sol.prt', NULL, '2016-08-25 08:26:59', '2016-08-25 08:26:59', 1126, 2, NULL, NULL, 2, 1),
(1127, 'n4ms07-1-2-solid1.prt', NULL, '2016-08-25 08:29:41', '2016-08-25 08:29:41', 1127, 2, NULL, NULL, 3, 13),
(1128, '44v_m70_330_rs2_edmundoptics.asm', NULL, '2016-08-25 08:33:22', '2016-08-25 08:33:22', 1128, 1, NULL, NULL, 3, 12),
(1129, '44v_m70_330_rs2_link.prt', NULL, '2016-08-25 08:35:47', '2016-08-25 08:35:47', 1129, 2, NULL, NULL, 2, 2),
(1130, '44v_m70_320_ball_joint_preload.asm', NULL, '2016-08-25 08:41:20', '2016-08-25 12:35:57', 1130, 1, NULL, NULL, 1, 31),
(1131, '44v_m70_320_lower_frame.prt', NULL, '2016-08-25 08:43:37', '2016-08-25 12:36:29', 1131, 2, NULL, NULL, 2, 2),
(1132, '44v_m70_320_uuper_frame.prt', NULL, '2016-08-25 08:45:08', '2016-08-25 08:45:08', 1132, 2, NULL, NULL, 2, 1),
(1133, 'belleville_spring_b0625-022-s.prt', NULL, '2016-08-25 08:47:51', '2016-08-25 08:47:51', 1133, 2, NULL, NULL, 3, 12),
(1134, 'belleville_spring_b0625-022-s.prt', NULL, '2016-08-25 08:48:14', '2016-08-25 08:49:59', 1134, 2, NULL, NULL, 3, 12),
(1135, 'belleville_spring_b0625-022-s.prt', NULL, '2016-08-25 08:48:35', '2016-08-25 08:48:40', 1135, 2, NULL, NULL, 3, 12),
(1136, 'belleville_spring_b0625-022-s.prt', NULL, '2016-08-25 08:48:55', '2016-08-25 08:48:55', 1136, 2, NULL, NULL, 3, 12),
(1137, 'belleville_spring_b0625-022-s.prt', NULL, '2016-08-25 08:49:17', '2016-08-25 08:49:17', 1137, 2, NULL, NULL, 3, 12),
(1138, 'belleville_spring_b0625-022-s.prt', NULL, '2016-08-25 08:49:33', '2016-08-25 08:49:33', 1138, 2, NULL, NULL, 3, 12),
(1139, 'tuerca_iso_4034-m8-5.prt', NULL, '2016-08-25 08:51:27', '2016-08-25 08:51:27', 1139, 2, NULL, NULL, 3, 13),
(1140, 'inafag_ge10-aw.asm', NULL, '2016-08-25 08:53:15', '2016-08-25 08:53:15', 1140, 1, NULL, NULL, 3, 12),
(1141, 'inafag_ge10-aw.asm', NULL, '2016-08-25 08:54:47', '2016-08-25 08:54:47', 1141, 1, NULL, NULL, 3, 12),
(1142, 'ge_10_we_b.prt', NULL, '2016-08-25 08:56:46', '2016-08-25 08:56:46', 1142, 2, NULL, NULL, 3, 12),
(1143, 'ge_10_we_a.prt', NULL, '2016-08-25 08:57:05', '2016-08-25 08:57:05', 1143, 2, NULL, NULL, 3, 12),
(1144, 'ge_10_we_a.prt', NULL, '2016-08-25 08:59:11', '2016-08-25 08:59:11', 1145, 2, NULL, NULL, 3, 12),
(1145, 'ge_10_we_b.prt', NULL, '2016-08-25 08:59:28', '2016-08-25 08:59:28', 1144, 2, NULL, NULL, 3, 12),
(1146, '44v_m70_320_convex_interface.prt', NULL, '2016-08-25 09:11:57', '2016-08-25 09:11:57', 1146, 2, NULL, NULL, 2, 1),
(1147, 'm8_din912_70mm.prt', NULL, '2016-08-25 10:31:17', '2016-08-25 10:31:17', 1147, 2, NULL, NULL, 3, 12),
(1148, '44v_m70_320_convex_sphere_conf.asm', NULL, '2016-08-25 12:28:41', '2016-08-25 12:30:06', 1149, 1, NULL, NULL, 1, 30),
(1149, '44v_m70_320_convex_sphere.prt', NULL, '2016-08-25 12:29:53', '2016-08-25 12:29:53', 1150, 2, NULL, NULL, 2, 1),
(1150, '44v_m70_320_convex_sphere_tool.prt', NULL, '2016-08-25 12:32:05', '2016-08-25 12:32:05', 1151, 2, NULL, NULL, 2, 1),
(1151, '44v_m70_320_concave_sphere_tool.prt', NULL, '2016-08-25 12:51:58', '2016-08-25 12:51:58', 1152, 2, NULL, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `project_memberships`
--

CREATE TABLE IF NOT EXISTS `project_memberships` (
`id` int(11) NOT NULL,
  `contributor` tinyint(1) DEFAULT '0',
  `maximum_layer` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_rms`
--

CREATE TABLE IF NOT EXISTS `project_rms` (
`id` int(11) NOT NULL,
  `rm_url` varchar(255) DEFAULT NULL,
  `rm_project` varchar(255) DEFAULT NULL,
  `rm_apikey` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `rm_eosys` int(11) DEFAULT '3',
  `rm_eosysid` int(11) DEFAULT '4',
  `rm_plm` varchar(255) DEFAULT NULL,
  `rm_member_sys` varchar(255) DEFAULT 'sys',
  `rm_member_mech` varchar(255) DEFAULT 'mech',
  `rm_member_pi` varchar(255) DEFAULT 'pi',
  `rm_member_opt` varchar(255) DEFAULT 'opt',
  `rm_member_hw` varchar(255) DEFAULT 'hw',
  `rm_member_sw` varchar(255) DEFAULT 'sw',
  `rm_member_metro` varchar(255) DEFAULT 'metro',
  `rm_member_valid` varchar(255) DEFAULT 'valid',
  `rm_member_workshop` varchar(255) DEFAULT 'workshop',
  `rm_member_delin` varchar(255) DEFAULT 'draftman',
  `rm_tracker_manuf` varchar(255) DEFAULT 'Manufacture',
  `rm_tracker_delin` varchar(255) DEFAULT 'Delineate',
  `rm_tracker_meas` varchar(255) DEFAULT 'Measure',
  `rm_tracker_doc` varchar(255) DEFAULT 'Document',
  `rm_tracker_design` varchar(255) DEFAULT 'Design',
  `rm_tracker_valid` varchar(255) DEFAULT 'Validate',
  `rm_tracker_superv` varchar(255) DEFAULT 'Supervise',
  `rm_tracker_fab` varchar(255) DEFAULT 'Fabrication',
  `rm_tracker_com` varchar(255) DEFAULT 'Commercial',
  `rm_tracker_subc` varchar(255) DEFAULT 'Subcontract',
  `rm_tracker_integ` varchar(255) DEFAULT 'Integration',
  `rm_status_resolved` varchar(255) DEFAULT 'Resolved',
  `rm_status_new` varchar(255) DEFAULT 'New'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_rms`
--

INSERT INTO `project_rms` (`id`, `rm_url`, `rm_project`, `rm_apikey`, `created_at`, `updated_at`, `project_id`, `rm_eosys`, `rm_eosysid`, `rm_plm`, `rm_member_sys`, `rm_member_mech`, `rm_member_pi`, `rm_member_opt`, `rm_member_hw`, `rm_member_sw`, `rm_member_metro`, `rm_member_valid`, `rm_member_workshop`, `rm_member_delin`, `rm_tracker_manuf`, `rm_tracker_delin`, `rm_tracker_meas`, `rm_tracker_doc`, `rm_tracker_design`, `rm_tracker_valid`, `rm_tracker_superv`, `rm_tracker_fab`, `rm_tracker_com`, `rm_tracker_subc`, `rm_tracker_integ`, `rm_status_resolved`, `rm_status_new`) VALUES
(1, 'http://fijar.ll.iac.es/pm', 'ifub', 'a615d517fd9d8993cae7c9c2c95ca16b87795a26', '2016-08-25 13:10:46', '2016-08-25 13:41:53', 1, 2, 3, '4', 'txinto', 'nauzetvr', 'ip', 'carlosd', 'txinto', 'txinto', 'metro', 'nauzetvr', 'taller', 'delineante', 'Mecanizado', 'Delineación', 'Metrología', 'Documentación', 'Diseño', 'Validación', 'Supervisión', 'Fabricación', 'Compra', 'Subcontrata', 'Integración', 'Resuelta', 'Nueva');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL,
  `description` text,
  `public` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `abbrev`, `description`, `public`, `created_at`, `updated_at`, `owner_id`) VALUES
(1, 'IFU bench', 'ifub', 'IFU bench', 0, '2016-08-06 15:11:52', '2016-08-06 15:11:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`, `abbrev`) VALUES
(1, 'Systems Engineer', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 'sys'),
(2, 'Project Manager', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 'pm'),
(3, 'Principal Investigator', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 'pi'),
(4, 'Optical Engineer', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 'opt'),
(5, 'Mechanical Engineer', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 'mech'),
(6, 'Electronics Engineer', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 'hw'),
(7, 'Software Engineer', '2016-08-06 15:05:33', '2016-08-06 15:05:33', 'sw');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160615203204'),
('20160615212005'),
('20160616002703'),
('20160616003210'),
('20160616012507'),
('20160617005441'),
('20160617021519'),
('20160617213420'),
('20160625115105'),
('20160712133312'),
('20160712134501'),
('20160712161800'),
('20160712162600'),
('20160712164808'),
('20160712165235'),
('20160712175646'),
('20160712180338'),
('20160712182604'),
('20160712184805'),
('20160712190333'),
('20160724114028'),
('20160725121258'),
('20160726191034'),
('20160727180902'),
('20160801165721'),
('20160801172608'),
('20160803120747'),
('20160803120748'),
('20160806120748'),
('20160825133041'),
('20160825151652');

-- --------------------------------------------------------

--
-- Table structure for table `system_link_types`
--

CREATE TABLE IF NOT EXISTS `system_link_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_link_types`
--

INSERT INTO `system_link_types` (`id`, `name`, `abbrev`, `created_at`, `updated_at`) VALUES
(1, 'Includes', 'inc', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Extend', 'ext', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `system_links`
--

CREATE TABLE IF NOT EXISTS `system_links` (
`id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system_src_id` int(11) DEFAULT NULL,
  `system_dest_id` int(11) DEFAULT NULL,
  `system_link_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_types`
--

CREATE TABLE IF NOT EXISTS `system_types` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_types`
--

INSERT INTO `system_types` (`id`, `name`, `abbrev`, `created_at`, `updated_at`) VALUES
(1, 'Complex', 'cplx', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(2, 'Optical', 'opt', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(3, 'Mechanical', 'mech', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(4, 'Electronics', 'hw', '2016-08-06 15:05:33', '2016-08-06 15:05:33'),
(5, 'Software', 'sw', '2016-08-06 15:05:33', '2016-08-06 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE IF NOT EXISTS `systems` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbrev` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `system_type_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `layer_id` int(11) DEFAULT NULL,
  `atomic` tinyint(1) DEFAULT '0',
  `acquired` tinyint(1) DEFAULT '0',
  `virtual` tinyint(1) DEFAULT '0',
  `acq_priority` int(11) DEFAULT '100'
) ENGINE=InnoDB AUTO_INCREMENT=1153 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `name`, `abbrev`, `created_at`, `updated_at`, `project_id`, `root_id`, `parent_id`, `system_type_id`, `position`, `layer_id`, `atomic`, `acquired`, `virtual`, `acq_priority`) VALUES
(1, '44v-m70-001_layout_ifu_bench', '44V-M70-001/000', '2016-08-06 15:19:24', '2016-08-06 15:19:24', 1, 1, NULL, 3, 1, 4, 0, 0, 0, 100),
(2, '44v-m70-100_layout_bp', '44V-M70-001/000_2', '2016-08-06 15:19:34', '2016-08-06 15:19:34', 1, 1, 1, 3, 1, 4, 0, 0, 0, 100),
(3, '44v-m70-100_paton_taladros_ob', '44V-M70-001/000_2_1', '2016-08-06 15:19:44', '2016-08-06 15:19:44', 1, 1, 2, 3, 1, 4, 0, 1, 0, 100),
(4, '44v-m70-100_geometria_apoyos', '44V-M70-001/000_2_2', '2016-08-06 15:19:54', '2016-08-06 15:19:54', 1, 1, 2, 3, 2, 4, 0, 1, 0, 100),
(5, '44v-m70-001_sist_de_referencia', '44V-M70-001/000_2_3', '2016-08-06 15:20:04', '2016-08-06 15:20:04', 1, 1, 2, 3, 3, 4, 0, 1, 0, 100),
(6, '44v-m70-110_base_plate_ifu_ob', '44V-M70-110/001', '2016-08-06 15:20:13', '2016-08-06 15:20:13', 1, 1, 2, 3, 4, 4, 0, 0, 0, 100),
(7, '44v-m70-100_fov_bp_ref', '44V-M70-110/001_1', '2016-08-06 15:20:23', '2016-08-06 15:20:23', 1, 1, 6, 3, 1, 4, 0, 1, 0, 100),
(8, '44v-m70-100_polarimetro_bp_ref', '44V-M70-110/001_2', '2016-08-06 15:20:33', '2016-08-06 15:20:33', 1, 1, 6, 3, 2, 4, 0, 1, 0, 100),
(9, '44v-m70-110_base_plate_main', '44V-M70-110/100', '2016-08-06 15:20:43', '2016-08-06 15:20:43', 1, 1, 6, 3, 3, 4, 0, 0, 0, 100),
(10, '44v-m70-110_rigidizador_apoyo3', '44V-M70-110/101', '2016-08-06 15:20:53', '2016-08-06 15:20:53', 1, 1, 6, 3, 4, 4, 0, 0, 0, 100),
(11, '44v-m70-120_apoyo1', '44V-M70-120/001', '2016-08-06 15:21:03', '2016-08-06 15:21:03', 1, 1, 2, 3, 5, 4, 0, 0, 0, 100),
(12, '44v-m70-120_interfase_bo', '44V-M70-120/100', '2016-08-06 15:21:13', '2016-08-06 15:21:13', 1, 1, 11, 3, 1, 4, 0, 0, 0, 100),
(13, '44v-m70-120_alojamiento_v', '44V-M70-120/101', '2016-08-06 15:21:23', '2016-08-06 15:21:23', 1, 1, 11, 3, 2, 4, 0, 0, 0, 100),
(14, '44v-m70-120_vee', '44V-M70-120/102', '2016-08-06 15:21:32', '2016-08-06 15:21:32', 1, 1, 11, 3, 3, 4, 0, 1, 0, 100),
(15, '44v-m70-120_sphere100tb', '44V-M70-120/103', '2016-08-06 15:21:42', '2016-08-06 15:21:42', 1, 1, 11, 3, 4, 4, 0, 0, 0, 100),
(16, '44v-m70-120_ring_sphere', '44V-M70-120/104', '2016-08-06 15:21:52', '2016-08-06 15:21:52', 1, 1, 11, 3, 5, 4, 0, 0, 0, 100),
(17, '44v-m70-120_roscam16', '44V-M70-120/105', '2016-08-06 15:22:02', '2016-08-06 15:22:02', 1, 1, 11, 3, 6, 4, 0, 0, 0, 100),
(18, '44v-m70-120_apoyo_bp', '44V-M70-120/106', '2016-08-06 15:22:12', '2016-08-06 15:22:12', 1, 1, 11, 3, 7, 4, 0, 0, 0, 100),
(19, '44v-m70-120_contratuerca_bp', '44V-M70-120/107', '2016-08-06 15:22:22', '2016-08-06 15:22:22', 1, 1, 11, 3, 8, 4, 0, 0, 0, 100),
(20, '44v-m70-120acople_ajuste_bp', '44V-M70-120/108', '2016-08-06 15:22:32', '2016-08-06 15:22:32', 1, 1, 11, 3, 9, 4, 0, 0, 0, 100),
(21, '44v-m70-130_apoyo2', '44V-M70-130/001', '2016-08-06 15:22:42', '2016-08-06 15:22:42', 1, 1, 2, 3, 6, 4, 0, 0, 0, 100),
(22, '44v-m70-120_interfase_bo', '44V-M70-120/100b', '2016-08-06 15:22:51', '2016-08-06 15:22:51', 1, 1, 21, 3, 1, 4, 0, 0, 0, 100),
(23, '44v-m70-120_sphere100tb', '44V-M70-120/103b', '2016-08-06 15:23:01', '2016-08-06 15:23:01', 1, 1, 21, 3, 2, 4, 0, 0, 0, 100),
(24, '44v-m70-120_ring_sphere', '44V-M70-120/104b', '2016-08-06 15:23:11', '2016-08-06 15:23:11', 1, 1, 21, 3, 3, 4, 0, 0, 0, 100),
(25, '44v-m70-120_roscam16', '44V-M70-120/105b', '2016-08-06 15:23:21', '2016-08-06 15:23:21', 1, 1, 21, 3, 4, 4, 0, 0, 0, 100),
(26, '44v-m70-120_apoyo_bp', '44V-M70-120/106b', '2016-08-06 15:23:31', '2016-08-06 15:23:31', 1, 1, 21, 3, 5, 4, 0, 0, 0, 100),
(27, '44v-m70-120_contratuerca_bp', '44V-M70-120/107b', '2016-08-06 15:23:41', '2016-08-06 15:23:41', 1, 1, 21, 3, 6, 4, 0, 0, 0, 100),
(28, '44v-m70-120acople_ajuste_bp', '44V-M70-120/108b', '2016-08-06 15:23:51', '2016-08-06 15:23:51', 1, 1, 21, 3, 7, 4, 0, 0, 0, 100),
(29, '44v-m70-130_alojamiento_v2', '44V-M70-130/101', '2016-08-06 15:24:01', '2016-08-06 15:24:01', 1, 1, 21, 3, 8, 4, 0, 0, 0, 100),
(30, '44v-m70-130_vee2', '44V-M70-130/102', '2016-08-06 15:24:11', '2016-08-06 15:24:11', 1, 1, 21, 3, 9, 4, 0, 1, 0, 100),
(31, '44v-m70-140_apoyo3', '44V-M70-140/001', '2016-08-06 15:24:21', '2016-08-06 15:24:21', 1, 1, 2, 3, 7, 4, 0, 0, 0, 100),
(32, '44v-m70-120_interfase_bo', '44V-M70-120/100c', '2016-08-06 15:24:30', '2016-08-06 15:24:30', 1, 1, 31, 3, 1, 4, 0, 0, 0, 100),
(33, '44v-m70-120_sphere100tb', '44V-M70-120/103c', '2016-08-06 15:24:40', '2016-08-06 15:24:40', 1, 1, 31, 3, 2, 4, 0, 0, 0, 100),
(34, '44v-m70-120_ring_sphere', '44V-M70-120/104c', '2016-08-06 15:24:50', '2016-08-06 15:24:50', 1, 1, 31, 3, 3, 4, 0, 0, 0, 100),
(35, '44v-m70-120_roscam16', '44V-M70-120/105c', '2016-08-06 15:25:00', '2016-08-06 15:25:00', 1, 1, 31, 3, 4, 4, 0, 0, 0, 100),
(36, '44v-m70-120_apoyo_bp', '44V-M70-120/106c', '2016-08-06 15:25:10', '2016-08-06 15:25:10', 1, 1, 31, 3, 5, 4, 0, 0, 0, 100),
(37, '44v-m70-120_contratuerca_bp', '44V-M70-120/107c', '2016-08-06 15:25:20', '2016-08-06 15:25:20', 1, 1, 31, 3, 6, 4, 0, 0, 0, 100),
(38, '44v-m70-120acople_ajuste_bp', '44V-M70-120/108c', '2016-08-06 15:25:30', '2016-08-06 15:25:30', 1, 1, 31, 3, 7, 4, 0, 0, 0, 100),
(39, '44v-m70-140_alojamiento_v3', '44V-M70-140/101', '2016-08-06 15:25:40', '2016-08-06 15:25:40', 1, 1, 31, 3, 8, 4, 0, 0, 0, 100),
(40, '44v-m70-140_vee3', '44V-M70-140/102', '2016-08-06 15:25:50', '2016-08-06 15:25:50', 1, 1, 31, 3, 9, 4, 0, 1, 0, 100),
(41, 'rlp_gunnebo_m10', '44V-M70-001/000_1', '2016-08-06 15:26:00', '2016-08-06 15:26:00', 1, 1, 1, 3, 2, 4, 1, 0, 0, 100),
(42, 'z101710', '44V-M70-001/000_1_1', '2016-08-06 15:26:10', '2016-08-06 15:26:10', 1, 1, 41, 3, 1, 4, 1, 0, 0, 100),
(43, 'z768026_smitt', '44V-M70-001/000_1_1_1', '2016-08-06 15:26:20', '2016-08-06 15:26:20', 1, 1, 42, 3, 1, 4, 0, 0, 0, 100),
(44, 'z776041', '44V-M70-001/000_1_1_2', '2016-08-06 15:26:31', '2016-08-06 15:26:31', 1, 1, 42, 3, 2, 4, 0, 0, 0, 100),
(45, 'z768071', '44V-M70-001/000_1_1_3', '2016-08-06 15:26:41', '2016-08-06 15:26:41', 1, 1, 42, 3, 3, 4, 0, 0, 0, 100),
(46, 'z768657', '44V-M70-001/000_1_1_4', '2016-08-06 15:26:52', '2016-08-06 15:26:52', 1, 1, 42, 3, 4, 4, 0, 0, 0, 100),
(47, 'z7681210', '44V-M70-001/000_1_1_5', '2016-08-06 15:27:02', '2016-08-06 15:27:02', 1, 1, 42, 3, 5, 4, 0, 0, 0, 100),
(48, 'z776041', '44V-M70-001/000_1_2', '2016-08-06 15:27:12', '2016-08-06 15:27:12', 1, 1, 41, 3, 2, 4, 0, 0, 0, 100),
(49, 'z776041', '44V-M70-001/000_1_3', '2016-08-06 15:27:23', '2016-08-06 15:27:23', 1, 1, 41, 3, 3, 4, 0, 0, 0, 100),
(50, 'z776041', '44V-M70-001/000_1_4', '2016-08-06 15:27:34', '2016-08-06 15:27:34', 1, 1, 41, 3, 4, 4, 0, 0, 0, 100),
(51, 'z776041', '44V-M70-001/000_1_5', '2016-08-06 15:27:44', '2016-08-06 15:27:44', 1, 1, 41, 3, 5, 4, 0, 0, 0, 100),
(52, 'rlp_gunnebo_m10', '44V-M70-001/000_3', '2016-08-06 15:27:54', '2016-08-06 15:27:54', 1, 1, 1, 3, 3, 4, 1, 0, 0, 100),
(53, 'z101710', '44V-M70-001/000_3_1', '2016-08-06 15:28:04', '2016-08-06 15:28:04', 1, 1, 52, 3, 1, 4, 1, 0, 0, 100),
(54, 'z768026_smitt', '44V-M70-001/000_3_1_1', '2016-08-06 15:28:15', '2016-08-06 15:28:15', 1, 1, 53, 3, 1, 4, 0, 0, 0, 100),
(55, 'z776041', '44V-M70-001/000_3_1_2', '2016-08-06 15:28:26', '2016-08-06 15:28:26', 1, 1, 53, 3, 2, 4, 0, 0, 0, 100),
(56, 'z768071', '44V-M70-001/000_3_1_3', '2016-08-06 15:28:36', '2016-08-06 15:28:36', 1, 1, 53, 3, 3, 4, 0, 0, 0, 100),
(57, 'z768657', '44V-M70-001/000_3_1_4', '2016-08-06 15:28:46', '2016-08-06 15:28:46', 1, 1, 53, 3, 4, 4, 0, 0, 0, 100),
(58, 'z7681210', '44V-M70-001/000_3_1_5', '2016-08-06 15:28:56', '2016-08-06 15:28:56', 1, 1, 53, 3, 5, 4, 0, 0, 0, 100),
(59, 'z776041', '44V-M70-001/000_3_2', '2016-08-06 15:29:06', '2016-08-06 15:29:06', 1, 1, 52, 3, 2, 4, 0, 0, 0, 100),
(60, 'z776041', '44V-M70-001/000_3_3', '2016-08-06 15:29:17', '2016-08-06 15:29:17', 1, 1, 52, 3, 3, 4, 0, 0, 0, 100),
(61, 'z776041', '44V-M70-001/000_3_4', '2016-08-06 15:29:27', '2016-08-06 15:29:27', 1, 1, 52, 3, 4, 4, 0, 0, 0, 100),
(62, 'z776041', '44V-M70-001/000_3_5', '2016-08-06 15:29:38', '2016-08-06 15:29:38', 1, 1, 52, 3, 5, 4, 0, 0, 0, 100),
(63, '44v_m70_110_soporte_esl_izq', '44V-M70-001/000_4', '2016-08-06 15:29:48', '2016-08-06 15:29:48', 1, 1, 1, 3, 4, 4, 0, 0, 0, 100),
(64, 'rlp_gunnebo_m10', '44V-M70-001/000_5', '2016-08-06 15:29:58', '2016-08-06 15:29:58', 1, 1, 1, 3, 5, 4, 1, 0, 0, 100),
(65, 'z101710', '44V-M70-001/000_5_1', '2016-08-06 15:30:09', '2016-08-06 15:30:09', 1, 1, 64, 3, 1, 4, 1, 0, 0, 100),
(66, 'z768026_smitt', '44V-M70-001/000_5_1_1', '2016-08-06 15:30:19', '2016-08-06 15:30:19', 1, 1, 65, 3, 1, 4, 0, 0, 0, 100),
(67, 'z776041', '44V-M70-001/000_5_1_2', '2016-08-06 15:30:29', '2016-08-06 15:30:29', 1, 1, 65, 3, 2, 4, 0, 0, 0, 100),
(68, 'z768071', '44V-M70-001/000_5_1_3', '2016-08-06 15:30:39', '2016-08-06 15:30:39', 1, 1, 65, 3, 3, 4, 0, 0, 0, 100),
(69, 'z768657', '44V-M70-001/000_5_1_4', '2016-08-06 15:30:49', '2016-08-06 15:30:49', 1, 1, 65, 3, 4, 4, 0, 0, 0, 100),
(70, 'z7681210', '44V-M70-001/000_5_1_5', '2016-08-06 15:31:00', '2016-08-06 15:31:00', 1, 1, 65, 3, 5, 4, 0, 0, 0, 100),
(71, 'z776041', '44V-M70-001/000_5_2', '2016-08-06 15:31:10', '2016-08-06 15:31:10', 1, 1, 64, 3, 2, 4, 0, 0, 0, 100),
(72, 'z776041', '44V-M70-001/000_5_3', '2016-08-06 15:31:20', '2016-08-06 15:31:20', 1, 1, 64, 3, 3, 4, 0, 0, 0, 100),
(73, 'z776041', '44V-M70-001/000_5_4', '2016-08-06 15:31:30', '2016-08-06 15:31:30', 1, 1, 64, 3, 4, 4, 0, 0, 0, 100),
(74, 'z776041', '44V-M70-001/000_5_5', '2016-08-06 15:31:40', '2016-08-06 15:31:40', 1, 1, 64, 3, 5, 4, 0, 0, 0, 100),
(75, 'rlp_gunnebo_m10', '44V-M70-001/000_6', '2016-08-06 15:31:49', '2016-08-06 15:31:49', 1, 1, 1, 3, 6, 4, 1, 0, 0, 100),
(76, 'z101710', '44V-M70-001/000_6_1', '2016-08-06 15:32:00', '2016-08-06 15:32:00', 1, 1, 75, 3, 1, 4, 1, 0, 0, 100),
(77, 'z768026_smitt', '44V-M70-001/000_6_1_1', '2016-08-06 15:32:09', '2016-08-06 15:32:09', 1, 1, 76, 3, 1, 4, 0, 0, 0, 100),
(78, 'z776041', '44V-M70-001/000_6_1_2', '2016-08-06 15:32:19', '2016-08-06 15:32:19', 1, 1, 76, 3, 2, 4, 0, 0, 0, 100),
(79, 'z768071', '44V-M70-001/000_6_1_3', '2016-08-06 15:32:29', '2016-08-06 15:32:29', 1, 1, 76, 3, 3, 4, 0, 0, 0, 100),
(80, 'z768657', '44V-M70-001/000_6_1_4', '2016-08-06 15:32:39', '2016-08-06 15:32:39', 1, 1, 76, 3, 4, 4, 0, 0, 0, 100),
(81, 'z7681210', '44V-M70-001/000_6_1_5', '2016-08-06 15:32:49', '2016-08-06 15:32:49', 1, 1, 76, 3, 5, 4, 0, 0, 0, 100),
(82, 'z776041', '44V-M70-001/000_6_2', '2016-08-06 15:32:59', '2016-08-06 15:32:59', 1, 1, 75, 3, 2, 4, 0, 0, 0, 100),
(83, 'z776041', '44V-M70-001/000_6_3', '2016-08-06 15:33:09', '2016-08-06 15:33:09', 1, 1, 75, 3, 3, 4, 0, 0, 0, 100),
(84, 'z776041', '44V-M70-001/000_6_4', '2016-08-06 15:33:19', '2016-08-06 15:33:19', 1, 1, 75, 3, 4, 4, 0, 0, 0, 100),
(85, 'z776041', '44V-M70-001/000_6_5', '2016-08-06 15:33:28', '2016-08-06 15:33:28', 1, 1, 75, 3, 5, 4, 0, 0, 0, 100),
(86, '44v-m70-900_optical_path', '44V-M70-001/000_7', '2016-08-06 15:33:38', '2016-08-06 15:33:38', 1, 1, 1, 3, 7, 4, 0, 1, 0, 100),
(87, '44v-m70-900_scan_reimaging', '44V-M70-001/000_7_1', '2016-08-06 15:33:48', '2016-08-06 15:33:48', 1, 1, 86, 3, 1, 4, 1, 1, 0, 100),
(88, 'none-1956780', '44V-M70-001/000_7_1_1', '2016-08-06 15:33:58', '2016-08-06 15:33:58', 1, 1, 87, 3, 1, 4, 0, 0, 0, 100),
(89, 'none-2922560', '44V-M70-001/000_7_1_2', '2016-08-06 15:34:08', '2016-08-06 15:34:08', 1, 1, 87, 3, 2, 4, 0, 0, 0, 100),
(90, 'none-1485630', '44V-M70-001/000_7_1_3', '2016-08-06 15:34:18', '2016-08-06 15:34:18', 1, 1, 87, 3, 3, 4, 0, 0, 0, 100),
(91, 'none-1475100', '44V-M70-001/000_7_1_4', '2016-08-06 15:34:27', '2016-08-06 15:34:27', 1, 1, 87, 3, 4, 4, 0, 0, 0, 100),
(92, 'none-3403600', '44V-M70-001/000_7_1_5', '2016-08-06 15:34:37', '2016-08-06 15:34:37', 1, 1, 87, 3, 5, 4, 0, 0, 0, 100),
(93, 'none-3407940', '44V-M70-001/000_7_1_6', '2016-08-06 15:34:47', '2016-08-06 15:34:47', 1, 1, 87, 3, 6, 4, 0, 0, 0, 100),
(94, 'none-987870', '44V-M70-001/000_7_1_7', '2016-08-06 15:34:57', '2016-08-06 15:34:57', 1, 1, 87, 3, 7, 4, 0, 0, 0, 100),
(95, 'none-504340', '44V-M70-001/000_7_1_8', '2016-08-06 15:35:07', '2016-08-06 15:35:07', 1, 1, 87, 3, 8, 4, 0, 0, 0, 100),
(96, 'none-508040', '44V-M70-001/000_7_1_9', '2016-08-06 15:35:16', '2016-08-06 15:35:16', 1, 1, 87, 3, 9, 4, 0, 0, 0, 100),
(97, 'none-1478800', '44V-M70-001/000_7_1_10', '2016-08-06 15:35:26', '2016-08-06 15:35:26', 1, 1, 87, 3, 10, 4, 0, 0, 0, 100),
(98, 'none-1960480', '44V-M70-001/000_7_1_11', '2016-08-06 15:35:36', '2016-08-06 15:35:36', 1, 1, 87, 3, 11, 4, 0, 0, 0, 100),
(99, 'none-1971010', '44V-M70-001/000_7_1_12', '2016-08-06 15:35:46', '2016-08-06 15:35:46', 1, 1, 87, 3, 12, 4, 0, 0, 0, 100),
(100, 'none-1962330', '44V-M70-001/000_7_1_13', '2016-08-06 15:35:55', '2016-08-06 15:35:55', 1, 1, 87, 3, 13, 4, 0, 0, 0, 100),
(101, 'none-5940', '44V-M70-001/000_7_1_14', '2016-08-06 15:36:05', '2016-08-06 15:36:05', 1, 1, 87, 3, 14, 4, 0, 0, 0, 100),
(102, 'none-1966030', '44V-M70-001/000_7_1_15', '2016-08-06 15:36:15', '2016-08-06 15:36:15', 1, 1, 87, 3, 15, 4, 0, 0, 0, 100),
(103, 'none-8430', '44V-M70-001/000_7_1_16', '2016-08-06 15:36:25', '2016-08-06 15:36:25', 1, 1, 87, 3, 16, 4, 0, 0, 0, 100),
(104, 'none-2449560', '44V-M70-001/000_7_1_17', '2016-08-06 15:36:35', '2016-08-06 15:36:35', 1, 1, 87, 3, 17, 4, 0, 0, 0, 100),
(105, 'none-486980', '44V-M70-001/000_7_1_18', '2016-08-06 15:36:44', '2016-08-06 15:36:44', 1, 1, 87, 3, 18, 4, 0, 0, 0, 100),
(106, 'none-1457740', '44V-M70-001/000_7_1_19', '2016-08-06 15:36:54', '2016-08-06 15:36:54', 1, 1, 87, 3, 19, 4, 0, 0, 0, 100),
(107, 'none-2931240', '44V-M70-001/000_7_1_20', '2016-08-06 15:37:04', '2016-08-06 15:37:04', 1, 1, 87, 3, 20, 4, 0, 0, 0, 100),
(108, 'none-2447710', '44V-M70-001/000_7_1_21', '2016-08-06 15:37:14', '2016-08-06 15:37:14', 1, 1, 87, 3, 21, 4, 0, 0, 0, 100),
(109, 'none-1951800', '44V-M70-001/000_7_1_22', '2016-08-06 15:37:23', '2016-08-06 15:37:23', 1, 1, 87, 3, 22, 4, 0, 0, 0, 100),
(110, 'none-993420', '44V-M70-001/000_7_1_23', '2016-08-06 15:37:33', '2016-08-06 15:37:33', 1, 1, 87, 3, 23, 4, 0, 0, 0, 100),
(111, 'none-3422170', '44V-M70-001/000_7_1_24', '2016-08-06 15:37:43', '2016-08-06 15:37:43', 1, 1, 87, 3, 24, 4, 0, 0, 0, 100),
(112, 'none-2442160', '44V-M70-001/000_7_1_25', '2016-08-06 15:37:53', '2016-08-06 15:37:53', 1, 1, 87, 3, 25, 4, 0, 0, 0, 100),
(113, 'none-2939280', '44V-M70-001/000_7_1_26', '2016-08-06 15:38:02', '2016-08-06 15:38:02', 1, 1, 87, 3, 26, 4, 0, 0, 0, 100),
(114, 'none-972360', '44V-M70-001/000_7_1_27', '2016-08-06 15:38:12', '2016-08-06 15:38:12', 1, 1, 87, 3, 27, 4, 0, 0, 0, 100),
(115, 'none-1000250', '44V-M70-001/000_7_1_28', '2016-08-06 15:38:22', '2016-08-06 15:38:22', 1, 1, 87, 3, 28, 4, 0, 0, 0, 100),
(116, 'none-3424660', '44V-M70-001/000_7_1_29', '2016-08-06 15:38:32', '2016-08-06 15:38:32', 1, 1, 87, 3, 29, 4, 0, 0, 0, 100),
(117, 'none-22660', '44V-M70-001/000_7_1_30', '2016-08-06 15:38:42', '2016-08-06 15:38:42', 1, 1, 87, 3, 30, 4, 0, 0, 0, 100),
(118, '0000272879', '44V-M70-001/000_7_1_31', '2016-08-06 15:38:52', '2016-08-06 15:38:52', 1, 1, 87, 3, 31, 4, 0, 0, 0, 100),
(119, 'none-514870', '44V-M70-001/000_7_1_32', '2016-08-06 15:39:01', '2016-08-06 15:39:01', 1, 1, 87, 3, 32, 4, 0, 0, 0, 100),
(120, 'none-1471400', '44V-M70-001/000_7_1_33', '2016-08-06 15:39:11', '2016-08-06 15:39:11', 1, 1, 87, 3, 33, 4, 0, 0, 0, 100),
(121, 'none-1480650', '44V-M70-001/000_7_1_34', '2016-08-06 15:39:21', '2016-08-06 15:39:21', 1, 1, 87, 3, 34, 4, 0, 0, 0, 100),
(122, 'none-512380', '44V-M70-001/000_7_1_35', '2016-08-06 15:39:31', '2016-08-06 15:39:31', 1, 1, 87, 3, 35, 4, 0, 0, 0, 100),
(123, 'none-3399260', '44V-M70-001/000_7_1_36', '2016-08-06 15:39:40', '2016-08-06 15:39:40', 1, 1, 87, 3, 36, 4, 0, 0, 0, 100),
(124, 'none-2925050', '44V-M70-001/000_7_1_37', '2016-08-06 15:39:50', '2016-08-06 15:39:50', 1, 1, 87, 3, 37, 4, 0, 0, 0, 100),
(125, 'none-2933090', '44V-M70-001/000_7_1_38', '2016-08-06 15:40:00', '2016-08-06 15:40:00', 1, 1, 87, 3, 38, 4, 0, 0, 0, 100),
(126, 'none-3401110', '44V-M70-001/000_7_1_39', '2016-08-06 15:40:10', '2016-08-06 15:40:10', 1, 1, 87, 3, 39, 4, 0, 0, 0, 100),
(127, 'none-3416620', '44V-M70-001/000_7_1_40', '2016-08-06 15:40:19', '2016-08-06 15:40:19', 1, 1, 87, 3, 40, 4, 0, 0, 0, 100),
(128, 'none-1462080', '44V-M70-001/000_7_1_41', '2016-08-06 15:40:29', '2016-08-06 15:40:29', 1, 1, 87, 3, 41, 4, 0, 0, 0, 100),
(129, 'none-502490', '44V-M70-001/000_7_1_42', '2016-08-06 15:40:39', '2016-08-06 15:40:39', 1, 1, 87, 3, 42, 4, 0, 0, 0, 100),
(130, 'none-1459590', '44V-M70-001/000_7_1_43', '2016-08-06 15:40:49', '2016-08-06 15:40:49', 1, 1, 87, 3, 43, 4, 0, 0, 0, 100),
(131, 'none-1968520', '44V-M70-001/000_7_1_44', '2016-08-06 15:40:58', '2016-08-06 15:40:58', 1, 1, 87, 3, 44, 4, 0, 0, 0, 100),
(132, 'none-3414770', '44V-M70-001/000_7_1_45', '2016-08-06 15:41:08', '2016-08-06 15:41:08', 1, 1, 87, 3, 45, 4, 0, 0, 0, 100),
(133, 'none-2451410', '44V-M70-001/000_7_1_46', '2016-08-06 15:41:18', '2016-08-06 15:41:18', 1, 1, 87, 3, 46, 4, 0, 0, 0, 100),
(134, 'none-488830', '44V-M70-001/000_7_1_47', '2016-08-06 15:41:28', '2016-08-06 15:41:28', 1, 1, 87, 3, 47, 4, 0, 0, 0, 100),
(135, 'none-1466420', '44V-M70-001/000_7_1_48', '2016-08-06 15:41:38', '2016-08-06 15:41:38', 1, 1, 87, 3, 48, 4, 0, 0, 0, 100),
(136, 'none-2929390', '44V-M70-001/000_7_1_49', '2016-08-06 15:41:47', '2016-08-06 15:41:47', 1, 1, 87, 3, 49, 4, 0, 0, 0, 100),
(137, 'none-2456390', '44V-M70-001/000_7_1_50', '2016-08-06 15:41:57', '2016-08-06 15:41:57', 1, 1, 87, 3, 50, 4, 0, 0, 0, 100),
(138, 'none-983530', '44V-M70-001/000_7_1_51', '2016-08-06 15:42:08', '2016-08-06 15:42:08', 1, 1, 87, 3, 51, 4, 0, 0, 0, 100),
(139, 'none-2435330', '44V-M70-001/000_7_1_52', '2016-08-06 15:42:17', '2016-08-06 15:42:17', 1, 1, 87, 3, 52, 4, 0, 0, 0, 100),
(140, 'none-1476950', '44V-M70-001/000_7_1_53', '2016-08-06 15:42:27', '2016-08-06 15:42:27', 1, 1, 87, 3, 53, 4, 0, 0, 0, 100),
(141, 'none-2428500', '44V-M70-001/000_7_1_54', '2016-08-06 15:42:37', '2016-08-06 15:42:37', 1, 1, 87, 3, 54, 4, 0, 0, 0, 100),
(142, 'none-1964180', '44V-M70-001/000_7_1_55', '2016-08-06 15:42:47', '2016-08-06 15:42:47', 1, 1, 87, 3, 55, 4, 0, 0, 0, 100),
(143, 'none-2437180', '44V-M70-001/000_7_1_56', '2016-08-06 15:42:57', '2016-08-06 15:42:57', 1, 1, 87, 3, 56, 4, 0, 0, 0, 100),
(144, 'none-2432840', '44V-M70-001/000_7_1_57', '2016-08-06 15:44:27', '2016-08-06 15:44:27', 1, 1, 87, 3, 57, 4, 0, 0, 0, 100),
(145, 'none-976700', '44V-M70-001/000_7_1_58', '2016-08-06 15:44:37', '2016-08-06 15:44:37', 1, 1, 87, 3, 58, 4, 0, 0, 0, 100),
(146, 'none-991570', '44V-M70-001/000_7_1_59', '2016-08-06 15:44:47', '2016-08-06 15:44:47', 1, 1, 87, 3, 59, 4, 0, 0, 0, 100),
(147, 'none-17110', '44V-M70-001/000_7_1_60', '2016-08-06 15:44:57', '2016-08-06 15:44:57', 1, 1, 87, 3, 60, 4, 0, 0, 0, 100),
(148, 'none-997760', '44V-M70-001/000_7_1_61', '2016-08-06 15:45:07', '2016-08-06 15:45:07', 1, 1, 87, 3, 61, 4, 0, 0, 0, 100),
(149, 'none-18960', '44V-M70-001/000_7_1_62', '2016-08-06 15:45:17', '2016-08-06 15:45:17', 1, 1, 87, 3, 62, 4, 0, 0, 0, 100),
(150, 'none-2920710', '44V-M70-001/000_7_1_63', '2016-08-06 15:45:27', '2016-08-06 15:45:27', 1, 1, 87, 3, 63, 4, 0, 0, 0, 100),
(151, 'none-2915730', '44V-M70-001/000_7_1_64', '2016-08-06 15:45:38', '2016-08-06 15:45:38', 1, 1, 87, 3, 64, 4, 0, 0, 0, 100),
(152, 'none-491320', '44V-M70-001/000_7_1_65', '2016-08-06 15:45:47', '2016-08-06 15:45:47', 1, 1, 87, 3, 65, 4, 0, 0, 0, 100),
(153, 'none-3883110', '44V-M70-001/000_7_1_66', '2016-08-06 15:45:57', '2016-08-06 15:45:57', 1, 1, 87, 3, 66, 4, 0, 0, 0, 100),
(154, 'none-2934940', '44V-M70-001/000_7_1_67', '2016-08-06 15:46:07', '2016-08-06 15:46:07', 1, 1, 87, 3, 67, 4, 0, 0, 0, 100),
(155, 'none-986020', '44V-M70-001/000_7_1_68', '2016-08-06 15:46:18', '2016-08-06 15:46:18', 1, 1, 87, 3, 68, 4, 0, 0, 0, 100),
(156, 'none-979190', '44V-M70-001/000_7_1_69', '2016-08-06 15:46:28', '2016-08-06 15:46:28', 1, 1, 87, 3, 69, 4, 0, 0, 0, 100),
(157, 'none-1473250', '44V-M70-001/000_7_1_70', '2016-08-06 15:46:37', '2016-08-06 15:46:37', 1, 1, 87, 3, 70, 4, 0, 0, 0, 100),
(158, 'none-15260', '44V-M70-001/000_7_1_71', '2016-08-06 15:46:47', '2016-08-06 15:46:47', 1, 1, 87, 3, 71, 4, 0, 0, 0, 100),
(159, 'none-974210', '44V-M70-001/000_7_1_72', '2016-08-06 15:46:57', '2016-08-06 15:46:57', 1, 1, 87, 3, 72, 4, 0, 0, 0, 100),
(160, 'none-509890', '44V-M70-001/000_7_1_73', '2016-08-06 15:47:07', '2016-08-06 15:47:07', 1, 1, 87, 3, 73, 4, 0, 0, 0, 100),
(161, 'none-1464570', '44V-M70-001/000_7_1_74', '2016-08-06 15:47:17', '2016-08-06 15:47:17', 1, 1, 87, 3, 74, 4, 0, 0, 0, 100),
(162, 'none-995270', '44V-M70-001/000_7_1_75', '2016-08-06 15:47:26', '2016-08-06 15:47:26', 1, 1, 87, 3, 75, 4, 0, 0, 0, 100),
(163, 'none-20810', '44V-M70-001/000_7_1_76', '2016-08-06 15:47:36', '2016-08-06 15:47:36', 1, 1, 87, 3, 76, 4, 0, 0, 0, 100),
(164, 'none-506190', '44V-M70-001/000_7_1_77', '2016-08-06 15:47:46', '2016-08-06 15:47:46', 1, 1, 87, 3, 77, 4, 0, 0, 0, 100),
(165, 'none-3418470', '44V-M70-001/000_7_1_78', '2016-08-06 15:47:55', '2016-08-06 15:47:55', 1, 1, 87, 3, 78, 4, 0, 0, 0, 100),
(166, 'none-1944970', '44V-M70-001/000_7_1_79', '2016-08-06 15:48:06', '2016-08-06 15:48:06', 1, 1, 87, 3, 79, 4, 0, 0, 0, 100),
(167, 'none-498150', '44V-M70-001/000_7_1_80', '2016-08-06 15:48:16', '2016-08-06 15:48:16', 1, 1, 87, 3, 80, 4, 0, 0, 0, 100),
(168, 'none-3412920', '44V-M70-001/000_7_1_81', '2016-08-06 15:48:25', '2016-08-06 15:48:25', 1, 1, 87, 3, 81, 4, 0, 0, 0, 100),
(169, 'none-2453900', '44V-M70-001/000_7_1_82', '2016-08-06 15:48:35', '2016-08-06 15:48:35', 1, 1, 87, 3, 82, 4, 0, 0, 0, 100),
(170, 'none-3410430', '44V-M70-001/000_7_1_83', '2016-08-06 15:48:46', '2016-08-06 15:48:46', 1, 1, 87, 3, 83, 4, 0, 0, 0, 100),
(171, 'none-989720', '44V-M70-001/000_7_1_84', '2016-08-06 15:48:56', '2016-08-06 15:48:56', 1, 1, 87, 3, 84, 4, 0, 0, 0, 100),
(172, 'none-2913880', '44V-M70-001/000_7_1_85', '2016-08-06 15:49:06', '2016-08-06 15:49:06', 1, 1, 87, 3, 85, 4, 0, 0, 0, 100),
(173, 'none-495660', '44V-M70-001/000_7_1_86', '2016-08-06 15:49:16', '2016-08-06 15:49:16', 1, 1, 87, 3, 86, 4, 0, 0, 0, 100),
(174, 'none-3420320', '44V-M70-001/000_7_1_87', '2016-08-06 15:49:26', '2016-08-06 15:49:26', 1, 1, 87, 3, 87, 4, 0, 0, 0, 100),
(175, 'none-1483140', '44V-M70-001/000_7_1_88', '2016-08-06 15:49:36', '2016-08-06 15:49:36', 1, 1, 87, 3, 88, 4, 0, 0, 0, 100),
(176, 'none-1943120', '44V-M70-001/000_7_1_89', '2016-08-06 15:49:46', '2016-08-06 15:49:46', 1, 1, 87, 3, 89, 4, 0, 0, 0, 100),
(177, 'none-2430350', '44V-M70-001/000_7_1_90', '2016-08-06 15:49:56', '2016-08-06 15:49:56', 1, 1, 87, 3, 90, 4, 0, 0, 0, 100),
(178, 'none-1947460', '44V-M70-001/000_7_1_91', '2016-08-06 15:50:06', '2016-08-06 15:50:06', 1, 1, 87, 3, 91, 4, 0, 0, 0, 100),
(179, 'none-981040', '44V-M70-001/000_7_1_92', '2016-08-06 15:50:16', '2016-08-06 15:50:16', 1, 1, 87, 3, 92, 4, 0, 0, 0, 100),
(180, 'none-2445860', '44V-M70-001/000_7_1_93', '2016-08-06 15:50:26', '2016-08-06 15:50:26', 1, 1, 87, 3, 93, 4, 0, 0, 0, 100),
(181, 'none-3427150', '44V-M70-001/000_7_1_94', '2016-08-06 15:50:36', '2016-08-06 15:50:36', 1, 1, 87, 3, 94, 4, 0, 0, 0, 100),
(182, 'none-1949950', '44V-M70-001/000_7_1_95', '2016-08-06 15:50:46', '2016-08-06 15:50:46', 1, 1, 87, 3, 95, 4, 0, 0, 0, 100),
(183, 'none-2936790', '44V-M70-001/000_7_1_96', '2016-08-06 15:50:56', '2016-08-06 15:50:56', 1, 1, 87, 3, 96, 4, 0, 0, 0, 100),
(184, 'none-2941770', '44V-M70-001/000_7_1_97', '2016-08-06 15:51:06', '2016-08-06 15:51:06', 1, 1, 87, 3, 97, 4, 0, 0, 0, 100),
(185, 'none-24510', '44V-M70-001/000_7_1_98', '2016-08-06 15:51:16', '2016-08-06 15:51:16', 1, 1, 87, 3, 98, 4, 0, 0, 0, 100),
(186, 'none-500640', '44V-M70-001/000_7_1_99', '2016-08-06 15:51:26', '2016-08-06 15:51:26', 1, 1, 87, 3, 99, 4, 0, 0, 0, 100),
(187, 'none-2918220', '44V-M70-001/000_7_1_100', '2016-08-06 15:51:36', '2016-08-06 15:51:36', 1, 1, 87, 3, 100, 4, 0, 0, 0, 100),
(188, 'none-1958630', '44V-M70-001/000_7_1_101', '2016-08-06 15:51:46', '2016-08-06 15:51:46', 1, 1, 87, 3, 101, 4, 0, 0, 0, 100),
(189, 'none-2927540', '44V-M70-001/000_7_1_102', '2016-08-06 15:51:55', '2016-08-06 15:51:55', 1, 1, 87, 3, 102, 4, 0, 0, 0, 100),
(190, 'none-29490', '44V-M70-001/000_7_1_103', '2016-08-06 15:52:05', '2016-08-06 15:52:05', 1, 1, 87, 3, 103, 4, 0, 0, 0, 100),
(191, 'none-1468910', '44V-M70-001/000_7_1_104', '2016-08-06 15:52:15', '2016-08-06 15:52:15', 1, 1, 87, 3, 104, 4, 0, 0, 0, 100),
(192, 'none-2444010', '44V-M70-001/000_7_1_105', '2016-08-06 15:52:25', '2016-08-06 15:52:25', 1, 1, 87, 3, 105, 4, 0, 0, 0, 100),
(193, 'none-12770', '44V-M70-001/000_7_1_106', '2016-08-06 15:52:35', '2016-08-06 15:52:35', 1, 1, 87, 3, 106, 4, 0, 0, 0, 100),
(194, 'none-10280', '44V-M70-001/000_7_1_107', '2016-08-06 15:52:45', '2016-08-06 15:52:45', 1, 1, 87, 3, 107, 4, 0, 0, 0, 100),
(195, 'none-3406090', '44V-M70-001/000_7_1_108', '2016-08-06 15:52:57', '2016-08-06 15:52:57', 1, 1, 87, 3, 108, 4, 0, 0, 0, 100),
(196, 'none-1954290', '44V-M70-001/000_7_1_109', '2016-08-06 15:53:07', '2016-08-06 15:53:07', 1, 1, 87, 3, 109, 4, 0, 0, 0, 100),
(197, 'none-493810', '44V-M70-001/000_7_1_110', '2016-08-06 15:53:17', '2016-08-06 15:53:17', 1, 1, 87, 3, 110, 4, 0, 0, 0, 100),
(198, 'none-2439670', '44V-M70-001/000_7_1_111', '2016-08-06 15:53:28', '2016-08-06 15:53:28', 1, 1, 87, 3, 111, 4, 0, 0, 0, 100),
(199, 'none-27000', '44V-M70-001/000_7_1_112', '2016-08-06 15:53:38', '2016-08-06 15:53:38', 1, 1, 87, 3, 112, 4, 0, 0, 0, 100),
(200, 'none-3450', '44V-M70-001/000_7_1_113', '2016-08-06 15:53:48', '2016-08-06 15:53:48', 1, 1, 87, 3, 113, 4, 0, 0, 0, 100),
(201, '44v-m70-900_ifu_jorge', '44V-M70-001/000_7_2', '2016-08-06 15:53:57', '2016-08-06 15:53:57', 1, 1, 86, 3, 2, 4, 1, 1, 0, 100),
(202, 'none-345290', '44V-M70-001/000_7_2_1', '2016-08-06 15:54:07', '2016-08-06 15:54:07', 1, 1, 201, 3, 1, 4, 0, 0, 0, 100),
(203, 'none-336450', '44V-M70-001/000_7_2_2', '2016-08-06 15:54:17', '2016-08-06 15:54:17', 1, 1, 201, 3, 2, 4, 0, 0, 0, 100),
(204, 'none-481800', '44V-M70-001/000_7_2_3', '2016-08-06 15:54:27', '2016-08-06 15:54:27', 1, 1, 201, 3, 3, 4, 0, 0, 0, 100),
(205, 'none-398640', '44V-M70-001/000_7_2_4', '2016-08-06 15:54:37', '2016-08-06 15:54:37', 1, 1, 201, 3, 4, 4, 0, 0, 0, 100),
(206, 'none-960', '44V-M70-001/000_7_2_5', '2016-08-06 15:54:47', '2016-08-06 15:54:47', 1, 1, 201, 3, 5, 4, 0, 0, 0, 100),
(207, 'none-285360', '44V-M70-001/000_7_2_6', '2016-08-06 15:54:57', '2016-08-06 15:54:57', 1, 1, 201, 3, 6, 4, 0, 0, 0, 100),
(208, 'none-18640', '44V-M70-001/000_7_2_7', '2016-08-06 15:55:06', '2016-08-06 15:55:06', 1, 1, 201, 3, 7, 4, 0, 0, 0, 100),
(209, 'none-483650', '44V-M70-001/000_7_2_8', '2016-08-06 15:55:16', '2016-08-06 15:55:16', 1, 1, 201, 3, 8, 4, 0, 0, 0, 100),
(210, 'none-472960', '44V-M70-001/000_7_2_9', '2016-08-06 15:55:26', '2016-08-06 15:55:26', 1, 1, 201, 3, 9, 4, 0, 0, 0, 100),
(211, 'none-199140', '44V-M70-001/000_7_2_10', '2016-08-06 15:55:36', '2016-08-06 15:55:36', 1, 1, 201, 3, 10, 4, 0, 0, 0, 100),
(212, 'none-403780', '44V-M70-001/000_7_2_11', '2016-08-06 15:55:46', '2016-08-06 15:55:46', 1, 1, 201, 3, 11, 4, 0, 0, 0, 100),
(213, 'none-150700', '44V-M70-001/000_7_2_12', '2016-08-06 15:55:56', '2016-08-06 15:55:56', 1, 1, 201, 3, 12, 4, 0, 0, 0, 100),
(214, 'none-134460', '44V-M70-001/000_7_2_13', '2016-08-06 15:56:06', '2016-08-06 15:56:06', 1, 1, 201, 3, 13, 4, 0, 0, 0, 100),
(215, 'none-148850', '44V-M70-001/000_7_2_14', '2016-08-06 15:56:16', '2016-08-06 15:56:16', 1, 1, 201, 3, 14, 4, 0, 0, 0, 100),
(216, 'none-16790', '44V-M70-001/000_7_2_15', '2016-08-06 15:56:26', '2016-08-06 15:56:26', 1, 1, 201, 3, 15, 4, 0, 0, 0, 100),
(217, 'none-477460', '44V-M70-001/000_7_2_16', '2016-08-06 15:56:36', '2016-08-06 15:56:36', 1, 1, 201, 3, 16, 4, 0, 0, 0, 100),
(218, 'none-218030', '44V-M70-001/000_7_2_17', '2016-08-06 15:56:45', '2016-08-06 15:56:45', 1, 1, 201, 3, 17, 4, 0, 0, 0, 100),
(219, 'none-203640', '44V-M70-001/000_7_2_18', '2016-08-06 15:56:55', '2016-08-06 15:56:55', 1, 1, 201, 3, 18, 4, 0, 0, 0, 100),
(220, 'none-270970', '44V-M70-001/000_7_2_19', '2016-08-06 15:57:05', '2016-08-06 15:57:05', 1, 1, 201, 3, 19, 4, 0, 0, 0, 100),
(221, 'none-7950', '44V-M70-001/000_7_2_20', '2016-08-06 15:57:15', '2016-08-06 15:57:15', 1, 1, 201, 3, 20, 4, 0, 0, 0, 100),
(222, 'none-14940', '44V-M70-001/000_7_2_21', '2016-08-06 15:57:25', '2016-08-06 15:57:25', 1, 1, 201, 3, 21, 4, 0, 0, 0, 100),
(223, 'none-131810', '44V-M70-001/000_7_2_22', '2016-08-06 15:57:35', '2016-08-06 15:57:35', 1, 1, 201, 3, 22, 4, 0, 0, 0, 100),
(224, 'none-73980', '44V-M70-001/000_7_2_23', '2016-08-06 15:57:45', '2016-08-06 15:57:45', 1, 1, 201, 3, 23, 4, 0, 0, 0, 100),
(225, 'none-205490', '44V-M70-001/000_7_2_24', '2016-08-06 15:57:55', '2016-08-06 15:57:55', 1, 1, 201, 3, 24, 4, 0, 0, 0, 100),
(226, 'none-86520', '44V-M70-001/000_7_2_25', '2016-08-06 15:58:05', '2016-08-06 15:58:05', 1, 1, 201, 3, 25, 4, 0, 0, 0, 100),
(227, 'none-412620', '44V-M70-001/000_7_2_26', '2016-08-06 15:58:15', '2016-08-06 15:58:15', 1, 1, 201, 3, 26, 4, 0, 0, 0, 100),
(228, 'none-333800', '44V-M70-001/000_7_2_27', '2016-08-06 15:58:25', '2016-08-06 15:58:25', 1, 1, 201, 3, 27, 4, 0, 0, 0, 100),
(229, 'none-352690', '44V-M70-001/000_7_2_28', '2016-08-06 15:58:35', '2016-08-06 15:58:35', 1, 1, 201, 3, 28, 4, 0, 0, 0, 100),
(230, 'none-416320', '44V-M70-001/000_7_2_29', '2016-08-06 15:58:45', '2016-08-06 15:58:45', 1, 1, 201, 3, 29, 4, 0, 0, 0, 100),
(231, 'none-405630', '44V-M70-001/000_7_2_30', '2016-08-06 15:58:55', '2016-08-06 15:58:55', 1, 1, 201, 3, 30, 4, 0, 0, 0, 100),
(232, 'none-72130', '44V-M70-001/000_7_2_31', '2016-08-06 15:59:05', '2016-08-06 15:59:05', 1, 1, 201, 3, 31, 4, 0, 0, 0, 100),
(233, 'none-70280', '44V-M70-001/000_7_2_32', '2016-08-06 15:59:15', '2016-08-06 15:59:15', 1, 1, 201, 3, 32, 4, 0, 0, 0, 100),
(234, 'none-65140', '44V-M70-001/000_7_2_33', '2016-08-06 15:59:25', '2016-08-06 15:59:25', 1, 1, 201, 3, 33, 4, 0, 0, 0, 100),
(235, 'none-468460', '44V-M70-001/000_7_2_34', '2016-08-06 15:59:35', '2016-08-06 15:59:35', 1, 1, 201, 3, 34, 4, 0, 0, 0, 100),
(236, 'none-407480', '44V-M70-001/000_7_2_35', '2016-08-06 15:59:45', '2016-08-06 15:59:45', 1, 1, 201, 3, 35, 4, 0, 0, 0, 100),
(237, 'none-212480', '44V-M70-001/000_7_2_36', '2016-08-06 15:59:55', '2016-08-06 15:59:55', 1, 1, 201, 3, 36, 4, 0, 0, 0, 100),
(238, 'none-76630', '44V-M70-001/000_7_2_37', '2016-08-06 16:00:05', '2016-08-06 16:00:05', 1, 1, 201, 3, 37, 4, 0, 0, 0, 100),
(239, 'none-6100', '44V-M70-001/000_7_2_38', '2016-08-06 16:00:15', '2016-08-06 16:00:15', 1, 1, 201, 3, 38, 4, 0, 0, 0, 100),
(240, 'none-532410', '44V-M70-001/000_7_2_39', '2016-08-06 16:00:25', '2016-08-06 16:00:25', 1, 1, 201, 3, 39, 4, 0, 0, 0, 100),
(241, 'none-12450', '44V-M70-001/000_7_2_40', '2016-08-06 16:00:35', '2016-08-06 16:00:35', 1, 1, 201, 3, 40, 4, 0, 0, 0, 100),
(242, 'none-201790', '44V-M70-001/000_7_2_41', '2016-08-06 16:00:45', '2016-08-06 16:00:45', 1, 1, 201, 3, 41, 4, 0, 0, 0, 100),
(243, 'none-418170', '44V-M70-001/000_7_2_42', '2016-08-06 16:00:55', '2016-08-06 16:00:55', 1, 1, 201, 3, 42, 4, 0, 0, 0, 100),
(244, 'none-3450', '44V-M70-001/000_7_2_43', '2016-08-06 16:01:05', '2016-08-06 16:01:05', 1, 1, 201, 3, 43, 4, 0, 0, 0, 100),
(245, 'none-208140', '44V-M70-001/000_7_2_44', '2016-08-06 16:01:15', '2016-08-06 16:01:15', 1, 1, 201, 3, 44, 4, 0, 0, 0, 100),
(246, 'none-342800', '44V-M70-001/000_7_2_45', '2016-08-06 16:01:25', '2016-08-06 16:01:25', 1, 1, 201, 3, 45, 4, 0, 0, 0, 100),
(247, 'none-129320', '44V-M70-001/000_7_2_46', '2016-08-06 16:01:35', '2016-08-06 16:01:35', 1, 1, 201, 3, 46, 4, 0, 0, 0, 100),
(248, 'none-196650', '44V-M70-001/000_7_2_47', '2016-08-06 16:01:45', '2016-08-06 16:01:45', 1, 1, 201, 3, 47, 4, 0, 0, 0, 100),
(249, 'none-143300', '44V-M70-001/000_7_2_48', '2016-08-06 16:01:55', '2016-08-06 16:01:55', 1, 1, 201, 3, 48, 4, 0, 0, 0, 100),
(250, 'none-80970', '44V-M70-001/000_7_2_49', '2016-08-06 16:02:05', '2016-08-06 16:02:05', 1, 1, 201, 3, 49, 4, 0, 0, 0, 100),
(251, 'none-67630', '44V-M70-001/000_7_2_50', '2016-08-06 16:02:15', '2016-08-06 16:02:15', 1, 1, 201, 3, 50, 4, 0, 0, 0, 100),
(252, 'none-283510', '44V-M70-001/000_7_2_51', '2016-08-06 16:02:25', '2016-08-06 16:02:25', 1, 1, 201, 3, 51, 4, 0, 0, 0, 100),
(253, 'none-210630', '44V-M70-001/000_7_2_52', '2016-08-06 16:02:36', '2016-08-06 16:02:36', 1, 1, 201, 3, 52, 4, 0, 0, 0, 100),
(254, 'none-340150', '44V-M70-001/000_7_2_53', '2016-08-06 16:02:45', '2016-08-06 16:02:45', 1, 1, 201, 3, 53, 4, 0, 0, 0, 100),
(255, 'none-79120', '44V-M70-001/000_7_2_54', '2016-08-06 16:02:55', '2016-08-06 16:02:55', 1, 1, 201, 3, 54, 4, 0, 0, 0, 100),
(256, 'none-20490', '44V-M70-001/000_7_2_55', '2016-08-06 16:03:05', '2016-08-06 16:03:05', 1, 1, 201, 3, 55, 4, 0, 0, 0, 100),
(257, 'none-347140', '44V-M70-001/000_7_2_56', '2016-08-06 16:03:15', '2016-08-06 16:03:15', 1, 1, 201, 3, 56, 4, 0, 0, 0, 100),
(258, 'none-275470', '44V-M70-001/000_7_2_57', '2016-08-06 16:03:25', '2016-08-06 16:03:25', 1, 1, 201, 3, 57, 4, 0, 0, 0, 100),
(259, 'none-471110', '44V-M70-001/000_7_2_58', '2016-08-06 16:03:35', '2016-08-06 16:03:35', 1, 1, 201, 3, 58, 4, 0, 0, 0, 100),
(260, 'none-272820', '44V-M70-001/000_7_2_59', '2016-08-06 16:03:45', '2016-08-06 16:03:45', 1, 1, 201, 3, 59, 4, 0, 0, 0, 100),
(261, 'none-474810', '44V-M70-001/000_7_2_60', '2016-08-06 16:03:55', '2016-08-06 16:03:55', 1, 1, 201, 3, 60, 4, 0, 0, 0, 100),
(262, 'none-82820', '44V-M70-001/000_7_2_61', '2016-08-06 16:04:05', '2016-08-06 16:04:05', 1, 1, 201, 3, 61, 4, 0, 0, 0, 100),
(263, 'none-136310', '44V-M70-001/000_7_2_62', '2016-08-06 16:04:15', '2016-08-06 16:04:15', 1, 1, 201, 3, 62, 4, 0, 0, 0, 100),
(264, 'none-263980', '44V-M70-001/000_7_2_63', '2016-08-06 16:04:25', '2016-08-06 16:04:25', 1, 1, 201, 3, 63, 4, 0, 0, 0, 100),
(265, 'none-279810', '44V-M70-001/000_7_2_64', '2016-08-06 16:04:34', '2016-08-06 16:04:34', 1, 1, 201, 3, 64, 4, 0, 0, 0, 100),
(266, 'none-331310', '44V-M70-001/000_7_2_65', '2016-08-06 16:04:44', '2016-08-06 16:04:44', 1, 1, 201, 3, 65, 4, 0, 0, 0, 100),
(267, 'none-84670', '44V-M70-001/000_7_2_66', '2016-08-06 16:04:54', '2016-08-06 16:04:54', 1, 1, 201, 3, 66, 4, 0, 0, 0, 100),
(268, 'none-410130', '44V-M70-001/000_7_2_67', '2016-08-06 16:05:04', '2016-08-06 16:05:04', 1, 1, 201, 3, 67, 4, 0, 0, 0, 100),
(269, 'none-22340', '44V-M70-001/000_7_2_68', '2016-08-06 16:05:14', '2016-08-06 16:05:14', 1, 1, 201, 3, 68, 4, 0, 0, 0, 100),
(270, 'none-338300', '44V-M70-001/000_7_2_69', '2016-08-06 16:05:24', '2016-08-06 16:05:24', 1, 1, 201, 3, 69, 4, 0, 0, 0, 100),
(271, 'none-138160', '44V-M70-001/000_7_2_70', '2016-08-06 16:05:34', '2016-08-06 16:05:34', 1, 1, 201, 3, 70, 4, 0, 0, 0, 100),
(272, 'none-414470', '44V-M70-001/000_7_2_71', '2016-08-06 16:05:44', '2016-08-06 16:05:44', 1, 1, 201, 3, 71, 4, 0, 0, 0, 100),
(273, 'none-401130', '44V-M70-001/000_7_2_72', '2016-08-06 16:05:54', '2016-08-06 16:05:54', 1, 1, 201, 3, 72, 4, 0, 0, 0, 100),
(274, 'none-348990', '44V-M70-001/000_7_2_73', '2016-08-06 16:06:04', '2016-08-06 16:06:04', 1, 1, 201, 3, 73, 4, 0, 0, 0, 100),
(275, 'none-266470', '44V-M70-001/000_7_2_74', '2016-08-06 16:06:14', '2016-08-06 16:06:14', 1, 1, 201, 3, 74, 4, 0, 0, 0, 100),
(276, 'none-140810', '44V-M70-001/000_7_2_75', '2016-08-06 16:06:24', '2016-08-06 16:06:24', 1, 1, 201, 3, 75, 4, 0, 0, 0, 100),
(277, 'none-9800', '44V-M70-001/000_7_2_76', '2016-08-06 16:06:34', '2016-08-06 16:06:34', 1, 1, 201, 3, 76, 4, 0, 0, 0, 100),
(278, 'none-214330', '44V-M70-001/000_7_2_77', '2016-08-06 16:06:45', '2016-08-06 16:06:45', 1, 1, 201, 3, 77, 4, 0, 0, 0, 100),
(279, 'none-277960', '44V-M70-001/000_7_2_78', '2016-08-06 16:06:55', '2016-08-06 16:06:55', 1, 1, 201, 3, 78, 4, 0, 0, 0, 100),
(280, 'none-216180', '44V-M70-001/000_7_2_79', '2016-08-06 16:07:05', '2016-08-06 16:07:05', 1, 1, 201, 3, 79, 4, 0, 0, 0, 100),
(281, 'none-269120', '44V-M70-001/000_7_2_80', '2016-08-06 16:07:15', '2016-08-06 16:07:15', 1, 1, 201, 3, 80, 4, 0, 0, 0, 100),
(282, 'none-281660', '44V-M70-001/000_7_2_81', '2016-08-06 16:07:25', '2016-08-06 16:07:25', 1, 1, 201, 3, 81, 4, 0, 0, 0, 100),
(283, 'none-487350', '44V-M70-001/000_7_2_82', '2016-08-06 16:07:35', '2016-08-06 16:07:35', 1, 1, 201, 3, 82, 4, 0, 0, 0, 100),
(284, 'none-479950', '44V-M70-001/000_7_2_83', '2016-08-06 16:07:45', '2016-08-06 16:07:45', 1, 1, 201, 3, 83, 4, 0, 0, 0, 100),
(285, 'none-350840', '44V-M70-001/000_7_2_84', '2016-08-06 16:07:55', '2016-08-06 16:07:55', 1, 1, 201, 3, 84, 4, 0, 0, 0, 100),
(286, 'none-147000', '44V-M70-001/000_7_2_85', '2016-08-06 16:08:05', '2016-08-06 16:08:05', 1, 1, 201, 3, 85, 4, 0, 0, 0, 100),
(287, 'none-485500', '44V-M70-001/000_7_2_86', '2016-08-06 16:08:15', '2016-08-06 16:08:15', 1, 1, 201, 3, 86, 4, 0, 0, 0, 100),
(288, 'none-420020', '44V-M70-001/000_7_2_87', '2016-08-06 16:08:25', '2016-08-06 16:08:25', 1, 1, 201, 3, 87, 4, 0, 0, 0, 100),
(289, 'none-465970', '44V-M70-001/000_7_2_88', '2016-08-06 16:08:35', '2016-08-06 16:08:35', 1, 1, 201, 3, 88, 4, 0, 0, 0, 100),
(290, 'none-145150', '44V-M70-001/000_7_2_89', '2016-08-06 16:08:45', '2016-08-06 16:08:45', 1, 1, 201, 3, 89, 4, 0, 0, 0, 100),
(291, '44v_m70_900_path_afterifu_out', '44V-M70-001/000_7_3', '2016-08-06 16:08:55', '2016-08-06 16:08:55', 1, 1, 86, 3, 3, 4, 0, 1, 0, 100),
(292, '44v-m70-900_path_afterifu', '44V-M70-001/000_7_4', '2016-08-06 16:09:05', '2016-08-06 16:09:05', 1, 1, 86, 3, 4, 4, 0, 1, 0, 100),
(293, '44v-m70-001_sist_de_referencia', '44V-M70-001/000_8', '2016-08-06 16:09:15', '2016-08-06 16:09:15', 1, 1, 1, 3, 8, 4, 0, 1, 0, 100),
(294, '44v_m70_110_soporte_esl_der', '44V-M70-110/103', '2016-08-06 16:09:25', '2016-08-06 16:09:25', 1, 1, 1, 3, 9, 4, 0, 0, 0, 100),
(295, '44v-m70-200_fov_scanning', '44V-M70-200/000', '2016-08-06 16:09:35', '2016-08-06 16:09:35', 1, 1, 1, 3, 10, 4, 0, 1, 0, 100),
(296, '44v-m70-210_fov_ls2', '44V-M70-210/002', '2016-08-06 16:09:45', '2016-08-06 16:09:45', 1, 1, 295, 3, 1, 4, 0, 1, 0, 100),
(297, 'din912-m6x12-10_9', '44V-M70-210/002_1', '2016-08-06 16:09:55', '2016-08-06 16:09:55', 1, 1, 296, 3, 1, 4, 0, 1, 0, 100),
(298, 'din912-m6x12-10_9', '44V-M70-210/002_2', '2016-08-06 16:10:06', '2016-08-06 16:10:06', 1, 1, 296, 3, 2, 4, 0, 1, 0, 100),
(299, 'iso2338-4m6x12-st', '44V-M70-210/002_3', '2016-08-06 16:10:16', '2016-08-06 16:10:16', 1, 1, 296, 3, 3, 4, 0, 1, 0, 100),
(300, 'iso2338-4m6x12-st', '44V-M70-210/002_4', '2016-08-06 16:10:26', '2016-08-06 16:10:26', 1, 1, 296, 3, 4, 4, 0, 1, 0, 100),
(301, 'din84-m3x10-4_8', '44V-M70-210/002_5', '2016-08-06 16:10:36', '2016-08-06 16:10:36', 1, 1, 296, 3, 5, 4, 0, 1, 0, 100),
(302, 'iso2338-4m6x12-st', '44V-M70-210/002_6', '2016-08-06 16:10:46', '2016-08-06 16:10:46', 1, 1, 296, 3, 6, 4, 0, 1, 0, 100),
(303, 'iso2338-4m6x12-st', '44V-M70-210/002_7', '2016-08-06 16:10:56', '2016-08-06 16:10:56', 1, 1, 296, 3, 7, 4, 0, 1, 0, 100),
(304, 'din433-1-6', '44V-M70-210/002_8', '2016-08-06 16:11:06', '2016-08-06 16:11:06', 1, 1, 296, 3, 8, 4, 0, 1, 0, 100),
(305, 'iso2338-3m6x12-st', '44V-M70-210/002_9', '2016-08-06 16:11:16', '2016-08-06 16:11:16', 1, 1, 296, 3, 9, 4, 0, 1, 0, 100),
(306, 'iso2338-3m6x12-st', '44V-M70-210/002_10', '2016-08-06 16:11:26', '2016-08-06 16:11:26', 1, 1, 296, 3, 10, 4, 0, 1, 0, 100),
(307, 'din84-m3x10-4_8', '44V-M70-210/002_11', '2016-08-06 16:11:36', '2016-08-06 16:11:36', 1, 1, 296, 3, 11, 4, 0, 1, 0, 100),
(308, 'din433-1-6', '44V-M70-210/002_12', '2016-08-06 16:11:46', '2016-08-06 16:11:46', 1, 1, 296, 3, 12, 4, 0, 1, 0, 100),
(309, 'din912-m03x12', '44V-M70-210/002_13', '2016-08-06 16:11:56', '2016-08-06 16:11:56', 1, 1, 296, 3, 13, 4, 0, 1, 0, 100),
(310, 'din912-m03x12', '44V-M70-210/002_14', '2016-08-06 16:12:06', '2016-08-06 16:12:06', 1, 1, 296, 3, 14, 4, 0, 1, 0, 100),
(311, 'din912-m6x14-8_8', '44V-M70-210/002_15', '2016-08-06 16:12:16', '2016-08-06 16:12:16', 1, 1, 296, 3, 15, 4, 0, 1, 0, 100),
(312, 'din912-m03x12', '44V-M70-210/002_16', '2016-08-06 16:12:26', '2016-08-06 16:12:26', 1, 1, 296, 3, 16, 4, 0, 1, 0, 100),
(313, 'din912-m6x14-8_8', '44V-M70-210/002_17', '2016-08-06 16:12:36', '2016-08-06 16:12:36', 1, 1, 296, 3, 17, 4, 0, 1, 0, 100),
(314, 'din912-m6x14-8_8', '44V-M70-210/002_18', '2016-08-06 16:12:47', '2016-08-06 16:12:47', 1, 1, 296, 3, 18, 4, 0, 1, 0, 100),
(315, 'din912-m6x14-8_8', '44V-M70-210/002_19', '2016-08-06 16:12:57', '2016-08-06 16:12:57', 1, 1, 296, 3, 19, 4, 0, 1, 0, 100),
(316, 'din912-m03x12', '44V-M70-210/002_20', '2016-08-06 16:13:07', '2016-08-06 16:13:07', 1, 1, 296, 3, 20, 4, 0, 1, 0, 100),
(317, 'din84-m2x4-4_8', '44V-M70-210/002_21', '2016-08-06 16:13:17', '2016-08-06 16:13:17', 1, 1, 296, 3, 21, 4, 0, 1, 0, 100),
(318, 'din84-m2x4-4_8', '44V-M70-210/002_22', '2016-08-06 16:13:27', '2016-08-06 16:13:27', 1, 1, 296, 3, 22, 4, 0, 1, 0, 100),
(319, 'din_track_35', '44V-M70-210/002_23', '2016-08-06 16:13:37', '2016-08-06 16:13:37', 1, 1, 296, 3, 23, 4, 0, 1, 0, 100),
(320, 'db15_connector', '44V-M70-210/002_24', '2016-08-06 16:13:47', '2016-08-06 16:13:47', 1, 1, 296, 3, 24, 4, 0, 1, 0, 100),
(321, 'db15_plate', '44V-M70-210/002_25', '2016-08-06 16:13:57', '2016-08-06 16:13:57', 1, 1, 296, 3, 25, 4, 0, 1, 0, 100),
(322, 'pimicos_ls110_tr26', '44V-M70-210/002_26', '2016-08-06 16:14:07', '2016-08-06 16:14:07', 1, 1, 296, 3, 26, 4, 0, 1, 0, 100),
(323, '44v-m70-210_ls2_base_bench', '44V-M70-210/100', '2016-08-06 16:14:17', '2016-08-06 16:14:17', 1, 1, 296, 3, 27, 4, 0, 1, 0, 100),
(324, '44v-m70-210_ls2_adaptor', '44V-M70-210/101', '2016-08-06 16:14:27', '2016-08-06 16:14:27', 1, 1, 296, 3, 28, 4, 0, 1, 0, 100),
(325, '44v-m70-210_ls2_adaptor_tap', '44V-M70-210/102', '2016-08-06 16:14:37', '2016-08-06 16:14:37', 1, 1, 296, 3, 29, 4, 0, 1, 0, 100),
(326, '44v-m70-210_rem_handle_i', '44V-M70-210/103', '2016-08-06 16:14:48', '2016-08-06 16:14:48', 1, 1, 296, 3, 30, 4, 0, 1, 0, 100),
(327, '44v-m70-210_rem_handle_ii', '44V-M70-210/104', '2016-08-06 16:14:58', '2016-08-06 16:14:58', 1, 1, 296, 3, 31, 4, 0, 1, 0, 100),
(328, '44v-m70-210_ls2_adr_lat_tap', '44V-M70-210/105', '2016-08-06 16:15:07', '2016-08-06 16:15:07', 1, 1, 296, 3, 32, 4, 0, 1, 0, 100),
(329, '44v-m70-210_fov_ps_bket', '44V-M70-210/106', '2016-08-06 16:15:18', '2016-08-06 16:15:18', 1, 1, 296, 3, 33, 4, 0, 1, 0, 100),
(330, '44v-m70-210_xport_support', '44V-M70-210/107', '2016-08-06 16:15:28', '2016-08-06 16:15:28', 1, 1, 296, 3, 34, 4, 0, 1, 0, 100),
(331, '44v-m70-220_fov_ls1', '44V-M70-220/002', '2016-08-06 16:15:38', '2016-08-06 16:15:38', 1, 1, 295, 3, 2, 4, 0, 1, 0, 100),
(332, 'din127-b4', '44V-M70-220/002_1', '2016-08-06 16:15:48', '2016-08-06 16:15:48', 1, 1, 331, 3, 1, 4, 0, 1, 0, 100),
(333, 'din127-b4', '44V-M70-220/002_2', '2016-08-06 16:15:58', '2016-08-06 16:15:58', 1, 1, 331, 3, 2, 4, 0, 1, 0, 100),
(334, 'din127-b6', '44V-M70-220/002_3', '2016-08-06 16:16:08', '2016-08-06 16:16:08', 1, 1, 331, 3, 3, 4, 0, 1, 0, 100),
(335, 'iso2338-3m6x12-st', '44V-M70-220/002_4', '2016-08-06 16:16:18', '2016-08-06 16:16:18', 1, 1, 331, 3, 4, 4, 0, 1, 0, 100),
(336, 'iso2338-4m6x20-st', '44V-M70-220/002_5', '2016-08-06 16:16:28', '2016-08-06 16:16:28', 1, 1, 331, 3, 5, 4, 0, 1, 0, 100),
(337, 'iso2338-4m6x20-st', '44V-M70-220/002_6', '2016-08-06 16:16:38', '2016-08-06 16:16:38', 1, 1, 331, 3, 6, 4, 0, 1, 0, 100),
(338, 'din127-b4', '44V-M70-220/002_7', '2016-08-06 16:16:48', '2016-08-06 16:16:48', 1, 1, 331, 3, 7, 4, 0, 1, 0, 100),
(339, 'iso2338-3m6x12-st', '44V-M70-220/002_8', '2016-08-06 16:16:59', '2016-08-06 16:16:59', 1, 1, 331, 3, 8, 4, 0, 1, 0, 100),
(340, 'din127-b6', '44V-M70-220/002_9', '2016-08-06 16:17:09', '2016-08-06 16:17:09', 1, 1, 331, 3, 9, 4, 0, 1, 0, 100),
(341, 'din127-b6', '44V-M70-220/002_10', '2016-08-06 16:17:19', '2016-08-06 16:17:19', 1, 1, 331, 3, 10, 4, 0, 1, 0, 100),
(342, 'din127-b6', '44V-M70-220/002_11', '2016-08-06 16:17:29', '2016-08-06 16:17:29', 1, 1, 331, 3, 11, 4, 0, 1, 0, 100),
(343, 'din127-b4', '44V-M70-220/002_12', '2016-08-06 16:17:39', '2016-08-06 16:17:39', 1, 1, 331, 3, 12, 4, 0, 1, 0, 100),
(344, 'iso2338-3m6x12-st', '44V-M70-220/002_13', '2016-08-06 16:17:49', '2016-08-06 16:17:49', 1, 1, 331, 3, 13, 4, 0, 1, 0, 100),
(345, 'din127-b6', '44V-M70-220/002_14', '2016-08-06 16:17:59', '2016-08-06 16:17:59', 1, 1, 331, 3, 14, 4, 0, 1, 0, 100),
(346, 'din127-b6', '44V-M70-220/002_15', '2016-08-06 16:18:10', '2016-08-06 16:18:10', 1, 1, 331, 3, 15, 4, 0, 1, 0, 100),
(347, 'din127-b4', '44V-M70-220/002_16', '2016-08-06 16:18:20', '2016-08-06 16:18:20', 1, 1, 331, 3, 16, 4, 0, 1, 0, 100),
(348, 'din127-b4', '44V-M70-220/002_17', '2016-08-06 16:18:30', '2016-08-06 16:18:30', 1, 1, 331, 3, 17, 4, 0, 1, 0, 100),
(349, 'din127-b4', '44V-M70-220/002_18', '2016-08-06 16:18:40', '2016-08-06 16:18:40', 1, 1, 331, 3, 18, 4, 0, 1, 0, 100),
(350, 'din127-b6', '44V-M70-220/002_19', '2016-08-06 16:18:50', '2016-08-06 16:18:50', 1, 1, 331, 3, 19, 4, 0, 1, 0, 100),
(351, 'din127-b4', '44V-M70-220/002_20', '2016-08-06 16:19:00', '2016-08-06 16:19:00', 1, 1, 331, 3, 20, 4, 0, 1, 0, 100),
(352, 'din127-b4', '44V-M70-220/002_21', '2016-08-06 16:19:10', '2016-08-06 16:19:10', 1, 1, 331, 3, 21, 4, 0, 1, 0, 100),
(353, 'din127-b4', '44V-M70-220/002_22', '2016-08-06 16:19:20', '2016-08-06 16:19:20', 1, 1, 331, 3, 22, 4, 0, 1, 0, 100),
(354, 'iso2338-3m6x12-st', '44V-M70-220/002_23', '2016-08-06 16:19:30', '2016-08-06 16:19:30', 1, 1, 331, 3, 23, 4, 0, 1, 0, 100),
(355, 'din127-b4', '44V-M70-220/002_24', '2016-08-06 16:19:40', '2016-08-06 16:19:40', 1, 1, 331, 3, 24, 4, 0, 1, 0, 100),
(356, 'iso2338-3m6x12-st', '44V-M70-220/002_25', '2016-08-06 16:19:50', '2016-08-06 16:19:50', 1, 1, 331, 3, 25, 4, 0, 1, 0, 100),
(357, 'iso2338-3m6x12-st', '44V-M70-220/002_26', '2016-08-06 16:20:01', '2016-08-06 16:20:01', 1, 1, 331, 3, 26, 4, 0, 1, 0, 100),
(358, 'din127-b4', '44V-M70-220/002_27', '2016-08-06 16:20:10', '2016-08-06 16:20:10', 1, 1, 331, 3, 27, 4, 0, 1, 0, 100),
(359, 'din912-m4x12-8_8', '44V-M70-220/002_28', '2016-08-06 16:20:20', '2016-08-06 16:20:20', 1, 1, 331, 3, 28, 4, 0, 1, 0, 100),
(360, 'din912-m4x12-8_8', '44V-M70-220/002_29', '2016-08-06 16:20:30', '2016-08-06 16:20:30', 1, 1, 331, 3, 29, 4, 0, 1, 0, 100),
(361, 'din912-m4x12-8_8', '44V-M70-220/002_30', '2016-08-06 16:20:41', '2016-08-06 16:20:41', 1, 1, 331, 3, 30, 4, 0, 1, 0, 100),
(362, 'din912-m4x12-8_8', '44V-M70-220/002_31', '2016-08-06 16:20:51', '2016-08-06 16:20:51', 1, 1, 331, 3, 31, 4, 0, 1, 0, 100),
(363, 'din912-m4x12-8_8', '44V-M70-220/002_32', '2016-08-06 16:21:01', '2016-08-06 16:21:01', 1, 1, 331, 3, 32, 4, 0, 1, 0, 100),
(364, 'din912-m4x12-8_8', '44V-M70-220/002_33', '2016-08-06 16:21:11', '2016-08-06 16:21:11', 1, 1, 331, 3, 33, 4, 0, 1, 0, 100),
(365, 'din912-m4x12-8_8', '44V-M70-220/002_34', '2016-08-06 16:21:21', '2016-08-06 16:21:21', 1, 1, 331, 3, 34, 4, 0, 1, 0, 100),
(366, 'din912-m4x12-8_8', '44V-M70-220/002_35', '2016-08-06 16:21:31', '2016-08-06 16:21:31', 1, 1, 331, 3, 35, 4, 0, 1, 0, 100),
(367, 'din912-m4x12-8_8', '44V-M70-220/002_36', '2016-08-06 16:21:41', '2016-08-06 16:21:41', 1, 1, 331, 3, 36, 4, 0, 1, 0, 100),
(368, 'din912-m4x12-8_8', '44V-M70-220/002_37', '2016-08-06 16:21:51', '2016-08-06 16:21:51', 1, 1, 331, 3, 37, 4, 0, 1, 0, 100),
(369, 'din912-m6x18-8_8', '44V-M70-220/002_38', '2016-08-06 16:22:01', '2016-08-06 16:22:01', 1, 1, 331, 3, 38, 4, 0, 1, 0, 100),
(370, 'din912-m6x18-8_8', '44V-M70-220/002_39', '2016-08-06 16:22:11', '2016-08-06 16:22:11', 1, 1, 331, 3, 39, 4, 0, 1, 0, 100),
(371, 'din912-m6x18-8_8', '44V-M70-220/002_40', '2016-08-06 16:22:22', '2016-08-06 16:22:22', 1, 1, 331, 3, 40, 4, 0, 1, 0, 100),
(372, 'din912-m6x10-8_8', '44V-M70-220/002_41', '2016-08-06 16:22:32', '2016-08-06 16:22:32', 1, 1, 331, 3, 41, 4, 0, 1, 0, 100),
(373, 'din912-m6x10-8_8', '44V-M70-220/002_42', '2016-08-06 16:22:42', '2016-08-06 16:22:42', 1, 1, 331, 3, 42, 4, 0, 1, 0, 100),
(374, 'din912-m6x18-8_8', '44V-M70-220/002_43', '2016-08-06 16:22:52', '2016-08-06 16:22:52', 1, 1, 331, 3, 43, 4, 0, 1, 0, 100),
(375, 'din912-m6x18-8_8', '44V-M70-220/002_44', '2016-08-06 16:23:02', '2016-08-06 16:23:02', 1, 1, 331, 3, 44, 4, 0, 1, 0, 100),
(376, 'din912-m4x8-8_8', '44V-M70-220/002_45', '2016-08-06 16:23:12', '2016-08-06 16:23:12', 1, 1, 331, 3, 45, 4, 0, 1, 0, 100),
(377, 'din912-m4x8-8_8', '44V-M70-220/002_46', '2016-08-06 16:23:22', '2016-08-06 16:23:22', 1, 1, 331, 3, 46, 4, 0, 1, 0, 100),
(378, 'din912-m4x18-8_8', '44V-M70-220/002_47', '2016-08-06 16:23:32', '2016-08-06 16:23:32', 1, 1, 331, 3, 47, 4, 0, 1, 0, 100),
(379, 'din912-m4x18-8_8', '44V-M70-220/002_48', '2016-08-06 16:23:42', '2016-08-06 16:23:42', 1, 1, 331, 3, 48, 4, 0, 1, 0, 100),
(380, 'din84-m1_6x4-4_8', '44V-M70-220/002_49', '2016-08-06 16:23:52', '2016-08-06 16:23:52', 1, 1, 331, 3, 49, 4, 0, 1, 0, 100),
(381, 'din912-m4x14-8_8', '44V-M70-220/002_50', '2016-08-06 16:24:02', '2016-08-06 16:24:02', 1, 1, 331, 3, 50, 4, 0, 1, 0, 100),
(382, 'din912-m4x14-8_8', '44V-M70-220/002_51', '2016-08-06 16:24:12', '2016-08-06 16:24:12', 1, 1, 331, 3, 51, 4, 0, 1, 0, 100),
(383, 'din84-m1_6x4-4_8', '44V-M70-220/002_52', '2016-08-06 16:24:22', '2016-08-06 16:24:22', 1, 1, 331, 3, 52, 4, 0, 1, 0, 100),
(384, 'din912-m4x10-8_8', '44V-M70-220/002_53', '2016-08-06 16:24:32', '2016-08-06 16:24:32', 1, 1, 331, 3, 53, 4, 0, 1, 0, 100),
(385, 'din912-m4x10-8_8', '44V-M70-220/002_54', '2016-08-06 16:24:43', '2016-08-06 16:24:43', 1, 1, 331, 3, 54, 4, 0, 1, 0, 100),
(386, 'din912-m4x10-8_8', '44V-M70-220/002_55', '2016-08-06 16:24:53', '2016-08-06 16:24:53', 1, 1, 331, 3, 55, 4, 0, 1, 0, 100),
(387, 'din912-m4x10-8_8', '44V-M70-220/002_56', '2016-08-06 16:25:03', '2016-08-06 16:25:03', 1, 1, 331, 3, 56, 4, 0, 1, 0, 100),
(388, 'sph-kar-080-009', '44V-M70-220/002_57', '2016-08-06 16:25:13', '2016-08-06 16:25:13', 1, 1, 331, 3, 57, 4, 0, 1, 0, 100),
(389, 'din912-m02x04', '44V-M70-220/002_58', '2016-08-06 16:25:23', '2016-08-06 16:25:23', 1, 1, 331, 3, 58, 4, 0, 1, 0, 100),
(390, 'din912-m02x04', '44V-M70-220/002_59', '2016-08-06 16:25:33', '2016-08-06 16:25:33', 1, 1, 331, 3, 59, 4, 0, 1, 0, 100),
(391, 'sph-kar-080-009', '44V-M70-220/002_60', '2016-08-06 16:25:44', '2016-08-06 16:25:44', 1, 1, 331, 3, 60, 4, 0, 1, 0, 100),
(392, 'db15hd_connector', '44V-M70-220/002_61', '2016-08-06 16:25:54', '2016-08-06 16:25:54', 1, 1, 331, 3, 61, 4, 0, 1, 0, 100),
(393, 'kis_mask_mechanism', '44V-M70-220/002_62', '2016-08-06 16:26:04', '2016-08-06 16:26:04', 1, 1, 331, 3, 62, 4, 0, 1, 0, 100),
(394, 'parallel_pin_hardened_428902127', '44V-M70-220/002_62_1', '2016-08-06 16:26:14', '2016-08-06 16:26:14', 1, 1, 393, 3, 1, 4, 0, 1, 0, 100);
INSERT INTO `systems` (`id`, `name`, `abbrev`, `created_at`, `updated_at`, `project_id`, `root_id`, `parent_id`, `system_type_id`, `position`, `layer_id`, `atomic`, `acquired`, `virtual`, `acq_priority`) VALUES
(395, 'kugellager_ra_3100x', '44V-M70-220/002_62_2', '2016-08-06 16:26:24', '2016-08-06 16:26:24', 1, 1, 393, 3, 2, 4, 0, 1, 0, 100),
(396, 'socket_head_cap_screw1385571520', '44V-M70-220/002_62_3', '2016-08-06 16:26:34', '2016-08-06 16:26:34', 1, 1, 393, 3, 3, 4, 0, 1, 0, 100),
(397, 'socket_head_cap_screw1385571527', '44V-M70-220/002_62_4', '2016-08-06 16:26:44', '2016-08-06 16:26:44', 1, 1, 393, 3, 4, 4, 0, 1, 0, 100),
(398, 'grg-ssu-105', '44V-M70-220/002_62_5', '2016-08-06 16:26:54', '2016-08-06 16:26:54', 1, 1, 393, 3, 5, 4, 0, 1, 0, 100),
(399, 'grg-ssu-082', '44V-M70-220/002_62_6', '2016-08-06 16:27:04', '2016-08-06 16:27:04', 1, 1, 393, 3, 6, 4, 0, 1, 0, 100),
(400, 'grg-ssu-109_mit_rae', '44V-M70-220/002_62_7', '2016-08-06 16:27:14', '2016-08-06 16:27:14', 1, 1, 393, 3, 7, 4, 0, 1, 0, 100),
(401, 'parallel_pin_hardened_428902127', '44V-M70-220/002_62_8', '2016-08-06 16:27:24', '2016-08-06 16:27:24', 1, 1, 393, 3, 8, 4, 0, 1, 0, 100),
(402, 'hex_thin_nut_chamfer-1611425567', '44V-M70-220/002_62_9', '2016-08-06 16:27:34', '2016-08-06 16:27:34', 1, 1, 393, 3, 9, 4, 0, 1, 0, 100),
(403, 'grg-ssu-086', '44V-M70-220/002_62_10', '2016-08-06 16:27:44', '2016-08-06 16:27:44', 1, 1, 393, 3, 10, 4, 0, 1, 0, 100),
(404, 'grg-ssu-109_mit_rae', '44V-M70-220/002_62_11', '2016-08-06 16:27:54', '2016-08-06 16:27:54', 1, 1, 393, 3, 11, 4, 0, 1, 0, 100),
(405, 'grg-ssu-090', '44V-M70-220/002_62_12', '2016-08-06 16:28:04', '2016-08-06 16:28:04', 1, 1, 393, 3, 12, 4, 0, 1, 0, 100),
(406, 'hex_thin_nut_fine_gradeab_dinhe', '44V-M70-220/002_62_13', '2016-08-06 16:28:14', '2016-08-06 16:28:14', 1, 1, 393, 3, 13, 4, 0, 1, 0, 100),
(407, 'socket_head_cap_screw1385571526', '44V-M70-220/002_62_14', '2016-08-06 16:28:24', '2016-08-06 16:28:24', 1, 1, 393, 3, 14, 4, 0, 1, 0, 100),
(408, 'grg-ssu-102', '44V-M70-220/002_62_15', '2016-08-06 16:28:35', '2016-08-06 16:28:35', 1, 1, 393, 3, 15, 4, 0, 1, 0, 100),
(409, 'grg-ssu-080', '44V-M70-220/002_62_16', '2016-08-06 16:28:45', '2016-08-06 16:28:45', 1, 1, 393, 3, 16, 4, 0, 1, 0, 100),
(410, 'rz_043i_1', '44V-M70-220/002_62_17', '2016-08-06 16:28:55', '2016-08-06 16:28:55', 1, 1, 393, 3, 17, 4, 0, 1, 0, 100),
(411, 'wue-020-001', '44V-M70-220/002_62_18', '2016-08-06 16:29:05', '2016-08-06 16:29:05', 1, 1, 393, 3, 18, 4, 0, 1, 0, 100),
(412, 'parallel_pin_hardened_428902127', '44V-M70-220/002_62_19', '2016-08-06 16:29:15', '2016-08-06 16:29:15', 1, 1, 393, 3, 19, 4, 0, 1, 0, 100),
(413, 'grg-ssu-109_mit_rae', '44V-M70-220/002_62_20', '2016-08-06 16:29:25', '2016-08-06 16:29:25', 1, 1, 393, 3, 20, 4, 0, 1, 0, 100),
(414, 'hex_thin_nut_chamfer-1611425567', '44V-M70-220/002_62_21', '2016-08-06 16:29:35', '2016-08-06 16:29:35', 1, 1, 393, 3, 21, 4, 0, 1, 0, 100),
(415, 'grg-ssu-108', '44V-M70-220/002_62_22', '2016-08-06 16:29:45', '2016-08-06 16:29:45', 1, 1, 393, 3, 22, 4, 0, 1, 0, 100),
(416, 'grg-ssu-110', '44V-M70-220/002_62_23', '2016-08-06 16:29:55', '2016-08-06 16:29:55', 1, 1, 393, 3, 23, 4, 0, 1, 0, 100),
(417, 'grg-ssu-090', '44V-M70-220/002_62_24', '2016-08-06 16:30:05', '2016-08-06 16:30:05', 1, 1, 393, 3, 24, 4, 0, 1, 0, 100),
(418, 'grg-ssu-111', '44V-M70-220/002_62_25', '2016-08-06 16:30:15', '2016-08-06 16:30:15', 1, 1, 393, 3, 25, 4, 0, 1, 0, 100),
(419, 'socket_head_cap_screw1385571523', '44V-M70-220/002_62_26', '2016-08-06 16:30:25', '2016-08-06 16:30:25', 1, 1, 393, 3, 26, 4, 0, 1, 0, 100),
(420, 'socket_head_cap_screw1385571521', '44V-M70-220/002_62_27', '2016-08-06 16:30:35', '2016-08-06 16:30:35', 1, 1, 393, 3, 27, 4, 0, 1, 0, 100),
(421, 'rz_043i_el17_5', '44V-M70-220/002_62_28', '2016-08-06 16:30:45', '2016-08-06 16:30:45', 1, 1, 393, 3, 28, 4, 0, 1, 0, 100),
(422, 'wue-20-002', '44V-M70-220/002_62_29', '2016-08-06 16:30:55', '2016-08-06 16:30:55', 1, 1, 393, 3, 29, 4, 0, 1, 0, 100),
(423, 'sph-kar-080-008', '44V-M70-220/002_62_30', '2016-08-06 16:31:05', '2016-08-06 16:31:05', 1, 1, 393, 3, 30, 4, 0, 1, 0, 100),
(424, 'parallel_pin_hardened_428902127', '44V-M70-220/002_62_31', '2016-08-06 16:31:16', '2016-08-06 16:31:16', 1, 1, 393, 3, 31, 4, 0, 1, 0, 100),
(425, 'grg-ssu-108', '44V-M70-220/002_62_32', '2016-08-06 16:31:26', '2016-08-06 16:31:26', 1, 1, 393, 3, 32, 4, 0, 1, 0, 100),
(426, 'socket_head_cap_screw1385571530', '44V-M70-220/002_62_33', '2016-08-06 16:31:36', '2016-08-06 16:31:36', 1, 1, 393, 3, 33, 4, 0, 1, 0, 100),
(427, 'grg-ssu-089', '44V-M70-220/002_62_34', '2016-08-06 16:31:46', '2016-08-06 16:31:46', 1, 1, 393, 3, 34, 4, 0, 1, 0, 100),
(428, 'socket_head_cap_screw1385571524', '44V-M70-220/002_62_35', '2016-08-06 16:31:56', '2016-08-06 16:31:56', 1, 1, 393, 3, 35, 4, 0, 1, 0, 100),
(429, 'grg-ssu-095', '44V-M70-220/002_62_36', '2016-08-06 16:32:06', '2016-08-06 16:32:06', 1, 1, 393, 3, 36, 4, 0, 1, 0, 100),
(430, 'kugellager_ra_3100x', '44V-M70-220/002_62_37', '2016-08-06 16:32:16', '2016-08-06 16:32:16', 1, 1, 393, 3, 37, 4, 0, 1, 0, 100),
(431, 'grg-ssu-108', '44V-M70-220/002_62_38', '2016-08-06 16:32:26', '2016-08-06 16:32:26', 1, 1, 393, 3, 38, 4, 0, 1, 0, 100),
(432, 'socket_head_cap_screw1385571525', '44V-M70-220/002_62_39', '2016-08-06 16:32:36', '2016-08-06 16:32:36', 1, 1, 393, 3, 39, 4, 0, 1, 0, 100),
(433, 'grg-ssu-109_mit_rae', '44V-M70-220/002_62_40', '2016-08-06 16:32:47', '2016-08-06 16:32:47', 1, 1, 393, 3, 40, 4, 0, 1, 0, 100),
(434, 'sph-kar-080-008', '44V-M70-220/002_62_41', '2016-08-06 16:32:57', '2016-08-06 16:32:57', 1, 1, 393, 3, 41, 4, 0, 1, 0, 100),
(435, 'wue-020-001', '44V-M70-220/002_62_42', '2016-08-06 16:33:06', '2016-08-06 16:33:06', 1, 1, 393, 3, 42, 4, 0, 1, 0, 100),
(436, 'grg-ssu-108', '44V-M70-220/002_62_43', '2016-08-06 16:33:16', '2016-08-06 16:33:16', 1, 1, 393, 3, 43, 4, 0, 1, 0, 100),
(437, 'wue-20-002', '44V-M70-220/002_62_44', '2016-08-06 16:33:26', '2016-08-06 16:33:26', 1, 1, 393, 3, 44, 4, 0, 1, 0, 100),
(438, 'slotted_set_screw_conepoint_di', '44V-M70-220/002_62_45', '2016-08-06 16:33:37', '2016-08-06 16:33:37', 1, 1, 393, 3, 45, 4, 0, 1, 0, 100),
(439, 'sph-kar-080-009', '44V-M70-220/002_62_46', '2016-08-06 16:33:47', '2016-08-06 16:33:47', 1, 1, 393, 3, 46, 4, 0, 1, 0, 100),
(440, 'sph-kar-080-009', '44V-M70-220/002_62_47', '2016-08-06 16:33:57', '2016-08-06 16:33:57', 1, 1, 393, 3, 47, 4, 0, 1, 0, 100),
(441, 'window_mask', '44V-M70-220/002_62_48', '2016-08-06 16:34:07', '2016-08-06 16:34:07', 1, 1, 393, 3, 48, 4, 0, 1, 0, 100),
(442, 'grg-ssu-088', '44V-M70-220/002_62_49', '2016-08-06 16:34:17', '2016-08-06 16:34:17', 1, 1, 393, 3, 49, 4, 0, 1, 0, 100),
(443, 'grg-ssu-081', '44V-M70-220/002_62_50', '2016-08-06 16:34:27', '2016-08-06 16:34:27', 1, 1, 393, 3, 50, 4, 0, 1, 0, 100),
(444, 'grg-ssu-114', '44V-M70-220/002_62_51', '2016-08-06 16:34:37', '2016-08-06 16:34:37', 1, 1, 393, 3, 51, 4, 0, 1, 0, 100),
(445, 'grg-ssu-113', '44V-M70-220/002_62_52', '2016-08-06 16:34:47', '2016-08-06 16:34:47', 1, 1, 393, 3, 52, 4, 0, 1, 0, 100),
(446, 'pimicos_ls65_tr26', '44V-M70-220/002_63', '2016-08-06 16:34:58', '2016-08-06 16:34:58', 1, 1, 331, 3, 63, 4, 0, 1, 0, 100),
(447, '44v-m70-220_angular_bracket', '44V-M70-220/100', '2016-08-06 16:35:08', '2016-08-06 16:35:08', 1, 1, 331, 3, 64, 4, 0, 1, 0, 100),
(448, '44v-m70-220_transition_plte', '44V-M70-220/101', '2016-08-06 16:35:18', '2016-08-06 16:35:18', 1, 1, 331, 3, 65, 4, 0, 1, 0, 100),
(449, '44v-m70-220_kis_mask_tap', '44V-M70-220/102', '2016-08-06 16:35:28', '2016-08-06 16:35:28', 1, 1, 331, 3, 66, 4, 0, 1, 0, 100),
(450, '44v-m70-220_kis_mask_filler', '44V-M70-220/103', '2016-08-06 16:35:38', '2016-08-06 16:35:38', 1, 1, 331, 3, 67, 4, 0, 1, 0, 100),
(451, '44v-m70-220_ls65_end_stop', '44V-M70-220/104', '2016-08-06 16:35:48', '2016-08-06 16:35:48', 1, 1, 331, 3, 68, 4, 0, 1, 0, 100),
(452, '44v-m70-220_rot_mask_tool', '44V-M70-220/105', '2016-08-06 16:35:58', '2016-08-06 16:35:58', 1, 1, 331, 3, 69, 4, 0, 1, 0, 100),
(453, '44v-m70-230_fov_ls3', '44V-M70-230/002', '2016-08-06 16:36:08', '2016-08-06 16:36:08', 1, 1, 295, 3, 3, 4, 0, 1, 0, 100),
(454, 'iso2338-3m6x12-st', '44V-M70-230/002_1', '2016-08-06 16:36:18', '2016-08-06 16:36:18', 1, 1, 453, 3, 1, 4, 0, 1, 0, 100),
(455, 'din127-b4', '44V-M70-230/002_2', '2016-08-06 16:36:28', '2016-08-06 16:36:28', 1, 1, 453, 3, 2, 4, 0, 1, 0, 100),
(456, 'din127-b4', '44V-M70-230/002_3', '2016-08-06 16:36:38', '2016-08-06 16:36:38', 1, 1, 453, 3, 3, 4, 0, 1, 0, 100),
(457, 'iso2338-3m6x12-st', '44V-M70-230/002_4', '2016-08-06 16:36:47', '2016-08-06 16:36:47', 1, 1, 453, 3, 4, 4, 0, 1, 0, 100),
(458, 'din127-b4', '44V-M70-230/002_5', '2016-08-06 16:36:57', '2016-08-06 16:36:57', 1, 1, 453, 3, 5, 4, 0, 1, 0, 100),
(459, 'din127-b4', '44V-M70-230/002_6', '2016-08-06 16:37:07', '2016-08-06 16:37:07', 1, 1, 453, 3, 6, 4, 0, 1, 0, 100),
(460, 'iso2338-3m6x12-st', '44V-M70-230/002_7', '2016-08-06 16:37:18', '2016-08-06 16:37:18', 1, 1, 453, 3, 7, 4, 0, 1, 0, 100),
(461, 'din127-b4', '44V-M70-230/002_8', '2016-08-06 16:37:27', '2016-08-06 16:37:27', 1, 1, 453, 3, 8, 4, 0, 1, 0, 100),
(462, 'din127-b4', '44V-M70-230/002_9', '2016-08-06 16:37:37', '2016-08-06 16:37:37', 1, 1, 453, 3, 9, 4, 0, 1, 0, 100),
(463, 'din127-b4', '44V-M70-230/002_10', '2016-08-06 16:37:48', '2016-08-06 16:37:48', 1, 1, 453, 3, 10, 4, 0, 1, 0, 100),
(464, 'din127-b4', '44V-M70-230/002_11', '2016-08-06 16:37:57', '2016-08-06 16:37:57', 1, 1, 453, 3, 11, 4, 0, 1, 0, 100),
(465, 'din127-b4', '44V-M70-230/002_12', '2016-08-06 16:38:08', '2016-08-06 16:38:08', 1, 1, 453, 3, 12, 4, 0, 1, 0, 100),
(466, 'din127-b4', '44V-M70-230/002_13', '2016-08-06 16:38:18', '2016-08-06 16:38:18', 1, 1, 453, 3, 13, 4, 0, 1, 0, 100),
(467, 'din127-b4', '44V-M70-230/002_14', '2016-08-06 16:38:28', '2016-08-06 16:38:28', 1, 1, 453, 3, 14, 4, 0, 1, 0, 100),
(468, 'din127-b4', '44V-M70-230/002_15', '2016-08-06 16:38:37', '2016-08-06 16:38:37', 1, 1, 453, 3, 15, 4, 0, 1, 0, 100),
(469, 'iso2338-3m6x12-st', '44V-M70-230/002_16', '2016-08-06 16:38:48', '2016-08-06 16:38:48', 1, 1, 453, 3, 16, 4, 0, 1, 0, 100),
(470, 'din127-b4', '44V-M70-230/002_17', '2016-08-06 16:38:58', '2016-08-06 16:38:58', 1, 1, 453, 3, 17, 4, 0, 1, 0, 100),
(471, 'din127-b4', '44V-M70-230/002_18', '2016-08-06 16:39:08', '2016-08-06 16:39:08', 1, 1, 453, 3, 18, 4, 0, 1, 0, 100),
(472, 'din912-m4x12-8_8', '44V-M70-230/002_19', '2016-08-06 16:39:18', '2016-08-06 16:39:18', 1, 1, 453, 3, 19, 4, 0, 1, 0, 100),
(473, 'din912-m4x12-8_8', '44V-M70-230/002_20', '2016-08-06 16:39:28', '2016-08-06 16:39:28', 1, 1, 453, 3, 20, 4, 0, 1, 0, 100),
(474, 'din912-m4x12-8_8', '44V-M70-230/002_21', '2016-08-06 16:39:38', '2016-08-06 16:39:38', 1, 1, 453, 3, 21, 4, 0, 1, 0, 100),
(475, 'din912-m4x12-8_8', '44V-M70-230/002_22', '2016-08-06 16:39:48', '2016-08-06 16:39:48', 1, 1, 453, 3, 22, 4, 0, 1, 0, 100),
(476, 'din912-m4x12-8_8', '44V-M70-230/002_23', '2016-08-06 16:39:58', '2016-08-06 16:39:58', 1, 1, 453, 3, 23, 4, 0, 1, 0, 100),
(477, 'din912-m4x12-8_8', '44V-M70-230/002_24', '2016-08-06 16:40:08', '2016-08-06 16:40:08', 1, 1, 453, 3, 24, 4, 0, 1, 0, 100),
(478, 'din912-m4x12-8_8', '44V-M70-230/002_25', '2016-08-06 16:40:18', '2016-08-06 16:40:18', 1, 1, 453, 3, 25, 4, 0, 1, 0, 100),
(479, 'din912-m4x12-8_8', '44V-M70-230/002_26', '2016-08-06 16:40:28', '2016-08-06 16:40:28', 1, 1, 453, 3, 26, 4, 0, 1, 0, 100),
(480, 'din912-m4x14-8_8', '44V-M70-230/002_27', '2016-08-06 16:40:38', '2016-08-06 16:40:38', 1, 1, 453, 3, 27, 4, 0, 1, 0, 100),
(481, 'din912-m4x14-8_8', '44V-M70-230/002_28', '2016-08-06 16:40:48', '2016-08-06 16:40:48', 1, 1, 453, 3, 28, 4, 0, 1, 0, 100),
(482, 'din912-m4x14-8_8', '44V-M70-230/002_29', '2016-08-06 16:40:58', '2016-08-06 16:40:58', 1, 1, 453, 3, 29, 4, 0, 1, 0, 100),
(483, 'din84-m2x4-4_8', '44V-M70-230/002_30', '2016-08-06 16:41:08', '2016-08-06 16:41:08', 1, 1, 453, 3, 30, 4, 0, 1, 0, 100),
(484, 'din912-m4x10-8_8', '44V-M70-230/002_31', '2016-08-06 16:41:18', '2016-08-06 16:41:18', 1, 1, 453, 3, 31, 4, 0, 1, 0, 100),
(485, 'din912-m4x10-8_8', '44V-M70-230/002_32', '2016-08-06 16:41:28', '2016-08-06 16:41:28', 1, 1, 453, 3, 32, 4, 0, 1, 0, 100),
(486, 'din912-m4x10-8_8', '44V-M70-230/002_33', '2016-08-06 16:41:38', '2016-08-06 16:41:38', 1, 1, 453, 3, 33, 4, 0, 1, 0, 100),
(487, 'tornillo_din-912_m3x12', '44V-M70-230/002_34', '2016-08-06 16:41:48', '2016-08-06 16:41:48', 1, 1, 453, 3, 34, 4, 0, 1, 0, 100),
(488, 'tornillo_din-912_m3x12', '44V-M70-230/002_35', '2016-08-06 16:41:58', '2016-08-06 16:41:58', 1, 1, 453, 3, 35, 4, 0, 1, 0, 100),
(489, 'tornillo_din-912_m3x12', '44V-M70-230/002_36', '2016-08-06 16:42:08', '2016-08-06 16:42:08', 1, 1, 453, 3, 36, 4, 0, 1, 0, 100),
(490, 'db15hd_plate', '44V-M70-230/002_37', '2016-08-06 16:42:18', '2016-08-06 16:42:18', 1, 1, 453, 3, 37, 4, 0, 1, 0, 100),
(491, 'db15hd_connector', '44V-M70-230/002_38', '2016-08-06 16:42:29', '2016-08-06 16:42:29', 1, 1, 453, 3, 38, 4, 0, 1, 0, 100),
(492, 'fa_screw_tsbm3-10-8_5', '44V-M70-230/002_39', '2016-08-06 16:42:39', '2016-08-06 16:42:39', 1, 1, 453, 3, 39, 4, 0, 1, 0, 100),
(493, 'fa_screw_tsbm3-10-8_5', '44V-M70-230/002_40', '2016-08-06 16:42:49', '2016-08-06 16:42:49', 1, 1, 453, 3, 40, 4, 0, 1, 0, 100),
(494, 'pimicos_ls65_tr26', '44V-M70-230/002_41', '2016-08-06 16:42:59', '2016-08-06 16:42:59', 1, 1, 453, 3, 41, 4, 0, 1, 0, 100),
(495, 'din913-m2_5x03', '44V-M70-230/002_42', '2016-08-06 16:43:09', '2016-08-06 16:43:09', 1, 1, 453, 3, 42, 4, 0, 1, 0, 100),
(496, 'posicionador_m04x10', '44V-M70-230/002_43', '2016-08-06 16:43:19', '2016-08-06 16:43:19', 1, 1, 453, 3, 43, 4, 0, 1, 0, 100),
(497, 'posicionador_m04x10', '44V-M70-230/002_44', '2016-08-06 16:43:29', '2016-08-06 16:43:29', 1, 1, 453, 3, 44, 4, 0, 1, 0, 100),
(498, '44v-m70-220_ls65_end_stop', '44V-M70-220/104b', '2016-08-06 16:43:39', '2016-08-06 16:43:39', 1, 1, 453, 3, 45, 4, 0, 1, 0, 100),
(499, '44v-m70-230_ls3_plate', '44V-M70-230/100', '2016-08-06 16:43:50', '2016-08-06 16:43:50', 1, 1, 453, 3, 46, 4, 0, 1, 0, 100),
(500, '44v-m70-230_ls3_bracket', '44V-M70-230/101', '2016-08-06 16:44:00', '2016-08-06 16:44:00', 1, 1, 453, 3, 47, 4, 0, 1, 0, 100),
(501, '44v-m70-230_vertical_leaf', '44V-M70-230/102', '2016-08-06 16:44:10', '2016-08-06 16:44:10', 1, 1, 453, 3, 48, 4, 0, 1, 0, 100),
(502, '44v-m70-230_ls3_adaptor', '44V-M70-230/103', '2016-08-06 16:44:20', '2016-08-06 16:44:20', 1, 1, 453, 3, 49, 4, 0, 1, 0, 100),
(503, '44v-m70-230_ls3_adaptor_ext', '44V-M70-230/104', '2016-08-06 16:44:30', '2016-08-06 16:44:30', 1, 1, 453, 3, 50, 4, 0, 1, 0, 100),
(504, '44v-m70-230_ls3_adaptor_ext', '44V-M70-230/104b', '2016-08-06 16:44:40', '2016-08-06 16:44:40', 1, 1, 453, 3, 51, 4, 0, 1, 0, 100),
(505, '44v-m70-250_pad', '44V-M70-250/106', '2016-08-06 16:44:50', '2016-08-06 16:44:50', 1, 1, 453, 3, 52, 4, 0, 1, 0, 100),
(506, '44v-m70-240_fov_sm1', '44V-M70-240/002', '2016-08-06 16:45:00', '2016-08-06 16:45:00', 1, 1, 295, 3, 4, 4, 0, 1, 0, 100),
(507, 'din912-m03x10', '44V-M70-240/002_1', '2016-08-06 16:45:10', '2016-08-06 16:45:10', 1, 1, 506, 3, 1, 4, 0, 1, 0, 100),
(508, 'din912-m03x10', '44V-M70-240/002_2', '2016-08-06 16:45:20', '2016-08-06 16:45:20', 1, 1, 506, 3, 2, 4, 0, 1, 0, 100),
(509, 'din84-m1_6x4-4_8', '44V-M70-240/002_3', '2016-08-06 16:45:30', '2016-08-06 16:45:30', 1, 1, 506, 3, 3, 4, 0, 1, 0, 100),
(510, 'din84-m1_6x4-4_8', '44V-M70-240/002_4', '2016-08-06 16:45:40', '2016-08-06 16:45:40', 1, 1, 506, 3, 4, 4, 0, 1, 0, 100),
(511, 'din912-m02x04', '44V-M70-240/002_5', '2016-08-06 16:45:50', '2016-08-06 16:45:50', 1, 1, 506, 3, 5, 4, 0, 1, 0, 100),
(512, 'din912-m02x04', '44V-M70-240/002_6', '2016-08-06 16:46:00', '2016-08-06 16:46:00', 1, 1, 506, 3, 6, 4, 0, 1, 0, 100),
(513, 'din912-m02x04', '44V-M70-240/002_7', '2016-08-06 16:46:11', '2016-08-06 16:46:11', 1, 1, 506, 3, 7, 4, 0, 1, 0, 100),
(514, 'din912-m02x04', '44V-M70-240/002_8', '2016-08-06 16:46:21', '2016-08-06 16:46:21', 1, 1, 506, 3, 8, 4, 0, 1, 0, 100),
(515, 'flat_mirror_10x10x02', '44V-M70-240/002_9', '2016-08-06 16:46:31', '2016-08-06 16:46:31', 1, 1, 506, 3, 9, 4, 0, 1, 0, 100),
(516, 'din912-m02x12', '44V-M70-240/002_10', '2016-08-06 16:46:41', '2016-08-06 16:46:41', 1, 1, 506, 3, 10, 4, 0, 1, 0, 100),
(517, 'din127b-m02', '44V-M70-240/002_11', '2016-08-06 16:46:51', '2016-08-06 16:46:51', 1, 1, 506, 3, 11, 4, 0, 1, 0, 100),
(518, 'din127b-m02', '44V-M70-240/002_12', '2016-08-06 16:47:01', '2016-08-06 16:47:01', 1, 1, 506, 3, 12, 4, 0, 1, 0, 100),
(519, 'din912-m02x12', '44V-M70-240/002_13', '2016-08-06 16:47:11', '2016-08-06 16:47:11', 1, 1, 506, 3, 13, 4, 0, 1, 0, 100),
(520, 'posicionador_m04x10', '44V-M70-240/002_14', '2016-08-06 16:47:21', '2016-08-06 16:47:21', 1, 1, 506, 3, 14, 4, 0, 1, 0, 100),
(521, '44v-m70-240_sm1_mount', '44V-M70-240/100', '2016-08-06 16:47:31', '2016-08-06 16:47:31', 1, 1, 506, 3, 15, 4, 0, 1, 0, 100),
(522, '44v-m70-240_rod_d04x77_5', '44V-M70-240/101', '2016-08-06 16:47:41', '2016-08-06 16:47:41', 1, 1, 506, 3, 16, 4, 0, 1, 0, 100),
(523, '44v-m70-240_rod_d04x77_5', '44V-M70-240/101b', '2016-08-06 16:47:51', '2016-08-06 16:47:51', 1, 1, 506, 3, 17, 4, 0, 1, 0, 100),
(524, '44v-m70-240_sm1_flange_b', '44V-M70-240/102', '2016-08-06 16:48:01', '2016-08-06 16:48:01', 1, 1, 506, 3, 18, 4, 0, 1, 0, 100),
(525, '44v-m70-240_sm1_flange_a', '44V-M70-240/103', '2016-08-06 16:48:11', '2016-08-06 16:48:11', 1, 1, 506, 3, 19, 4, 0, 1, 0, 100),
(526, '44v-m70-240_htal_rods_stringer', '44V-M70-240/104', '2016-08-06 16:48:21', '2016-08-06 16:48:21', 1, 1, 506, 3, 20, 4, 0, 1, 0, 100),
(527, '44v-m70-240_htal_rods_bket', '44V-M70-240/105', '2016-08-06 16:48:31', '2016-08-06 16:48:31', 1, 1, 506, 3, 21, 4, 0, 1, 0, 100),
(528, '44v-m70-240_htal_rods_tap', '44V-M70-240/106', '2016-08-06 16:48:41', '2016-08-06 16:48:41', 1, 1, 506, 3, 22, 4, 0, 1, 0, 100),
(529, '44v-m70-240_sm1_adl', '44V-M70-240/107', '2016-08-06 16:48:51', '2016-08-06 16:48:51', 1, 1, 506, 3, 23, 4, 0, 1, 0, 100),
(530, '44v-m70-250_fov_sm3', '44V-M70-250/002', '2016-08-06 16:49:00', '2016-08-06 16:49:00', 1, 1, 295, 3, 5, 4, 0, 1, 0, 100),
(531, 'din85-m3x10-4_8', '44V-M70-250/002_1', '2016-08-06 16:49:10', '2016-08-06 16:49:10', 1, 1, 530, 3, 1, 4, 0, 1, 0, 100),
(532, 'din127-b3', '44V-M70-250/002_2', '2016-08-06 16:49:20', '2016-08-06 16:49:20', 1, 1, 530, 3, 2, 4, 0, 1, 0, 100),
(533, 'din912-m03x10', '44V-M70-250/002_3', '2016-08-06 16:49:30', '2016-08-06 16:49:30', 1, 1, 530, 3, 3, 4, 0, 1, 0, 100),
(534, 'din84-m1_6x4-4_8', '44V-M70-250/002_4', '2016-08-06 16:49:40', '2016-08-06 16:49:40', 1, 1, 530, 3, 4, 4, 0, 1, 0, 100),
(535, 'din84-m1_6x4-4_8', '44V-M70-250/002_5', '2016-08-06 16:49:49', '2016-08-06 16:49:49', 1, 1, 530, 3, 5, 4, 0, 1, 0, 100),
(536, 'flat_mirror_10x10x02', '44V-M70-250/002_6', '2016-08-06 16:49:59', '2016-08-06 16:49:59', 1, 1, 530, 3, 6, 4, 0, 1, 0, 100),
(537, 'din913-m02x04-nyl', '44V-M70-250/002_7', '2016-08-06 16:50:09', '2016-08-06 16:50:09', 1, 1, 530, 3, 7, 4, 0, 1, 0, 100),
(538, 'fa_screw_tsbm3-10-8_5', '44V-M70-250/002_8', '2016-08-06 16:50:19', '2016-08-06 16:50:19', 1, 1, 530, 3, 8, 4, 0, 1, 0, 100),
(539, 'fa_screw_tsbm3-10-8_5', '44V-M70-250/002_9', '2016-08-06 16:50:29', '2016-08-06 16:50:29', 1, 1, 530, 3, 9, 4, 0, 1, 0, 100),
(540, 'din127b-m03', '44V-M70-250/002_10', '2016-08-06 16:50:38', '2016-08-06 16:50:38', 1, 1, 530, 3, 10, 4, 0, 1, 0, 100),
(541, 'posicionador_m04x10', '44V-M70-250/002_11', '2016-08-06 16:50:48', '2016-08-06 16:50:48', 1, 1, 530, 3, 11, 4, 0, 1, 0, 100),
(542, 'din913-m2_5x03', '44V-M70-250/002_12', '2016-08-06 16:50:58', '2016-08-06 16:50:58', 1, 1, 530, 3, 12, 4, 0, 1, 0, 100),
(543, 'posicionador_m04x10', '44V-M70-250/002_13', '2016-08-06 16:51:08', '2016-08-06 16:51:08', 1, 1, 530, 3, 13, 4, 0, 1, 0, 100),
(544, 'din913-m2_5x03', '44V-M70-250/002_14', '2016-08-06 16:51:18', '2016-08-06 16:51:18', 1, 1, 530, 3, 14, 4, 0, 1, 0, 100),
(545, 'din913-m2_5x03', '44V-M70-250/002_15', '2016-08-06 16:51:28', '2016-08-06 16:51:28', 1, 1, 530, 3, 15, 4, 0, 1, 0, 100),
(546, 'din913-m2_5x03', '44V-M70-250/002_16', '2016-08-06 16:51:38', '2016-08-06 16:51:38', 1, 1, 530, 3, 16, 4, 0, 1, 0, 100),
(547, '44v-m70-250_sm3_vcal_frame', '44V-M70-250/100', '2016-08-06 16:51:47', '2016-08-06 16:51:47', 1, 1, 530, 3, 17, 4, 0, 1, 0, 100),
(548, '44v-m70-250_rod_d04x70_0', '44V-M70-250/101', '2016-08-06 16:51:57', '2016-08-06 16:51:57', 1, 1, 530, 3, 18, 4, 0, 1, 0, 100),
(549, '44v-m70-250_rod_d04x70_0', '44V-M70-250/101b', '2016-08-06 16:52:07', '2016-08-06 16:52:07', 1, 1, 530, 3, 19, 4, 0, 1, 0, 100),
(550, '44v-m70-250_sm3_bracket', '44V-M70-250/102', '2016-08-06 16:52:17', '2016-08-06 16:52:17', 1, 1, 530, 3, 20, 4, 0, 1, 0, 100),
(551, '44v-m70-250_sm3_mount', '44V-M70-250/103', '2016-08-06 16:52:27', '2016-08-06 16:52:27', 1, 1, 530, 3, 21, 4, 0, 1, 0, 100),
(552, '44v-m70-250_sm2_sm3_flange', '44V-M70-250/104', '2016-08-06 16:52:37', '2016-08-06 16:52:37', 1, 1, 530, 3, 22, 4, 0, 1, 0, 100),
(553, '44v-m70-250_sm2_sm3_flange', '44V-M70-250/104b', '2016-08-06 16:52:46', '2016-08-06 16:52:46', 1, 1, 530, 3, 23, 4, 0, 1, 0, 100),
(554, '44v-m70-250_sm2_sm3_pastill', '44V-M70-250/105', '2016-08-06 16:52:56', '2016-08-06 16:52:56', 1, 1, 530, 3, 24, 4, 0, 1, 0, 100),
(555, '44v-m70-250_sm2_sm3_pastill', '44V-M70-250/105b', '2016-08-06 16:53:06', '2016-08-06 16:53:06', 1, 1, 530, 3, 25, 4, 0, 1, 0, 100),
(556, '44v-m70-250_sm2_sm3_pastill', '44V-M70-250/105c', '2016-08-06 16:53:16', '2016-08-06 16:53:16', 1, 1, 530, 3, 26, 4, 0, 1, 0, 100),
(557, '44v-m70-250_sm3_adl', '44V-M70-250/107', '2016-08-06 16:53:25', '2016-08-06 16:53:25', 1, 1, 530, 3, 27, 4, 0, 1, 0, 100),
(558, '44v-m70-260_fov_sm2', '44V-M70-260/002', '2016-08-06 16:53:35', '2016-08-06 16:53:35', 1, 1, 295, 3, 6, 4, 0, 1, 0, 100),
(559, 'din84-m1_6x4-4_8', '44V-M70-260/002_1', '2016-08-06 16:53:45', '2016-08-06 16:53:45', 1, 1, 558, 3, 1, 4, 0, 1, 0, 100),
(560, 'din84-m1_6x4-4_8', '44V-M70-260/002_2', '2016-08-06 16:53:55', '2016-08-06 16:53:55', 1, 1, 558, 3, 2, 4, 0, 1, 0, 100),
(561, 'flat_mirror_10x10x02', '44V-M70-260/002_3', '2016-08-06 16:54:05', '2016-08-06 16:54:05', 1, 1, 558, 3, 3, 4, 0, 1, 0, 100),
(562, '44v-m70-250_sm2_sm3_flange', '44V-M70-250/104c', '2016-08-06 16:54:15', '2016-08-06 16:54:15', 1, 1, 558, 3, 4, 4, 0, 1, 0, 100),
(563, '44v-m70-250_sm2_sm3_flange', '44V-M70-250/104d', '2016-08-06 16:54:25', '2016-08-06 16:54:25', 1, 1, 558, 3, 5, 4, 0, 1, 0, 100),
(564, '44v-m70-260_sm2_mount', '44V-M70-260/100', '2016-08-06 16:54:35', '2016-08-06 16:54:35', 1, 1, 558, 3, 6, 4, 0, 1, 0, 100),
(565, '44v-m70-260_sm2_adl', '44V-M70-260/101', '2016-08-06 16:54:45', '2016-08-06 16:54:45', 1, 1, 558, 3, 7, 4, 0, 1, 0, 100),
(566, '44v-m70-270_fov_rs01', '44V-M70-270/002', '2016-08-06 16:54:55', '2016-08-06 16:54:55', 1, 1, 295, 3, 7, 4, 0, 1, 0, 100),
(567, 'iso2338-2m6x12-st', '44V-M70-270/002_1', '2016-08-06 16:55:04', '2016-08-06 16:55:04', 1, 1, 566, 3, 1, 4, 0, 1, 0, 100),
(568, 'din127-b4', '44V-M70-270/002_2', '2016-08-06 16:55:14', '2016-08-06 16:55:14', 1, 1, 566, 3, 2, 4, 0, 1, 0, 100),
(569, 'din127-b4', '44V-M70-270/002_3', '2016-08-06 16:55:24', '2016-08-06 16:55:24', 1, 1, 566, 3, 3, 4, 0, 1, 0, 100),
(570, 'din933-m3x12-8_8', '44V-M70-270/002_4', '2016-08-06 16:55:34', '2016-08-06 16:55:34', 1, 1, 566, 3, 4, 4, 0, 1, 0, 100),
(571, 'din127-b4', '44V-M70-270/002_5', '2016-08-06 16:55:43', '2016-08-06 16:55:43', 1, 1, 566, 3, 5, 4, 0, 1, 0, 100),
(572, 'iso2338-2m6x12-st', '44V-M70-270/002_6', '2016-08-06 16:55:53', '2016-08-06 16:55:53', 1, 1, 566, 3, 6, 4, 0, 1, 0, 100),
(573, 'din912-m03x16', '44V-M70-270/002_7', '2016-08-06 16:56:03', '2016-08-06 16:56:03', 1, 1, 566, 3, 7, 4, 0, 1, 0, 100),
(574, 'din912-m4x14-8_8', '44V-M70-270/002_8', '2016-08-06 16:56:13', '2016-08-06 16:56:13', 1, 1, 566, 3, 8, 4, 0, 1, 0, 100),
(575, 'din84-m1_6x4-4_8', '44V-M70-270/002_9', '2016-08-06 16:56:23', '2016-08-06 16:56:23', 1, 1, 566, 3, 9, 4, 0, 1, 0, 100),
(576, 'din84-m1_6x4-4_8', '44V-M70-270/002_10', '2016-08-06 16:56:33', '2016-08-06 16:56:33', 1, 1, 566, 3, 10, 4, 0, 1, 0, 100),
(577, 'din912-m4x14-8_8', '44V-M70-270/002_11', '2016-08-06 16:56:43', '2016-08-06 16:56:43', 1, 1, 566, 3, 11, 4, 0, 1, 0, 100),
(578, 'din84-m1_6x4-4_8', '44V-M70-270/002_12', '2016-08-06 16:56:52', '2016-08-06 16:56:52', 1, 1, 566, 3, 12, 4, 0, 1, 0, 100),
(579, 'din912-m4x14-8_8', '44V-M70-270/002_13', '2016-08-06 16:57:02', '2016-08-06 16:57:02', 1, 1, 566, 3, 13, 4, 0, 1, 0, 100),
(580, 'rs01_mirror_d12_7_f150', '44V-M70-270/002_14', '2016-08-06 16:57:12', '2016-08-06 16:57:12', 1, 1, 566, 3, 14, 4, 0, 1, 0, 100),
(581, 'din913-m2_5x05', '44V-M70-270/002_15', '2016-08-06 16:57:22', '2016-08-06 16:57:22', 1, 1, 566, 3, 15, 4, 0, 1, 0, 100),
(582, 'din913-m2_5x05', '44V-M70-270/002_16', '2016-08-06 16:57:32', '2016-08-06 16:57:32', 1, 1, 566, 3, 16, 4, 0, 1, 0, 100),
(583, 'din913-m2_5x05', '44V-M70-270/002_17', '2016-08-06 16:57:41', '2016-08-06 16:57:41', 1, 1, 566, 3, 17, 4, 0, 1, 0, 100),
(584, 'din912-m03x08', '44V-M70-270/002_18', '2016-08-06 16:57:51', '2016-08-06 16:57:51', 1, 1, 566, 3, 18, 4, 0, 1, 0, 100),
(585, 'din913-m2_5x05', '44V-M70-270/002_19', '2016-08-06 16:58:01', '2016-08-06 16:58:01', 1, 1, 566, 3, 19, 4, 0, 1, 0, 100),
(586, 'posicionador_m03x05', '44V-M70-270/002_20', '2016-08-06 16:58:11', '2016-08-06 16:58:11', 1, 1, 566, 3, 20, 4, 0, 1, 0, 100),
(587, 'din913-m2_5x05', '44V-M70-270/002_21', '2016-08-06 16:58:21', '2016-08-06 16:58:21', 1, 1, 566, 3, 21, 4, 0, 1, 0, 100),
(588, 'din934-m03', '44V-M70-270/002_22', '2016-08-06 16:58:31', '2016-08-06 16:58:31', 1, 1, 566, 3, 22, 4, 0, 1, 0, 100),
(589, 'fa_screw_tsbm3-10-8_5', '44V-M70-270/002_23', '2016-08-06 16:58:40', '2016-08-06 16:58:40', 1, 1, 566, 3, 23, 4, 0, 1, 0, 100),
(590, 'fa_screw_tsbm3-10-8_5', '44V-M70-270/002_24', '2016-08-06 16:58:50', '2016-08-06 16:58:50', 1, 1, 566, 3, 24, 4, 0, 1, 0, 100),
(591, 'din127b-m03', '44V-M70-270/002_25', '2016-08-06 16:59:00', '2016-08-06 16:59:00', 1, 1, 566, 3, 25, 4, 0, 1, 0, 100),
(592, 'din127b-m03', '44V-M70-270/002_26', '2016-08-06 16:59:10', '2016-08-06 16:59:10', 1, 1, 566, 3, 26, 4, 0, 1, 0, 100),
(593, 'posicionador_m04x10', '44V-M70-270/002_27', '2016-08-06 16:59:20', '2016-08-06 16:59:20', 1, 1, 566, 3, 27, 4, 0, 1, 0, 100),
(594, 'posicionador_m04x10', '44V-M70-270/002_28', '2016-08-06 16:59:29', '2016-08-06 16:59:29', 1, 1, 566, 3, 28, 4, 0, 1, 0, 100),
(595, '44v-m70-270_rs01_support', '44V-M70-270/100', '2016-08-06 16:59:39', '2016-08-06 16:59:39', 1, 1, 566, 3, 29, 4, 0, 1, 0, 100),
(596, '44v-m70-270_rs01_vcal_brket', '44V-M70-270/101', '2016-08-06 16:59:49', '2016-08-06 16:59:49', 1, 1, 566, 3, 30, 4, 0, 1, 0, 100),
(597, '44v-m70-270_rs01_htal_brket', '44V-M70-270/102', '2016-08-06 16:59:59', '2016-08-06 16:59:59', 1, 1, 566, 3, 31, 4, 0, 1, 0, 100),
(598, '44v-m70-270_rs01_mount', '44V-M70-270/103', '2016-08-06 17:00:09', '2016-08-06 17:00:09', 1, 1, 566, 3, 32, 4, 0, 1, 0, 100),
(599, '44v-m70-270_rs01_flange', '44V-M70-270/104', '2016-08-06 17:00:18', '2016-08-06 17:00:18', 1, 1, 566, 3, 33, 4, 0, 1, 0, 100),
(600, '44v-m70-270_rs01_flange', '44V-M70-270/104b', '2016-08-06 17:00:28', '2016-08-06 17:00:28', 1, 1, 566, 3, 34, 4, 0, 1, 0, 100),
(601, '44v-m70-270_rs01_flange', '44V-M70-270/104c', '2016-08-06 17:00:38', '2016-08-06 17:00:38', 1, 1, 566, 3, 35, 4, 0, 1, 0, 100),
(602, '44v-m70-270_rs01_adl', '44V-M70-270/105', '2016-08-06 17:00:48', '2016-08-06 17:00:48', 1, 1, 566, 3, 36, 4, 0, 1, 0, 100),
(603, '44v-m70-280_fov_electronics', '44V-M70-280/002', '2016-08-06 17:00:58', '2016-08-06 17:00:58', 1, 1, 295, 3, 8, 4, 0, 1, 0, 100),
(604, 'din84-m3x8-4_8', '44V-M70-280/002_1', '2016-08-06 17:01:08', '2016-08-06 17:01:08', 1, 1, 603, 3, 1, 4, 0, 1, 0, 100),
(605, 'din84-m3x8-4_8', '44V-M70-280/002_2', '2016-08-06 17:01:18', '2016-08-06 17:01:18', 1, 1, 603, 3, 2, 4, 0, 1, 0, 100),
(606, 'din84-m3x8-4_8', '44V-M70-280/002_3', '2016-08-06 17:01:27', '2016-08-06 17:01:27', 1, 1, 603, 3, 3, 4, 0, 1, 0, 100),
(607, 'din84-m3x8-4_8', '44V-M70-280/002_4', '2016-08-06 17:01:37', '2016-08-06 17:01:37', 1, 1, 603, 3, 4, 4, 0, 1, 0, 100),
(608, 'din84-m3x12-4_8', '44V-M70-280/002_5', '2016-08-06 17:01:47', '2016-08-06 17:01:47', 1, 1, 603, 3, 5, 4, 0, 1, 0, 100),
(609, 'din84-m3x8-4_8', '44V-M70-280/002_6', '2016-08-06 17:01:57', '2016-08-06 17:01:57', 1, 1, 603, 3, 6, 4, 0, 1, 0, 100),
(610, 'din84-m3x8-4_8', '44V-M70-280/002_7', '2016-08-06 17:02:07', '2016-08-06 17:02:07', 1, 1, 603, 3, 7, 4, 0, 1, 0, 100),
(611, 'din84-m3x12-4_8', '44V-M70-280/002_8', '2016-08-06 17:02:17', '2016-08-06 17:02:17', 1, 1, 603, 3, 8, 4, 0, 1, 0, 100),
(612, 'din84-m3x12-4_8', '44V-M70-280/002_9', '2016-08-06 17:02:27', '2016-08-06 17:02:27', 1, 1, 603, 3, 9, 4, 0, 1, 0, 100),
(613, 'din84-m3x12-4_8', '44V-M70-280/002_10', '2016-08-06 17:02:37', '2016-08-06 17:02:37', 1, 1, 603, 3, 10, 4, 0, 1, 0, 100),
(614, 'din84-m3x8-4_8', '44V-M70-280/002_11', '2016-08-06 17:02:46', '2016-08-06 17:02:46', 1, 1, 603, 3, 11, 4, 0, 1, 0, 100),
(615, 'din84-m3x8-4_8', '44V-M70-280/002_12', '2016-08-06 17:02:56', '2016-08-06 17:02:56', 1, 1, 603, 3, 12, 4, 0, 1, 0, 100),
(616, 'din127-b3', '44V-M70-280/002_13', '2016-08-06 17:03:06', '2016-08-06 17:03:06', 1, 1, 603, 3, 13, 4, 0, 1, 0, 100),
(617, 'din127-b3', '44V-M70-280/002_14', '2016-08-06 17:03:16', '2016-08-06 17:03:16', 1, 1, 603, 3, 14, 4, 0, 1, 0, 100),
(618, 'din127-b3', '44V-M70-280/002_15', '2016-08-06 17:03:26', '2016-08-06 17:03:26', 1, 1, 603, 3, 15, 4, 0, 1, 0, 100),
(619, 'din127-b3', '44V-M70-280/002_16', '2016-08-06 17:03:36', '2016-08-06 17:03:36', 1, 1, 603, 3, 16, 4, 0, 1, 0, 100),
(620, 'din127-b3', '44V-M70-280/002_17', '2016-08-06 17:03:46', '2016-08-06 17:03:46', 1, 1, 603, 3, 17, 4, 0, 1, 0, 100),
(621, 'din127-b3', '44V-M70-280/002_18', '2016-08-06 17:03:56', '2016-08-06 17:03:56', 1, 1, 603, 3, 18, 4, 0, 1, 0, 100),
(622, 'din127-b3', '44V-M70-280/002_19', '2016-08-06 17:04:06', '2016-08-06 17:04:06', 1, 1, 603, 3, 19, 4, 0, 1, 0, 100),
(623, 'din127-b3', '44V-M70-280/002_20', '2016-08-06 17:04:16', '2016-08-06 17:04:16', 1, 1, 603, 3, 20, 4, 0, 1, 0, 100),
(624, 'din127-b3', '44V-M70-280/002_21', '2016-08-06 17:04:26', '2016-08-06 17:04:26', 1, 1, 603, 3, 21, 4, 0, 1, 0, 100),
(625, 'din127-b3', '44V-M70-280/002_22', '2016-08-06 17:04:36', '2016-08-06 17:04:36', 1, 1, 603, 3, 22, 4, 0, 1, 0, 100),
(626, 'din127-b3', '44V-M70-280/002_23', '2016-08-06 17:04:46', '2016-08-06 17:04:46', 1, 1, 603, 3, 23, 4, 0, 1, 0, 100),
(627, 'din127-b3', '44V-M70-280/002_24', '2016-08-06 17:04:56', '2016-08-06 17:04:56', 1, 1, 603, 3, 24, 4, 0, 1, 0, 100),
(628, 'din912-m03x12', '44V-M70-280/002_25', '2016-08-06 17:05:06', '2016-08-06 17:05:06', 1, 1, 603, 3, 25, 4, 0, 1, 0, 100),
(629, 'din912-m03x12', '44V-M70-280/002_26', '2016-08-06 17:05:15', '2016-08-06 17:05:15', 1, 1, 603, 3, 26, 4, 0, 1, 0, 100),
(630, 'din912-m03x12', '44V-M70-280/002_27', '2016-08-06 17:05:25', '2016-08-06 17:05:25', 1, 1, 603, 3, 27, 4, 0, 1, 0, 100),
(631, 'din912-m03x12', '44V-M70-280/002_28', '2016-08-06 17:05:35', '2016-08-06 17:05:35', 1, 1, 603, 3, 28, 4, 0, 1, 0, 100),
(632, 'din912-m03x12', '44V-M70-280/002_29', '2016-08-06 17:05:45', '2016-08-06 17:05:45', 1, 1, 603, 3, 29, 4, 0, 1, 0, 100),
(633, 'xport', '44V-M70-280/002_30', '2016-08-06 17:05:56', '2016-08-06 17:05:56', 1, 1, 603, 3, 30, 4, 0, 1, 0, 100),
(634, 'mcdc_3006s', '44V-M70-280/002_31', '2016-08-06 17:06:06', '2016-08-06 17:06:06', 1, 1, 603, 3, 31, 4, 1, 1, 0, 100),
(635, 'mcdc3006s_sldasm_part3', '44V-M70-280/002_31_1', '2016-08-06 17:06:15', '2016-08-06 17:06:15', 1, 1, 634, 3, 1, 4, 0, 0, 0, 100),
(636, 'mcdc3006s_sldasm_part2', '44V-M70-280/002_31_2', '2016-08-06 17:06:25', '2016-08-06 17:06:25', 1, 1, 634, 3, 2, 4, 0, 0, 0, 100),
(637, 'mcdc3006s_sldasm_part4', '44V-M70-280/002_31_3', '2016-08-06 17:06:35', '2016-08-06 17:06:35', 1, 1, 634, 3, 3, 4, 0, 0, 0, 100),
(638, 'modulo_encoder', '44V-M70-280/002_31_4', '2016-08-06 17:06:44', '2016-08-06 17:06:44', 1, 1, 634, 3, 4, 4, 0, 0, 0, 100),
(639, 'cosm_kis', '44V-M70-280/002_31_5', '2016-08-06 17:06:54', '2016-08-06 17:06:54', 1, 1, 634, 3, 5, 4, 0, 0, 0, 100),
(640, 'mcdc3006s_sldasm_part1', '44V-M70-280/002_31_6', '2016-08-06 17:07:04', '2016-08-06 17:07:04', 1, 1, 634, 3, 6, 4, 0, 0, 0, 100),
(641, 'mcdc_3006s', '44V-M70-280/002_32', '2016-08-06 17:07:14', '2016-08-06 17:07:14', 1, 1, 603, 3, 32, 4, 1, 1, 0, 100),
(642, 'mcdc3006s_sldasm_part3', '44V-M70-280/002_32_1', '2016-08-06 17:07:23', '2016-08-06 17:07:23', 1, 1, 641, 3, 1, 4, 0, 0, 0, 100),
(643, 'mcdc3006s_sldasm_part2', '44V-M70-280/002_32_2', '2016-08-06 17:07:33', '2016-08-06 17:07:33', 1, 1, 641, 3, 2, 4, 0, 0, 0, 100),
(644, 'mcdc3006s_sldasm_part4', '44V-M70-280/002_32_3', '2016-08-06 17:07:43', '2016-08-06 17:07:43', 1, 1, 641, 3, 3, 4, 0, 0, 0, 100),
(645, 'modulo_encoder', '44V-M70-280/002_32_4', '2016-08-06 17:07:53', '2016-08-06 17:07:53', 1, 1, 641, 3, 4, 4, 0, 0, 0, 100),
(646, 'cosm_kis', '44V-M70-280/002_32_5', '2016-08-06 17:08:03', '2016-08-06 17:08:03', 1, 1, 641, 3, 5, 4, 0, 0, 0, 100),
(647, 'mcdc3006s_sldasm_part1', '44V-M70-280/002_32_6', '2016-08-06 17:08:13', '2016-08-06 17:08:13', 1, 1, 641, 3, 6, 4, 0, 0, 0, 100),
(648, 'mcdc_3006s', '44V-M70-280/002_33', '2016-08-06 17:08:22', '2016-08-06 17:08:22', 1, 1, 603, 3, 33, 4, 1, 1, 0, 100),
(649, 'mcdc3006s_sldasm_part3', '44V-M70-280/002_33_1', '2016-08-06 17:08:32', '2016-08-06 17:08:32', 1, 1, 648, 3, 1, 4, 0, 0, 0, 100),
(650, 'mcdc3006s_sldasm_part2', '44V-M70-280/002_33_2', '2016-08-06 17:08:42', '2016-08-06 17:08:42', 1, 1, 648, 3, 2, 4, 0, 0, 0, 100),
(651, 'mcdc3006s_sldasm_part4', '44V-M70-280/002_33_3', '2016-08-06 17:08:52', '2016-08-06 17:08:52', 1, 1, 648, 3, 3, 4, 0, 0, 0, 100),
(652, 'modulo_encoder', '44V-M70-280/002_33_4', '2016-08-06 17:09:01', '2016-08-06 17:09:01', 1, 1, 648, 3, 4, 4, 0, 0, 0, 100),
(653, 'cosm_kis', '44V-M70-280/002_33_5', '2016-08-06 17:09:11', '2016-08-06 17:09:11', 1, 1, 648, 3, 5, 4, 0, 0, 0, 100),
(654, 'mcdc3006s_sldasm_part1', '44V-M70-280/002_33_6', '2016-08-06 17:09:21', '2016-08-06 17:09:21', 1, 1, 648, 3, 6, 4, 0, 0, 0, 100),
(655, 'din127b-m03', '44V-M70-280/002_34', '2016-08-06 17:09:30', '2016-08-06 17:09:30', 1, 1, 603, 3, 34, 4, 0, 1, 0, 100),
(656, 'din127b-m03', '44V-M70-280/002_35', '2016-08-06 17:09:40', '2016-08-06 17:09:40', 1, 1, 603, 3, 35, 4, 0, 1, 0, 100),
(657, 'din127b-m03', '44V-M70-280/002_36', '2016-08-06 17:09:50', '2016-08-06 17:09:50', 1, 1, 603, 3, 36, 4, 0, 1, 0, 100),
(658, 'din127b-m03', '44V-M70-280/002_37', '2016-08-06 17:10:00', '2016-08-06 17:10:00', 1, 1, 603, 3, 37, 4, 0, 1, 0, 100),
(659, 'din127b-m03', '44V-M70-280/002_38', '2016-08-06 17:10:09', '2016-08-06 17:10:09', 1, 1, 603, 3, 38, 4, 0, 1, 0, 100),
(660, '44v-m70-280_drivers_support', '44V-M70-280/100', '2016-08-06 17:10:19', '2016-08-06 17:10:19', 1, 1, 603, 3, 39, 4, 0, 1, 0, 100),
(661, '44v-m70-310_ifu_optomechanical', '44V-M70-310/001', '2016-08-06 17:10:29', '2016-08-06 17:10:29', 1, 1, 1, 3, 11, 4, 0, 0, 0, 100),
(662, 'wo4446-101-ens1_solarnet-est_as', '44V-M70-310/001_1', '2016-08-06 17:10:39', '2016-08-25 14:53:39', 1, 1, 661, 3, 1, 4, 0, 0, 0, 100),
(663, 'wo4446-110-ens1_optics_asm_67', '44V-M70-310/001_1_1', '2016-08-06 17:10:49', '2016-08-06 17:10:49', 1, 1, 662, 3, 1, 4, 1, 0, 0, 100),
(664, 'wo4446-110-f005_pin_38', '44V-M70-310/001_1_1_1', '2016-08-06 17:10:59', '2016-08-06 17:10:59', 1, 1, 663, 3, 1, 4, 0, 0, 0, 100),
(665, 'wo4446-110-f006_plot_37', '44V-M70-310/001_1_1_2', '2016-08-06 17:11:09', '2016-08-06 17:11:09', 1, 1, 663, 3, 2, 4, 0, 0, 0, 100),
(666, 'wo4446-110-f001_folding-mirror_', '44V-M70-310/001_1_1_3', '2016-08-06 17:11:19', '2016-08-06 17:11:19', 1, 1, 663, 3, 3, 4, 0, 0, 0, 100),
(667, 'wo4446-110-f007_plot-mask_23', '44V-M70-310/001_1_1_4', '2016-08-06 17:11:28', '2016-08-06 17:11:28', 1, 1, 663, 3, 4, 4, 0, 0, 0, 100),
(668, 'wo4446-110-f006_plot_37', '44V-M70-310/001_1_1_5', '2016-08-06 17:11:38', '2016-08-06 17:11:38', 1, 1, 663, 3, 5, 4, 0, 0, 0, 100),
(669, 'wo4446-110-f006_plot_37', '44V-M70-310/001_1_1_6', '2016-08-06 17:11:48', '2016-08-06 17:11:48', 1, 1, 663, 3, 6, 4, 0, 0, 0, 100),
(670, 'wo4446-110-f006_plot_37', '44V-M70-310/001_1_1_7', '2016-08-06 17:11:57', '2016-08-06 17:11:57', 1, 1, 663, 3, 7, 4, 0, 0, 0, 100),
(671, 'wo4446-110-f003_base-plate_52', '44V-M70-310/001_1_1_8', '2016-08-06 17:12:07', '2016-08-06 17:12:07', 1, 1, 663, 3, 8, 4, 0, 0, 0, 100),
(672, 'wo4446-110-f006_plot_37', '44V-M70-310/001_1_1_9', '2016-08-06 17:12:17', '2016-08-06 17:12:17', 1, 1, 663, 3, 9, 4, 0, 0, 0, 100),
(673, 'wo4446-110-f002_talon-folding_3', '44V-M70-310/001_1_1_10', '2016-08-06 17:12:26', '2016-08-06 17:12:26', 1, 1, 663, 3, 10, 4, 0, 0, 0, 100),
(674, 'wo4446-110-f004_masque-pupille_', '44V-M70-310/001_1_1_11', '2016-08-06 17:12:36', '2016-08-06 17:12:36', 1, 1, 663, 3, 11, 4, 0, 0, 0, 100),
(675, 'wo4446-111-ens1_slicer_asm_24', '44V-M70-310/001_1_1_12', '2016-08-06 17:12:46', '2016-08-06 17:12:46', 1, 1, 663, 3, 12, 4, 0, 0, 0, 100),
(676, 'wo4446-111-f009_slice-cfg9_39', '44V-M70-310/001_1_1_12_1', '2016-08-06 17:12:56', '2016-08-06 17:12:56', 1, 1, 675, 3, 1, 4, 0, 0, 0, 100),
(677, 'wo4446-111-f005_slice-cfg5_39', '44V-M70-310/001_1_1_12_2', '2016-08-06 17:13:06', '2016-08-06 17:13:06', 1, 1, 675, 3, 2, 4, 0, 0, 0, 100),
(678, 'wo4446-111-f008_slice-cfg8_39', '44V-M70-310/001_1_1_12_3', '2016-08-06 17:13:16', '2016-08-06 17:13:16', 1, 1, 675, 3, 3, 4, 0, 0, 0, 100),
(679, 'wo4446-111-f001_slice-cfg1_39', '44V-M70-310/001_1_1_12_4', '2016-08-06 17:13:25', '2016-08-06 17:13:25', 1, 1, 675, 3, 4, 4, 0, 0, 0, 100),
(680, 'wo4446-111-f004_slice-cfg4_39', '44V-M70-310/001_1_1_12_5', '2016-08-06 17:13:35', '2016-08-06 17:13:35', 1, 1, 675, 3, 5, 4, 0, 0, 0, 100),
(681, 'wo4446-111-f003_slice-cfg3_39', '44V-M70-310/001_1_1_12_6', '2016-08-06 17:13:45', '2016-08-06 17:13:45', 1, 1, 675, 3, 6, 4, 0, 0, 0, 100),
(682, 'wo4446-111-f007_slice-cfg7_39', '44V-M70-310/001_1_1_12_7', '2016-08-06 17:13:55', '2016-08-06 17:13:55', 1, 1, 675, 3, 7, 4, 0, 0, 0, 100),
(683, 'wo4446-111-f009_slice-cfg9_39', '44V-M70-310/001_1_1_12_8', '2016-08-06 17:14:04', '2016-08-06 17:14:04', 1, 1, 675, 3, 8, 4, 0, 0, 0, 100),
(684, 'wo4446-111-f006_slice-cfg6_39', '44V-M70-310/001_1_1_12_9', '2016-08-06 17:14:14', '2016-08-06 17:14:14', 1, 1, 675, 3, 9, 4, 0, 0, 0, 100),
(685, 'wo4446-111-f002_slice-cfg2_39', '44V-M70-310/001_1_1_12_10', '2016-08-06 17:14:24', '2016-08-06 17:14:24', 1, 1, 675, 3, 10, 4, 0, 0, 0, 100),
(686, 'wo4446-111-f010_talon-slice_36', '44V-M70-310/001_1_1_12_11', '2016-08-06 17:14:34', '2016-08-06 17:14:34', 1, 1, 675, 3, 11, 4, 0, 0, 0, 100),
(687, 'wo4446-112-ens1_collimator_asm_', '44V-M70-310/001_1_1_13', '2016-08-06 17:14:43', '2016-08-06 17:14:43', 1, 1, 663, 3, 13, 4, 0, 0, 0, 100),
(688, 'wo4446-112-f001_collimator-cfg1', '44V-M70-310/001_1_1_13_1', '2016-08-06 17:14:54', '2016-08-06 17:14:54', 1, 1, 687, 3, 1, 4, 0, 0, 0, 100),
(689, 'wo4446-112-f002_collimator-cfg2', '44V-M70-310/001_1_1_13_2', '2016-08-06 17:15:03', '2016-08-06 17:15:03', 1, 1, 687, 3, 2, 4, 0, 0, 0, 100),
(690, 'wo4446-112-f006_collimator-cfg6', '44V-M70-310/001_1_1_13_3', '2016-08-06 17:15:13', '2016-08-06 17:15:13', 1, 1, 687, 3, 3, 4, 0, 0, 0, 100),
(691, 'wo4446-112-f005_collimator-cfg5', '44V-M70-310/001_1_1_13_4', '2016-08-06 17:15:23', '2016-08-06 17:15:23', 1, 1, 687, 3, 4, 4, 0, 0, 0, 100),
(692, 'wo4446-112-f007_collimator-cfg7', '44V-M70-310/001_1_1_13_5', '2016-08-06 17:15:32', '2016-08-06 17:15:32', 1, 1, 687, 3, 5, 4, 0, 0, 0, 100),
(693, 'wo4446-112-f008_collimator-cfg8', '44V-M70-310/001_1_1_13_6', '2016-08-06 17:15:42', '2016-08-06 17:15:42', 1, 1, 687, 3, 6, 4, 0, 0, 0, 100),
(694, 'wo4446-112-f003_collimator-cfg3', '44V-M70-310/001_1_1_13_7', '2016-08-06 17:15:52', '2016-08-06 17:15:52', 1, 1, 687, 3, 7, 4, 0, 0, 0, 100),
(695, 'wo4446-112-f009_talon-collimato', '44V-M70-310/001_1_1_13_8', '2016-08-06 17:16:01', '2016-08-06 17:16:01', 1, 1, 687, 3, 8, 4, 0, 0, 0, 100),
(696, 'wo4446-112-f004_collimator-cfg4', '44V-M70-310/001_1_1_13_9', '2016-08-06 17:16:11', '2016-08-06 17:16:11', 1, 1, 687, 3, 9, 4, 0, 0, 0, 100),
(697, 'wo4446-113-ens1_camera_asm_22', '44V-M70-310/001_1_1_14', '2016-08-06 17:16:21', '2016-08-06 17:16:21', 1, 1, 663, 3, 14, 4, 0, 0, 0, 100),
(698, 'wo4446-113-f008_camera-cfg8_59', '44V-M70-310/001_1_1_14_1', '2016-08-06 17:16:31', '2016-08-06 17:16:31', 1, 1, 697, 3, 1, 4, 0, 0, 0, 100),
(699, 'wo4446-113-f003_camera-cfg3_59', '44V-M70-310/001_1_1_14_2', '2016-08-06 17:16:41', '2016-08-06 17:16:41', 1, 1, 697, 3, 2, 4, 0, 0, 0, 100),
(700, 'wo4446-113-f009_talon-camera_28', '44V-M70-310/001_1_1_14_3', '2016-08-06 17:16:53', '2016-08-06 17:16:53', 1, 1, 697, 3, 3, 4, 0, 0, 0, 100),
(701, 'wo4446-113-f002_camera-cfg2_59', '44V-M70-310/001_1_1_14_4', '2016-08-06 17:17:04', '2016-08-06 17:17:04', 1, 1, 697, 3, 4, 4, 0, 0, 0, 100),
(702, 'wo4446-113-f005_camera-cfg5_59', '44V-M70-310/001_1_1_14_5', '2016-08-06 17:17:15', '2016-08-06 17:17:15', 1, 1, 697, 3, 5, 4, 0, 0, 0, 100),
(703, 'wo4446-113-f007_camera-cfg7_59', '44V-M70-310/001_1_1_14_6', '2016-08-06 17:17:25', '2016-08-06 17:17:25', 1, 1, 697, 3, 6, 4, 0, 0, 0, 100),
(704, 'wo4446-113-f004_camera-cfg4_59', '44V-M70-310/001_1_1_14_7', '2016-08-06 17:17:34', '2016-08-06 17:17:34', 1, 1, 697, 3, 7, 4, 0, 0, 0, 100),
(705, 'wo4446-113-f006_camera-cfg6_59', '44V-M70-310/001_1_1_14_8', '2016-08-06 17:17:44', '2016-08-06 17:17:44', 1, 1, 697, 3, 8, 4, 0, 0, 0, 100),
(706, 'wo4446-113-f001_camera-cfg1_59', '44V-M70-310/001_1_1_14_9', '2016-08-06 17:17:54', '2016-08-06 17:17:54', 1, 1, 697, 3, 9, 4, 0, 0, 0, 100),
(707, 'is07155', '44V-M70-310/001_1_2', '2016-08-06 17:18:04', '2016-08-06 17:18:04', 1, 1, 662, 3, 2, 4, 1, 0, 0, 100),
(708, 'none-9390_3', '44V-M70-310/001_1_2_1', '2016-08-06 17:18:16', '2016-08-06 17:18:16', 1, 1, 707, 3, 1, 4, 0, 0, 0, 100),
(709, 'none-1895750_3', '44V-M70-310/001_1_2_2', '2016-08-06 17:18:26', '2016-08-06 17:18:26', 1, 1, 707, 3, 2, 4, 0, 0, 0, 100),
(710, 'none-260230_3', '44V-M70-310/001_1_2_3', '2016-08-06 17:18:36', '2016-08-06 17:18:36', 1, 1, 707, 3, 3, 4, 0, 0, 0, 100),
(711, 'none-257580_3', '44V-M70-310/001_1_2_4', '2016-08-06 17:18:46', '2016-08-06 17:18:46', 1, 1, 707, 3, 4, 4, 0, 0, 0, 100),
(712, 'none-513560_3', '44V-M70-310/001_1_2_5', '2016-08-06 17:18:55', '2016-08-06 17:18:55', 1, 1, 707, 3, 5, 4, 0, 0, 0, 100),
(713, 'none-1887960_3', '44V-M70-310/001_1_2_6', '2016-08-06 17:19:07', '2016-08-06 17:19:07', 1, 1, 707, 3, 6, 4, 0, 0, 0, 100),
(714, 'none-6900_3', '44V-M70-310/001_1_2_7', '2016-08-06 17:19:17', '2016-08-06 17:19:17', 1, 1, 707, 3, 7, 4, 0, 0, 0, 100),
(715, 'none-1343500_3', '44V-M70-310/001_1_2_8', '2016-08-06 17:19:27', '2016-08-06 17:19:27', 1, 1, 707, 3, 8, 4, 0, 0, 0, 100),
(716, 'none-1890610_3', '44V-M70-310/001_1_2_9', '2016-08-06 17:19:37', '2016-08-06 17:19:37', 1, 1, 707, 3, 9, 4, 0, 0, 0, 100),
(717, 'none-521350_3', '44V-M70-310/001_1_2_10', '2016-08-06 17:19:47', '2016-08-06 17:19:47', 1, 1, 707, 3, 10, 4, 0, 0, 0, 100),
(718, 'none-265370_3', '44V-M70-310/001_1_2_11', '2016-08-06 17:19:57', '2016-08-06 17:19:57', 1, 1, 707, 3, 11, 4, 0, 0, 0, 100),
(719, 'none-1620870_3', '44V-M70-310/001_1_2_12', '2016-08-06 17:20:07', '2016-08-06 17:20:07', 1, 1, 707, 3, 12, 4, 0, 0, 0, 100),
(720, 'none-1338200_3', '44V-M70-310/001_1_2_13', '2016-08-06 17:20:17', '2016-08-06 17:20:17', 1, 1, 707, 3, 13, 4, 0, 0, 0, 100),
(721, 'none-1345990_3', '44V-M70-310/001_1_2_14', '2016-08-06 17:20:27', '2016-08-06 17:20:27', 1, 1, 707, 3, 14, 4, 0, 0, 0, 100),
(722, 'none-4250_3', '44V-M70-310/001_1_2_15', '2016-08-06 17:20:37', '2016-08-06 17:20:37', 1, 1, 707, 3, 15, 4, 0, 0, 0, 100),
(723, 'none-1063320_3', '44V-M70-310/001_1_2_16', '2016-08-06 17:20:47', '2016-08-06 17:20:47', 1, 1, 707, 3, 16, 4, 0, 0, 0, 100),
(724, 'none-788440_3', '44V-M70-310/001_1_2_17', '2016-08-06 17:20:57', '2016-08-06 17:20:57', 1, 1, 707, 3, 17, 4, 0, 0, 0, 100),
(725, 'none-1613080_3', '44V-M70-310/001_1_2_18', '2016-08-06 17:21:07', '2016-08-06 17:21:07', 1, 1, 707, 3, 18, 4, 0, 0, 0, 100),
(726, 'none-1618380_3', '44V-M70-310/001_1_2_19', '2016-08-06 17:21:17', '2016-08-06 17:21:17', 1, 1, 707, 3, 19, 4, 0, 0, 0, 100),
(727, 'none-518860_3', '44V-M70-310/001_1_2_20', '2016-08-06 17:21:27', '2016-08-06 17:21:27', 1, 1, 707, 3, 20, 4, 0, 0, 0, 100),
(728, 'none-1071110_3', '44V-M70-310/001_1_2_21', '2016-08-06 17:21:37', '2016-08-06 17:21:37', 1, 1, 707, 3, 21, 4, 0, 0, 0, 100),
(729, 'none-1615730_3', '44V-M70-310/001_1_2_22', '2016-08-06 17:21:48', '2016-08-06 17:21:48', 1, 1, 707, 3, 22, 4, 0, 0, 0, 100),
(730, 'none-1068620_3', '44V-M70-310/001_1_2_23', '2016-08-06 17:21:59', '2016-08-06 17:21:59', 1, 1, 707, 3, 23, 4, 0, 0, 0, 100),
(731, 'none-796230_3', '44V-M70-310/001_1_2_24', '2016-08-06 17:22:09', '2016-08-06 17:22:09', 1, 1, 707, 3, 24, 4, 0, 0, 0, 100),
(732, 'none-262880_3', '44V-M70-310/001_1_2_25', '2016-08-06 17:22:20', '2016-08-06 17:22:20', 1, 1, 707, 3, 25, 4, 0, 0, 0, 100),
(733, 'none-1600-3-k', '44V-M70-310/001_1_2_26', '2016-08-06 17:22:30', '2016-08-06 17:22:30', 1, 1, 707, 3, 26, 4, 0, 0, 0, 100),
(734, 'none-793740_3', '44V-M70-310/001_1_2_27', '2016-08-06 17:22:40', '2016-08-06 17:22:40', 1, 1, 707, 3, 27, 4, 0, 0, 0, 100),
(735, 'none-1893260_3', '44V-M70-310/001_1_2_28', '2016-08-06 17:22:50', '2016-08-06 17:22:50', 1, 1, 707, 3, 28, 4, 0, 0, 0, 100),
(736, 'none-1340850_3', '44V-M70-310/001_1_2_29', '2016-08-06 17:23:00', '2016-08-06 17:23:00', 1, 1, 707, 3, 29, 4, 0, 0, 0, 100),
(737, 'none-516210_3', '44V-M70-310/001_1_2_30', '2016-08-06 17:23:10', '2016-08-06 17:23:10', 1, 1, 707, 3, 30, 4, 0, 0, 0, 100),
(738, 'none-1065970_3', '44V-M70-310/001_1_2_31', '2016-08-06 17:23:20', '2016-08-06 17:23:20', 1, 1, 707, 3, 31, 4, 0, 0, 0, 100),
(739, 'none-2161310_3', '44V-M70-310/001_1_2_32', '2016-08-06 17:23:30', '2016-08-06 17:23:30', 1, 1, 707, 3, 32, 4, 0, 0, 0, 100),
(740, 'none-791090_3', '44V-M70-310/001_1_2_33', '2016-08-06 17:23:39', '2016-08-06 17:23:39', 1, 1, 707, 3, 33, 4, 0, 0, 0, 100),
(741, 'wo4446-120-ens1_mechanical_asm_', '44V-M70-310/001_1_3', '2016-08-06 17:23:49', '2016-08-06 17:23:49', 1, 1, 662, 3, 3, 4, 1, 0, 0, 100),
(742, 'wo4446-120-ens2_clamp_asm_34', '44V-M70-310/001_1_3_1', '2016-08-06 17:23:58', '2016-08-06 17:23:58', 1, 1, 741, 3, 1, 4, 1, 0, 0, 100),
(743, 'wo4446-120-f001_clamp_47', '44V-M70-310/001_1_3_1_1', '2016-08-06 17:24:08', '2016-08-06 17:24:08', 1, 1, 742, 3, 1, 4, 0, 0, 0, 100),
(744, 'vanel_c-095-125-0200-i_9', '44V-M70-310/001_1_3_1_2', '2016-08-06 17:24:18', '2016-08-06 17:24:18', 1, 1, 742, 3, 2, 4, 0, 0, 0, 100),
(745, 'misumi_smsb55-20_2', '44V-M70-310/001_1_3_1_3', '2016-08-06 17:24:27', '2016-08-06 17:24:27', 1, 1, 742, 3, 3, 4, 0, 0, 0, 100),
(746, 'misumi_rondelle-fwssb-d11-v6-t1', '44V-M70-310/001_1_3_1_4', '2016-08-06 17:24:37', '2016-08-06 17:24:37', 1, 1, 742, 3, 4, 4, 0, 0, 0, 100),
(747, 'misumi_rondelle-fwssb-d11-v6-t1', '44V-M70-310/001_1_3_1_5', '2016-08-06 17:24:46', '2016-08-06 17:24:46', 1, 1, 742, 3, 5, 4, 0, 0, 0, 100),
(748, 'kapton-tape_18', '44V-M70-310/001_1_3_1_6', '2016-08-06 17:24:56', '2016-08-06 17:24:56', 1, 1, 742, 3, 6, 4, 0, 0, 0, 100),
(749, 'wo4446-120-ens3_pusher-spring_a', '44V-M70-310/001_1_3_2', '2016-08-06 17:25:05', '2016-08-06 17:25:05', 1, 1, 741, 3, 2, 4, 1, 0, 0, 100),
(750, 'wo4446-120-f002_barrel_14', '44V-M70-310/001_1_3_2_1', '2016-08-06 17:25:15', '2016-08-06 17:25:15', 1, 1, 749, 3, 1, 4, 0, 0, 0, 100),
(751, 'wo4446-120-f003_finger_12', '44V-M70-310/001_1_3_2_2', '2016-08-06 17:25:24', '2016-08-06 17:25:24', 1, 1, 749, 3, 2, 4, 0, 0, 0, 100),
(752, 'st_m12x10_c_15', '44V-M70-310/001_1_3_2_3', '2016-08-06 17:25:34', '2016-08-06 17:25:34', 1, 1, 749, 3, 3, 4, 0, 0, 0, 100),
(753, 'vanel_c-076-075-0142-i_12', '44V-M70-310/001_1_3_2_4', '2016-08-06 17:25:44', '2016-08-06 17:25:44', 1, 1, 749, 3, 4, 4, 0, 0, 0, 100),
(754, 'wo4446-120-ens2_clamp_asm_34', '44V-M70-310/001_1_3_3', '2016-08-06 17:25:53', '2016-08-06 17:25:53', 1, 1, 741, 3, 3, 4, 1, 0, 0, 100),
(755, 'wo4446-120-f001_clamp_47', '44V-M70-310/001_1_3_3_1', '2016-08-06 17:26:03', '2016-08-06 17:26:03', 1, 1, 754, 3, 1, 4, 0, 0, 0, 100),
(756, 'vanel_c-095-125-0200-i_9', '44V-M70-310/001_1_3_3_2', '2016-08-06 17:26:13', '2016-08-06 17:26:13', 1, 1, 754, 3, 2, 4, 0, 0, 0, 100),
(757, 'misumi_smsb55-20_2', '44V-M70-310/001_1_3_3_3', '2016-08-06 17:26:22', '2016-08-06 17:26:22', 1, 1, 754, 3, 3, 4, 0, 0, 0, 100),
(758, 'misumi_rondelle-fwssb-d11-v6-t1', '44V-M70-310/001_1_3_3_4', '2016-08-06 17:26:32', '2016-08-06 17:26:32', 1, 1, 754, 3, 4, 4, 0, 0, 0, 100),
(759, 'misumi_rondelle-fwssb-d11-v6-t1', '44V-M70-310/001_1_3_3_5', '2016-08-06 17:26:41', '2016-08-06 17:26:41', 1, 1, 754, 3, 5, 4, 0, 0, 0, 100),
(760, 'kapton-tape_18', '44V-M70-310/001_1_3_3_6', '2016-08-06 17:26:51', '2016-08-06 17:26:51', 1, 1, 754, 3, 6, 4, 0, 0, 0, 100),
(761, 'wo4446-120-ens2_clamp_asm_34', '44V-M70-310/001_1_3_4', '2016-08-06 17:27:00', '2016-08-06 17:27:00', 1, 1, 741, 3, 4, 4, 1, 0, 0, 100),
(762, 'wo4446-120-f001_clamp_47', '44V-M70-310/001_1_3_4_1', '2016-08-06 17:27:10', '2016-08-06 17:27:10', 1, 1, 761, 3, 1, 4, 0, 0, 0, 100),
(763, 'vanel_c-095-125-0200-i_9', '44V-M70-310/001_1_3_4_2', '2016-08-06 17:27:20', '2016-08-06 17:27:20', 1, 1, 761, 3, 2, 4, 0, 0, 0, 100),
(764, 'misumi_smsb55-20_2', '44V-M70-310/001_1_3_4_3', '2016-08-06 17:27:29', '2016-08-06 17:27:29', 1, 1, 761, 3, 3, 4, 0, 0, 0, 100),
(765, 'misumi_rondelle-fwssb-d11-v6-t1', '44V-M70-310/001_1_3_4_4', '2016-08-06 17:27:39', '2016-08-06 17:27:39', 1, 1, 761, 3, 4, 4, 0, 0, 0, 100),
(766, 'misumi_rondelle-fwssb-d11-v6-t1', '44V-M70-310/001_1_3_4_5', '2016-08-06 17:27:48', '2016-08-06 17:27:48', 1, 1, 761, 3, 5, 4, 0, 0, 0, 100),
(767, 'kapton-tape_18', '44V-M70-310/001_1_3_4_6', '2016-08-06 17:27:58', '2016-08-06 17:27:58', 1, 1, 761, 3, 6, 4, 0, 0, 0, 100),
(768, '44v-m70-310_ifu_wo_base_plate', '44V-M70-310/001_1_4', '2016-08-06 17:28:07', '2016-08-06 17:28:07', 1, 1, 662, 3, 4, 4, 1, 0, 0, 100),
(769, 'misumi_grain_ss', '44V-M70-310/001_1_4_1', '2016-08-06 17:28:17', '2016-08-06 17:28:17', 1, 1, 768, 3, 1, 4, 0, 0, 0, 100),
(770, 'misumi_grain_ss', '44V-M70-310/001_1_4_2', '2016-08-06 17:28:27', '2016-08-06 17:28:27', 1, 1, 768, 3, 2, 4, 0, 0, 0, 100),
(771, 'misumi_grain_ss', '44V-M70-310/001_1_4_3', '2016-08-06 17:28:36', '2016-08-06 17:28:36', 1, 1, 768, 3, 3, 4, 0, 0, 0, 100),
(772, 'misumi_grain_ss', '44V-M70-310/001_1_4_4', '2016-08-06 17:28:46', '2016-08-06 17:28:46', 1, 1, 768, 3, 4, 4, 0, 0, 0, 100);
INSERT INTO `systems` (`id`, `name`, `abbrev`, `created_at`, `updated_at`, `project_id`, `root_id`, `parent_id`, `system_type_id`, `position`, `layer_id`, `atomic`, `acquired`, `virtual`, `acq_priority`) VALUES
(773, '44v-m70-310_wo_ifu_base_plate', '44V-M70-310/001_1_4_5', '2016-08-06 17:28:56', '2016-08-06 17:28:56', 1, 1, 768, 3, 5, 4, 0, 0, 0, 100),
(774, 'wo4446-100-f000_ifu_5', '44V-M70-310/001_1_6', '2016-08-06 17:29:05', '2016-08-25 16:59:45', 1, 1, 662, 3, 5, 4, 1, 0, 1, 100),
(775, '44v_m70_320_ifu_mount', '44V-M70-320/001', '2016-08-06 17:29:15', '2016-08-06 17:29:15', 1, 1, 1, 3, 12, 4, 0, 0, 0, 100),
(776, '44v_m70_320_esfera_concava', '44V-M70-320/110', '2016-08-06 17:29:25', '2016-08-25 12:52:29', 1, 1, 1148, 3, 1, 4, 1, 0, 0, 100),
(777, '44v_m70_320_alojamiento_esf_inf', '44V-M70-320/001_2', '2016-08-06 17:29:34', '2016-08-25 12:53:18', 1, 1, 775, 3, 1, 4, 1, 0, 0, 100),
(778, 'pin_diam_8x15', '44V-M70-320/001_3', '2016-08-06 17:29:44', '2016-08-25 12:53:24', 1, 1, 775, 3, 2, 4, 1, 0, 0, 100),
(779, 'pin_diam_8x15', '44V-M70-320/001_4', '2016-08-06 17:29:53', '2016-08-25 12:53:28', 1, 1, 775, 3, 3, 4, 1, 0, 0, 100),
(780, 'pin_diam_10x15', '44V-M70-320/001_5', '2016-08-06 17:30:03', '2016-08-25 12:53:33', 1, 1, 775, 3, 4, 4, 1, 0, 0, 100),
(784, '44v-m70-330_rs2_support', '44V-M70-330/001', '2016-08-06 17:30:41', '2016-08-06 17:30:41', 1, 1, 1, 3, 13, 4, 0, 1, 0, 100),
(785, '44v-m70-330_newport_gimbal_9812', '44V-M70-330/001_1', '2016-08-06 17:30:51', '2016-08-06 17:30:51', 1, 1, 784, 3, 1, 4, 0, 1, 0, 100),
(786, '902812-01_asm_1', '44V-M70-330/001_1_1', '2016-08-06 17:31:01', '2016-08-06 17:31:01', 1, 1, 785, 3, 1, 4, 1, 1, 0, 100),
(787, '902114_1', '44V-M70-330/001_1_1_1', '2016-08-06 17:31:10', '2016-08-06 17:31:10', 1, 1, 786, 3, 1, 4, 0, 0, 0, 100),
(788, '9812plt_asm_1', '44V-M70-330/001_1_1_2', '2016-08-06 17:31:20', '2016-08-06 17:31:20', 1, 1, 786, 3, 2, 4, 0, 1, 0, 100),
(789, '003550_2_2', '44V-M70-330/001_1_1_2_1', '2016-08-06 17:31:29', '2016-08-06 17:31:29', 1, 1, 788, 3, 1, 4, 0, 0, 0, 100),
(790, '903293_1', '44V-M70-330/001_1_1_2_2', '2016-08-06 17:31:39', '2016-08-06 17:31:39', 1, 1, 788, 3, 2, 4, 0, 0, 0, 100),
(791, '003550_2_2', '44V-M70-330/001_1_1_2_3', '2016-08-06 17:31:48', '2016-08-06 17:31:48', 1, 1, 788, 3, 3, 4, 0, 0, 0, 100),
(792, '003550_2_2', '44V-M70-330/001_1_1_2_4', '2016-08-06 17:31:58', '2016-08-06 17:31:58', 1, 1, 788, 3, 4, 4, 0, 0, 0, 100),
(793, '900845_2', '44V-M70-330/001_1_1_3', '2016-08-06 17:32:08', '2016-08-06 17:32:08', 1, 1, 786, 3, 3, 4, 0, 0, 0, 100),
(794, '900845_2', '44V-M70-330/001_1_1_4', '2016-08-06 17:32:17', '2016-08-06 17:32:17', 1, 1, 786, 3, 4, 4, 0, 0, 0, 100),
(795, '903943_02-02_asm_2', '44V-M70-330/001_1_1_5', '2016-08-06 17:32:27', '2016-08-06 17:32:27', 1, 1, 786, 3, 5, 4, 1, 1, 0, 100),
(796, '903943_00-02_2', '44V-M70-330/001_1_1_5_1', '2016-08-06 17:32:36', '2016-08-06 17:32:36', 1, 1, 795, 3, 1, 4, 0, 0, 0, 100),
(797, '903943_02-00_2', '44V-M70-330/001_1_1_5_2', '2016-08-06 17:32:46', '2016-08-06 17:32:46', 1, 1, 795, 3, 2, 4, 0, 0, 0, 100),
(798, '903943_02-02_asm_2', '44V-M70-330/001_1_1_6', '2016-08-06 17:32:55', '2016-08-06 17:32:55', 1, 1, 786, 3, 6, 4, 1, 1, 0, 100),
(799, '903943_00-02_2', '44V-M70-330/001_1_1_6_1', '2016-08-06 17:33:05', '2016-08-06 17:33:05', 1, 1, 798, 3, 1, 4, 0, 0, 0, 100),
(800, '903943_02-00_2', '44V-M70-330/001_1_1_6_2', '2016-08-06 17:33:15', '2016-08-06 17:33:15', 1, 1, 798, 3, 2, 4, 0, 0, 0, 100),
(801, '903943_02-02_asm_2', '44V-M70-330/001_1_1_7', '2016-08-06 17:33:24', '2016-08-06 17:33:24', 1, 1, 786, 3, 7, 4, 1, 1, 0, 100),
(802, '903943_00-02_2', '44V-M70-330/001_1_1_7_1', '2016-08-06 17:33:34', '2016-08-06 17:33:34', 1, 1, 801, 3, 1, 4, 0, 0, 0, 100),
(803, '903943_02-00_2', '44V-M70-330/001_1_1_7_2', '2016-08-06 17:33:43', '2016-08-06 17:33:43', 1, 1, 801, 3, 2, 4, 0, 0, 0, 100),
(804, '900845_2', '44V-M70-330/001_1_1_8', '2016-08-06 17:33:53', '2016-08-06 17:33:53', 1, 1, 786, 3, 8, 4, 0, 0, 0, 100),
(805, '44v-m70-330_rs2_mirror_1in', '44V-M70-330/001_2', '2016-08-06 17:34:02', '2016-08-06 17:34:02', 1, 1, 784, 3, 2, 4, 0, 1, 0, 100),
(806, '44v-m70-410_fma', '44V-M70-410/001', '2016-08-06 17:34:12', '2016-08-06 17:34:12', 1, 1, 1, 3, 14, 4, 0, 0, 0, 100),
(807, 'dts25_m-step', '44V-M70-410/001_1', '2016-08-06 17:34:21', '2016-08-06 17:34:21', 1, 1, 806, 3, 1, 4, 1, 0, 0, 100),
(808, 'dts25_m', '44V-M70-410/001_1_1', '2016-08-06 17:34:31', '2016-08-06 17:34:31', 1, 1, 807, 3, 1, 4, 1, 0, 0, 100),
(809, 'cf0195_-_igus_flange_bush_4-5_5', '44V-M70-410/001_1_1_1', '2016-08-06 17:34:41', '2016-08-06 17:34:41', 1, 1, 808, 3, 1, 4, 0, 0, 0, 100),
(810, '137513_-_dts25_knob_drw', '44V-M70-410/001_1_1_2', '2016-08-06 17:34:50', '2016-08-06 17:34:50', 1, 1, 808, 3, 2, 4, 0, 0, 0, 100),
(811, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001_1_1_3', '2016-08-06 17:35:00', '2016-08-06 17:35:00', 1, 1, 808, 3, 3, 4, 0, 0, 0, 100),
(812, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-410/001_1_1_4', '2016-08-06 17:35:10', '2016-08-06 17:35:10', 1, 1, 808, 3, 4, 4, 0, 0, 0, 100),
(813, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-410/001_1_1_5', '2016-08-06 17:35:19', '2016-08-06 17:35:19', 1, 1, 808, 3, 5, 4, 0, 0, 0, 100),
(814, '137604_-_dts25_moving_world_met', '44V-M70-410/001_1_1_6', '2016-08-06 17:35:29', '2016-08-06 17:35:29', 1, 1, 808, 3, 6, 4, 1, 0, 0, 100),
(815, '137511_-_dts25_moving_world_met', '44V-M70-410/001_1_1_6_1', '2016-08-06 17:35:38', '2016-08-06 17:35:38', 1, 1, 814, 3, 1, 4, 0, 0, 0, 100),
(816, 'db0219_-_m4x5_skt_set_db0219', '44V-M70-410/001_1_1_7', '2016-08-06 17:35:48', '2016-08-06 17:35:48', 1, 1, 808, 3, 7, 4, 0, 0, 0, 100),
(817, 'cf0195_-_igus_flange_bush_4-5_5', '44V-M70-410/001_1_1_8', '2016-08-06 17:35:57', '2016-08-06 17:35:57', 1, 1, 808, 3, 8, 4, 0, 0, 0, 100),
(818, 'da0169_-_m3_x_3__blk__skt_set', '44V-M70-410/001_1_1_9', '2016-08-06 17:36:07', '2016-08-06 17:36:07', 1, 1, 808, 3, 9, 4, 0, 0, 0, 100),
(819, '137510_-_dts25_fixed_world_metr', '44V-M70-410/001_1_1_10', '2016-08-06 17:36:16', '2016-08-06 17:36:16', 1, 1, 808, 3, 10, 4, 0, 0, 0, 100),
(820, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-410/001_1_1_11', '2016-08-06 17:36:26', '2016-08-06 17:36:26', 1, 1, 808, 3, 11, 4, 0, 0, 0, 100),
(821, '134304_-_screw_holder', '44V-M70-410/001_1_1_12', '2016-08-06 17:36:36', '2016-08-06 17:36:36', 1, 1, 808, 3, 12, 4, 0, 0, 0, 100),
(822, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001_1_1_13', '2016-08-06 17:36:45', '2016-08-06 17:36:45', 1, 1, 808, 3, 13, 4, 0, 0, 0, 100),
(823, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001_1_1_14', '2016-08-06 17:36:55', '2016-08-06 17:36:55', 1, 1, 808, 3, 14, 4, 0, 0, 0, 100),
(824, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001_1_1_15', '2016-08-06 17:37:05', '2016-08-06 17:37:05', 1, 1, 808, 3, 15, 4, 0, 0, 0, 100),
(825, '137514_-_dts25_locking_plate', '44V-M70-410/001_1_1_16', '2016-08-06 17:37:14', '2016-08-06 17:37:14', 1, 1, 808, 3, 16, 4, 0, 0, 0, 100),
(826, '137512_-_dts25_lead_screw', '44V-M70-410/001_1_1_17', '2016-08-06 17:37:24', '2016-08-06 17:37:24', 1, 1, 808, 3, 17, 4, 0, 0, 0, 100),
(827, '44v-m70-410_ks4', '44V-M70-410/001_2', '2016-08-06 17:37:33', '2016-08-06 17:37:33', 1, 1, 806, 3, 2, 4, 1, 1, 0, 100),
(828, '44v-m70-410_ks4_commercial', '44V-M70-410/001_2_1', '2016-08-06 17:37:43', '2016-08-06 17:37:43', 1, 1, 827, 3, 1, 4, 1, 1, 0, 100),
(829, 'ks4m_meca6', '44V-M70-410/001_2_1_1', '2016-08-06 17:37:53', '2016-08-06 17:37:53', 1, 1, 828, 3, 1, 4, 0, 0, 0, 100),
(830, 'ks-sprg-assy-1_km3-sprg_-_stret', '44V-M70-410/001_2_1_2', '2016-08-06 17:38:02', '2016-08-06 17:38:02', 1, 1, 828, 3, 2, 4, 0, 0, 0, 100),
(831, 'ks4m_meca10', '44V-M70-410/001_2_1_3', '2016-08-06 17:38:12', '2016-08-06 17:38:12', 1, 1, 828, 3, 3, 4, 0, 0, 0, 100),
(832, 'ks-sprg-assy-1_ss6s038-1-1-soli', '44V-M70-410/001_2_1_4', '2016-08-06 17:38:21', '2016-08-06 17:38:21', 1, 1, 828, 3, 4, 4, 0, 0, 0, 100),
(833, 'ks-sprg-assy-3_km3-sprg_-_stret', '44V-M70-410/001_2_1_5', '2016-08-06 17:38:31', '2016-08-06 17:38:31', 1, 1, 828, 3, 5, 4, 0, 0, 0, 100),
(834, 'ss8s013-1-2-solid1', '44V-M70-410/001_2_1_6', '2016-08-06 17:38:40', '2016-08-06 17:38:40', 1, 1, 828, 3, 6, 4, 0, 0, 0, 100),
(835, 'ball3750gr100-1-solid1', '44V-M70-410/001_2_1_7', '2016-08-06 17:38:50', '2016-08-06 17:38:50', 1, 1, 828, 3, 7, 4, 0, 0, 0, 100),
(836, 'ss8s013-1-1-solid1', '44V-M70-410/001_2_1_8', '2016-08-06 17:39:00', '2016-08-06 17:39:00', 1, 1, 828, 3, 8, 4, 0, 0, 0, 100),
(837, '1885-001-1-solid1', '44V-M70-410/001_2_1_9', '2016-08-06 17:39:09', '2016-08-06 17:39:09', 1, 1, 828, 3, 9, 4, 0, 0, 0, 100),
(838, 'ks4m_meca11', '44V-M70-410/001_2_1_10', '2016-08-06 17:39:19', '2016-08-06 17:39:19', 1, 1, 828, 3, 10, 4, 0, 0, 0, 100),
(839, 'ks4m_meca5', '44V-M70-410/001_2_1_11', '2016-08-06 17:39:28', '2016-08-06 17:39:28', 1, 1, 828, 3, 11, 4, 0, 0, 0, 100),
(840, 'all1875gr100-1-solid1', '44V-M70-410/001_2_1_12', '2016-08-06 17:39:38', '2016-08-06 17:39:38', 1, 1, 828, 3, 12, 4, 0, 0, 0, 100),
(841, 'ks-sprg-assy-2_km3-sprg_-_stret', '44V-M70-410/001_2_1_13', '2016-08-06 17:39:48', '2016-08-06 17:39:48', 1, 1, 828, 3, 13, 4, 0, 0, 0, 100),
(842, 'ks4m_meca12', '44V-M70-410/001_2_1_14', '2016-08-06 17:39:57', '2016-08-06 17:39:57', 1, 1, 828, 3, 14, 4, 0, 0, 0, 100),
(843, 'ss2a006-1-2-solid1', '44V-M70-410/001_2_1_15', '2016-08-06 17:40:07', '2016-08-06 17:40:07', 1, 1, 828, 3, 15, 4, 0, 0, 0, 100),
(844, '2783-001-2-solid1', '44V-M70-410/001_2_1_16', '2016-08-06 17:40:16', '2016-08-06 17:40:16', 1, 1, 828, 3, 16, 4, 0, 0, 0, 100),
(845, 'ks-sprg-assy-4_km3-sprg_-_stret', '44V-M70-410/001_2_1_17', '2016-08-06 17:40:26', '2016-08-06 17:40:26', 1, 1, 828, 3, 17, 4, 0, 0, 0, 100),
(846, '2783-001-1-solid1', '44V-M70-410/001_2_1_18', '2016-08-06 17:40:36', '2016-08-06 17:40:36', 1, 1, 828, 3, 18, 4, 0, 0, 0, 100),
(847, 'ks4m_meca7', '44V-M70-410/001_2_1_19', '2016-08-06 17:40:45', '2016-08-06 17:40:45', 1, 1, 828, 3, 19, 4, 0, 0, 0, 100),
(848, 'ks-sprg-assy-4_ss6s038-1-1-soli', '44V-M70-410/001_2_1_20', '2016-08-06 17:40:55', '2016-08-06 17:40:55', 1, 1, 828, 3, 20, 4, 0, 0, 0, 100),
(849, '1885-003-1-solid1', '44V-M70-410/001_2_1_21', '2016-08-06 17:41:04', '2016-08-06 17:41:04', 1, 1, 828, 3, 21, 4, 0, 0, 0, 100),
(850, 'ks4m_meca2n', '44V-M70-410/001_2_1_22', '2016-08-06 17:41:14', '2016-08-06 17:41:14', 1, 1, 828, 3, 22, 4, 0, 0, 0, 100),
(851, 'ks4m_meca16', '44V-M70-410/001_2_1_23', '2016-08-06 17:41:23', '2016-08-06 17:41:23', 1, 1, 828, 3, 23, 4, 0, 0, 0, 100),
(852, 'ks-sprg-assy-2_ss6s038-1-1-soli', '44V-M70-410/001_2_1_24', '2016-08-06 17:41:33', '2016-08-06 17:41:33', 1, 1, 828, 3, 24, 4, 0, 0, 0, 100),
(853, 'ss2a006-1-4-solid1', '44V-M70-410/001_2_1_25', '2016-08-06 17:41:42', '2016-08-06 17:41:42', 1, 1, 828, 3, 25, 4, 0, 0, 0, 100),
(854, 'ks4m_meca17', '44V-M70-410/001_2_1_26', '2016-08-06 17:41:52', '2016-08-06 17:41:52', 1, 1, 828, 3, 26, 4, 0, 0, 0, 100),
(855, 'ks4m_meca15', '44V-M70-410/001_2_1_27', '2016-08-06 17:42:01', '2016-08-06 17:42:01', 1, 1, 828, 3, 27, 4, 0, 0, 0, 100),
(856, 'ks4m_meca3n', '44V-M70-410/001_2_1_28', '2016-08-06 17:42:11', '2016-08-06 17:42:11', 1, 1, 828, 3, 28, 4, 0, 0, 0, 100),
(857, 'ks4m_meca14', '44V-M70-410/001_2_1_29', '2016-08-06 17:42:21', '2016-08-06 17:42:21', 1, 1, 828, 3, 29, 4, 0, 0, 0, 100),
(858, 'ks-sprg-assy-3_ss6s038-1-1-soli', '44V-M70-410/001_2_1_30', '2016-08-06 17:42:30', '2016-08-06 17:42:30', 1, 1, 828, 3, 30, 4, 0, 0, 0, 100),
(859, 'ks4m_meca9', '44V-M70-410/001_2_1_31', '2016-08-06 17:42:40', '2016-08-06 17:42:40', 1, 1, 828, 3, 31, 4, 0, 0, 0, 100),
(860, 'ks4m_meca4n', '44V-M70-410/001_2_1_32', '2016-08-06 17:42:49', '2016-08-06 17:42:49', 1, 1, 828, 3, 32, 4, 0, 0, 0, 100),
(861, 'ss2a006-1-3-solid1', '44V-M70-410/001_2_1_33', '2016-08-06 17:42:59', '2016-08-06 17:42:59', 1, 1, 828, 3, 33, 4, 0, 0, 0, 100),
(862, 'ss2a006-1-1-solid1', '44V-M70-410/001_2_1_34', '2016-08-06 17:43:08', '2016-08-06 17:43:08', 1, 1, 828, 3, 34, 4, 0, 0, 0, 100),
(863, 'ks4m_mecan', '44V-M70-410/001_2_1_35', '2016-08-06 17:43:18', '2016-08-06 17:43:18', 1, 1, 828, 3, 35, 4, 0, 0, 0, 100),
(864, '44v-m70-410_pf40_fma_mirror4in', '44V-M70-410/001_3', '2016-08-06 17:43:28', '2016-08-06 17:43:28', 1, 1, 806, 3, 3, 4, 0, 1, 0, 100),
(865, '44v-m70-410_base_ks4', '44V-M70-410/102', '2016-08-06 17:43:37', '2016-08-06 17:43:37', 1, 1, 806, 3, 4, 4, 0, 0, 0, 100),
(866, '44v-m70-410_fma', '44V-M70-410/001b', '2016-08-06 17:43:47', '2016-08-06 17:43:47', 1, 1, 1, 3, 15, 4, 0, 0, 0, 100),
(867, 'dts25_m-step', '44V-M70-410/001b_1', '2016-08-06 17:43:56', '2016-08-06 17:43:56', 1, 1, 866, 3, 1, 4, 1, 0, 0, 100),
(868, 'dts25_m', '44V-M70-410/001b_1_1', '2016-08-06 17:44:06', '2016-08-06 17:44:06', 1, 1, 867, 3, 1, 4, 1, 0, 0, 100),
(869, 'cf0195_-_igus_flange_bush_4-5_5', '44V-M70-410/001b_1_1_1', '2016-08-06 17:44:16', '2016-08-06 17:44:16', 1, 1, 868, 3, 1, 4, 0, 0, 0, 100),
(870, '137513_-_dts25_knob_drw', '44V-M70-410/001b_1_1_2', '2016-08-06 17:44:25', '2016-08-06 17:44:25', 1, 1, 868, 3, 2, 4, 0, 0, 0, 100),
(871, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001b_1_1_3', '2016-08-06 17:44:35', '2016-08-06 17:44:35', 1, 1, 868, 3, 3, 4, 0, 0, 0, 100),
(872, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-410/001b_1_1_4', '2016-08-06 17:44:45', '2016-08-06 17:44:45', 1, 1, 868, 3, 4, 4, 0, 0, 0, 100),
(873, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-410/001b_1_1_5', '2016-08-06 17:44:54', '2016-08-06 17:44:54', 1, 1, 868, 3, 5, 4, 0, 0, 0, 100),
(874, '137604_-_dts25_moving_world_met', '44V-M70-410/001b_1_1_6', '2016-08-06 17:45:04', '2016-08-06 17:45:04', 1, 1, 868, 3, 6, 4, 1, 0, 0, 100),
(875, '137511_-_dts25_moving_world_met', '44V-M70-410/001b_1_1_6_1', '2016-08-06 17:45:14', '2016-08-06 17:45:14', 1, 1, 874, 3, 1, 4, 0, 0, 0, 100),
(876, 'db0219_-_m4x5_skt_set_db0219', '44V-M70-410/001b_1_1_7', '2016-08-06 17:45:23', '2016-08-06 17:45:23', 1, 1, 868, 3, 7, 4, 0, 0, 0, 100),
(877, 'cf0195_-_igus_flange_bush_4-5_5', '44V-M70-410/001b_1_1_8', '2016-08-06 17:45:33', '2016-08-06 17:45:33', 1, 1, 868, 3, 8, 4, 0, 0, 0, 100),
(878, 'da0169_-_m3_x_3__blk__skt_set', '44V-M70-410/001b_1_1_9', '2016-08-06 17:45:42', '2016-08-06 17:45:42', 1, 1, 868, 3, 9, 4, 0, 0, 0, 100),
(879, '137510_-_dts25_fixed_world_metr', '44V-M70-410/001b_1_1_10', '2016-08-06 17:45:52', '2016-08-06 17:45:52', 1, 1, 868, 3, 10, 4, 0, 0, 0, 100),
(880, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-410/001b_1_1_11', '2016-08-06 17:46:01', '2016-08-06 17:46:01', 1, 1, 868, 3, 11, 4, 0, 0, 0, 100),
(881, '134304_-_screw_holder', '44V-M70-410/001b_1_1_12', '2016-08-06 17:46:11', '2016-08-06 17:46:11', 1, 1, 868, 3, 12, 4, 0, 0, 0, 100),
(882, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001b_1_1_13', '2016-08-06 17:46:21', '2016-08-06 17:46:21', 1, 1, 868, 3, 13, 4, 0, 0, 0, 100),
(883, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001b_1_1_14', '2016-08-06 17:46:30', '2016-08-06 17:46:30', 1, 1, 868, 3, 14, 4, 0, 0, 0, 100),
(884, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-410/001b_1_1_15', '2016-08-06 17:46:40', '2016-08-06 17:46:40', 1, 1, 868, 3, 15, 4, 0, 0, 0, 100),
(885, '137514_-_dts25_locking_plate', '44V-M70-410/001b_1_1_16', '2016-08-06 17:46:49', '2016-08-06 17:46:49', 1, 1, 868, 3, 16, 4, 0, 0, 0, 100),
(886, '137512_-_dts25_lead_screw', '44V-M70-410/001b_1_1_17', '2016-08-06 17:46:59', '2016-08-06 17:46:59', 1, 1, 868, 3, 17, 4, 0, 0, 0, 100),
(887, '44v-m70-410_ks4', '44V-M70-410/001b_2', '2016-08-06 17:47:09', '2016-08-06 17:47:09', 1, 1, 866, 3, 2, 4, 1, 1, 0, 100),
(888, '44v-m70-410_ks4_commercial', '44V-M70-410/001b_2_1', '2016-08-06 17:47:18', '2016-08-06 17:47:18', 1, 1, 887, 3, 1, 4, 1, 1, 0, 100),
(889, 'ks4m_meca6', '44V-M70-410/001b_2_1_1', '2016-08-06 17:47:28', '2016-08-06 17:47:28', 1, 1, 888, 3, 1, 4, 0, 0, 0, 100),
(890, 'ks-sprg-assy-1_km3-sprg_-_stret', '44V-M70-410/001b_2_1_2', '2016-08-06 17:47:37', '2016-08-06 17:47:37', 1, 1, 888, 3, 2, 4, 0, 0, 0, 100),
(891, 'ks4m_meca10', '44V-M70-410/001b_2_1_3', '2016-08-06 17:47:48', '2016-08-06 17:47:48', 1, 1, 888, 3, 3, 4, 0, 0, 0, 100),
(892, 'ks-sprg-assy-1_ss6s038-1-1-soli', '44V-M70-410/001b_2_1_4', '2016-08-06 17:47:58', '2016-08-06 17:47:58', 1, 1, 888, 3, 4, 4, 0, 0, 0, 100),
(893, 'ks-sprg-assy-3_km3-sprg_-_stret', '44V-M70-410/001b_2_1_5', '2016-08-06 17:48:08', '2016-08-06 17:48:08', 1, 1, 888, 3, 5, 4, 0, 0, 0, 100),
(894, 'ss8s013-1-2-solid1', '44V-M70-410/001b_2_1_6', '2016-08-06 17:48:18', '2016-08-06 17:48:18', 1, 1, 888, 3, 6, 4, 0, 0, 0, 100),
(895, 'ball3750gr100-1-solid1', '44V-M70-410/001b_2_1_7', '2016-08-06 17:48:27', '2016-08-06 17:48:27', 1, 1, 888, 3, 7, 4, 0, 0, 0, 100),
(896, 'ss8s013-1-1-solid1', '44V-M70-410/001b_2_1_8', '2016-08-06 17:48:37', '2016-08-06 17:48:37', 1, 1, 888, 3, 8, 4, 0, 0, 0, 100),
(897, '1885-001-1-solid1', '44V-M70-410/001b_2_1_9', '2016-08-06 17:48:46', '2016-08-06 17:48:46', 1, 1, 888, 3, 9, 4, 0, 0, 0, 100),
(898, 'ks4m_meca11', '44V-M70-410/001b_2_1_10', '2016-08-06 17:48:56', '2016-08-06 17:48:56', 1, 1, 888, 3, 10, 4, 0, 0, 0, 100),
(899, 'ks4m_meca5', '44V-M70-410/001b_2_1_11', '2016-08-06 17:49:06', '2016-08-06 17:49:06', 1, 1, 888, 3, 11, 4, 0, 0, 0, 100),
(900, 'all1875gr100-1-solid1', '44V-M70-410/001b_2_1_12', '2016-08-06 17:49:16', '2016-08-06 17:49:16', 1, 1, 888, 3, 12, 4, 0, 0, 0, 100),
(901, 'ks-sprg-assy-2_km3-sprg_-_stret', '44V-M70-410/001b_2_1_13', '2016-08-06 17:49:25', '2016-08-06 17:49:25', 1, 1, 888, 3, 13, 4, 0, 0, 0, 100),
(902, 'ks4m_meca12', '44V-M70-410/001b_2_1_14', '2016-08-06 17:49:35', '2016-08-06 17:49:35', 1, 1, 888, 3, 14, 4, 0, 0, 0, 100),
(903, 'ss2a006-1-2-solid1', '44V-M70-410/001b_2_1_15', '2016-08-06 17:49:44', '2016-08-06 17:49:44', 1, 1, 888, 3, 15, 4, 0, 0, 0, 100),
(904, '2783-001-2-solid1', '44V-M70-410/001b_2_1_16', '2016-08-06 17:49:54', '2016-08-06 17:49:54', 1, 1, 888, 3, 16, 4, 0, 0, 0, 100),
(905, 'ks-sprg-assy-4_km3-sprg_-_stret', '44V-M70-410/001b_2_1_17', '2016-08-06 17:50:03', '2016-08-06 17:50:03', 1, 1, 888, 3, 17, 4, 0, 0, 0, 100),
(906, '2783-001-1-solid1', '44V-M70-410/001b_2_1_18', '2016-08-06 17:50:13', '2016-08-06 17:50:13', 1, 1, 888, 3, 18, 4, 0, 0, 0, 100),
(907, 'ks4m_meca7', '44V-M70-410/001b_2_1_19', '2016-08-06 17:50:23', '2016-08-06 17:50:23', 1, 1, 888, 3, 19, 4, 0, 0, 0, 100),
(908, 'ks-sprg-assy-4_ss6s038-1-1-soli', '44V-M70-410/001b_2_1_20', '2016-08-06 17:50:33', '2016-08-06 17:50:33', 1, 1, 888, 3, 20, 4, 0, 0, 0, 100),
(909, '1885-003-1-solid1', '44V-M70-410/001b_2_1_21', '2016-08-06 17:50:42', '2016-08-06 17:50:42', 1, 1, 888, 3, 21, 4, 0, 0, 0, 100),
(910, 'ks4m_meca2n', '44V-M70-410/001b_2_1_22', '2016-08-06 17:50:52', '2016-08-06 17:50:52', 1, 1, 888, 3, 22, 4, 0, 0, 0, 100),
(911, 'ks4m_meca16', '44V-M70-410/001b_2_1_23', '2016-08-06 17:51:01', '2016-08-06 17:51:01', 1, 1, 888, 3, 23, 4, 0, 0, 0, 100),
(912, 'ks-sprg-assy-2_ss6s038-1-1-soli', '44V-M70-410/001b_2_1_24', '2016-08-06 17:51:11', '2016-08-06 17:51:11', 1, 1, 888, 3, 24, 4, 0, 0, 0, 100),
(913, 'ss2a006-1-4-solid1', '44V-M70-410/001b_2_1_25', '2016-08-06 17:51:21', '2016-08-06 17:51:21', 1, 1, 888, 3, 25, 4, 0, 0, 0, 100),
(914, 'ks4m_meca17', '44V-M70-410/001b_2_1_26', '2016-08-06 17:51:30', '2016-08-06 17:51:30', 1, 1, 888, 3, 26, 4, 0, 0, 0, 100),
(915, 'ks4m_meca15', '44V-M70-410/001b_2_1_27', '2016-08-06 17:51:40', '2016-08-06 17:51:40', 1, 1, 888, 3, 27, 4, 0, 0, 0, 100),
(916, 'ks4m_meca3n', '44V-M70-410/001b_2_1_28', '2016-08-06 17:51:49', '2016-08-06 17:51:49', 1, 1, 888, 3, 28, 4, 0, 0, 0, 100),
(917, 'ks4m_meca14', '44V-M70-410/001b_2_1_29', '2016-08-06 17:51:59', '2016-08-06 17:51:59', 1, 1, 888, 3, 29, 4, 0, 0, 0, 100),
(918, 'ks-sprg-assy-3_ss6s038-1-1-soli', '44V-M70-410/001b_2_1_30', '2016-08-06 17:52:09', '2016-08-06 17:52:09', 1, 1, 888, 3, 30, 4, 0, 0, 0, 100),
(919, 'ks4m_meca9', '44V-M70-410/001b_2_1_31', '2016-08-06 17:52:18', '2016-08-06 17:52:18', 1, 1, 888, 3, 31, 4, 0, 0, 0, 100),
(920, 'ks4m_meca4n', '44V-M70-410/001b_2_1_32', '2016-08-06 17:52:28', '2016-08-06 17:52:28', 1, 1, 888, 3, 32, 4, 0, 0, 0, 100),
(921, 'ss2a006-1-3-solid1', '44V-M70-410/001b_2_1_33', '2016-08-06 17:52:37', '2016-08-06 17:52:37', 1, 1, 888, 3, 33, 4, 0, 0, 0, 100),
(922, 'ss2a006-1-1-solid1', '44V-M70-410/001b_2_1_34', '2016-08-06 17:52:47', '2016-08-06 17:52:47', 1, 1, 888, 3, 34, 4, 0, 0, 0, 100),
(923, 'ks4m_mecan', '44V-M70-410/001b_2_1_35', '2016-08-06 17:52:57', '2016-08-06 17:52:57', 1, 1, 888, 3, 35, 4, 0, 0, 0, 100),
(924, '44v-m70-410_pf40_fma_mirror4in', '44V-M70-410/001b_3', '2016-08-06 17:53:06', '2016-08-06 17:53:06', 1, 1, 866, 3, 3, 4, 0, 1, 0, 100),
(925, '44v-m70-410_base_ks4', '44V-M70-410/102b', '2016-08-06 17:53:16', '2016-08-06 17:53:16', 1, 1, 866, 3, 4, 4, 0, 0, 0, 100),
(926, '44v-m70-420_fmb', '44V-M70-420/001', '2016-08-06 17:53:26', '2016-08-06 17:53:26', 1, 1, 1, 3, 16, 4, 0, 0, 0, 100),
(927, '44v-m70-410_ks4', '44V-M70-420/001_1', '2016-08-06 17:53:35', '2016-08-06 17:53:35', 1, 1, 926, 3, 1, 4, 1, 0, 0, 100),
(928, '44v-m70-410_ks4_commercial', '44V-M70-420/001_1_1', '2016-08-06 17:53:45', '2016-08-06 17:53:45', 1, 1, 927, 3, 1, 4, 1, 0, 0, 100),
(929, 'ks4m_meca6', '44V-M70-420/001_1_1_1', '2016-08-06 17:53:54', '2016-08-06 17:53:54', 1, 1, 928, 3, 1, 4, 0, 0, 0, 100),
(930, 'ks-sprg-assy-1_km3-sprg_-_stret', '44V-M70-420/001_1_1_2', '2016-08-06 17:54:04', '2016-08-06 17:54:04', 1, 1, 928, 3, 2, 4, 0, 0, 0, 100),
(931, 'ks4m_meca10', '44V-M70-420/001_1_1_3', '2016-08-06 17:54:13', '2016-08-06 17:54:13', 1, 1, 928, 3, 3, 4, 0, 0, 0, 100),
(932, 'ks-sprg-assy-1_ss6s038-1-1-soli', '44V-M70-420/001_1_1_4', '2016-08-06 17:54:23', '2016-08-06 17:54:23', 1, 1, 928, 3, 4, 4, 0, 0, 0, 100),
(933, 'ks-sprg-assy-3_km3-sprg_-_stret', '44V-M70-420/001_1_1_5', '2016-08-06 17:54:32', '2016-08-06 17:54:32', 1, 1, 928, 3, 5, 4, 0, 0, 0, 100),
(934, 'ss8s013-1-2-solid1', '44V-M70-420/001_1_1_6', '2016-08-06 17:54:42', '2016-08-06 17:54:42', 1, 1, 928, 3, 6, 4, 0, 0, 0, 100),
(935, 'ball3750gr100-1-solid1', '44V-M70-420/001_1_1_7', '2016-08-06 17:54:52', '2016-08-06 17:54:52', 1, 1, 928, 3, 7, 4, 0, 0, 0, 100),
(936, 'ss8s013-1-1-solid1', '44V-M70-420/001_1_1_8', '2016-08-06 17:55:01', '2016-08-06 17:55:01', 1, 1, 928, 3, 8, 4, 0, 0, 0, 100),
(937, '1885-001-1-solid1', '44V-M70-420/001_1_1_9', '2016-08-06 17:55:11', '2016-08-06 17:55:11', 1, 1, 928, 3, 9, 4, 0, 0, 0, 100),
(938, 'ks4m_meca11', '44V-M70-420/001_1_1_10', '2016-08-06 17:55:20', '2016-08-06 17:55:20', 1, 1, 928, 3, 10, 4, 0, 0, 0, 100),
(939, 'ks4m_meca5', '44V-M70-420/001_1_1_11', '2016-08-06 17:55:30', '2016-08-06 17:55:30', 1, 1, 928, 3, 11, 4, 0, 0, 0, 100),
(940, 'all1875gr100-1-solid1', '44V-M70-420/001_1_1_12', '2016-08-06 17:55:40', '2016-08-06 17:55:40', 1, 1, 928, 3, 12, 4, 0, 0, 0, 100),
(941, 'ks-sprg-assy-2_km3-sprg_-_stret', '44V-M70-420/001_1_1_13', '2016-08-06 17:55:49', '2016-08-06 17:55:49', 1, 1, 928, 3, 13, 4, 0, 0, 0, 100),
(942, 'ks4m_meca12', '44V-M70-420/001_1_1_14', '2016-08-06 17:55:59', '2016-08-06 17:55:59', 1, 1, 928, 3, 14, 4, 0, 0, 0, 100),
(943, 'ss2a006-1-2-solid1', '44V-M70-420/001_1_1_15', '2016-08-06 17:56:08', '2016-08-06 17:56:08', 1, 1, 928, 3, 15, 4, 0, 0, 0, 100),
(944, '2783-001-2-solid1', '44V-M70-420/001_1_1_16', '2016-08-06 17:56:18', '2016-08-06 17:56:18', 1, 1, 928, 3, 16, 4, 0, 0, 0, 100),
(945, 'ks-sprg-assy-4_km3-sprg_-_stret', '44V-M70-420/001_1_1_17', '2016-08-06 17:56:27', '2016-08-06 17:56:27', 1, 1, 928, 3, 17, 4, 0, 0, 0, 100),
(946, '2783-001-1-solid1', '44V-M70-420/001_1_1_18', '2016-08-06 17:56:37', '2016-08-06 17:56:37', 1, 1, 928, 3, 18, 4, 0, 0, 0, 100),
(947, 'ks4m_meca7', '44V-M70-420/001_1_1_19', '2016-08-06 17:56:47', '2016-08-06 17:56:47', 1, 1, 928, 3, 19, 4, 0, 0, 0, 100),
(948, 'ks-sprg-assy-4_ss6s038-1-1-soli', '44V-M70-420/001_1_1_20', '2016-08-06 17:56:56', '2016-08-06 17:56:56', 1, 1, 928, 3, 20, 4, 0, 0, 0, 100),
(949, '1885-003-1-solid1', '44V-M70-420/001_1_1_21', '2016-08-06 17:57:06', '2016-08-06 17:57:06', 1, 1, 928, 3, 21, 4, 0, 0, 0, 100),
(950, 'ks4m_meca2n', '44V-M70-420/001_1_1_22', '2016-08-06 17:57:15', '2016-08-06 17:57:15', 1, 1, 928, 3, 22, 4, 0, 0, 0, 100),
(951, 'ks4m_meca16', '44V-M70-420/001_1_1_23', '2016-08-06 17:57:25', '2016-08-06 17:57:25', 1, 1, 928, 3, 23, 4, 0, 0, 0, 100),
(952, 'ks-sprg-assy-2_ss6s038-1-1-soli', '44V-M70-420/001_1_1_24', '2016-08-06 17:57:34', '2016-08-06 17:57:34', 1, 1, 928, 3, 24, 4, 0, 0, 0, 100),
(953, 'ss2a006-1-4-solid1', '44V-M70-420/001_1_1_25', '2016-08-06 17:57:44', '2016-08-06 17:57:44', 1, 1, 928, 3, 25, 4, 0, 0, 0, 100),
(954, 'ks4m_meca17', '44V-M70-420/001_1_1_26', '2016-08-06 17:57:53', '2016-08-06 17:57:53', 1, 1, 928, 3, 26, 4, 0, 0, 0, 100),
(955, 'ks4m_meca15', '44V-M70-420/001_1_1_27', '2016-08-06 17:58:03', '2016-08-06 17:58:03', 1, 1, 928, 3, 27, 4, 0, 0, 0, 100),
(956, 'ks4m_meca3n', '44V-M70-420/001_1_1_28', '2016-08-06 17:58:13', '2016-08-06 17:58:13', 1, 1, 928, 3, 28, 4, 0, 0, 0, 100),
(957, 'ks4m_meca14', '44V-M70-420/001_1_1_29', '2016-08-06 17:58:22', '2016-08-06 17:58:22', 1, 1, 928, 3, 29, 4, 0, 0, 0, 100),
(958, 'ks-sprg-assy-3_ss6s038-1-1-soli', '44V-M70-420/001_1_1_30', '2016-08-06 17:58:32', '2016-08-06 17:58:32', 1, 1, 928, 3, 30, 4, 0, 0, 0, 100),
(959, 'ks4m_meca9', '44V-M70-420/001_1_1_31', '2016-08-06 17:58:41', '2016-08-06 17:58:41', 1, 1, 928, 3, 31, 4, 0, 0, 0, 100),
(960, 'ks4m_meca4n', '44V-M70-420/001_1_1_32', '2016-08-06 17:58:51', '2016-08-06 17:58:51', 1, 1, 928, 3, 32, 4, 0, 0, 0, 100),
(961, 'ss2a006-1-3-solid1', '44V-M70-420/001_1_1_33', '2016-08-06 17:59:00', '2016-08-06 17:59:00', 1, 1, 928, 3, 33, 4, 0, 0, 0, 100),
(962, 'ss2a006-1-1-solid1', '44V-M70-420/001_1_1_34', '2016-08-06 17:59:10', '2016-08-06 17:59:10', 1, 1, 928, 3, 34, 4, 0, 0, 0, 100),
(963, 'ks4m_mecan', '44V-M70-420/001_1_1_35', '2016-08-06 17:59:19', '2016-08-06 17:59:19', 1, 1, 928, 3, 35, 4, 0, 0, 0, 100),
(964, 'dts25_m-step', '44V-M70-420/001_2', '2016-08-06 17:59:29', '2016-08-06 17:59:29', 1, 1, 926, 3, 2, 4, 1, 1, 0, 100),
(965, 'dts25_m', '44V-M70-420/001_2_1', '2016-08-06 17:59:38', '2016-08-06 17:59:38', 1, 1, 964, 3, 1, 4, 1, 1, 0, 100),
(966, 'cf0195_-_igus_flange_bush_4-5_5', '44V-M70-420/001_2_1_1', '2016-08-06 17:59:48', '2016-08-06 17:59:48', 1, 1, 965, 3, 1, 4, 0, 0, 0, 100),
(967, '137513_-_dts25_knob_drw', '44V-M70-420/001_2_1_2', '2016-08-06 17:59:57', '2016-08-06 17:59:57', 1, 1, 965, 3, 2, 4, 0, 0, 0, 100),
(968, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-420/001_2_1_3', '2016-08-06 18:00:07', '2016-08-06 18:00:07', 1, 1, 965, 3, 3, 4, 0, 0, 0, 100),
(969, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-420/001_2_1_4', '2016-08-06 18:00:17', '2016-08-06 18:00:17', 1, 1, 965, 3, 4, 4, 0, 0, 0, 100),
(970, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-420/001_2_1_5', '2016-08-06 18:00:26', '2016-08-06 18:00:26', 1, 1, 965, 3, 5, 4, 0, 0, 0, 100),
(971, '137604_-_dts25_moving_world_met', '44V-M70-420/001_2_1_6', '2016-08-06 18:00:36', '2016-08-06 18:00:36', 1, 1, 965, 3, 6, 4, 1, 1, 0, 100),
(972, '137511_-_dts25_moving_world_met', '44V-M70-420/001_2_1_6_1', '2016-08-06 18:00:46', '2016-08-06 18:00:46', 1, 1, 971, 3, 1, 4, 0, 0, 0, 100),
(973, 'db0219_-_m4x5_skt_set_db0219', '44V-M70-420/001_2_1_7', '2016-08-06 18:00:55', '2016-08-06 18:00:55', 1, 1, 965, 3, 7, 4, 0, 0, 0, 100),
(974, 'cf0195_-_igus_flange_bush_4-5_5', '44V-M70-420/001_2_1_8', '2016-08-06 18:01:05', '2016-08-06 18:01:05', 1, 1, 965, 3, 8, 4, 0, 0, 0, 100),
(975, 'da0169_-_m3_x_3__blk__skt_set', '44V-M70-420/001_2_1_9', '2016-08-06 18:01:14', '2016-08-06 18:01:14', 1, 1, 965, 3, 9, 4, 0, 0, 0, 100),
(976, '137510_-_dts25_fixed_world_metr', '44V-M70-420/001_2_1_10', '2016-08-06 18:01:24', '2016-08-06 18:01:24', 1, 1, 965, 3, 10, 4, 0, 0, 0, 100),
(977, 'db0415_-_m2_5_x_4mm_skt_btn_bzp', '44V-M70-420/001_2_1_11', '2016-08-06 18:01:34', '2016-08-06 18:01:34', 1, 1, 965, 3, 11, 4, 0, 0, 0, 100),
(978, '134304_-_screw_holder', '44V-M70-420/001_2_1_12', '2016-08-06 18:01:43', '2016-08-06 18:01:43', 1, 1, 965, 3, 12, 4, 0, 0, 0, 100),
(979, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-420/001_2_1_13', '2016-08-06 18:01:53', '2016-08-06 18:01:53', 1, 1, 965, 3, 13, 4, 0, 0, 0, 100),
(980, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-420/001_2_1_14', '2016-08-06 18:02:03', '2016-08-06 18:02:03', 1, 1, 965, 3, 14, 4, 0, 0, 0, 100),
(981, 'db0208_-_m3_x_6_hex_dog_point', '44V-M70-420/001_2_1_15', '2016-08-06 18:02:12', '2016-08-06 18:02:12', 1, 1, 965, 3, 15, 4, 0, 0, 0, 100),
(982, '137514_-_dts25_locking_plate', '44V-M70-420/001_2_1_16', '2016-08-06 18:02:22', '2016-08-06 18:02:22', 1, 1, 965, 3, 16, 4, 0, 0, 0, 100),
(983, '137512_-_dts25_lead_screw', '44V-M70-420/001_2_1_17', '2016-08-06 18:02:32', '2016-08-06 18:02:32', 1, 1, 965, 3, 17, 4, 0, 0, 0, 100),
(984, '44v-m70-420_pf_40_fmb_mirror4in', '44V-M70-420/001_3', '2016-08-06 18:02:41', '2016-08-06 18:02:41', 1, 1, 926, 3, 3, 4, 0, 1, 0, 100),
(985, '44v-m70-420_base_ks4', '44V-M70-420/102', '2016-08-06 18:02:51', '2016-08-06 18:02:51', 1, 1, 926, 3, 4, 4, 0, 0, 0, 100),
(986, 'polarimetro_visible', '44V-M70-430/100', '2016-08-06 18:03:00', '2016-08-06 18:03:00', 1, 1, 1, 3, 17, 4, 0, 0, 0, 100),
(987, 'polarimetro_visible', '44V-M70-430/100_1', '2016-08-06 18:03:10', '2016-08-06 18:03:10', 1, 1, 986, 3, 1, 4, 0, 1, 0, 100),
(988, 'polarimetro_visible', '44V-M70-430/100_2', '2016-08-06 18:03:19', '2016-08-06 18:03:19', 1, 1, 986, 3, 2, 4, 0, 1, 0, 100),
(989, 'guia_desplazamiento_horizontal', '44V-M70-430/100_3', '2016-08-06 18:03:29', '2016-08-06 18:03:29', 1, 1, 986, 3, 3, 4, 0, 1, 0, 100),
(990, 'rail_guia_skf_400mm', '44V-M70-430/100_4', '2016-08-06 18:03:39', '2016-08-06 18:03:39', 1, 1, 986, 3, 4, 4, 1, 0, 0, 100),
(991, 'llmhs12tar2t1-400p1w1e_6', '44V-M70-430/100_4_1', '2016-08-06 18:03:48', '2016-08-06 18:03:48', 1, 1, 990, 3, 1, 4, 1, 0, 0, 100),
(992, '_llmh12tar2-400e_6_', '44V-M70-430/100_4_1_1', '2016-08-06 18:03:58', '2016-08-06 18:03:58', 1, 1, 991, 3, 1, 4, 0, 0, 0, 100),
(993, '_llmh12tar2s', '44V-M70-430/100_4_1_2', '2016-08-06 18:04:08', '2016-08-06 18:04:08', 1, 1, 991, 3, 2, 4, 0, 0, 0, 100),
(994, '_llmh12tar2s', '44V-M70-430/100_4_1_3', '2016-08-06 18:04:17', '2016-08-06 18:04:17', 1, 1, 991, 3, 3, 4, 0, 0, 0, 100),
(995, '_llmh12tar2s', '44V-M70-430/100_4_1_4', '2016-08-06 18:04:27', '2016-08-06 18:04:27', 1, 1, 991, 3, 4, 4, 0, 0, 0, 100),
(996, '_llmhc12tar_', '44V-M70-430/100_4_1_5', '2016-08-06 18:04:37', '2016-08-06 18:04:37', 1, 1, 991, 3, 5, 4, 0, 0, 0, 100),
(997, '_llmh12tar2s', '44V-M70-430/100_4_1_6', '2016-08-06 18:04:46', '2016-08-06 18:04:46', 1, 1, 991, 3, 6, 4, 0, 0, 0, 100),
(998, '_pl12h', '44V-M70-430/100_4_1_7', '2016-08-06 18:04:56', '2016-08-06 18:04:56', 1, 1, 991, 3, 7, 4, 0, 0, 0, 100),
(999, '_llmhc12tar_', '44V-M70-430/100_4_1_8', '2016-08-06 18:05:05', '2016-08-06 18:05:05', 1, 1, 991, 3, 8, 4, 0, 0, 0, 100),
(1000, '_pl12h', '44V-M70-430/100_4_1_9', '2016-08-06 18:05:15', '2016-08-06 18:05:15', 1, 1, 991, 3, 9, 4, 0, 0, 0, 100),
(1001, 'rail_guia_skf_400mm', '44V-M70-430/100_5', '2016-08-06 18:05:24', '2016-08-06 18:05:24', 1, 1, 986, 3, 5, 4, 1, 0, 0, 100),
(1002, 'llmhs12tar2t1-400p1w1e_6', '44V-M70-430/100_5_1', '2016-08-06 18:05:34', '2016-08-06 18:05:34', 1, 1, 1001, 3, 1, 4, 1, 0, 0, 100),
(1003, '_llmh12tar2-400e_6_', '44V-M70-430/100_5_1_1', '2016-08-06 18:05:44', '2016-08-06 18:05:44', 1, 1, 1002, 3, 1, 4, 0, 0, 0, 100),
(1004, '_llmh12tar2s', '44V-M70-430/100_5_1_2', '2016-08-06 18:05:53', '2016-08-06 18:05:53', 1, 1, 1002, 3, 2, 4, 0, 0, 0, 100),
(1005, '_llmh12tar2s', '44V-M70-430/100_5_1_3', '2016-08-06 18:06:03', '2016-08-06 18:06:03', 1, 1, 1002, 3, 3, 4, 0, 0, 0, 100),
(1006, '_llmh12tar2s', '44V-M70-430/100_5_1_4', '2016-08-06 18:06:13', '2016-08-06 18:06:13', 1, 1, 1002, 3, 4, 4, 0, 0, 0, 100),
(1007, '_llmhc12tar_', '44V-M70-430/100_5_1_5', '2016-08-06 18:06:22', '2016-08-06 18:06:22', 1, 1, 1002, 3, 5, 4, 0, 0, 0, 100),
(1008, '_llmh12tar2s', '44V-M70-430/100_5_1_6', '2016-08-06 18:06:32', '2016-08-06 18:06:32', 1, 1, 1002, 3, 6, 4, 0, 0, 0, 100),
(1009, '_pl12h', '44V-M70-430/100_5_1_7', '2016-08-06 18:06:41', '2016-08-06 18:06:41', 1, 1, 1002, 3, 7, 4, 0, 0, 0, 100),
(1010, '_llmhc12tar_', '44V-M70-430/100_5_1_8', '2016-08-06 18:06:51', '2016-08-06 18:06:51', 1, 1, 1002, 3, 8, 4, 0, 0, 0, 100),
(1011, '_pl12h', '44V-M70-430/100_5_1_9', '2016-08-06 18:07:00', '2016-08-06 18:07:00', 1, 1, 1002, 3, 9, 4, 0, 0, 0, 100),
(1012, 'soporte_guia_despl_hor', '44V-M70-430/100_6', '2016-08-06 18:07:10', '2016-08-06 18:07:10', 1, 1, 986, 3, 6, 4, 0, 1, 0, 100),
(1013, 'soporte_fijo_resortes', '44V-M70-430/100_7', '2016-08-06 18:07:20', '2016-08-06 18:07:20', 1, 1, 986, 3, 7, 4, 0, 1, 0, 100),
(1014, 'soprote_mov_desp_vert', '44V-M70-430/100_8', '2016-08-06 18:07:29', '2016-08-06 18:07:29', 1, 1, 986, 3, 8, 4, 0, 1, 0, 100),
(1015, 'soporte_fijo_resortes', '44V-M70-430/100_9', '2016-08-06 18:07:39', '2016-08-06 18:07:39', 1, 1, 986, 3, 9, 4, 0, 1, 0, 100),
(1016, 'soporte_guia_desp_vert', '44V-M70-430/100_10', '2016-08-06 18:07:48', '2016-08-06 18:07:48', 1, 1, 986, 3, 10, 4, 0, 1, 0, 100),
(1017, 'soporte_guia_desp_vert', '44V-M70-430/100_11', '2016-08-06 18:07:58', '2016-08-06 18:07:58', 1, 1, 986, 3, 11, 4, 0, 1, 0, 100),
(1018, 'regulador_reductor_focal', '44V M10 200', '2016-08-06 18:08:08', '2016-08-06 18:08:08', 1, 1, 986, 3, 12, 4, 1, 1, 0, 100),
(1019, 'carcasa_polarimetro', '44VM10111', '2016-08-06 18:08:17', '2016-08-06 18:08:17', 1, 1, 1018, 3, 1, 4, 0, 0, 0, 100),
(1020, 'base_caja_electronica', '44VM10112', '2016-08-06 18:08:27', '2016-08-06 18:08:27', 1, 1, 1018, 3, 2, 4, 0, 0, 0, 100),
(1021, 'anillo_reductor_focal', '44VM10115', '2016-08-06 18:08:36', '2016-08-06 18:08:36', 1, 1, 1018, 3, 3, 4, 0, 0, 0, 100),
(1022, 'pestana_giro', '44VM10205', '2016-08-06 18:08:46', '2016-08-06 18:08:46', 1, 1, 1018, 3, 4, 4, 0, 0, 0, 100),
(1023, 'protector_lentes', '44VM10206', '2016-08-06 18:08:56', '2016-08-06 18:08:56', 1, 1, 1018, 3, 5, 4, 0, 0, 0, 100),
(1024, 'regulador_reductor_focal', '44V M10 200b', '2016-08-06 18:09:05', '2016-08-06 18:09:05', 1, 1, 986, 3, 13, 4, 1, 1, 0, 100),
(1025, 'carcasa_polarimetro', '44VM10111b', '2016-08-06 18:09:15', '2016-08-06 18:09:15', 1, 1, 1024, 3, 1, 4, 0, 0, 0, 100),
(1026, 'base_caja_electronica', '44VM10112b', '2016-08-06 18:09:25', '2016-08-06 18:09:25', 1, 1, 1024, 3, 2, 4, 0, 0, 0, 100),
(1027, 'anillo_reductor_focal', '44VM10115b', '2016-08-06 18:09:34', '2016-08-06 18:09:34', 1, 1, 1024, 3, 3, 4, 0, 0, 0, 100),
(1028, 'pestana_giro', '44VM10205b', '2016-08-06 18:09:44', '2016-08-06 18:09:44', 1, 1, 1024, 3, 4, 4, 0, 0, 0, 100),
(1029, 'protector_lentes', '44VM10206b', '2016-08-06 18:09:53', '2016-08-06 18:09:53', 1, 1, 1024, 3, 5, 4, 0, 0, 0, 100),
(1030, '44v_m70_430_interf_polarimetro', '44V-M70-430/101', '2016-08-06 18:10:03', '2016-08-06 18:10:03', 1, 1, 986, 3, 14, 4, 0, 0, 0, 100),
(1031, '44v_m70_430_interf_polarimetro', '44V-M70-430/101b', '2016-08-06 18:10:12', '2016-08-06 18:10:12', 1, 1, 986, 3, 15, 4, 0, 1, 0, 100),
(1032, '44v_m70_430_interf_patines', '44V-M70-430/102', '2016-08-06 18:10:22', '2016-08-06 18:10:22', 1, 1, 986, 3, 16, 4, 0, 0, 0, 100),
(1033, '44v_m70_510_fm1_mount', '44V-M70-510/100', '2016-08-06 18:10:32', '2016-08-06 18:10:32', 1, 1, 1, 3, 18, 4, 0, 0, 0, 100),
(1034, 'newport_605-4', '44V-M70-510/100_1', '2016-08-06 18:10:41', '2016-08-06 18:10:41', 1, 1, 1033, 3, 1, 4, 0, 1, 0, 100),
(1035, 'newport_605-4', '44V-M70-510/100_2', '2016-08-06 18:10:51', '2016-08-06 18:10:51', 1, 1, 1033, 3, 2, 4, 0, 1, 0, 100),
(1036, '44v_m70_510_switch_limit', '44V-M70-510/100_3', '2016-08-06 18:11:00', '2016-08-06 18:11:00', 1, 1, 1033, 3, 3, 4, 0, 1, 0, 100),
(1037, '44v_m70_510_switch_limit', '44V-M70-510/100_4', '2016-08-06 18:11:10', '2016-08-06 18:11:10', 1, 1, 1033, 3, 4, 4, 0, 1, 0, 100),
(1038, '44v_m70_510_newport_45grados', '44V-M70-510/100_5', '2016-08-06 18:11:19', '2016-08-06 18:11:19', 1, 1, 1033, 3, 5, 4, 0, 1, 0, 100),
(1039, '44v-m70-410_pf40_fma_mirror4in', '44V-M70-510/100_6', '2016-08-06 21:22:49', '2016-08-06 21:22:49', 1, 1, 1033, 3, 6, 4, 0, 1, 0, 100),
(1040, '44v_m70_510_newport_45grados', '44V-M70-510/100_7', '2016-08-06 21:22:59', '2016-08-06 21:22:59', 1, 1, 1033, 3, 7, 4, 0, 1, 0, 100),
(1041, '44v-m70-410_pf40_fma_mirror4in', '44V-M70-510/100_8', '2016-08-06 21:23:09', '2016-08-06 21:23:09', 1, 1, 1033, 3, 8, 4, 0, 1, 0, 100),
(1042, 'mini_rail_guia_skf', '44V-M70-510/100_9', '2016-08-06 21:23:20', '2016-08-06 21:23:20', 1, 1, 1033, 3, 9, 4, 1, 0, 0, 100),
(1043, 'llmhs9tar2t1-150p1w1e_6', '44V-M70-510/100_9_1', '2016-08-06 21:23:30', '2016-08-06 21:23:30', 1, 1, 1042, 3, 1, 4, 1, 0, 0, 100),
(1044, '_pl9h', '44V-M70-510/100_9_1_1', '2016-08-06 21:23:40', '2016-08-06 21:23:40', 1, 1, 1043, 3, 1, 4, 0, 0, 0, 100),
(1045, '_pl9h', '44V-M70-510/100_9_1_2', '2016-08-06 21:23:50', '2016-08-06 21:23:50', 1, 1, 1043, 3, 2, 4, 0, 0, 0, 100),
(1046, '_llmhc9tar_', '44V-M70-510/100_9_1_3', '2016-08-06 21:23:59', '2016-08-06 21:23:59', 1, 1, 1043, 3, 3, 4, 0, 0, 0, 100),
(1047, '_llmh9tar2-150e_6_', '44V-M70-510/100_9_1_4', '2016-08-06 21:24:10', '2016-08-06 21:24:10', 1, 1, 1043, 3, 4, 4, 0, 0, 0, 100),
(1048, '_llmh9tar2s', '44V-M70-510/100_9_1_5', '2016-08-06 21:24:20', '2016-08-06 21:24:20', 1, 1, 1043, 3, 5, 4, 0, 0, 0, 100),
(1049, '_llmh9tar2s', '44V-M70-510/100_9_1_6', '2016-08-06 21:24:30', '2016-08-06 21:24:30', 1, 1, 1043, 3, 6, 4, 0, 0, 0, 100),
(1050, '_llmh9tar2s', '44V-M70-510/100_9_1_7', '2016-08-06 21:24:39', '2016-08-06 21:24:39', 1, 1, 1043, 3, 7, 4, 0, 0, 0, 100),
(1051, '_llmh9tar2s', '44V-M70-510/100_9_1_8', '2016-08-06 21:24:49', '2016-08-06 21:24:49', 1, 1, 1043, 3, 8, 4, 0, 0, 0, 100),
(1052, '_llmhc9tar_', '44V-M70-510/100_9_1_9', '2016-08-06 21:24:59', '2016-08-06 21:24:59', 1, 1, 1043, 3, 9, 4, 0, 0, 0, 100),
(1053, 'mini_rail_guia_skf', '44V-M70-510/100_10', '2016-08-06 21:25:08', '2016-08-06 21:25:08', 1, 1, 1033, 3, 10, 4, 1, 0, 0, 100),
(1054, 'llmhs9tar2t1-150p1w1e_6', '44V-M70-510/100_10_1', '2016-08-06 21:25:18', '2016-08-06 21:25:18', 1, 1, 1053, 3, 1, 4, 1, 0, 0, 100),
(1055, '_pl9h', '44V-M70-510/100_10_1_1', '2016-08-06 21:25:27', '2016-08-06 21:25:27', 1, 1, 1054, 3, 1, 4, 0, 0, 0, 100),
(1056, '_pl9h', '44V-M70-510/100_10_1_2', '2016-08-06 21:25:37', '2016-08-06 21:25:37', 1, 1, 1054, 3, 2, 4, 0, 0, 0, 100),
(1057, '_llmhc9tar_', '44V-M70-510/100_10_1_3', '2016-08-06 21:25:46', '2016-08-06 21:25:46', 1, 1, 1054, 3, 3, 4, 0, 0, 0, 100),
(1058, '_llmh9tar2-150e_6_', '44V-M70-510/100_10_1_4', '2016-08-06 21:25:56', '2016-08-06 21:25:56', 1, 1, 1054, 3, 4, 4, 0, 0, 0, 100),
(1059, '_llmh9tar2s', '44V-M70-510/100_10_1_5', '2016-08-06 21:26:06', '2016-08-06 21:26:06', 1, 1, 1054, 3, 5, 4, 0, 0, 0, 100),
(1060, '_llmh9tar2s', '44V-M70-510/100_10_1_6', '2016-08-06 21:26:16', '2016-08-06 21:26:16', 1, 1, 1054, 3, 6, 4, 0, 0, 0, 100),
(1061, '_llmh9tar2s', '44V-M70-510/100_10_1_7', '2016-08-06 21:26:26', '2016-08-06 21:26:26', 1, 1, 1054, 3, 7, 4, 0, 0, 0, 100),
(1062, '_llmh9tar2s', '44V-M70-510/100_10_1_8', '2016-08-06 21:26:36', '2016-08-06 21:26:36', 1, 1, 1054, 3, 8, 4, 0, 0, 0, 100),
(1063, '_llmhc9tar_', '44V-M70-510/100_10_1_9', '2016-08-06 21:26:46', '2016-08-06 21:26:46', 1, 1, 1054, 3, 9, 4, 0, 0, 0, 100),
(1064, '44v_m70_520_mecanismo_elevacion', '44V-M70-510/100_11', '2016-08-06 21:26:57', '2016-08-06 21:26:57', 1, 1, 1033, 3, 11, 4, 0, 1, 0, 100),
(1065, '44v_m70_520_palanca', '44V-M70-510/100_11_1', '2016-08-06 21:27:07', '2016-08-06 21:27:07', 1, 1, 1064, 3, 1, 4, 0, 1, 0, 100),
(1066, '44v_m70_520_casquillo', '44V-M70-510/100_11_2', '2016-08-06 21:27:17', '2016-08-06 21:27:17', 1, 1, 1064, 3, 2, 4, 0, 1, 0, 100),
(1067, '44v_m70_510_interfase_tornillos', '44V-M70-510/108', '2016-08-06 21:27:28', '2016-08-06 21:27:28', 1, 1, 1064, 3, 3, 4, 0, 1, 0, 100),
(1068, '44v_m70_510_interface_bp', '44V-M70-510/100_12', '2016-08-06 21:27:39', '2016-08-06 21:27:39', 1, 1, 1033, 3, 12, 4, 0, 0, 0, 100),
(1069, '44v_m70_510_switch_position', '44V-M70-510', '2016-08-06 21:27:49', '2016-08-06 21:27:49', 1, 1, 1033, 3, 13, 4, 0, 1, 0, 100),
(1070, '44v_m70_510_switch_position', '44V-M70-510b', '2016-08-06 21:28:00', '2016-08-06 21:28:00', 1, 1, 1033, 3, 14, 4, 0, 1, 0, 100),
(1071, '44v_m70_510_fm1_fixed_frame', '44V-M70-510/102', '2016-08-06 21:28:10', '2016-08-06 21:28:10', 1, 1, 1033, 3, 15, 4, 0, 0, 0, 100),
(1072, '44v_m70_510_interface_bp1', '44V-M70-510/103', '2016-08-06 21:28:20', '2016-08-06 21:28:20', 1, 1, 1033, 3, 16, 4, 0, 0, 0, 100),
(1073, '44v_m70_510_fm1_mobile_frame', '44V-M70-510/104', '2016-08-06 21:28:30', '2016-08-06 21:28:30', 1, 1, 1033, 3, 17, 4, 0, 0, 0, 100),
(1074, '44v_m70_510_fm1_mobile_frame', '44V-M70-510/104b', '2016-08-06 21:28:40', '2016-08-06 21:28:40', 1, 1, 1033, 3, 18, 4, 0, 1, 0, 100),
(1075, '44v_m70_510_interface_bp2', '44V-M70-510/105', '2016-08-06 21:28:49', '2016-08-06 21:28:49', 1, 1, 1033, 3, 19, 4, 0, 0, 0, 100),
(1076, 'iso2338-4m6x10-st', '44V-M70-001/000_2_4', '2016-08-06 21:28:59', '2016-08-06 21:28:59', 1, 1, 2, 3, 8, 4, 0, 1, 0, 100),
(1077, 'iso2338-3m6x10-st', '44V-M70-001/000_2_5', '2016-08-06 21:29:09', '2016-08-06 21:29:09', 1, 1, 2, 3, 9, 4, 0, 1, 0, 100),
(1078, 'iso2338-3m6x10-st', '44V-M70-001/000_2_6', '2016-08-06 21:29:18', '2016-08-06 21:29:18', 1, 1, 2, 3, 10, 4, 0, 1, 0, 100),
(1079, 'iso2338-3m6x10-st', '44V-M70-001/000_2_7', '2016-08-06 21:29:28', '2016-08-06 21:29:28', 1, 1, 2, 3, 11, 4, 0, 1, 0, 100),
(1080, 'iso2338-10m6x20-st', '44V-M70-001/000_2_8', '2016-08-06 21:29:37', '2016-08-06 21:29:37', 1, 1, 2, 3, 12, 4, 0, 1, 0, 100),
(1081, 'iso2338-4m6x10-st', '44V-M70-001/000_2_9', '2016-08-06 21:29:47', '2016-08-06 21:29:47', 1, 1, 2, 3, 13, 4, 0, 1, 0, 100),
(1082, 'iso2338-3m6x10-st', '44V-M70-001/000_2_10', '2016-08-06 21:29:57', '2016-08-06 21:29:57', 1, 1, 2, 3, 14, 4, 0, 1, 0, 100),
(1083, 'iso2338-6m6x12-st', '44V-M70-001/000_2_11', '2016-08-06 21:30:06', '2016-08-06 21:30:06', 1, 1, 2, 3, 15, 4, 0, 1, 0, 100),
(1084, '44v_m70_120_elevador', '44V-M70-120/109', '2016-08-06 21:30:16', '2016-08-06 21:30:16', 1, 1, 11, 3, 10, 4, 0, 0, 0, 100),
(1085, '44v_m70_120_sheetmetal', '44V-M70-120/110', '2016-08-06 21:30:26', '2016-08-06 21:30:26', 1, 1, 11, 3, 11, 4, 0, 0, 0, 100),
(1086, '44v_m70_120_elevador', '44V-M70-120/109a', '2016-08-06 21:30:35', '2016-08-06 21:30:35', 1, 1, 21, 3, 10, 4, 0, 0, 0, 100),
(1087, '44v_m70_120_sheetmetal', '44V-M70-120/110b', '2016-08-06 21:30:45', '2016-08-06 21:30:45', 1, 1, 21, 3, 11, 4, 0, 0, 0, 100),
(1088, '44v_m70_120_elevador', '44V-M70-120/109c', '2016-08-06 21:30:55', '2016-08-06 21:30:55', 1, 1, 31, 3, 10, 4, 0, 0, 0, 100),
(1089, '44v_m70_120_sheetmetal', '44V-M70-120/110d', '2016-08-06 21:31:04', '2016-08-06 21:31:04', 1, 1, 31, 3, 11, 4, 0, 0, 0, 100),
(1090, 'iso2338-8m6x16-st', '44V-M70-320/001_9', '2016-08-06 21:31:14', '2016-08-25 12:53:37', 1, 1, 775, 3, 5, 4, 1, 1, 0, 100),
(1091, 'iso2338-8m6x16-st', '44V-M70-320/001_10', '2016-08-06 21:31:23', '2016-08-25 12:53:41', 1, 1, 775, 3, 6, 4, 1, 1, 0, 100),
(1092, 'din912-m8x40-8_8', '44V-M70-320/001_11', '2016-08-06 21:31:33', '2016-08-25 12:53:45', 1, 1, 775, 3, 7, 4, 1, 1, 0, 100),
(1093, '44v_m70_320_bp_interface', '44V-M70-320/100', '2016-08-06 21:31:42', '2016-08-25 12:53:49', 1, 1, 775, 3, 8, 4, 1, 0, 0, 100),
(1094, '44v_m70_320_ajuste_y', '44V-M70-320/101', '2016-08-06 21:31:52', '2016-08-25 12:53:53', 1, 1, 775, 3, 9, 4, 1, 0, 0, 100),
(1095, '44v_m70_320_ifu_baseplate_iac', '44V-M70-320/103', '2016-08-06 21:32:02', '2016-08-25 10:46:15', 1, 1, 775, 3, 10, 4, 0, 0, 0, 100),
(1096, 'tuerca_sombrerete_din1587_m4', '44V-M70-320/103_', '2016-08-06 21:32:11', '2016-08-25 12:55:19', 1, 1, 1095, 3, 1, 4, 1, 0, 0, 100),
(1097, 'tuerca_sombrerete_din1587_m4', '44V-M70-320/103_1', '2016-08-06 21:32:21', '2016-08-25 12:55:24', 1, 1, 1095, 3, 2, 4, 1, 0, 0, 100),
(1098, 'tuerca_sombrerete_din1587_m4', '44V-M70-320/103_2', '2016-08-06 21:32:30', '2016-08-25 12:55:27', 1, 1, 1095, 3, 3, 4, 1, 0, 0, 100),
(1099, 'tuerca_sombrerete_din1587_m4', '44V-M70-320/103_3', '2016-08-06 21:32:40', '2016-08-25 12:55:31', 1, 1, 1095, 3, 4, 4, 1, 0, 0, 100),
(1100, '44v_m70_320_envelope', '44V-M70-320/104', '2016-08-06 21:32:50', '2016-08-25 12:55:34', 1, 1, 1095, 3, 5, 4, 1, 0, 0, 100),
(1101, '44v_m70_320_envelope_guides', '44V-M70-320/105', '2016-08-06 21:32:59', '2016-08-25 12:55:37', 1, 1, 1095, 3, 6, 4, 1, 0, 0, 100),
(1102, '44v_m70_320_envelope_guides', '44V-M70-320/105a', '2016-08-06 21:33:09', '2016-08-25 12:55:41', 1, 1, 1095, 3, 7, 4, 1, 0, 0, 100),
(1103, '44v_m70_320_envelope_guides', '44V-M70-320/105b', '2016-08-06 21:33:19', '2016-08-25 12:55:44', 1, 1, 1095, 3, 8, 4, 1, 0, 0, 100),
(1104, '44v_m70_320_envelope_guides', '44V-M70-320/105c', '2016-08-06 21:33:28', '2016-08-25 12:55:48', 1, 1, 1095, 3, 9, 4, 1, 0, 0, 100),
(1105, '44v_m70_320_ifu_base_plate_gris', '44V-M70-320/106', '2016-08-06 21:33:38', '2016-08-25 12:55:52', 1, 1, 1095, 3, 10, 4, 1, 0, 0, 100),
(1106, '44v_m70_320_mask_interface', '44V-M70-320/107', '2016-08-06 21:33:48', '2016-08-25 12:55:56', 1, 1, 1095, 3, 11, 4, 1, 0, 0, 100),
(1107, '44v_m70_320_adjustment_system', '44V-M70-320/120', '2016-08-06 21:33:57', '2016-08-25 10:46:15', 1, 1, 775, 3, 11, 4, 0, 0, 0, 100),
(1108, 'din912-m8x60-8_8', '44V-M70-320/120_1', '2016-08-06 21:34:07', '2016-08-25 12:56:06', 1, 1, 1107, 3, 1, 4, 1, 0, 0, 100),
(1109, '44v_m70_320screw_m8', '44V-M70-320/120_2', '2016-08-06 21:34:17', '2016-08-25 12:56:10', 1, 1, 1107, 3, 2, 4, 1, 0, 0, 100),
(1110, '44v_m70_320_adjustment_cone', '44V-M70-320/121', '2016-08-06 21:34:26', '2016-08-25 12:56:14', 1, 1, 1107, 3, 3, 4, 1, 0, 0, 100),
(1111, '44v_m70_320_wedge', '44V-M70-320/123', '2016-08-06 21:34:36', '2016-08-25 12:56:17', 1, 1, 1107, 3, 4, 4, 1, 0, 0, 100),
(1112, '44v_m70_320_adjustment_system', '44V-M70-320/120a', '2016-08-06 21:34:45', '2016-08-25 10:46:15', 1, 1, 775, 3, 12, 4, 0, 0, 0, 100),
(1113, 'din912-m8x60-8_8', '44V-M70-320/120a_1', '2016-08-06 21:34:55', '2016-08-25 12:56:21', 1, 1, 1112, 3, 1, 4, 1, 0, 0, 100),
(1114, '44v_m70_320screw_m8', '44V-M70-320/120a_2', '2016-08-06 21:35:04', '2016-08-25 12:56:25', 1, 1, 1112, 3, 2, 4, 1, 0, 0, 100),
(1115, '44v_m70_320_adjustment_cone', '44V-M70-320/121a', '2016-08-06 21:35:14', '2016-08-25 12:56:28', 1, 1, 1112, 3, 3, 4, 1, 0, 0, 100),
(1116, '44v_m70_320_wedge', '44V-M70-320/123a', '2016-08-06 21:35:24', '2016-08-25 12:56:31', 1, 1, 1112, 3, 4, 4, 1, 0, 0, 100),
(1117, '44v_m70_320_adjustment_system', '44V-M70-320/120b', '2016-08-06 21:35:33', '2016-08-25 10:46:15', 1, 1, 775, 3, 13, 4, 0, 0, 0, 100),
(1118, 'din912-m8x60-8_8', '44V-M70-320/120b_1', '2016-08-06 21:35:43', '2016-08-25 12:54:32', 1, 1, 1117, 3, 1, 4, 1, 0, 0, 100),
(1119, '44v_m70_320screw_m8', '44V-M70-320/120b_2', '2016-08-06 21:35:52', '2016-08-25 12:54:36', 1, 1, 1117, 3, 2, 4, 1, 0, 0, 100),
(1120, '44v_m70_320_adjustment_cone', '44V-M70-320/121b', '2016-08-06 21:36:02', '2016-08-25 12:54:42', 1, 1, 1117, 3, 3, 4, 1, 0, 0, 100),
(1121, '44v_m70_320_wedge', '44V-M70-320/123b', '2016-08-06 21:36:12', '2016-08-25 12:54:46', 1, 1, 1117, 3, 4, 4, 1, 0, 0, 100),
(1122, '44v_m70_320_lock01', '44V-M70-320/125', '2016-08-06 21:36:21', '2016-08-25 12:53:57', 1, 1, 775, 3, 14, 4, 1, 0, 0, 100),
(1123, '44v_m70_330_rs2_kmcp_m', '44V-M70-330/001_3', '2016-08-25 08:15:03', '2016-08-25 08:19:46', 1, 1, 784, 3, 3, 4, 0, 0, 0, 100),
(1124, '13231-e0w', '44V-M70-330/001_3_1', '2016-08-25 08:23:24', '2016-08-25 08:23:55', 1, 1, 1123, 3, 1, 4, 0, 0, 0, 100),
(1125, '13231-001-1-solid1', '44V-M70-330/001_3_1_1', '2016-08-25 08:25:18', '2016-08-25 08:25:18', 1, 1, 1124, 3, 1, 4, 1, 0, 0, 100),
(1126, 'as568a-113-bn__stretched_-1-sol', '44V-M70-330/001_3_1_2', '2016-08-25 08:26:46', '2016-08-25 08:30:03', 1, 1, 1124, 3, 2, 4, 1, 0, 0, 100),
(1127, 'n4ms07-1-2-solid1', '44V-M70-330/001_3_1_3', '2016-08-25 08:28:04', '2016-08-25 08:28:04', 1, 1, 1124, 3, 3, 4, 1, 0, 0, 100),
(1128, '44v_m70_330_rs2_edmundoptics', '44V-M70-330/001_4', '2016-08-25 08:32:51', '2016-08-25 08:35:58', 1, 1, 784, 3, 4, 4, 1, 0, 0, 100),
(1129, '44v_m70_330_rs2_link', '44V-M70-330/001_5', '2016-08-25 08:35:27', '2016-08-25 08:35:27', 1, 1, 784, 3, 5, 4, 1, 0, 0, 100),
(1130, '44v_m70_320_ball_joint_preload', '44V-M70-320/140', '2016-08-25 08:40:52', '2016-08-25 10:46:15', 1, 1, 775, 3, 15, 4, 0, 0, 0, 100),
(1131, '44v_m70_320_lower_frame', '44V-M70-320/141', '2016-08-25 08:43:13', '2016-08-25 08:43:13', 1, 1, 1130, 3, 1, 4, 1, 0, 0, 100),
(1132, '44v_m70_320_uuper_frame', '44V-M70-320/142', '2016-08-25 08:44:44', '2016-08-25 08:44:44', 1, 1, 1130, 3, 2, 4, 1, 0, 0, 100),
(1133, 'belleville_spring_b0625-022-s', '44V-M70-320/140_1', '2016-08-25 08:46:05', '2016-08-25 08:46:05', 1, 1, 1130, 3, 3, 4, 1, 0, 0, 100),
(1134, 'belleville_spring_b0625-022-s', '44V-M70-320/140_1b', '2016-08-25 08:46:24', '2016-08-25 08:46:24', 1, 1, 1130, 3, 4, 4, 1, 0, 0, 100),
(1135, 'belleville_spring_b0625-022-s', '44V-M70-320/140_1c', '2016-08-25 08:46:37', '2016-08-25 08:46:37', 1, 1, 1130, 3, 5, 4, 1, 0, 0, 100),
(1136, 'belleville_spring_b0625-022-s', '44V-M70-320/140_1d', '2016-08-25 08:46:51', '2016-08-25 08:46:51', 1, 1, 1130, 3, 6, 4, 1, 0, 0, 100),
(1137, 'belleville_spring_b0625-022-s', '44V-M70-320/140_1e', '2016-08-25 08:46:59', '2016-08-25 08:46:59', 1, 1, 1130, 3, 7, 4, 1, 0, 0, 100),
(1138, 'belleville_spring_b0625-022-s', '44V-M70-320/140_1f', '2016-08-25 08:47:10', '2016-08-25 08:47:10', 1, 1, 1130, 3, 8, 4, 1, 0, 0, 100),
(1139, 'tuerca_iso_4034-m8-5', '44V-M70-320/140_2', '2016-08-25 08:51:05', '2016-08-25 08:51:05', 1, 1, 1130, 3, 9, 4, 1, 1, 0, 100),
(1140, 'inafag_ge10-aw', '44V-M70-320/140_3', '2016-08-25 08:52:41', '2016-08-25 08:53:38', 1, 1, 1130, 3, 10, 4, 1, 0, 0, 100),
(1141, 'inafag_ge10-aw', '44V-M70-320/140_3b', '2016-08-25 08:54:13', '2016-08-25 08:54:13', 1, 1, 1130, 3, 11, 4, 1, 0, 0, 100),
(1142, 'ge_10_we_b', '44V-M70-320/140_3_1', '2016-08-25 08:56:01', '2016-08-25 08:56:01', 1, 1, 1140, 3, 1, 4, 1, 0, 0, 100),
(1143, 'ge_10_we_a', '44V-M70-320/140_3_2', '2016-08-25 08:56:21', '2016-08-25 08:56:21', 1, 1, 1140, 3, 2, 4, 1, 0, 0, 100),
(1144, 'ge_10_we_b', '44V-M70-320/140_3b_1', '2016-08-25 08:58:14', '2016-08-25 08:58:14', 1, 1, 1141, 3, 1, 4, 1, 0, 0, 100),
(1145, 'ge_10_we_a', '44V-M70-320/140_3b_2', '2016-08-25 08:58:52', '2016-08-25 08:58:52', 1, 1, 1141, 3, 2, 4, 1, 0, 0, 100),
(1146, '44v_m70_320_convex_interface', '44V-M70-320/108', '2016-08-25 09:11:35', '2016-08-25 10:46:15', 1, 1, 775, 3, 16, 4, 1, 0, 0, 100),
(1147, 'm8_din912_70mm', '44V-M70-320/140_4', '2016-08-25 10:30:54', '2016-08-25 10:30:54', 1, 1, 1130, 3, 12, 4, 1, 0, 0, 100);
INSERT INTO `systems` (`id`, `name`, `abbrev`, `created_at`, `updated_at`, `project_id`, `root_id`, `parent_id`, `system_type_id`, `position`, `layer_id`, `atomic`, `acquired`, `virtual`, `acq_priority`) VALUES
(1148, '44v_m70_320_concave_sphere_conf', '44V-M70-320/a110', '2016-08-25 10:33:13', '2016-08-25 10:46:15', 1, 1, 775, 3, 17, 4, 0, 0, 0, 100),
(1149, '44v_m70_320_convex_sphere_conf', '44V-M70-320/a109', '2016-08-25 12:28:23', '2016-08-25 12:53:13', 1, 1, 775, 3, 18, 4, 1, 0, 0, 100),
(1150, '44v_m70_320_convex_sphere', '44V-M70-320/109', '2016-08-25 12:29:32', '2016-08-25 12:29:32', 1, 1, 1149, 3, 1, 4, 1, 0, 0, 100),
(1151, '44v_m70_320_convex_sphere_tool', '44V-M70-320/t109', '2016-08-25 12:31:46', '2016-08-25 12:31:46', 1, 1, 1149, 3, 2, 4, 1, 0, 0, 100),
(1152, '44v_m70_320_concave_sphere_tool', '44V-M70-320/t110', '2016-08-25 12:51:32', '2016-08-25 12:51:32', 1, 1, 1148, 3, 2, 4, 1, 0, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `crypted_password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `administrator` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT 'active',
  `key_timestamp` datetime DEFAULT NULL,
  `developer` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `crypted_password`, `salt`, `remember_token`, `remember_token_expires_at`, `name`, `email_address`, `administrator`, `created_at`, `updated_at`, `state`, `key_timestamp`, `developer`) VALUES
(1, '1421410fd15dbe498256be7324ad221957619856', 'c25004cede1fa2846ba9fbdeadfc562f507bcbaf', '327e2200f1839b846f79cceed16450c6477864b1', '2016-09-08 07:21:02', 'EST Admin', 'estweb@iac.es', 1, '2016-08-06 15:06:03', '2016-08-25 07:21:02', 'active', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xcos_boxes`
--

CREATE TABLE IF NOT EXISTS `xcos_boxes` (
`id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acquisition_statuses`
--
ALTER TABLE `acquisition_statuses`
 ADD PRIMARY KEY (`id`), ADD KEY `index_acquisition_statuses_on_acquisition_workflow_id` (`acquisition_workflow_id`);

--
-- Indexes for table `acquisition_workflows`
--
ALTER TABLE `acquisition_workflows`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `function_link_types`
--
ALTER TABLE `function_link_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `function_links`
--
ALTER TABLE `function_links`
 ADD PRIMARY KEY (`id`), ADD KEY `index_function_links_on_function_dest_id` (`function_dest_id`), ADD KEY `index_function_links_on_function_link_type_id` (`function_link_type_id`), ADD KEY `index_function_links_on_function_src_id` (`function_src_id`);

--
-- Indexes for table `function_types`
--
ALTER TABLE `function_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
 ADD PRIMARY KEY (`id`), ADD KEY `index_functions_on_function_type_id` (`function_type_id`), ADD KEY `index_functions_on_layer_id` (`layer_id`), ADD KEY `index_functions_on_parent_id` (`parent_id`), ADD KEY `index_functions_on_project_id` (`project_id`), ADD KEY `index_functions_on_root_id` (`root_id`);

--
-- Indexes for table `issue_rms`
--
ALTER TABLE `issue_rms`
 ADD PRIMARY KEY (`id`), ADD KEY `index_issue_rms_on_project_rm_id` (`project_rm_id`), ADD KEY `index_issue_rms_on_system_id` (`system_id`);

--
-- Indexes for table `layers`
--
ALTER TABLE `layers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_machines`
--
ALTER TABLE `mech_machines`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_materials`
--
ALTER TABLE `mech_materials`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_optical_surfaces`
--
ALTER TABLE `mech_optical_surfaces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_system_fab_machines`
--
ALTER TABLE `mech_system_fab_machines`
 ADD PRIMARY KEY (`id`), ADD KEY `index_mech_system_fab_machines_on_mech_machine_id` (`mech_machine_id`), ADD KEY `index_mech_system_fab_machines_on_mech_system_id` (`mech_system_id`);

--
-- Indexes for table `mech_system_types`
--
ALTER TABLE `mech_system_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_systems`
--
ALTER TABLE `mech_systems`
 ADD PRIMARY KEY (`id`), ADD KEY `index_mech_systems_on_acquisition_status_id` (`acquisition_status_id`), ADD KEY `index_mech_systems_on_acquisition_workflow_id` (`acquisition_workflow_id`), ADD KEY `index_mech_systems_on_mech_material_id` (`mech_material_id`), ADD KEY `index_mech_systems_on_mech_optical_surface_id` (`mech_optical_surface_id`), ADD KEY `index_mech_systems_on_mech_system_type_id` (`mech_system_type_id`), ADD KEY `index_mech_systems_on_system_id` (`system_id`);

--
-- Indexes for table `project_memberships`
--
ALTER TABLE `project_memberships`
 ADD PRIMARY KEY (`id`), ADD KEY `index_project_memberships_on_project_id` (`project_id`), ADD KEY `index_project_memberships_on_role_id` (`role_id`), ADD KEY `index_project_memberships_on_user_id` (`user_id`);

--
-- Indexes for table `project_rms`
--
ALTER TABLE `project_rms`
 ADD PRIMARY KEY (`id`), ADD KEY `index_project_rms_on_project_id` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
 ADD PRIMARY KEY (`id`), ADD KEY `index_projects_on_owner_id` (`owner_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
 ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `system_link_types`
--
ALTER TABLE `system_link_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_links`
--
ALTER TABLE `system_links`
 ADD PRIMARY KEY (`id`), ADD KEY `index_system_links_on_system_dest_id` (`system_dest_id`), ADD KEY `index_system_links_on_system_link_type_id` (`system_link_type_id`), ADD KEY `index_system_links_on_system_src_id` (`system_src_id`);

--
-- Indexes for table `system_types`
--
ALTER TABLE `system_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
 ADD PRIMARY KEY (`id`), ADD KEY `index_systems_on_layer_id` (`layer_id`), ADD KEY `index_systems_on_parent_id` (`parent_id`), ADD KEY `index_systems_on_project_id` (`project_id`), ADD KEY `index_systems_on_root_id` (`root_id`), ADD KEY `index_systems_on_system_type_id` (`system_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `index_users_on_state` (`state`);

--
-- Indexes for table `xcos_boxes`
--
ALTER TABLE `xcos_boxes`
 ADD PRIMARY KEY (`id`), ADD KEY `index_xcos_boxes_on_system_id` (`system_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acquisition_statuses`
--
ALTER TABLE `acquisition_statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `acquisition_workflows`
--
ALTER TABLE `acquisition_workflows`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `function_link_types`
--
ALTER TABLE `function_link_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `function_links`
--
ALTER TABLE `function_links`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `function_types`
--
ALTER TABLE `function_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issue_rms`
--
ALTER TABLE `issue_rms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `layers`
--
ALTER TABLE `layers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mech_machines`
--
ALTER TABLE `mech_machines`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mech_materials`
--
ALTER TABLE `mech_materials`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mech_optical_surfaces`
--
ALTER TABLE `mech_optical_surfaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mech_system_fab_machines`
--
ALTER TABLE `mech_system_fab_machines`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `mech_system_types`
--
ALTER TABLE `mech_system_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mech_systems`
--
ALTER TABLE `mech_systems`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1152;
--
-- AUTO_INCREMENT for table `project_memberships`
--
ALTER TABLE `project_memberships`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project_rms`
--
ALTER TABLE `project_rms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `system_link_types`
--
ALTER TABLE `system_link_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_links`
--
ALTER TABLE `system_links`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_types`
--
ALTER TABLE `system_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1153;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xcos_boxes`
--
ALTER TABLE `xcos_boxes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
