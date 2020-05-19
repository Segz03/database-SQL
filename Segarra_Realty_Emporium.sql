-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2019 at 05:58 AM
-- Server version: 10.1.40-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.8-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Segarra_Realty_Emporium`
--

-- --------------------------------------------------------

--
-- Table structure for table `bhouse`
--

CREATE TABLE `bhouse` (
  `bcid` smallint(6) UNSIGNED NOT NULL,
  `bstyle` tinyint(1) NOT NULL,
  `bbeds` tinyint(2) NOT NULL,
  `bbaths` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bhouse`
--

INSERT INTO `bhouse` (`bcid`, `bstyle`, `bbeds`, `bbaths`) VALUES
(20001, 2, 4, '3.0'),
(20002, 2, 3, '2.0'),
(20003, 2, 2, '2.0'),
(20006, 1, 2, '1.5');

-- --------------------------------------------------------

--
-- Table structure for table `bland`
--

CREATE TABLE `bland` (
  `bcid` smallint(6) UNSIGNED NOT NULL,
  `lmin` decimal(9,2) NOT NULL,
  `lmax` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bland`
--

INSERT INTO `bland` (`bcid`, `lmin`, `lmax`) VALUES
(20003, '15000.00', '69000.00'),
(20004, '48000.00', '100000.00'),
(20005, '25000.00', '50000.00'),
(20007, '39400.00', '52000.00');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `bcid` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`bcid`) VALUES
(20001),
(20002),
(20003),
(20004),
(20005),
(20006),
(20007);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `cid` smallint(6) NOT NULL,
  `cfname` tinytext NOT NULL,
  `clname` tinytext NOT NULL,
  `rid` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`cid`, `cfname`, `clname`, `rid`) VALUES
(20001, 'Harry', 'Potter', 10001),
(20002, 'Ron', 'Weasley', 10002),
(20003, 'Hermione', 'Granger', 10003),
(20004, 'Neville', 'Longbottom', 10001),
(20005, 'Severous', 'Snape', 10004),
(20006, 'Ginny', 'Weasley', 10004),
(20007, 'Draco', 'Malfoy', 10004),
(30001, 'Jon', 'Snow', 10002),
(30002, 'Daenerys', 'Targaryen', 10003),
(30003, 'Tyrion', 'Lannister', 10001),
(30004, 'Arya', 'Stark', 10002),
(30005, 'Samwell', 'Tarly', 10003),
(30006, 'Tormund', 'Giantsbane', 10001);

-- --------------------------------------------------------

--
-- Table structure for table `phouse`
--

CREATE TABLE `phouse` (
  `phid` smallint(6) UNSIGNED NOT NULL,
  `pstyle` tinyint(1) NOT NULL,
  `pbeds` tinyint(2) NOT NULL,
  `pbaths` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phouse`
--

INSERT INTO `phouse` (`phid`, `pstyle`, `pbeds`, `pbaths`) VALUES
(50001, 2, 3, '2.0'),
(50002, 2, 4, '3.0'),
(50003, 1, 4, '2.0');

-- --------------------------------------------------------

--
-- Table structure for table `pland`
--

CREATE TABLE `pland` (
  `plid` smallint(6) UNSIGNED NOT NULL,
  `acreage` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pland`
--

INSERT INTO `pland` (`plid`, `acreage`) VALUES
(40001, '49000.00'),
(40002, '38275.00'),
(40003, '96050.00');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `pid` smallint(6) UNSIGNED NOT NULL,
  `street` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `state` tinytext NOT NULL,
  `zip` tinytext NOT NULL,
  `listing price` int(11) UNSIGNED NOT NULL,
  `scid` smallint(6) NOT NULL,
  `flag` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`pid`, `street`, `city`, `state`, `zip`, `listing price`, `scid`, `flag`) VALUES
(40001, '636 S WebsterSt', 'Naperville', 'IL', '60540', 984500, 30001, 'L'),
(40002, '8s010 Brenwood Dr', 'Naperville', 'IL', '60540', 875000, 30004, 'L'),
(40003, '27w270 80th St', 'Naperville', 'IL', '60540', 860000, 30006, 'L'),
(50001, '24w554 Burlington Ave', 'Naperville', 'IL', '60563', 691500, 30002, 'H'),
(50002, '703 Parkside Rd', 'Naperville', 'IL', '60540', 1127700, 30003, 'H'),
(50003, '320 Spruce Dr', 'Naperville', 'IL', '60540', 1025000, 30005, 'H');

-- --------------------------------------------------------

--
-- Table structure for table `realtor`
--

CREATE TABLE `realtor` (
  `rid` smallint(6) NOT NULL,
  `rfname` tinytext NOT NULL,
  `rlname` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realtor`
--

INSERT INTO `realtor` (`rid`, `rfname`, `rlname`) VALUES
(10001, 'Ron', 'Swanson'),
(10002, 'Andy', 'Dwyer'),
(10003, 'Leslie', 'Knope'),
(10004, 'April', 'Ludgate');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `scid` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`scid`) VALUES
(30001),
(30002),
(30003),
(30004),
(30005),
(30006);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `pid` smallint(6) UNSIGNED NOT NULL,
  `bcid` smallint(6) NOT NULL,
  `selling price` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`pid`, `bcid`, `selling price`) VALUES
(40001, 20005, 1100000),
(40002, 20007, 1050000),
(40003, 20004, 800000),
(50001, 20002, 721500),
(50002, 20006, 940000),
(50003, 20003, 1150900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bhouse`
--
ALTER TABLE `bhouse`
  ADD PRIMARY KEY (`bcid`);

--
-- Indexes for table `bland`
--
ALTER TABLE `bland`
  ADD PRIMARY KEY (`bcid`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`bcid`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `phouse`
--
ALTER TABLE `phouse`
  ADD PRIMARY KEY (`phid`);

--
-- Indexes for table `pland`
--
ALTER TABLE `pland`
  ADD PRIMARY KEY (`plid`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `realtor`
--
ALTER TABLE `realtor`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`bcid`) REFERENCES `client` (`cid`);

--
-- Constraints for table `phouse`
--
ALTER TABLE `phouse`
  ADD CONSTRAINT `phouse_ibfk_1` FOREIGN KEY (`phid`) REFERENCES `property` (`pid`);

--
-- Constraints for table `pland`
--
ALTER TABLE `pland`
  ADD CONSTRAINT `pland_ibfk_1` FOREIGN KEY (`plid`) REFERENCES `property` (`pid`);

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`scid`) REFERENCES `client` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
