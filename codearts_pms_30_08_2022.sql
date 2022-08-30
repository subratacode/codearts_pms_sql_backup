-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 05:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codearts_pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `camps_project_assigned_user_info`
--

CREATE TABLE `camps_project_assigned_user_info` (
  `project_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `camps_project_assigned_user_info`
--

INSERT INTO `camps_project_assigned_user_info` (`project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 3, '2022-08-11 11:34:50', '2022-08-11 11:34:50'),
(2, 4, '2022-08-11 11:34:50', '2022-08-11 11:34:50'),
(2, 5, '2022-08-11 11:34:50', '2022-08-11 11:34:50'),
(2, 7, '2022-08-11 11:34:50', '2022-08-11 11:34:50'),
(3, 3, '2022-08-11 11:35:13', '2022-08-26 07:40:36'),
(3, 3, '2022-08-11 11:35:13', '2022-08-26 07:40:36'),
(3, 3, '2022-08-11 11:35:13', '2022-08-26 07:40:36'),
(5, 14, '2022-08-11 03:42:44', '2022-08-26 07:24:47'),
(5, 14, '2022-08-11 03:42:44', '2022-08-26 07:24:47'),
(6, 3, '2022-08-11 04:58:11', '2022-08-26 07:34:33'),
(6, 3, '2022-08-11 04:58:11', '2022-08-26 07:34:33'),
(6, 3, '2022-08-11 04:58:11', '2022-08-26 07:34:33'),
(7, 3, '2022-08-12 04:27:29', '2022-08-12 04:27:29'),
(7, 4, '2022-08-12 04:27:29', '2022-08-12 04:27:29'),
(7, 8, '2022-08-12 04:27:29', '2022-08-12 04:27:29'),
(8, 6, '2022-08-12 05:12:36', '2022-08-26 06:59:33'),
(8, 6, '2022-08-12 05:12:36', '2022-08-26 06:59:33'),
(8, 6, '2022-08-12 05:12:36', '2022-08-26 06:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `capms_admin_individual_leaves`
--

CREATE TABLE `capms_admin_individual_leaves` (
  `id` int(4) NOT NULL,
  `leave_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `reason_of_leave` varchar(255) NOT NULL,
  `type_of_leave` varchar(255) NOT NULL,
  `leave_status` varchar(255) NOT NULL,
  `leave_date` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `capms_admin_leave_applications`
--

CREATE TABLE `capms_admin_leave_applications` (
  `leave_ID` int(4) NOT NULL,
  `user_empid` int(4) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_dept` varchar(255) NOT NULL,
  `reason_of_leave` varchar(255) NOT NULL,
  `leave_start_date` varchar(255) NOT NULL,
  `leave_end_date` varchar(255) NOT NULL,
  `no_of_leave_days` varchar(255) NOT NULL,
  `type_of_leave` varchar(255) NOT NULL,
  `leave_message` varchar(255) NOT NULL,
  `leave_application_feedback` varchar(255) NOT NULL,
  `leave_status` varchar(255) NOT NULL,
  `remaining_pls` int(4) NOT NULL,
  `created_at` varchar(255) CHARACTER SET latin1 NOT NULL,
  `updated_at` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_admin_leave_applications`
--

INSERT INTO `capms_admin_leave_applications` (`leave_ID`, `user_empid`, `user_fullname`, `user_dept`, `reason_of_leave`, `leave_start_date`, `leave_end_date`, `no_of_leave_days`, `type_of_leave`, `leave_message`, `leave_application_feedback`, `leave_status`, `remaining_pls`, `created_at`, `updated_at`) VALUES
(1, 8, 'Subhankar Paul', 'Senior-Backend Developer', 'Study Leave', '27-07-2022', '31-07-2022', '4', 'Full Day', 'ads', '', 'Pending', 18, '27-07-2022 7:06 PM', '27-07-2022 7:06 PM');

-- --------------------------------------------------------

--
-- Table structure for table `capms_admin_users`
--

CREATE TABLE `capms_admin_users` (
  `id` int(4) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_department` varchar(255) NOT NULL,
  `user_empid` varchar(50) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_contact` varchar(20) NOT NULL,
  `user_joining_date` varchar(15) NOT NULL,
  `user_featured_image` varchar(255) NOT NULL,
  `user_salary` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_designation` varchar(50) NOT NULL,
  `user_dob` varchar(20) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `reports_to_uid` varchar(25) NOT NULL,
  `user_passport_number` varchar(12) NOT NULL,
  `user_adhar_number` varchar(15) NOT NULL,
  `user_voter_id` varchar(15) NOT NULL,
  `user_pan_number` varchar(10) NOT NULL,
  `user_nationality` varchar(50) NOT NULL,
  `user_religion` varchar(30) NOT NULL,
  `user_marital_status` varchar(20) NOT NULL,
  `user_employment_of_spouse` varchar(10) NOT NULL,
  `user_children_number` varchar(50) NOT NULL,
  `emergency_primary_name` varchar(255) NOT NULL,
  `emergency_primary_relation` varchar(20) NOT NULL,
  `emergency_primary_contact` varchar(20) NOT NULL,
  `emergency_secondary_name` varchar(255) NOT NULL,
  `emergency_secondary_relation` varchar(20) NOT NULL,
  `emergency_secondary_contact` varchar(20) NOT NULL,
  `user_bank_name` varchar(100) NOT NULL,
  `user_bank_ifsc_code` varchar(30) NOT NULL,
  `user_bank_account_no` varchar(50) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capms_admin_users`
--

INSERT INTO `capms_admin_users` (`id`, `user_type`, `user_fullname`, `user_department`, `user_empid`, `user_email`, `user_contact`, `user_joining_date`, `user_featured_image`, `user_salary`, `user_password`, `user_designation`, `user_dob`, `user_address`, `user_gender`, `reports_to_uid`, `user_passport_number`, `user_adhar_number`, `user_voter_id`, `user_pan_number`, `user_nationality`, `user_religion`, `user_marital_status`, `user_employment_of_spouse`, `user_children_number`, `emergency_primary_name`, `emergency_primary_relation`, `emergency_primary_contact`, `emergency_secondary_name`, `emergency_secondary_relation`, `emergency_secondary_contact`, `user_bank_name`, `user_bank_ifsc_code`, `user_bank_account_no`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'John Doe', '', 'john-doe-4231', 'john_doe@gmail.com', '9876543210', '2022-01-03', '1647846364-john_doe.jpg', '10000.00', '21232f297a57a5a743894a0e4a801fc3', 'Junior-Designer', '1996-07-17', '123 ABC, Demo Address', 'Male', '8', '5446', '7678668', '989797', '-009899890', 'indian', 'hindu', 'Single', 'No', '0', 'Shourya', 'Me', '8001745212', 'Shourya', 'Me', '9104438925', 'PNB', 'PNB00965', '9033125672', '2022-02-25 04:38:23', '2022-08-17 02:17:54'),
(4, 'admin', 'Axel Rose', '', 'axel-rose-3079', 'axel_rose@gmail.com', '9785462130', '2022-01-03', '1657868022-download.png', '9500.00', '21232f297a57a5a743894a0e4a801fc3', 'Senior-Designer', '2021-07-08', 'demo address in kolkata', 'Male', 'aniket-das-9977', '1234567890', '1234567890', '12345', '54321', 'Indian', 'Hindu', 'Single', 'No', '0', 'Guns and rose', 'father', '9721364102', 'shlash', 'mother', '7845140121', 'State Bank of India', 'ISBN00078', '1234567890', '2022-02-26 12:05:09', '2022-07-15 12:57:34'),
(5, 'hr', 'Britney Adams', '', 'britney-adams-8321', 'britney_adams@gmail.com', '9632587410', '2022-01-10', '1648202248-britney_adams.png', '10500.00', '21232f297a57a5a743894a0e4a801fc3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-03-25 03:27:28', '2022-05-24 11:12:55'),
(6, 'employee', 'Martin Fonsy', '', 'martin-fonsy-5693', 'martin_fonsy@gmail.com', '9512347806', '2022-03-15', '1649148047-martin_fonsy.png', '8500.00', '21232f297a57a5a743894a0e4a801fc3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-04-05 02:10:47', '2022-04-05 02:10:47'),
(7, 'employee', 'Jackson Holder', '', 'jackson-holder-6639', 'jackson_holder@gmail.com', '9871230546', '2022-02-21', '1649148220-jackson_holder.png', '9000.00', '21232f297a57a5a743894a0e4a801fc3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-04-05 02:13:40', '2022-04-05 02:13:40'),
(8, 'employee', 'Subhankar Paul', '', 'subhankar-paul-2496', 'codearts.subhankar@gmail.com', '9674291776', '2021-06-01', '1651472077-subhankar_paul.JPG', '10000.00', '6c15128164d3ba3f10e642f16f031388', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 11:44:37', '2022-05-02 11:50:17'),
(9, 'employee', 'Dipan Das', '', 'dipan-das-7619', 'dipan.codearts@gmail.com', '8296747440', '1995-02-22', '1651472134-1646375260646.JPEG', '', '52899eeec83d813844272230873e34b5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 11:45:34', '2022-05-02 11:45:34'),
(10, 'hr', 'Aniket Das', '', 'aniket-das-9977', 'hraniket.codearts@gmail.com', '7044246756', '1998-07-03', '1651472400-1649842249496.jpg', '', '5dcb7eccdf8842db00008a2db6b5218e', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 11:50:00', '2022-05-02 11:50:00'),
(11, 'employee', 'Pritam Sen', '', 'pritam-sen-5289', 'pritam.codearts@gmail.com', '6289570039', '1998-07-14', '1651472934-Screenshot_1.png', '20,000', '9e2b6183f135f2d401931bc9159e0d73', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 11:58:54', '2022-05-02 11:58:54'),
(12, 'employee', 'Swagata Bose', '', 'swagata-bose-3537', 'swagata.codearts@gmail.com', '8961219180', '1995-06-19', '1651473044-IMG_20220205_124048_823.webp', '', '177da57035b03c2eb2cbe9b872348d15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 12:00:44', '2022-05-02 12:00:44'),
(13, 'employee', 'Anakshi Dhar', '', 'anakshi-dhar-5844', 'anakshi.codearts@gmail.com', '8420332725', '1990-04-09', '1651473192-Anakshi Dhar.png', '8500', 'ecada7a82947803b5f624c9a86f8b8f6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 12:03:12', '2022-05-02 12:03:12'),
(14, 'employee', 'Rahul Yadav', '', 'rahul-yadav-6500', 'rahul.codearts@gmail.com', '9143116017', '1986-12-19', '1651473647-IMG-20220103-WA0002.jpg', '', '7b7f71bff78951c020e9c647a32bb839', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 12:10:47', '2022-05-02 12:10:47'),
(15, 'employee', 'Ajoy Biswas', '', 'ajoy-biswas-1163', 'ajay.codearts@gmail.com', '6289000843', '2022-05-02', '1651473652-1646374712102.JPEG', '20000', 'a08ee45ef214dc905e59bfcc4c263565', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-02 12:10:52', '2022-05-02 12:10:52'),
(16, '', 'Saraswata Tripathi', '', 'saraswata-tripathi-6566', 'saraswat.codearts@gmail.com', '9734261014', '2021-12-06', '1652786338-papai.jpg', '8000', '42257268860ba671cd9361fb97d83357', 'Junior-Backend Developer', '2022-05-10', 'demo address, india,earth', 'Male', 'dipan-das-7619', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-17 04:48:58', '2022-05-26 12:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `capms_department_info`
--

CREATE TABLE `capms_department_info` (
  `dept_id` int(4) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_department_info`
--

INSERT INTO `capms_department_info` (`dept_id`, `dept_name`) VALUES
(1, 'frontend'),
(2, 'backend'),
(3, 'design'),
(4, 'seo'),
(7, 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `capms_login_information`
--

CREATE TABLE `capms_login_information` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `login_date` varchar(255) NOT NULL,
  `login_time` varchar(255) NOT NULL,
  `logout_time` varchar(255) NOT NULL,
  `lunch_break_start` varchar(255) NOT NULL,
  `lunch_break_end` varchar(255) NOT NULL,
  `evening_break_start` varchar(255) NOT NULL,
  `evening_break_end` varchar(255) NOT NULL,
  `working_hours` varchar(255) NOT NULL,
  `break_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capms_login_information`
--

INSERT INTO `capms_login_information` (`id`, `user_id`, `login_date`, `login_time`, `logout_time`, `lunch_break_start`, `lunch_break_end`, `evening_break_start`, `evening_break_end`, `working_hours`, `break_duration`) VALUES
(1, 4, '02-03-2022', '05-53-46', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(2, 4, '03-03-2022', '03-29-04', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(3, 3, '03-03-2022', '03-29-10', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(4, 4, '08-03-2022', '04-04-16', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(5, 3, '08-03-2022', '04-04-40', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(6, 4, '09-03-2022', '01-57-04', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(7, 3, '09-03-2022', '04-35-30', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(8, 3, '21-03-2022', '11-57-36', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(9, 3, '25-03-2022', '11-51-02', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(10, 4, '25-03-2022', '02-45-02', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(11, 5, '25-03-2022', '04-16-53', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(12, 3, '26-03-2022', '12-46-33', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(13, 5, '26-03-2022', '12-46-40', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(14, 6, '05-04-2022', '02-10-54', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(15, 7, '05-04-2022', '02-13-47', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(16, 5, '05-04-2022', '02-18-16', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(17, 5, '08-04-2022', '11-12-32', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(18, 5, '12-04-2022', '12-50-24', '03-39-08', '0000-00-00 00:00:00', '', '', '', '', ''),
(19, 5, '13-04-2022', '11-14-23', '17-41-57', '0000-00-00 00:00:00', '', '', '', '', ''),
(20, 7, '13-04-2022', '05-53-50', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(21, 5, '14-04-2022', '11-50-23', '15-59-18', '0000-00-00 00:00:00', '15-58-23', '', '', '', ''),
(22, 7, '14-04-2022', '11-50-30', '', '0000-00-00 00:00:00', '15-29-08', '', '', '', ''),
(23, 5, '18-04-2022', '12-46-31', '', '0000-00-00 00:00:00', '13:15 PM', '', '', '', ''),
(24, 7, '18-04-2022', '12-46-46', '', '0000-00-00 00:00:00', '13:14 PM', '', '', '', ''),
(25, 8, '02-05-2022', '11-44-44', '12-23-01', '0000-00-00 00:00:00', '12:16 PM', '', '', '', ''),
(26, 9, '02-05-2022', '11-45-46', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(27, 10, '02-05-2022', '11-50-08', '11-55-27', '0000-00-00 00:00:00', '', '', '', '', ''),
(28, 5, '02-05-2022', '11-55-56', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(29, 11, '02-05-2022', '11-59-00', '12-07-48', '0000-00-00 00:00:00', '', '', '', '', ''),
(30, 12, '02-05-2022', '12-01-04', '12-10-06', '0000-00-00 00:00:00', '', '', '', '', ''),
(31, 13, '02-05-2022', '12-04-14', '12-07-55', '0000-00-00 00:00:00', '', '', '', '', ''),
(32, 14, '02-05-2022', '12-11-00', '12-11-10', '0000-00-00 00:00:00', '12:17 PM', '', '', '', ''),
(33, 15, '02-05-2022', '12-11-12', '12-19-52', '0000-00-00 00:00:00', '', '', '', '', ''),
(34, 11, '04-05-2022', '10-19-20', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(35, 12, '04-05-2022', '02-44-20', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(36, 11, '05-05-2022', '10-23-31', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(37, 11, '06-05-2022', '10-28-35', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(38, 11, '09-05-2022', '11-05-14', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(39, 16, '17-05-2022', '04-49-08', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(40, 7, '18-05-2022', '03-36-57', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(41, 16, '18-05-2022', '03-53-13', '18-56-17', '0000-00-00 00:00:00', '', '', '', '', ''),
(42, 3, '18-05-2022', '04-45-05', '18-37-17', '0000-00-00 00:00:00', '', '', '', '', ''),
(43, 16, '21-05-2022', '11-33-45', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(44, 5, '24-05-2022', '06-34-54', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(45, 16, '26-05-2022', '12-56-34', '12-56-39', '0000-00-00 00:00:00', '', '', '', '', ''),
(46, 17, '26-05-2022', '12-58-13', '13-03-07', '0000-00-00 00:00:00', '', '', '', '', ''),
(47, 9, '26-05-2022', '05-25-46', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(48, 8, '28-05-2022', '03-30-53', '15-31-10', '0000-00-00 00:00:00', '', '', '', '', ''),
(49, 3, '16-06-2022', '10-46-45', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(50, 3, '24-06-2022', '05-48-14', '22-21-25', '0000-00-00 00:00:00', '', '', '', '', ''),
(51, 5, '24-06-2022', '10-21-31', '22-21-49', '0000-00-00 00:00:00', '', '', '', '', ''),
(52, 6, '24-06-2022', '10-21-56', '', '0000-00-00 00:00:00', '22:38 PM', '', '', '', ''),
(53, 6, '25-06-2022', '10-57-36', '12-22-49', '0000-00-00 00:00:00', '12:23 PM', '12:24 PM', '12:24 PM', '', ''),
(54, 6, '28-06-2022', '17:49 PM', '', '0000-00-00 00:00:00', '17:56 PM', '17:58 PM', '17:59 PM', '', ''),
(55, 7, '28-06-2022', '6:04 PM', '18-07-17', '0000-00-00 00:00:00', '', '', '', '', ''),
(56, 4, '28-06-2022', '6:07 PM', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(57, 6, '29-06-2022', '1:11 PM', '13-12-12', '0000-00-00 00:00:00', '13:11 PM', '13:11 PM', '13:11 PM', '', ''),
(58, 3, '29-06-2022', '1:12 PM', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(59, 6, '05-07-2022', '12:05 PM', '', '1:39 PM', '1:40 PM', '1:43 PM', '1:44 PM', '', ''),
(60, 3, '05-07-2022', '13:59 PM', '', '', '', '', '', '', ''),
(61, 4, '05-07-2022', '3:00 PM', '15-43-19', '', '', '', '', '', ''),
(62, 6, '07-07-2022', '11:15 AM', '', '', '', '', '', '', ''),
(63, 4, '09-07-2022', '1:27 PM', '', '', '', '', '', '', ''),
(64, 6, '12-07-2022', '10:41 AM', '12-46-04', '', '', '', '', '', ''),
(65, 6, '13-07-2022', '10:27 AM', '', '', '', '', '', '', ''),
(66, 6, '18-07-2022', '11:27 AM', '11-27-23', '', '', '', '', '', ''),
(67, 8, '18-07-2022', '1:17 PM', '', '', '', '', '', '', ''),
(68, 8, '20-07-2022', '10:35 AM', '', '', '', '', '', '', ''),
(69, 8, '22-07-2022', '12:25 PM', '', '', '', '', '', '', ''),
(70, 8, '23-07-2022', '12:27 PM', '', '', '', '', '', '', ''),
(71, 8, '26-07-2022', '11:12 AM', '', '', '', '', '', '', ''),
(72, 8, '27-07-2022', '3:31 PM', '', '', '', '', '', '', ''),
(73, 3, '16-08-2022', '12:53 PM', '', '', '', '', '', '', ''),
(74, 6, '16-08-2022', '4:26 PM', '', '', '', '', '', '', ''),
(75, 3, '17-08-2022', '10:49 AM', '', '', '', '', '', '', ''),
(76, 3, '23-08-2022', '8:27 AM', '', '', '', '', '', '', ''),
(77, 3, '24-08-2022', '3:11 PM', '', '', '', '', '', '', ''),
(78, 3, '25-08-2022', '10:15 AM', '', '', '', '', '', '', ''),
(79, 5, '25-08-2022', '10:18 AM', '', '', '', '', '', '', ''),
(80, 3, '26-08-2022', '9:01 AM', '', '', '', '', '', '', ''),
(81, 5, '26-08-2022', '3:56 PM', '', '', '', '', '', '', ''),
(82, 3, '27-08-2022', '9:54 AM', '', '', '', '', '', '', ''),
(83, 3, '29-08-2022', '11:51 AM', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `capms_notice_info`
--

CREATE TABLE `capms_notice_info` (
  `notice_id` int(4) NOT NULL,
  `notice_subject` varchar(100) NOT NULL,
  `notice_body` varchar(255) NOT NULL,
  `notice_file_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_notice_info`
--

INSERT INTO `capms_notice_info` (`notice_id`, `notice_subject`, `notice_body`, `notice_file_name`, `created_at`) VALUES
(1, 'asdsad', 'dasdASADs', '', '2022-07-28 06:04:44'),
(2, 'asdsa', 'sadASAS', '', '2022-07-28 06:04:49'),
(3, 'asdasdasd', 'sadasdasdasdfdgfdgfd', '', '2022-07-28 06:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `capms_project_info`
--

CREATE TABLE `capms_project_info` (
  `project_id` int(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `project_number` varchar(255) DEFAULT 'cap',
  `domain` varchar(100) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `priority` int(2) NOT NULL,
  `project_details` varchar(255) NOT NULL,
  `project_status` int(2) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_project_info`
--

INSERT INTO `capms_project_info` (`project_id`, `title`, `project_number`, `domain`, `start_date`, `end_date`, `priority`, `project_details`, `project_status`, `created_at`, `updated_at`) VALUES
(2, 'Unlimited Life', 'cap002', '2', '2022-08-04', '2022-08-12', 3, '<p>This is demo</p>', 0, '2022-08-11 11:34:50', '2022-08-11 11:34:50'),
(3, 'Kmg Import', NULL, '2', '2022-08-10', '2022-08-14', 2, '<p>This is demo insert</p>', 0, '2022-08-11 11:35:13', '2022-08-26 07:40:36'),
(5, 'Handdyhippo', NULL, '2,3', '2022-08-27', '2022-08-04', 3, '<p>This is demo</p>', 0, '2022-08-11 03:42:44', '2022-08-26 07:24:47'),
(6, 'Backyard Design', 'cap001', '2', '2022-08-11', '2022-08-13', 3, '<p>This is wordpress project</p>                                                      ', 0, '2022-08-11 04:58:11', '2022-08-26 07:35:33'),
(7, 'BACKYARD DESIGN DEMO', NULL, '1,2,4', '2022-08-12', '2022-08-13', 1, '<p>This is demo for backyard</p>', 0, '2022-08-12 04:27:29', '2022-08-12 04:27:29'),
(8, 'Prometheus', NULL, '1,4', '2022-08-12', '2022-08-17', 3, '<p>This is a demo copy</p>', 0, '2022-08-12 05:12:36', '2022-08-26 06:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `capms_project_tasktype_info`
--

CREATE TABLE `capms_project_tasktype_info` (
  `task_type_id` int(4) NOT NULL,
  `task_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_project_tasktype_info`
--

INSERT INTO `capms_project_tasktype_info` (`task_type_id`, `task_type_name`) VALUES
(1, 'design'),
(2, 'devlopment'),
(3, 'issue fixing'),
(4, 'r & d'),
(5, 'support'),
(6, 'optimisation'),
(7, 'meeting'),
(8, 'testing'),
(9, 'consultation');

-- --------------------------------------------------------

--
-- Table structure for table `capms_project_task_info`
--

CREATE TABLE `capms_project_task_info` (
  `task_id` int(4) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_number` varchar(255) DEFAULT NULL,
  `task_status` int(2) NOT NULL DEFAULT 0,
  `priority` int(2) NOT NULL,
  `task_start_date` varchar(255) NOT NULL,
  `task_end_date` varchar(255) NOT NULL,
  `task_domain` int(2) NOT NULL,
  `task_type` int(2) NOT NULL,
  `trello_task_id` varchar(100) NOT NULL,
  `trello_task_link` varchar(255) NOT NULL,
  `task_desc` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_project_task_info`
--

INSERT INTO `capms_project_task_info` (`task_id`, `task_name`, `task_number`, `task_status`, `priority`, `task_start_date`, `task_end_date`, `task_domain`, `task_type`, `trello_task_id`, `trello_task_link`, `task_desc`, `created_at`, `updated_at`) VALUES
(1, 'back yard chechk', 'cap001', 0, 4, '2022-08-09', '2022-08-10', 2, 3, 'backyard123', 'some link', 'some desc', '2022-08-09 01:05:59', '2022-08-09 01:05:59'),
(2, 'back yard chechk', NULL, 0, 4, '2022-08-09', '2022-08-10', 2, 3, 'backyard123', 'some link', 'some desc', '2022-08-09 01:05:59', '2022-08-09 01:05:59'),
(3, 'back yard chechk', NULL, 0, 3, '2022-08-09', '2022-08-12', 2, 5, 'backyard1234', 'some link', '<p>fhowe vnrk</p>', '2022-08-09 01:25:00', '2022-08-09 01:25:00'),
(4, 'abcbacjs', NULL, 0, 2, '2022-08-10', '2022-08-12', 2, 3, 'bcvs123', 'some link', '<p>eufhidshk</p>', '2022-08-09 03:59:55', '2022-08-09 03:59:55'),
(5, 'back yard build', NULL, 0, 2, '2022-08-10', '2022-08-12', 1, 1, '1200', 'some link wowi', '<p>this is demo</p>', '2022-08-09 10:43:25', '2022-08-09 10:43:25'),
(6, 'back yard build', NULL, 0, 2, '2022-08-11', '2022-08-12', 3, 4, '100', 'some link', '<p>adiaHDGS&nbsp;</p>', '2022-08-10 12:55:51', '2022-08-10 12:55:51'),
(7, 'back yard build', NULL, 0, 2, '2022-08-11', '2022-08-12', 3, 4, '100', 'some link', '<p>adiaHDGS&nbsp;</p>', '2022-08-10 01:04:45', '2022-08-10 01:04:45'),
(8, 'virum', 'cap008', 0, 2, '2022-08-12', '2022-08-14', 2, 3, 't001', 'some link', '<p>this is demo</p>', '2022-08-11 01:27:42', '2022-08-11 01:27:42'),
(9, 'virum', NULL, 0, 2, '2022-08-12', '2022-08-14', 2, 3, 't001', 'some link', '<p>this is demo</p>', '2022-08-11 01:35:02', '2022-08-11 01:35:02'),
(10, 'virum', NULL, 0, 2, '2022-08-12', '2022-08-15', 1, 1, '12', 'some link', '<p>this is demo</p>', '2022-08-11 01:35:31', '2022-08-11 01:35:31'),
(11, 'virum', NULL, 0, 2, '2022-08-12', '2022-08-15', 1, 1, '12', 'some link', '<p>this is demo</p>', '2022-08-11 03:26:16', '2022-08-11 03:26:16'),
(12, 'Frontend Checking', 'cap012', 0, 4, '2022-08-11', '2022-08-12', 2, 3, '1', 'https://trello.com/c/jN7IgYTw/1-env-setup-for-backend-devs', '<p>This is demo</p>', '2022-08-11 03:44:08', '2022-08-11 03:44:08'),
(13, 'Frontend Checking', NULL, 0, 4, '2022-08-11', '2022-08-13', 1, 2, '22', 'https://trello.com/c/jN7IgYTw/1-env-setup-for-backend-devs', '<p>This is for testing</p>', '2022-08-11 04:55:26', '2022-08-11 04:55:26'),
(16, 'Footer work', NULL, 0, 4, '2022-08-12', '2022-08-14', 1, 1, 't1000', 'some trello link', '<p>design the footer</p>', '2022-08-12 05:14:18', '2022-08-12 05:14:18'),
(17, 'Optimization', NULL, 0, 3, '2022-08-13', '2022-08-14', 4, 6, 't1001', 'some link for seo', '<p>please optimize the site</p>', '2022-08-12 05:15:34', '2022-08-12 05:15:34'),
(18, 'Optimization', 'cap018', 0, 3, '2022-08-13', '2022-08-14', 4, 6, 't1001', 'some link for seo', '<p>please optimize the site</p>', '2022-08-12 06:02:03', '2022-08-12 06:02:03'),
(19, 'Optimization', NULL, 0, 3, '2022-08-13', '2022-08-14', 4, 6, 't1001', 'some link for seo', '<p>please optimize the site</p>', '2022-08-12 06:12:10', '2022-08-12 06:12:10'),
(20, 'Optimization', NULL, 0, 3, '2022-08-13', '2022-08-14', 4, 6, 't1001', 'some link for seo', '<p>please optimize the site</p>', '2022-08-12 06:12:21', '2022-08-12 06:12:21'),
(21, 'Optimization', NULL, 0, 3, '2022-08-13', '2022-08-14', 4, 6, 't1001', 'some link for seo', '<p>please optimize the site</p>', '2022-08-12 06:12:23', '2022-08-12 06:12:23'),
(22, 'Optimization', NULL, 0, 3, '2022-08-13', '2022-08-14', 4, 6, 't1001', 'some link for seo', '<p>please optimize the site</p>', '2022-08-12 06:28:42', '2022-08-12 06:28:42'),
(23, 'Optimization', NULL, 0, 3, '2022-08-13', '2022-08-14', 4, 6, 't1001', 'some link for seo', '<p>please optimize the site</p>', '2022-08-12 06:30:05', '2022-08-12 06:30:05'),
(30, 'Report Checking Weekly', NULL, 0, 2, '', '', 2, 4, 'i229', 'http://trello.com/report', '<p>report</p>', '2022-08-24 08:19:16', '2022-08-24 08:19:16'),
(34, 'Demo1', 'capt22082600020034', 0, 4, '2022-08-26', '2022-08-28', 2, 2, '201', 'twozeroone', '<p>This is demo1</p>', '2022-08-26 09:01:12', '2022-08-26 09:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `capms_user_education_info`
--

CREATE TABLE `capms_user_education_info` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `secondary_institute` varchar(255) NOT NULL,
  `secondary_board` varchar(255) NOT NULL,
  `secondary_yop` varchar(15) NOT NULL,
  `secondary_exam_percentage` varchar(5) NOT NULL,
  `higher_secondary_institute` varchar(255) NOT NULL,
  `higher_secondary_board` varchar(255) NOT NULL,
  `higher_secondary_start_date` varchar(15) NOT NULL,
  `higher_secondary_end_date` varchar(15) NOT NULL,
  `higher_secondary_exam_percentage` varchar(5) NOT NULL,
  `ug_institute_name` varchar(255) NOT NULL,
  `ug_university_name` varchar(255) NOT NULL,
  `ug_start_year` varchar(15) NOT NULL,
  `ug_finish_year` varchar(15) NOT NULL,
  `ug_passing_percentage` varchar(5) NOT NULL,
  `pg_institute_name` varchar(255) NOT NULL,
  `pg_start_year` varchar(15) NOT NULL,
  `pg_finish_year` varchar(15) NOT NULL,
  `pg_passing_percentage` varchar(5) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_user_education_info`
--

INSERT INTO `capms_user_education_info` (`id`, `user_id`, `secondary_institute`, `secondary_board`, `secondary_yop`, `secondary_exam_percentage`, `higher_secondary_institute`, `higher_secondary_board`, `higher_secondary_start_date`, `higher_secondary_end_date`, `higher_secondary_exam_percentage`, `ug_institute_name`, `ug_university_name`, `ug_start_year`, `ug_finish_year`, `ug_passing_percentage`, `pg_institute_name`, `pg_start_year`, `pg_finish_year`, `pg_passing_percentage`, `created_at`, `updated_at`) VALUES
(1, 4, 'Nandakumar High School', 'WBSE', '2022-07-01', '60', 'Byabattarhat Adarsa High School', 'WBHSE', '2022-07-02', '2022-07-03', '50', 'Mahishadal Raj Collage', 'Vidyasagar University', '2022-07-04', '2022-07-05', '50', 'Vidyasagar University', '2022-07-06', '2022-07-07', '70', '2022-07-05 11:25:19', '2022-07-05 11:30:11'),
(2, 3, 'Bmhs', 'wb', '2009-07-29', '81', 'Bmhs', 'wb', '2009-06-30', '2011-06-21', '72', 'Regent Education and Research Foundation', 'WBUT', '2011-01-10', '2015-06-09', '90', 'WBUT', '2011-02-22', '2016-10-26', '90', '2022-07-29 05:57:59', '2022-08-17 12:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `capms_user_timesheet`
--

CREATE TABLE `capms_user_timesheet` (
  `timesheet_id` int(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `workload_id` int(11) NOT NULL,
  `timesheet_date` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `task_domain` int(11) NOT NULL,
  `task_type` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `trello_link` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_user_timesheet`
--

INSERT INTO `capms_user_timesheet` (`timesheet_id`, `user_id`, `workload_id`, `timesheet_date`, `start_time`, `end_time`, `task_domain`, `task_type`, `description`, `trello_link`, `created_at`, `updated_at`) VALUES
(22, 3, 8, '08/16/2022', '1.40', '2.50', 2, 3, 'The is a backend dev demo', 'https://trello.com/b/QcSqFMId/backend-dev', '2022-08-16 12:10:26', '2022-08-16 12:10:26'),
(27, 3, 6, '08/16/2022', '18.00', '19.00', 1, 2, 'This is  a simple frontend fix', 'https://trello.com/b/QcSqFMId/frontend-fix', '2022-08-24 03:58:41', '2022-08-24 03:58:41'),
(28, 3, 5, '08/16/2022', '1.40', '2.50', 2, 3, 'The is a backend dev demo', 'https://trello.com/b/QcSqFMId/backend-dev', '2022-08-16 10:58:29', '2022-08-16 10:58:29'),
(31, 3, 4, '08/25/2022', '03.15', '03.15', 2, 4, 'Backyard Design demo 1', 'http://trello.com/backyarddesign', '2022-08-25 01:07:37', '2022-08-25 01:07:37'),
(32, 3, 3, '08/25/2022', '00.45', '02.00', 2, 8, 'ddfghgfh', 'sfdsf', '2022-08-25 01:36:18', '2022-08-25 01:36:18'),
(34, 3, 1, '08/26/2022', '03.00', '02.45', 2, 3, 'This is a demo after undo', 'http://trello.com/backyarddesign4', '2022-08-26 02:09:40', '2022-08-26 02:09:40'),
(35, 3, 7, '08/27/2022', '02.00', '06.00', 3, 6, 'U-R1 demo desc1', 'http://trello.com/U-R1', '2022-08-27 11:51:26', '2022-08-27 11:51:26'),
(36, 3, 2, '08/02/2022', '01.45', '02.45', 2, 3, 'A small issue arise during log checking', 'http://trello.com/issuefixing', '2022-08-27 10:00:42', '2022-08-27 10:00:42'),
(37, 3, 4, '08/27/2022', '03.30', '04.30', 4, 6, 'BD-opt001 demo desc1', 'http://trello.com/opt001', '2022-08-27 11:48:55', '2022-08-27 11:48:55'),
(38, 3, 4, '08/29/2022', '01.45', '04.00', 4, 6, 'SO-001', 'http://trello.com/SO', '2022-08-29 01:23:49', '2022-08-29 01:23:49'),
(39, 3, 4, '08/29/2022', '03.00', '05.00', 4, 6, 'This is a demo E2300', 'http://trello.com/E2300', '2022-08-29 01:30:52', '2022-08-29 01:30:52'),
(40, 3, 7, '08/29/2022', '03.00', '04.45', 1, 4, 'demo13', 'http://trello.com/issuefixing', '2022-08-29 05:06:07', '2022-08-29 05:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `capms_user_workload_info`
--

CREATE TABLE `capms_user_workload_info` (
  `workload_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `project_id` int(4) NOT NULL,
  `task_id` int(4) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capms_user_workload_info`
--

INSERT INTO `capms_user_workload_info` (`workload_id`, `user_id`, `project_id`, `task_id`, `created_at`, `updated_at`) VALUES
(1, 3, 6, 1, '', ''),
(2, 3, 6, 8, '', ''),
(3, 3, 6, 12, '', ''),
(4, 3, 6, 18, '', ''),
(5, 3, 2, 1, '', ''),
(6, 3, 2, 34, '', ''),
(7, 3, 2, 30, '', ''),
(8, 3, 2, 4, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camps_project_assigned_user_info`
--
ALTER TABLE `camps_project_assigned_user_info`
  ADD KEY `project_id` (`project_id`),
  ADD KEY `assigned_user_id` (`user_id`);

--
-- Indexes for table `capms_admin_individual_leaves`
--
ALTER TABLE `capms_admin_individual_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capms_admin_leave_applications`
--
ALTER TABLE `capms_admin_leave_applications`
  ADD PRIMARY KEY (`leave_ID`);

--
-- Indexes for table `capms_admin_users`
--
ALTER TABLE `capms_admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capms_department_info`
--
ALTER TABLE `capms_department_info`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `capms_login_information`
--
ALTER TABLE `capms_login_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capms_notice_info`
--
ALTER TABLE `capms_notice_info`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `capms_project_info`
--
ALTER TABLE `capms_project_info`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `capms_project_tasktype_info`
--
ALTER TABLE `capms_project_tasktype_info`
  ADD PRIMARY KEY (`task_type_id`);

--
-- Indexes for table `capms_project_task_info`
--
ALTER TABLE `capms_project_task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `capms_user_education_info`
--
ALTER TABLE `capms_user_education_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `capms_user_timesheet`
--
ALTER TABLE `capms_user_timesheet`
  ADD PRIMARY KEY (`timesheet_id`);

--
-- Indexes for table `capms_user_workload_info`
--
ALTER TABLE `capms_user_workload_info`
  ADD PRIMARY KEY (`workload_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `capms_admin_individual_leaves`
--
ALTER TABLE `capms_admin_individual_leaves`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `capms_admin_leave_applications`
--
ALTER TABLE `capms_admin_leave_applications`
  MODIFY `leave_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `capms_admin_users`
--
ALTER TABLE `capms_admin_users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `capms_department_info`
--
ALTER TABLE `capms_department_info`
  MODIFY `dept_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `capms_login_information`
--
ALTER TABLE `capms_login_information`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `capms_notice_info`
--
ALTER TABLE `capms_notice_info`
  MODIFY `notice_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `capms_project_info`
--
ALTER TABLE `capms_project_info`
  MODIFY `project_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `capms_project_tasktype_info`
--
ALTER TABLE `capms_project_tasktype_info`
  MODIFY `task_type_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `capms_project_task_info`
--
ALTER TABLE `capms_project_task_info`
  MODIFY `task_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `capms_user_education_info`
--
ALTER TABLE `capms_user_education_info`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `capms_user_timesheet`
--
ALTER TABLE `capms_user_timesheet`
  MODIFY `timesheet_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `capms_user_workload_info`
--
ALTER TABLE `capms_user_workload_info`
  MODIFY `workload_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `camps_project_assigned_user_info`
--
ALTER TABLE `camps_project_assigned_user_info`
  ADD CONSTRAINT `assigned_user_id` FOREIGN KEY (`user_id`) REFERENCES `capms_admin_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_id` FOREIGN KEY (`project_id`) REFERENCES `capms_project_info` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `capms_user_education_info`
--
ALTER TABLE `capms_user_education_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `capms_admin_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
