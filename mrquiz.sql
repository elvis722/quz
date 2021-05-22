-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 04:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

Create DATABASE mrquiz;
--
-- Database: `mrquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `username` varchar(100) NOT NULL,
  `password` longtext NOT NULL,
  `mail` varchar(45) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`username`, `password`, `mail`, `type`) VALUES
('egzon', 'eg123', 'egzon123@gmail.com', ''),
('valdrin', 'vali722', 'va722@gmail.com', ''),
('Enisa', 'whateverittakes', 'Enisaasine@gmail.com', ''),
('Elvis', 'leavemealone', 'elvisa@auk.org', 'admin'),
('Denis', 'denis_avdi@hotmail.com', 'what', ''),
('who', 'who@isthis.com', 'what', ''),
('new', 'what', 'new@auk.org', ''),
('dancemonkey', 'seekyou', 'dance@monkey.com', ''),
('what', 'what', 'what@auk.com', ''),
('jon', 'leavemealone', 'jonr@auk.org', ''),
('ELVIS', 'leavemealone', 'elvis@g.com', ''),
('denis', 'leavemealone', 'denis-avdi@hotmail.com', ''),
('allen', 'leavemealone', 'allen@gmail.com', ''),
('Vanesa', 'vanesa', 'vavdi@live.com', ''),
('valon', 'whatsoever', 'vali@gmail.com', ''),
('Nexhmie', 'leavemealone', 'nexhmie@hotmail.com', ''),
('denis', 'leavemealone', 'denis_avdi@live.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `name` varchar(100) NOT NULL,
  `first` varchar(10) NOT NULL,
  `second` varchar(15) NOT NULL,
  `third` varchar(15) NOT NULL,
  `fourth` varchar(15) NOT NULL,
  `fifth` varchar(15) NOT NULL,
  `sixth` varchar(15) NOT NULL,
  `seventh` varchar(15) NOT NULL,
  `eighth` varchar(15) NOT NULL,
  `nineth` varchar(15) NOT NULL,
  `tenth` varchar(15) NOT NULL,
  `eleventh` varchar(15) NOT NULL,
  `twelveth` varchar(15) NOT NULL,
  `res` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`name`, `first`, `second`, `third`, `fourth`, `fifth`, `sixth`, `seventh`, `eighth`, `nineth`, `tenth`, `eleventh`, `twelveth`, `res`) VALUES
('andi', 'Ermir', 'Yes', '3', 'Yes', 'Tirana', '2008', '1912', 'Skenderbeu', 'Gjeravica', '14', '308.340', 'Korabi', 9),
('blerim', 'Ermir', 'no', '3', 'Yes', 'Tirana', '2008', '1912', 'Skenderbeu', 'Hajla', '14', '190.000', 'Dajti', 8),
('shpresa', 'Ermir', 'Yes', '4', 'Yes', 'Tirana', '2008', '1912', 'Skenderbeu', 'Gjeravica', '14', '190.000', 'Dajti', 9),
('egzon', 'Ed Sheeran', 'Baby', '2004', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('egzon', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 10),
('jon', 'Ed Sheeran', 'Baby', '121', 'Justin Bieber', 'Mark Zuckerberg', '2121', '212121', '2121', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 6),
('egzon', 'Ed Sheeran', 'Baby', '2122222', '213122', 'Mark Zuckerberg', '4', '213123', '231', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 5),
('egzon', 'Ed Sheeran', 'Baby', '2122222', '213122', 'Mark Zuckerberg', '4', '213123', '231', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 5),
('egzon', 'Ed Sheeran', 'Baby', '2122222', '213122', 'Mark Zuckerberg', '4', '213123', '231', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 5),
('egzon', 'Ed Sheeran', 'Baby', '2122222', '213122', 'Mark Zuckerberg', '4', '213123', '231', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 5),
('ELVIS', 'Ed Sheeran', 'Baby', '2004', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2003', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 10),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Elvis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('enisa', 'Ed Sheeran', 'Baby', '2013', 'Justin Bieber', 'Mark Zuckerberg', '2017', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('enisa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('egzon', 'Ed Sheeran', 'Baby', '12312', '3123', 'Mark Zuckerberg', '1213', '-1213', '213321', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 6),
('egzon', 'Ed Sheeran', 'Baby', '12312', '3123', 'Mark Zuckerberg', '1213', '-1213', '213321', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 6),
('egzon', 'Ed Sheeran', 'Baby', '12312', '3123', 'Mark Zuckerberg', '1213', '-1213', '213321', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 6),
('egzon', 'Ed Sheeran', 'Baby', '12312', '3123', 'Mark Zuckerberg', '1213', '-1213', '213321', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 6),
('denis', 'Ed Sheeran', 'Baby', '1998', 'Justin Bieber', 'mark Zuckerberg', '2018', '2003', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('denis', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('allen', 'Ed Sheeran', 'Baby', '21321', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '21323', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 9),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('Vanesa', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', '2007', '2019', '2004', '2010', 'Jon Legend', 'Calvin Haris', 'Blero', 'Vjosa Osmani', 6),
('valon', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('valon', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('valon', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('valon', 'Ed Sheeran', 'Baby', '2014', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 12),
('Nexhmie', 'Ed Sheeran', 'Baby', '2000', 'Justin Bieber', '2005', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 10),
('denis', 'Ed Sheeran', 'dsaas', '2123', 'Justin Bieber', 'Mark Zuckerberg', '2018', '2004', '2000', 'Ed Sheeran', 'Michael Jackson', 'Fero', 'Vjosa Osmani', 7),
('denis', 'ed sheeren', 'baby', '2000', 'justin bieber ', 'Mark zuckerberg', '2018', '2004', '2018', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 6),
('egzon', 'Ed Sheeran', 'Baby', '123123', '2312', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 10),
('egzon', 'Ed Sheeran', 'Baby', '123123', '2312', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 10),
('egzon', 'Ed Sheeran', 'Baby', '123123', '2312', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 10),
('egzon', 'Ed Sheeran', 'Baby', '123123', '2312', 'Mark Zuckerberg', '2018', '2004', '2017', 'Jon Legend', 'Michael Jackson', 'Fero', 'Dua Lipa', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
