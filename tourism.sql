-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2018 at 07:44 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `phone`, `message`) VALUES
('saket', 'saket@gmail.com', '8233727385', 'nice one.'),
('saket', 'saket@gmail.com', '9521070866', 'nice app');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `country` varchar(15) NOT NULL,
  `state` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `password`, `email`, `country`, `state`, `contact`) VALUES
('polaya', 'ram', 'polaya@gmail.com', 'india', 'JAIPUR', '8468263434');

-- --------------------------------------------------------

--
-- Table structure for table `shopdetails`
--

CREATE TABLE IF NOT EXISTS `shopdetails` (
  `shopname` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `tourist_place` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `food` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopdetails`
--

INSERT INTO `shopdetails` (`shopname`, `state`, `city`, `tourist_place`, `address`, `food`) VALUES
('pappu restaurent', 'rajasthan', 'jaipur', 'jalmahel', 'opposite SBI bank,near jalmahel', 'pizza'),
('pappu restaurent', 'rajasthan', 'jaipur', 'jalmahel', 'opposite SBI bank,near jalmahel', 'burger'),
('pappu restaurent', 'rajasthan', 'jaipur', 'jalmahel', 'opposite SBI bank,near jalmahel', 'garlic_bread'),
('pappu restaurent', 'rajasthan', 'jaipur', 'jalmahel', 'opposite SBI bank,near jalmahel', 'manchurian'),
('rainbow restaurent', 'rajasthan', 'jaipur', 'jalmahel', 'ramgarh moad,near jalmahel', 'pizza'),
('rainbow restaurent', 'rajasthan', 'jaipur', 'jalmahel', 'ramgarh moad,near jalmahel', 'burger'),
('cafe cofee day', 'rajasthan', 'jaipur', 'hawamahel', 'Badi chopad,jda market', 'burger'),
('cafe cofee day', 'rajasthan', 'jaipur', 'hawamahel', 'Badi chopad,jda market', 'pizza'),
('cafe cofee day', 'rajasthan', 'jaipur', 'hawamahel', 'Badi chopad,jda market', 'coffee'),
('shri radhe fast food', 'rajasthan', 'jaipur', 'hawamahel', 'shopno-477,near SBBJ bank,chandi ki taksal', 'pizza'),
('shri radhe fast food', 'rajasthan', 'jaipur', 'hawamahel', 'shopno-477,near SBBJ bank,chandi ki taksal', 'vadapav'),
('shri radhe fast food', 'rajasthan', 'jaipur', 'hawamahel', 'shopno-477,near SBBJ bank,chandi ki taksal', 'chawmin'),
('shri radhe fast food', 'rajasthan', 'jaipur', 'hawamahel', 'shopno-477,near SBBJ bank,chandi ki taksal', 'dosa'),
('shri radhe fast food', 'rajasthan', 'jaipur', 'hawamahel', 'shopno-477,near SBBJ bank,chandi ki taksal', 'chole bature'),
('subway restaurent', 'maharashtra', 'mumbai', 'juhu_beach', 'shop no-5A,sagarika,coperating housing society,juhu road', 'pizza'),
('subway restaurent', 'maharashtra', 'mumbai', 'juhu_beach', 'shop no-5A,sagarika,coperating housing society,juhu road', 'burger'),
('subway restaurent', 'maharashtra', 'mumbai', 'juhu_beach', 'shop no-5A,sagarika,coperating housing society,juhu road', 'sandnwiches'),
('subway restaurent', 'maharashtra', 'mumbai', 'juhu_beach', 'shop no-5A,sagarika,coperating housing society,juhu road', 'manchurian'),
('sea side patio', 'maharashtra', 'jaipur', 'juhu_beach', 'citizen hotel,juhu tara road', 'pizza'),
('sea side patio', 'maharashtra', 'jaipur', 'juhu_beach', 'citizen hotel,juhu tara road', 'cofee'),
('sea side patio', 'maharashtra', 'jaipur', 'juhu_beach', 'citizen hotel,juhu tara road', 'vada pav'),
('pizza express', 'maharashtra', 'mumbai', 'gateway_of_india', 'shivaji marg,apolo bunder,colabo,mumbai', 'pizza'),
('pizza express', 'maharashtra', 'mumbai', 'gateway_of_india', 'shivaji marg,apolo bunder,colabo,mumbai', 'burger'),
('daily darbar', 'maharashtra', 'mumbai', 'gateway_of_india', 'shahid bhagat singh road,colaba', 'chole bature'),
('daily darbar', 'maharashtra', 'mumbai', 'gateway_of_india', 'shahid bhagat singh road,colaba', 'pav bhaji'),
('daily darbar', 'maharashtra', 'mumbai', 'gateway_of_india', 'shahid bhagat singh road,colaba', 'momos'),
('daily darbar', 'maharashtra', 'mumbai', 'gateway_of_india', 'shahid bhagat singh road,colaba', 'vada pav');

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE IF NOT EXISTS `shopkeeper` (
  `shopname` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `country` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`shopname`, `password`, `email`, `country`, `state`, `city`, `contact`) VALUES
('cafe cofee day', 'cafe', 'cafe@gmail.com', 'india', 'rajasthan', 'jaipur', '1800102509'),
('rainbow restaurent', 'rainbow', 'email', 'country', 'state', 'city', '9876547893'),
('pappu restaurent', 'pappu', 'pappu@gmail.com', 'india', 'rajasthan', 'jaipur', '9828087854'),
('subway', 'sub', 'sub@gmail.com', 'india', 'maharashtra', 'mumbai', '2226194221'),
('sea side patio', 'sea', 'sea@gmail.com', 'india', 'maharashtra', 'mumbai', '02266932525'),
('pizza express', 'express', 'express@gmai.com', 'india', 'maharashtra', 'mumbai', '02266562633'),
('daily darbar', 'daily', 'daily@gmail.com', 'india', 'maharashtra', 'mumbai', '02222020235');
