-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2014 at 08:34 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `logistics`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense_table`
--

CREATE TABLE IF NOT EXISTS `expense_table` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `expense` int(10) NOT NULL,
  `category` varchar(14) NOT NULL,
  `description` varchar(22) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `location` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `expense_table`
--

INSERT INTO `expense_table` (`id`, `expense`, `category`, `description`, `date`, `time`, `location`) VALUES
(1, 5874, 'Challans', 'Challan on motorway', '2014-12-02', '15:54:00.000000', ''),
(2, 0, 'Food', 'biryani khai te', '2014-12-04', '11:01:00.000000', ''),
(3, 0, 'Maintenance ', 'car khrab', '2014-12-05', '00:57:00.000000', ''),
(4, 789653, 'Fuel', 'petrol', '2014-12-06', '15:01:00.000000', ''),
(5, 123456, 'Food', 'fooood', '2014-12-03', '13:04:00.000000', ''),
(6, 3456, 'Fuel', 'fuel ha', '2014-12-07', '05:07:00.000000', ''),
(7, 0, 'Challans', '', '0000-00-00', '00:00:00.000000', ''),
(8, 234, 'Challans', 'overspeessd', '2014-12-08', '00:04:00.000000', ''),
(9, 2345, 'Challans', 'cg', '2014-12-02', '04:05:00.000000', ''),
(10, 7865, 'Food', 'food', '2014-12-09', '12:03:00.000000', ''),
(11, 0, '', '', '0000-00-00', '00:00:00.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `income_table`
--

CREATE TABLE IF NOT EXISTS `income_table` (
  `income` int(20) NOT NULL,
  `category` varchar(16) NOT NULL,
  `description` varchar(22) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `location` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income_table`
--

INSERT INTO `income_table` (`income`, `category`, `description`, `date`, `time`, `location`) VALUES
(123, 'kahs', '', '0000-00-00', '00:00:00.000000', 0),
(1234, 'fuel', 'fuel in van', '0000-00-00', '00:00:00.000000', 0),
(78765, 'Food', 'fooood', '0000-00-00', '00:00:00.000000', 0),
(1234, 'Challans', 'dfrt', '0000-00-00', '00:00:00.000000', 0),
(2345, 'Drinks', 'drinking', '2014-12-08', '00:04:00.000000', 0),
(6789, 'Drinks', 'khh', '2014-12-16', '05:06:00.000000', 0),
(0, 'Drinks', '', '2014-12-22', '00:00:00.000000', 0),
(0, 'Drinks', '', '0000-00-00', '00:00:00.000000', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
