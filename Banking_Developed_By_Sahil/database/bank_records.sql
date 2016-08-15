-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2015 at 02:49 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bank_records`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_no_table`
--

CREATE TABLE IF NOT EXISTS `account_no_table` (
  `account_no` int(100) NOT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_no_table`
--

INSERT INTO `account_no_table` (`account_no`) VALUES
(127);

-- --------------------------------------------------------

--
-- Table structure for table `account_records`
--

CREATE TABLE IF NOT EXISTS `account_records` (
  `s_no` int(100) NOT NULL AUTO_INCREMENT,
  `src_acc_no` varchar(100) NOT NULL,
  `trans` varchar(100) NOT NULL,
  `trans_amount` int(100) NOT NULL,
  `trans_med` varchar(100) NOT NULL,
  `trans_med_details` varchar(100) NOT NULL,
  `tar_acc_no` varchar(100) NOT NULL,
  `current_balance` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `account_records`
--

INSERT INTO `account_records` (`s_no`, `src_acc_no`, `trans`, `trans_amount`, `trans_med`, `trans_med_details`, `tar_acc_no`, `current_balance`, `date`) VALUES
(52, '102', 'Deposit', 101, 'Cheque', '222', '-', 1301, '2015-07-18'),
(53, '102', 'Deposit', 1000, 'Cash', '-', '-', 2301, '2015-07-18'),
(54, '102', 'Deposit', 5000, 'Cash', '-', '-', 7301, '2015-07-18'),
(55, '102', 'Withdraw', 500, 'Cash', '-', '-', 6801, '2015-07-18'),
(56, '102', 'Transfer', 2000, 'Cash', '-', '101', 4801, '2015-07-18'),
(57, '113', 'Deposit', 1000, 'Cash', '-', '-', 1000, '2015-07-18'),
(58, '101', 'Deposit', 1000, 'Cash', '-', '-', 6000, '2015-07-19'),
(59, '101', 'Deposit', 10000, 'Cash', '-', '-', 16000, '2015-07-19'),
(60, '101', 'Withdraw', 2000, 'Cheque', '2222', '-', 14000, '2015-07-19'),
(61, '101', 'Transfer', 1000, 'Cash', '-', '113', 13000, '2015-07-19'),
(62, '114', 'Deposit', 6000, 'Cash', '-', '-', 6000, '2015-07-20'),
(63, '101', 'Deposit', 100, 'Cash', '-', '-', 13100, '2015-07-20'),
(64, '115', 'Fixed_Deposit', 50001, 'Cash', '-', '-', 50001, '2015-07-20'),
(87, '102', 'Saving_Interest', 42, '-', '-', '-', 1082, '2015-07-21'),
(88, '103', 'Saving_Interest', 4, '-', '-', '-', 108, '2015-07-21'),
(94, '102', 'Saving_Interest', 43, '-', '-', '-', 1125, '2015-07-21'),
(95, '103', 'Saving_Interest', 4, '-', '-', '-', 112, '2015-07-21'),
(97, '102', 'Saving_Interest', 45, '-', '-', '-', 1170, '2015-07-21'),
(98, '103', 'Saving_Interest', 4, '-', '-', '-', 117, '2015-07-21'),
(99, '123', 'Fixed_Deposit', 60000, 'Cash', '-', '-', 60000, '2015-07-22'),
(100, '124', 'Fixed_Deposit', 50000, 'Cash', '-', '-', 50000, '2015-07-22'),
(101, '125', 'Fixed_Deposit', 100000, 'Cash', '-', '-', 100000, '2015-07-22'),
(102, '126', 'Fixed_Deposit', 100000, 'Cash', '-', '-', 100000, '2015-07-22'),
(103, '116', 'Fixed_Deposit_Interest', 4000, '-', '-', '-', 54000, '2015-07-22'),
(104, '118', 'Fixed_Deposit_Interest', 8000, '-', '-', '-', 108000, '2015-07-22'),
(106, '121', 'Fixed_Deposit_Interest', 4000, '-', '-', '-', 54000, '2015-07-22'),
(122, '101', 'Deposit', 500, 'Cash', '-', '-', 6349, '2015-07-22'),
(125, '127', 'Recurrence_Deposit', 1000, 'Cash', '-', '-', 1000, '2015-07-22'),
(132, '127', 'Recurrence_Deposit_Interest', 86, '-', '-', '-', 1166, '2015-07-22'),
(133, '108', 'Saving_Interest', 80, '-', '-', '-', 2080, '2015-07-22'),
(134, '109', 'Saving_Interest', 200, '-', '-', '-', 5200, '2015-07-22'),
(135, '110', 'Saving_Interest', 80, '-', '-', '-', 2080, '2015-07-22'),
(136, '111', 'Saving_Interest', 120, '-', '-', '-', 3120, '2015-07-22'),
(137, '113', 'Saving_Interest', 40, '-', '-', '-', 1040, '2015-07-22'),
(138, '114', 'Saving_Interest', 240, '-', '-', '-', 6240, '2015-07-22'),
(139, '127', 'Recurrence_Deposit_Interest', 93, '-', '-', '-', 1260, '2015-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_work_sheet`
--

CREATE TABLE IF NOT EXISTS `admin_work_sheet` (
  `date` date NOT NULL,
  `saving` varchar(50) NOT NULL DEFAULT 'Pending',
  `fd` varchar(50) NOT NULL DEFAULT 'Pending',
  `rd` varchar(50) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_work_sheet`
--

INSERT INTO `admin_work_sheet` (`date`, `saving`, `fd`, `rd`) VALUES
('2015-07-20', 'Pending', 'Pending', 'Pending'),
('2015-07-21', 'Done', 'Pending', 'Pending'),
('2015-07-22', 'Done', 'Done', 'Pending'),
('2015-08-22', 'Pending', 'Pending', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `atm_card_table`
--

CREATE TABLE IF NOT EXISTS `atm_card_table` (
  `account_no` varchar(100) NOT NULL,
  `atm_card_no` varchar(100) NOT NULL,
  `issue_date` varchar(100) NOT NULL,
  `expiration_date` varchar(100) NOT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm_card_table`
--

INSERT INTO `atm_card_table` (`account_no`, `atm_card_no`, `issue_date`, `expiration_date`) VALUES
('101', '1002', '2015-07-19', ''),
('102', '1001', '2015-07-17', ''),
('112', '1003', '2015-07-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `bank_bussiness_details`
--

CREATE TABLE IF NOT EXISTS `bank_bussiness_details` (
  `date` date NOT NULL,
  `pre_day_amt` int(100) NOT NULL DEFAULT '0',
  `curr_day_amt` int(100) NOT NULL DEFAULT '0',
  `total_amt` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_bussiness_details`
--

INSERT INTO `bank_bussiness_details` (`date`, `pre_day_amt`, `curr_day_amt`, `total_amt`) VALUES
('2015-07-15', 10000, 20000, 30000),
('2015-07-18', 1000, 1000, 1000),
('2015-07-20', 1000, 6000, 7000),
('2015-07-21', 7000, 205000, 212000);

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE IF NOT EXISTS `category_table` (
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_name`) VALUES
('Account_Status'),
('Department'),
('Employee_Status'),
('Gender'),
('Occupation');

-- --------------------------------------------------------

--
-- Table structure for table `change_interest_rates`
--

CREATE TABLE IF NOT EXISTS `change_interest_rates` (
  `s_no` int(11) NOT NULL,
  `saving` varchar(100) NOT NULL,
  `fd` varchar(100) NOT NULL,
  `rd` varchar(100) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `change_interest_rates`
--

INSERT INTO `change_interest_rates` (`s_no`, `saving`, `fd`, `rd`) VALUES
(1, '4', '8', '8');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE IF NOT EXISTS `customer_table` (
  `account_no` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `total_amount` double NOT NULL,
  `status` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `atm_card_no` varchar(100) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `interest` double NOT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`account_no`, `customer_name`, `father_name`, `mother_name`, `gender`, `dob`, `occupation`, `address`, `phone`, `email`, `total_amount`, `status`, `image_name`, `atm_card_no`, `account_type`, `date`, `interest`) VALUES
('101', 'SAHIL SODHI', 'SURESH SODHI ', 'SHASHI SODHI', 'Male', '1994-10-18', 'Bussiness', 'MODEL HOUSE JALANDHAR CITY', '8968581700', 'SAHILSODHI18@YAHOO.COM', 6349, 'Activated', 'customer_images\\1437332545294_emp.jpg', '1002', 'Saving', '2015-06-21', 4),
('102', 'SODHI', 'SS', 'SS', 'Male', '2015-07-03', 'Student', 'MODEL HOUSE', '8968581700', 'sahilsodhi18@yahoo.com', 1169.85, 'Activated', 'customer_images\\1437329776607_passport1.png', '1001', 'Saving', '2015-06-21', 4),
('104', 'sushant', 'ss', 'ss', 'Male', '2015-07-15', 'Service', 'jalandhar', '8146585643', 'sushant@gamil.com', 1000, '', '', '', 'Saving', '2015-06-21', 0),
('105', 'SHIVAM', 'SS', 'SS', 'MALE', '2015-07-07', 'STUDENT', 'DHARAMSHALA', '1234567890', 'shivam@gmail.com', 1000, '', '', '', 'Saving', '2015-06-22', 4),
('109', 'PARDEEP VOHRA', 'SS', 'SS', 'MALE', '2014-09-10', 'Student', 'JALANDHAR', '2222222222', 'parddep@gmail.com', 5200, 'Activated', '', '', 'Saving', '2015-06-22', 4),
('112', 'SACHIN TENDULKAR', 'SS', 'SS', 'Male', '1985-07-18', 'Service', 'MUMBAI', '2222222222', 'sachin@gmail.com', 12000, 'Deactivated', 'customer_images\\1437329826998_passport1.png', '1003', 'Saving', '2015-06-22', 4),
('113', 'HRTHIK ROSHAN', 'RAKESH ROSHAN', 'RADHIKA ROSHAN', 'Male', '2015-07-03', 'Service', 'JALANDHAR', '3333333333', 'roshan@gmail.com', 1040, 'Activated', 'customer_images\\default.png', '-', 'Saving', '2015-06-22', 4),
('117', 'SS', 'SS', 'SS', 'Male', '2015-07-09', 'Student', 'JALANDHAR	', '1234567890', 'ss', 5000, 'Activated', 'customer_images\\default.png', '-', 'Saving', '2015-06-23', 0),
('120', 'RR', 'RR', 'RR', 'Male', '2015-07-21', 'Service', 'JALANDHAR', '1234567890', 'rr@gmail.com', 2000, 'Activated', 'customer_images\\default.png', '-', 'Saving', '2015-07-21', 4);

-- --------------------------------------------------------

--
-- Table structure for table `emp_login`
--

CREATE TABLE IF NOT EXISTS `emp_login` (
  `emp_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_login`
--

INSERT INTO `emp_login` (`emp_id`, `username`, `password`) VALUES
('1', 'ss', '123'),
('2', 'ssodhi', '123'),
('3', 'm', '123');

-- --------------------------------------------------------

--
-- Table structure for table `emp_table`
--

CREATE TABLE IF NOT EXISTS `emp_table` (
  `emp_id` varchar(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `department` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `salary` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_table`
--

INSERT INTO `emp_table` (`emp_id`, `emp_name`, `father_name`, `mother_name`, `gender`, `dob`, `department`, `address`, `phone`, `email`, `salary`, `status`, `image_name`) VALUES
('1', 'SUSHANT', 'SS', 'SS', 'MALE', '0000-00-00', 'CLERK', 'SS', '9876888170', 'SAHILSODHI18@YAHOO.COM', 0, '', ''),
('2', 'SODHI', 'SS', 'SS', 'MALE', '0000-00-00', 'OFFICER', 'MODEL HOUSE JALANDHAR', '8968581700', 'SAHILSODHI18@YAHOO.COM', 0, '', ''),
('3', 'SS', 'SS', 'SS', 'Male', '2015-07-16', 'Officer', 'JALANDHAR', '1111111111', 'sahilsodhi18@yahoo.com', 0, '', ''),
('4', 'SS', 'SS', 'SS', 'Male', '2015-07-10', 'Cashier', 'JALANDHAR', '2222222222', 'ss', 0, '', ''),
('6', 'ROHIT', 'SS', 'SS', 'Male', '1990-07-19', 'Officer', 'JALANDHAR', '2222222222', 'rohit@gmail.com', 10000, 'Working', 'employee_images\\default.png'),
('7', 'SODHI', 'SS', 'SS', 'Male', '2015-07-02', 'Clerk', 'JALANDHAR	', '1111111111', 'sahilsodhi18@yahoo.com', 50000, 'Working', ''),
('8', 'SS', 'SS', 'SS', 'Male', '2015-07-15', 'Officer', 'JALANDHAR', '1234567890', 'ss', 5000, 'Working', 'employee_images\\1437067818538_emp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fd_table`
--

CREATE TABLE IF NOT EXISTS `fd_table` (
  `account_no` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `time_period` int(100) NOT NULL,
  `interest` double NOT NULL,
  `a_f_i` double NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fd_table`
--

INSERT INTO `fd_table` (`account_no`, `customer_name`, `father_name`, `mother_name`, `gender`, `dob`, `occupation`, `address`, `phone`, `email`, `image_name`, `amount`, `time_period`, `interest`, `a_f_i`, `account_type`, `date`, `status`) VALUES
('115', 'SS', 'SS', 'SS', 'Male', '1994-10-18', 'Service', 'JALANDHAR', '1234567890', 'sahilsodhi18@gmail.com', 'customer_images\\default.png', 50001, 2, 8, 10000, 'Fixed_Deposit', '2015-06-21', 'Activated'),
('116', 'SS', 'SS', 'SS', 'Female', '2015-07-09', 'Business', 'JALANDHAR', '1234567890', 'ss@hotmail.com', 'customer_images\\default.png', 54000, 2, 8, 58000, 'Fixed_Deposit', '2015-06-22', 'Activated'),
('118', 'SAHIL', 'S SODHI', 'SODHI', 'Male', '2015-07-09', 'Service', 'JALANDHAR', '1234567890', 'sahil@gmail.com', 'customer_images\\default.png', 108000, 5, 8, 140000, 'Fixed_Deposit', '2015-06-22', 'Activated'),
('121', 'PP', 'PP', 'PP', 'Male', '2015-07-08', 'Business', 'JALANDHAR', '1234567890', 'pp@gmail.com', 'customer_images\\default.png', 54000, 3, 8, 62000, 'Fixed_Deposit', '2015-06-21', 'Activated'),
('123', 'NAVKIRANJIT', 'SS', 'SS', 'Male', '2015-07-16', 'Service', 'JALANDHAR', '1234567890', 'navi@yahoo.com', 'customer_images\\default.png', 60000, 2, 8, 69600, 'Fixed_Deposit', '2015-06-22', 'Activated'),
('124', 'SS', 'SS', 'SS', 'Female', '2015-07-16', 'Business', 'JALANDHAR', '1234567890', 'ss', 'customer_images\\default.png', 50000, 6, 8, 74000, 'Fixed_Deposit', '2015-07-22', 'Activated'),
('125', 'DD', 'DD', 'DD', 'Female', '2015-07-16', 'Business', 'JALANDHAR', '1234567890', 'dd@yahoo.com', 'customer_images\\default.png', 100000, 2, 8, 116000, 'Fixed_Deposit', '2015-07-22', 'Activated'),
('126', 'MANU', 'SS', 'SS', 'Male', '2015-07-09', 'Business', 'JALANDHAR', '1234567890', 'manu@gmail.com', 'customer_images\\default.png', 100000, 1, 8, 108000, 'Fixed_Deposit', '2015-07-22', 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `locker_table`
--

CREATE TABLE IF NOT EXISTS `locker_table` (
  `locker_no` int(100) NOT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`locker_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locker_table`
--

INSERT INTO `locker_table` (`locker_no`, `account_no`, `issue_date`, `status`) VALUES
(1, '101', '2015-07-21', 'Occupied'),
(2, '102', '2015-07-20', 'Occupied'),
(3, NULL, NULL, 'Available'),
(4, NULL, NULL, 'Available'),
(5, NULL, NULL, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `rd_table`
--

CREATE TABLE IF NOT EXISTS `rd_table` (
  `account_no` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `time_period` int(100) NOT NULL,
  `interest` double NOT NULL,
  `a_f_i` double NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rd_table`
--

INSERT INTO `rd_table` (`account_no`, `customer_name`, `father_name`, `mother_name`, `gender`, `dob`, `occupation`, `address`, `phone`, `email`, `image_name`, `amount`, `time_period`, `interest`, `a_f_i`, `account_type`, `date`, `status`) VALUES
('119', 'SAHIL', 'SS', 'SS', 'Female', '1994-10-18', 'Business', 'JALANDHAR', '1234567890', 'sahil@gmail.com', 'customer_images\\default.png', 2500, 1, 8, 5000, 'Recurrence_Deposit', '2015-06-22', 'Activated'),
('122', 'SODHI', 'QQ', 'QQ', 'Male', '2015-07-08', 'Service', 'JALANDHAR', '1234567890', 'qq@gmail.com', 'customer_images\\default.png', 5000, 6, 8, 2960, 'Recurrence_Deposit', '2015-06-22', 'Activated'),
('127', 'PP', 'PP', 'PP', 'Male', '2015-07-22', 'Service', 'JALANDHAR', '1234567890', 'pp@yahoo.com', 'customer_images\\default.png', 1259.712, 1, 8, 1000, 'Recurrence_Deposit', '2015-07-22', 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_table`
--

CREATE TABLE IF NOT EXISTS `subcategory_table` (
  `category_name` varchar(100) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  PRIMARY KEY (`subcategory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory_table`
--

INSERT INTO `subcategory_table` (`category_name`, `subcategory_name`) VALUES
('Account_Status', 'Activated'),
('Occupation', 'Business'),
('Department', 'Cashier'),
('Department', 'Clerk'),
('Account_Status', 'Deactivated'),
('Gender', 'Female'),
('Employee_Status', 'Left'),
('Gender', 'Male'),
('Department', 'Officer'),
('Occupation', 'Other'),
('Employee_Status', 'Retired'),
('Occupation', 'Service'),
('Occupation', 'Student'),
('Employee_Status', 'Working');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
