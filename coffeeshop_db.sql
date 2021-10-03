-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 05:46 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coffeeshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_content`
--

CREATE TABLE IF NOT EXISTS `bill_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(100) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `prod_price` double NOT NULL,
  `type` varchar(50) NOT NULL,
  `dateCreated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `bill_content`
--

INSERT INTO `bill_content` (`id`, `bill_id`, `prod_id`, `prod_name`, `quantity`, `prod_price`, `type`, `dateCreated`) VALUES
(76, 'JRE2021-0001', 'COFFEE-001', 'ESPRESSO', 1, 25, 'COFFEE', '2021-02-09'),
(77, 'JRE2021-0001', 'COFFEE-002', 'HOT CHOCO', 1, 30, 'COFFEE', '2021-02-09'),
(78, 'JRE2021-0001', 'FOOD-002', 'ITALIAN CURRAY', 1, 50, 'FOODS', '2021-02-09'),
(79, 'JRE2021-0001', 'FOOD-003', 'HAWAIIAN PIZZA', 1, 60, 'FOODS', '2021-02-09'),
(80, 'JRE2021-0001', 'PASTRY-001', 'CHOCO CAKE', 1, 50, 'PASTRY', '2021-02-09'),
(81, 'JRE2021-0001', 'PASTRY-002', 'PAN DE COCO', 1, 20, 'PASTRY', '2021-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE IF NOT EXISTS `bill_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(100) NOT NULL,
  `table_no` int(100) NOT NULL,
  `totalPrice` double NOT NULL,
  `dateCreated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`id`, `bill_id`, `table_no`, `totalPrice`, `dateCreated`) VALUES
(39, 'JRE2021-0001', 3, 235, '2021-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseid` int(11) NOT NULL,
  `prod_id` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_price` double NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `baseid`, `prod_id`, `prod_name`, `prod_price`, `type`) VALUES
(10, 1, 'COFFEE-001', 'ESPRESSO', 25, 'COFFEE'),
(11, 2, 'COFFEE-002', 'HOT CHOCO', 30, 'COFFEE'),
(12, 3, 'COFFEE-003', 'BLANCA COFFEE', 40, 'COFFEE'),
(13, 4, 'COFFEE-004', 'HOT CAPPUCINO', 50, 'COFFEE'),
(14, 1, 'FOOD-001', 'EGG SANDWICH', 20, 'FOODS'),
(15, 2, 'FOOD-002', 'ITALIAN CURRAY', 50, 'FOODS'),
(16, 3, 'FOOD-003', 'HAWAIIAN PIZZA', 60, 'FOODS'),
(17, 1, 'PASTRY-001', 'CHOCO CAKE', 50, 'PASTRY'),
(18, 2, 'PASTRY-002', 'PAN DE COCO', 20, 'PASTRY'),
(19, 3, 'PASTRY-003', 'MONGO BREAD', 50, 'PASTRY'),
(20, 4, 'PASTRY-004', 'PANDESAL', 10, 'PASTRY'),
(21, 5, 'PASTRY-005', 'PAN BISAYA', 50, 'PASTRY');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `photo` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `employee_id`, `fullname`, `username`, `password`, `photo`) VALUES

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;