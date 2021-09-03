-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2020 at 05:38 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11812686_bus_ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_info`
--

CREATE TABLE `bus_info` (
  `bus_id` varchar(30) NOT NULL,
  `Bus_name` varchar(20) NOT NULL,
  `starting_location` varchar(30) DEFAULT NULL,
  `dept_time` varchar(30) NOT NULL,
  `drop_of_time` varchar(30) NOT NULL,
  `total_seat` int(30) NOT NULL,
  `Available_seat` int(30) NOT NULL,
  `fare` int(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_info`
--

INSERT INTO `bus_info` (`bus_id`, `Bus_name`, `starting_location`, `dept_time`, `drop_of_time`, `total_seat`, `Available_seat`, `fare`, `type`, `destination`) VALUES
('1236', ' Unique Poribohon', 'Dhaka', '11:00 AM', '6:00 PM', 50, 50, 570, 'NON AC', 'Sylhet'),
('1256', 'Ena Travels', 'Dhaka', '8:00 AM', '11:00 AM', 50, 50, 550, 'NON AC', 'Chittagong'),
('1346', 'Ena Travels', 'Dhaka', '10:00 AM', '4:00 PM', 50, 45, 550, 'Non AC', 'Khulna'),
('1556', 'Desh Travels', 'Dhaka', '11.00 AM', '4.00 PM', 50, 50, 1150, 'AC', 'Khulna'),
('1568', ' Hanif Poribohon', 'Dhaka', '9:00 AM', '5:00 PM', 50, 35, 950, 'AC', 'Barisal'),
('1569', 'Ena Travels', 'Dhaka', '11.00 PM', '5.00 AM', 50, 50, 750, 'AC', 'Khulna'),
('1876', 'Hanif Poribohon', 'Dhaka', '7:00 AM', '2:00 PM', 50, 50, 520, 'Non AC', 'Rajshahi'),
('1896', 'Nabil Poribohon', 'Dhaka', '3:00 PM', '5:00 PM', 50, 29, 600, 'Non AC', 'Rangpur'),
('2345', 'Shyamoli Poribohon', 'Dhaka', '7:00 AM', '4:00 PM5', 50, 50, 350, 'Non AC', 'Mymensingh');

-- --------------------------------------------------------

--
-- Table structure for table `bus_operator`
--

CREATE TABLE `bus_operator` (
  `oname` varchar(25) NOT NULL,
  `oid` varchar(8) NOT NULL,
  `headquarter` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `alternate_phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_operator`
--

INSERT INTO `bus_operator` (`oname`, `oid`, `headquarter`, `phone`, `alternate_phone`, `email`) VALUES
('Ena Travels', 'BD004', '22/B, Mohakhali, Dhaka', 1986556677, 1986556678, 'ena_bus@yahoo.com'),
('Hanif Poribohon', 'BD01', '34/A Gabtoli, Dhaka', 1715015204, 1945198915, 'hanif_bus@yahoo.com'),
('Saudia Poribohon', 'BD02', '29/A, Syedabad, Dhaka', 1950000555, 1950000556, 'saudia_bus@yahoo.com'),
('Akota Travels', 'BE007', 'Technical, Dhaka', 1866779909, 1866779901, 'akota_bus@gmail.com'),
('SR Travels', 'EF008', 'gabtoli,Dhaka', 1876767678, 1876767779, 'srtravelsbus@yahoo.com'),
('Shaymoli Poribohon ', 'GH001', '31/A, kalyanpur, Dhaka', 1986000000, 1986000001, 'Shamoli_bus@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(10) NOT NULL,
  `bus_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `passenger_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seats` int(10) NOT NULL,
  `total_fare` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `bus_id`, `passenger_email`, `date`, `seats`, `total_fare`) VALUES
(24, '1556', 'esf@yahoo.com', '23-01-19', 5, 4000),
(42, '1568', 'esf@gmail.com', '10-01-2020', 5, 2750),
(59, '1896', 'esf@yahoo.com', '20-01-19', 5, 3000),
(60, '1896', 'esf@yahoo.com', '20-01-19', 5, 3000),
(61, '1896', 'esf@yahoo.com', '23-01-19', 1, 600),
(62, '1346', 'shaba.sayeed@yahoo.com', '20-01-19', 5, 2750),
(63, '1896', 'shabasayeed98@yahoo.com', '23-01-19', 5, 3000),
(64, '1896', 'niloynirzon@gmail.com', '07-20-2020', 5, 3000),
(67, '1568', 'niloynirzon@gmail.com', '10-01-2020', 5, 4750),
(68, '1568', 'niloynirzon@gmail.com', '10-01-2020', 5, 4750);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `address`, `email`, `phone`) VALUES
(1, 'Md. Robiul Islam', 'admin', 'Jatrabari, Dhaka', 'niloynirzon@gmail.com', 1309072855),
(2, 'Md. Shaba Sayeed', 'admin01', 'Dhanmondi, Dhaka', 'shaba.sayeed@gmail.com', 1309072856);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_info`
--
ALTER TABLE `bus_info`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `bus_operator`
--
ALTER TABLE `bus_operator`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
