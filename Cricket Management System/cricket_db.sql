-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 04:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackid` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackid`, `id`, `email`, `description`, `created_at`) VALUES
(1, 'yogesh@5364', 'yssaini0117@gmail.com', 'I love cricket', '2023-09-14 10:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `playerid` int(11) NOT NULL,
  `playername` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `batstyle` varchar(255) NOT NULL,
  `bowlstyle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`playerid`, `playername`, `nationality`, `role`, `batstyle`, `bowlstyle`) VALUES
(1, 'Virat Kohli', 'India', 'Batsman', 'Right Handed', 'Right-arm medium'),
(2, 'Steven Smith', 'Australia', 'Batsman', 'Right Handed', 'Right-arm legbreak'),
(3, 'Ben Stokes', 'England', 'Allrounder', 'Left Handed', 'Right-arm fast-medium'),
(4, 'Rohit Sharma', 'India', 'Batsman', 'Right Handed', 'Right-arm offbreak'),
(5, 'Trent Boult', 'New Zealand', 'Bowler', 'Right Handed', 'Left-arm fast-medium'),
(6, 'Quinton de Kock', 'South Africa', 'WK-Batsman', 'Left Handed', ''),
(7, 'Jasprit Bumrah', 'India', 'Bowler', 'Right Handed', 'Right-arm fast'),
(8, 'Glenn Maxwell', 'Australia', 'Allrounder', 'Right Handed', 'Right-arm offbreak'),
(9, 'Chris Gayle', 'West Indies', 'Batsman', 'Left Handed', 'Right-arm offbreak'),
(10, 'Tom Latham', 'New Zealand', 'Batsman', 'Left Handed', 'Right-arm medium'),
(11, 'Rashid Khan', 'Afghanistan', 'Allrounder', 'Right Handed', 'Right-arm legbreak'),
(12, 'Mitchell Starc', 'Australia', 'Bowler', 'Right Handed', 'Left-arm fast'),
(13, 'MS Dhoni', 'India', 'WK-Batsman', 'Right Handed', 'Right-arm medium'),
(14, 'Joe Root', 'England', 'Batsman', 'Right Handed', 'Right-arm offbreak'),
(15, 'Paul Stirling', 'Ireland', 'Allrounder', 'Right Handed', 'Right-arm offbreak'),
(16, 'Lasith Malinga', 'Sri Lanka', 'Bowler', 'Right Handed', 'Right-arm fast'),
(17, 'Shikhar Dhawan', 'India', 'Batsman', 'Left Handed', 'Right-arm offbreak'),
(18, 'Nicholas Pooran', 'West Indies', 'WK-Batsman', 'Left Handed', 'Right-arm offbreak'),
(19, 'Dale Steyn', 'South Africa', 'Bowler', 'Right Handed', 'Right-arm fast'),
(20, 'Hardik Pandya', 'India', 'Allrounder', 'Right Handed', 'Right-arm fast-medium'),
(21, 'David Warner', 'Australia', 'Batsman', 'Left Handed', 'Right-arm legbreak'),
(22, 'Kane Williamson', 'New Zealand', 'Batsman', 'Right Handed', 'Right-arm offbreak'),
(23, 'Ravindra Jadeja', 'India', 'Allrounder', 'Left Handed', 'Left-arm orthodox'),
(24, 'Jos Buttler', 'England', 'WK-Batsman', 'Right Handed', 'Right-arm offbreak'),
(25, 'Yuzvendra Chahal', 'India', 'Bowler', 'Right Handed', 'Right-arm legbreak');

-- --------------------------------------------------------

--
-- Table structure for table `playerranking`
--

CREATE TABLE `playerranking` (
  `playerranking` int(11) NOT NULL,
  `playername` varchar(255) NOT NULL,
  `playerid` int(11) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playerranking`
--

INSERT INTO `playerranking` (`playerranking`, `playername`, `playerid`, `teamname`, `rating`) VALUES
(1, 'Suryakumar Yadav', 0, 'India', 889),
(2, 'Mohammad Rizwan', 0, 'Pakisthan', 811),
(3, 'Babar Azam', 0, 'Pakisthan', 756),
(4, 'Aiden Markram', 0, 'South Africa', 756),
(5, 'Rilee Rossouw', 0, 'South Africa', 702),
(6, 'Dawid Malan', 0, 'England', 692),
(7, 'Muhammad Waseem', 0, 'UAE', 691),
(8, 'Jos Buttler', 24, 'England', 673),
(9, 'Aaron Finch', 0, 'Australia', 660),
(10, 'Reeza Hendricks', 0, 'South Africa', 657),
(11, 'Mitchell Marsh', 0, 'Australia', 645),
(12, 'Devon Conway', 0, 'New Zealand', 642),
(13, 'Brandon King', 0, 'West Indies', 637),
(14, 'Glenn Phillips', 0, 'New Zealand', 635),
(15, 'Nicholas Pooran', 18, 'West Indies', 624),
(16, 'Quinton de Kock', 6, 'South Africa', 622),
(17, 'Alex Hales', 0, 'England', 617),
(18, 'Pathum Nissanka', 0, 'Sri Lanka', 611),
(19, 'Litton Das', 0, 'Bangladesh', 588),
(20, 'Rahmanullah Gurbaz', 0, 'Afghanistan', 579),
(21, 'Virat Kohli', 1, 'India', 570),
(22, 'Finn Allen', 0, 'New Zealand', 560),
(23, 'Kariyawasa Asalanka', 0, 'Sri Lanka', 559),
(24, 'Kusal Mendis', 0, 'Sri Lanka', 559),
(25, 'Richard Berrington', 0, 'Scotland', 557);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `sno` int(10) NOT NULL,
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`sno`, `id`, `name`, `phone`, `email`, `password`, `confirmpassword`, `created_at`) VALUES
(1, 'dhruv@123', 'Rana Dhruv', '7878784723', 'dhruv123@gmail.com', 'Dhruv@123', 'Dhruv@123', '2023-09-14 10:26:29'),
(4, 'sachin@123', 'Sachin ', '9832872364', 'sachin123@gmail.com', 'Sachin@123', 'Sachin@123', '2023-09-14 10:28:50'),
(2, 'Vidip@123', 'Vidip Gupta', '8968598595', 'vidip123@gmail.com', 'Vidip@123', 'Vidip@123', '2023-09-14 10:25:35'),
(5, 'vikash@123', 'Vikash Kumar', '7878783478', 'vikash123@gmail.com', 'Vikash@123', 'Vikash@123', '2023-09-14 10:29:25'),
(3, 'yogesh@5364', 'Yogesh Saini', '9836874973', 'yssaini0117@gmail.com', 'Saini@123', 'Saini@123', '2023-09-14 09:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamid` int(11) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `captain` varchar(255) NOT NULL,
  `headcoach` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamid`, `teamname`, `captain`, `headcoach`) VALUES
(9, 'Afganistan', 'Rashid Khan', 'Jonathan Trott'),
(2, 'Australia', 'Pat Cummins', 'Andrew McDonald'),
(10, 'Bangladesh', 'Shakib Al Hassan', 'Chandika Hathurusingha'),
(16, 'Canada', 'Saad Bin Zafar', 'Pubudu Dassanayake'),
(4, 'England', 'Jos Buttler', 'Matthew Mott'),
(21, 'Hong Kong', 'Nizakat Khan', 'Simon Willis'),
(1, 'India', 'Rohit Sharma', 'Rahul Dravid'),
(11, 'Ireland', 'Andrew Balbirnie', 'Heinrich Malan'),
(25, 'Jersey', 'Charles Perchard', 'Neil MacRae'),
(13, 'Kenya', 'Sachin Bhudia', 'Mike Hesson'),
(24, 'Malaysia', 'Ahmad Faiz', 'Bilal Asad'),
(14, 'Nepal', 'Rohit Paudel', 'Monty Desai'),
(18, 'Netherlands', 'Scott Edwards', 'Ryan ten Doeschate'),
(3, 'New Zealand', 'Kane Williamson', 'Gary Stead'),
(20, 'Oman', 'Zeeshan Maqsood', 'Duleep Mendis'),
(5, 'Pakisthan', 'Babar Azam', 'Misbah-ul-Haq'),
(22, 'Qatar', 'Mohammed Rizlan', 'Asadullah Khan'),
(19, 'Scotland', 'Richie Berrington', 'Shane Burger'),
(6, 'South Africa', 'David Miller', 'Rob Walter'),
(8, 'Sri Lanka', 'Dasun Shanaka', 'Chris Silverwood'),
(15, 'UAE', 'Muhammad Waseem', 'Mudassar Nazar'),
(23, 'Uganda', 'Brian Masaba', 'Lawrence Mahatlane'),
(17, 'USA', 'Monank Patel', 'Jagadeesh Arunkumar'),
(7, 'West Indies', 'Nicolas Pooran', 'Daren Sammy'),
(12, 'Zimbabwe', 'Sean Williams', 'Dave Houghton');

-- --------------------------------------------------------

--
-- Table structure for table `teamranking`
--

CREATE TABLE `teamranking` (
  `teamposition` int(11) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `teamid` int(11) NOT NULL,
  `matches` int(11) NOT NULL,
  `teampoints` int(11) NOT NULL,
  `teamrating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teamranking`
--

INSERT INTO `teamranking` (`teamposition`, `teamname`, `teamid`, `matches`, `teampoints`, `teamrating`) VALUES
(1, 'India', 0, 59, 264, 15589),
(2, 'England', 0, 40, 261, 10422),
(3, 'Pakisthan', 0, 50, 254, 12719),
(4, 'New Zealand', 0, 50, 254, 12701),
(5, 'South Africa', 0, 33, 251, 8278),
(6, 'Australia', 0, 32, 250, 7984),
(7, 'West Indies', 0, 39, 243, 9463),
(8, 'Sri Lanka', 0, 37, 237, 8774),
(9, 'Bangladesh', 0, 41, 224, 9192),
(10, 'Afghanistan', 0, 29, 216, 6260),
(11, 'Zimbabwe', 0, 36, 197, 7087),
(12, 'Ireland', 0, 44, 193, 8487),
(13, 'Namibia', 0, 17, 190, 3228),
(14, 'Scotland', 0, 18, 190, 3412),
(15, 'UAE', 0, 20, 182, 3637),
(16, 'Netherlands', 0, 19, 181, 3445),
(17, 'Nepal', 0, 14, 178, 2491),
(18, 'Hong Kong', 0, 14, 147, 2052),
(19, 'Canada', 0, 13, 144, 1871),
(20, 'Oman', 0, 13, 140, 1823),
(21, 'United States', 0, 9, 131, 1183),
(22, 'Uganda', 0, 53, 130, 6903),
(23, 'Jersey', 0, 19, 128, 2427),
(24, 'Malaysia', 0, 31, 124, 3839),
(25, 'Qatar', 0, 7, 119, 832);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`playerid`);

--
-- Indexes for table `playerranking`
--
ALTER TABLE `playerranking`
  ADD PRIMARY KEY (`playerranking`),
  ADD KEY `playerid` (`playerid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sno` (`sno`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamname`);

--
-- Indexes for table `teamranking`
--
ALTER TABLE `teamranking`
  ADD PRIMARY KEY (`teamposition`),
  ADD KEY `teamid` (`teamid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id`) REFERENCES `signup` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
