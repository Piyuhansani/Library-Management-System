-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2026 at 02:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` varchar(15) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `bookname`, `author`, `quantity`) VALUES
('001', 'java', 'James gosling', 4);

-- --------------------------------------------------------

--
-- Table structure for table `dvd`
--

CREATE TABLE `dvd` (
  `dvdid` varchar(10) NOT NULL,
  `dvdname` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dvd`
--

INSERT INTO `dvd` (`dvdid`, `dvdname`, `author`, `quantity`) VALUES
('001', 'A', 'rose', 3);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `studentid` varchar(15) NOT NULL,
  `bookid` varchar(15) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`studentid`, `bookid`, `issuedate`, `returndate`) VALUES
('2303s0834', '001', '2025-01-01', '2025-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `returnbooks`
--

CREATE TABLE `returnbooks` (
  `studentid` varchar(15) NOT NULL,
  `bookid` varchar(15) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returnbooks`
--

INSERT INTO `returnbooks` (`studentid`, `bookid`, `issuedate`, `returndate`) VALUES
('230s0834', '001', '2025-01-01', '2025-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(10) NOT NULL,
  `sname` varchar(15) NOT NULL,
  `sdegree` varchar(100) NOT NULL,
  `sbatch` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `sdegree`, `sbatch`) VALUES
('2303S0834', 'saduni', 'Software Engineering', 2),
('303S0835', 'hansani', 'computer science', 2),
('303S0836', 'mihini', 'computer science', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`dvdid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
