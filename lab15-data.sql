-- phpMyAdmin SQL Dump
-- version 2.11.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 03, 2013 at 02:47 AM
-- Server version: 5.0.77
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `GUITrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `DOMElement`
--

CREATE TABLE IF NOT EXISTS `DOMElement` (
  `DOMElementID` int(11) NOT NULL auto_increment,
  `SiteID` int(11) NOT NULL,
  `Type` varchar(32) NOT NULL,
  `Class` varchar(32) NOT NULL default '0',
  `DOMID` varchar(32) NOT NULL,
  PRIMARY KEY  (`DOMElementID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `DOMElement`
--


-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE IF NOT EXISTS `Events` (
  `EventID` int(11) NOT NULL auto_increment,
  `DOMID` varchar(32) NOT NULL,
  `Time` bigint(11) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `ClassID` varchar(32) NOT NULL,
  PRIMARY KEY  (`EventID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `Events`
--

--
-- Table structure for table `Site`
--

CREATE TABLE IF NOT EXISTS `Site` (
  `SiteID` int(11) NOT NULL auto_increment,
  `Path` varchar(128) NOT NULL,
  `Domain` varchar(128) NOT NULL,
  PRIMARY KEY  (`SiteID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Site`
--

