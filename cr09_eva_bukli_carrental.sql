-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 01:13 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_eva_bukli_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `additionail_cost`
--

CREATE TABLE `additionail_cost` (
  `additional_id` int(11) NOT NULL,
  `damage` varchar(55) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `fuel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `additionail_cost`
--

INSERT INTO `additionail_cost` (`additional_id`, `damage`, `price`, `fuel`) VALUES
(1, NULL, 0, 0),
(2, 'yes', 1500, 0),
(3, NULL, 300, 30),
(4, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `city` varchar(55) DEFAULT NULL,
  `ZIP` int(11) DEFAULT NULL,
  `street` varchar(55) DEFAULT NULL,
  `street_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `city`, `ZIP`, `street`, `street_number`) VALUES
(1, 'Vienna', 1220, 'Apfel', 5),
(2, 'Vienna', 1120, 'Orange', 35),
(3, 'Vienna', 1020, 'Kohlrabi', 15),
(4, 'Vienna', 1010, 'Apfel', 55),
(5, 'Vienna', 1210, 'Brokkoli', 34),
(6, 'Vienna', 1220, 'Rot', 35),
(7, 'Vienna', 1220, 'Apfel', 85),
(8, 'Vienna', 1220, 'Erdapfel', 105),
(9, 'Vienna', 1220, 'Kartoffel', 35),
(10, 'Vienna', 1020, 'Erdapfel', 85),
(11, 'Vienna', 1250, 'Marillen', 8),
(12, 'Vienna', 1120, 'Trauben', 38),
(13, 'Vienna', 1020, 'Katze', 95),
(14, 'Vienna', 1010, 'Apfel', 155),
(15, 'Vienna', 1210, 'Grün', 34),
(16, 'Vienna', 1280, 'Robot', 39),
(17, 'Vienna', 1220, 'Kraut', 88),
(18, 'Vienna', 1040, 'Erdapfel', 108),
(19, 'Vienna', 1030, 'Ketchup', 38),
(20, 'Vienna', 1020, 'Blau', 88),
(21, 'Vienna', 1170, 'Marillenknödel', 18),
(22, 'Vienna', 1120, 'Trikolor', 138),
(23, 'Vienna', 1070, 'Kater', 195),
(24, 'Vienna', 1010, 'Apfelsaft', 175),
(25, 'Vienna', 1010, 'Grün', 134),
(26, 'Vienna', 1280, 'Robot', 139),
(27, 'Vienna', 1120, 'Kleid', 188),
(28, 'Vienna', 1240, 'Erdbeer', 78),
(29, 'Vienna', 1130, 'Koala', 38),
(30, 'Vienna', 1220, 'Pingvin', 28),
(31, 'Vienna', 1250, 'Marillen', 28),
(32, 'Vienna', 1120, 'Trauben', 32),
(33, 'Vienna', 1020, 'Katze', 94),
(34, 'Vienna', 1040, 'Apfel', 125),
(35, 'Vienna', 1240, 'Grün', 34),
(36, 'Vienna', 1240, 'Robot', 39),
(37, 'Vienna', 1240, 'Kraut', 78),
(38, 'Vienna', 1040, 'Erdapfel', 138),
(39, 'Vienna', 1070, 'Ketchup', 39),
(40, 'Vienna', 1030, 'Blau', 87),
(41, 'Vienna', 1250, 'Marillen', 9),
(42, 'Vienna', 1120, 'Trauben', 38),
(43, 'Vienna', 1020, 'Katze', 94),
(44, 'Vienna', 1010, 'Apfel', 155),
(45, 'Vienna', 1210, 'Stuhl', 24),
(46, 'Vienna', 1280, 'Rind', 39),
(47, 'Vienna', 1220, 'Kraut', 88),
(48, 'Vienna', 1040, 'Erdapfel', 17),
(49, 'Vienna', 1030, 'Ketchup', 8),
(50, 'Vienna', 1430, 'Krokodil', 4);

-- --------------------------------------------------------

--
-- Table structure for table `available`
--

CREATE TABLE `available` (
  `available_id` int(11) NOT NULL,
  `available_from` date DEFAULT NULL,
  `available_until` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `available`
--

INSERT INTO `available` (`available_id`, `available_from`, `available_until`) VALUES
(1, '2018-11-07', '2018-11-23'),
(2, '2018-11-07', '2018-12-23'),
(3, '2018-11-05', '2018-11-13'),
(4, '2018-11-17', '2018-11-22'),
(5, '2018-11-12', '2018-11-26'),
(6, '2018-11-07', '2018-12-23'),
(7, '2018-12-24', '2018-12-28'),
(8, '2018-12-07', '2018-12-29'),
(9, '2018-12-02', '2018-12-23'),
(10, '2018-11-10', '2018-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `FK_available_id` int(11) DEFAULT NULL,
  `FK_company_id` int(11) DEFAULT NULL,
  `FK_manufacturer_id` int(11) DEFAULT NULL,
  `FK_description_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `FK_available_id`, `FK_company_id`, `FK_manufacturer_id`, `FK_description_id`) VALUES
(1, 1, 1, 1, 3),
(2, 2, 2, 2, 5),
(3, 3, 1, 3, 10),
(4, 4, 2, 4, 8),
(5, 5, 3, 5, 9),
(6, 6, 3, 6, 6),
(7, 7, 1, 7, 7),
(8, 10, 2, 8, 1),
(9, 8, 1, 9, 2),
(10, 9, 3, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `car_description`
--

CREATE TABLE `car_description` (
  `description_id` int(11) NOT NULL,
  `licence_plate` varchar(55) DEFAULT NULL,
  `car_type` varchar(55) DEFAULT NULL,
  `fuel_type` varchar(55) DEFAULT NULL,
  `person_capacity` int(11) DEFAULT NULL,
  `color` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_description`
--

INSERT INTO `car_description` (`description_id`, `licence_plate`, `car_type`, `fuel_type`, `person_capacity`, `color`) VALUES
(1, 'GHJ-345', '	Passat', 'gasoline', 5, 'black'),
(2, 'FGH-567', 'Astra', 'diesel', 4, 'white'),
(3, 'FGH-987', 'A3', 'gasoline', 5, 'black'),
(4, 'CVB-567', 'A6', 'gasoline', 3, 'silver'),
(5, 'ERT-567', '508', 'gasoline', 5, 'black'),
(6, 'ASD-234', 'Civic', 'diesel', 4, 'red'),
(7, 'QWE-897', 'S90', 'hybrid', 4, 'blue'),
(8, 'WER-789', 'SuperB', 'diesel', 6, 'white'),
(9, 'RTZ-567', 'Ignis', 'electric', 5, 'gray'),
(10, 'YXC-123', 'Yaris', 'diesel', 4, 'white');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(55) DEFAULT NULL,
  `contact_person` varchar(55) DEFAULT NULL,
  `FK_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `contact_person`, `FK_address_id`) VALUES
(1, 'SchnellAutos', 'Grün Grünwald', 11),
(2, 'LangsamLand', 'Rot Ruth', 12),
(3, 'RaketaTours', 'Konkret Kornel', 13);

-- --------------------------------------------------------

--
-- Table structure for table `control`
--

CREATE TABLE `control` (
  `control_id` int(11) NOT NULL,
  `controll_date` date DEFAULT NULL,
  `result` varchar(55) DEFAULT NULL,
  `FK_repair_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `control`
--

INSERT INTO `control` (`control_id`, `controll_date`, `result`, `FK_repair_id`) VALUES
(1, '2018-11-29', 'empty tank', 1),
(2, '2018-11-29', 'empty tank', 1),
(3, '2018-11-27', 'damaged window', 2),
(4, '2018-11-19', 'ok', NULL),
(5, '2018-11-27', 'ok', NULL),
(6, '2018-11-29', 'ok', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custtomer_account`
--

CREATE TABLE `custtomer_account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(55) DEFAULT NULL,
  `membership_card` int(11) DEFAULT NULL,
  `FK_reservation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custtomer_account`
--

INSERT INTO `custtomer_account` (`account_id`, `account_name`, `membership_card`, `FK_reservation_id`) VALUES
(1, 'T-Rex', 45, NULL),
(2, 'Jon_snow', 55, NULL),
(3, 'scv', 43, NULL),
(4, 'jimraynor', 233, NULL),
(5, 'sarah_connor3', 4432, 1),
(6, 'massa', 3245, NULL),
(7, 'kubica45', 445, 5),
(8, 'raikkonnen', 22345, 2),
(9, 'safetycar', 77, 3),
(10, 'poleposition', 4785, 4);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(55) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `driver_license` int(11) DEFAULT NULL,
  `mail_address` varchar(55) DEFAULT NULL,
  `tel_num` int(11) DEFAULT NULL,
  `FK_address_id` int(11) DEFAULT NULL,
  `FK_account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `date_of_birth`, `driver_license`, `mail_address`, `tel_num`, `FK_address_id`, `FK_account_id`) VALUES
(1, 'Miki Haikkinen', '1965-07-21', 32423423, 'miki@haki.com', 123456789, 20, 1),
(2, 'Kimi Raikkonnen', '1976-09-13', 123456, 'raik@kon.com', 654382955, 21, 8),
(3, 'Keanu Reeves', '1976-09-13', 87653456, '33rrwtik@kon.com', 65444445, 22, 2),
(4, 'Joska Pista', '1976-09-13', 143556, 'bbbik@kon.com', 65435555, 23, 3),
(5, 'Meg Ryan', '1976-05-13', 3411156, 'rzzzik@kon.com', 654382955, 24, 4),
(6, 'Tim Robbins', '1956-04-13', 124446, 'rretek@kon.com', 65422222, 25, 5),
(7, 'Julia Roberts', '1976-10-13', 1266666, 'fdgk@kon.com', 654333335, 26, 6),
(8, 'Jack Nicholson', '1956-09-13', 166556, '555gfdk@kon.com', 11111155, 27, 7),
(9, 'Alan Rickman', '1966-09-13', 777776, '000ik@kon.com', 650000055, 28, 10),
(10, 'Harry Potter', '1986-09-13', 12347777, 'razzzzk@kon.com', 2147483647, 29, 9),
(11, 'Walter White', '1955-05-21', 6347456, 'heisenberg@lab.com', 87654325, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `car_deposit` int(11) DEFAULT NULL,
  `rental_cost` int(11) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `payment_type` varchar(55) DEFAULT NULL,
  `FK_additional_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `car_deposit`, `rental_cost`, `due_date`, `payment_type`, `FK_additional_id`) VALUES
(1, 200, 545, '2018-11-03 13:23:34', 'card', 1),
(2, 200, 2045, '2018-11-07 13:23:34', 'card', 1),
(3, 200, 745, '2018-11-06 13:23:34', 'cash', 2),
(4, 200, 145, '2018-11-05 13:23:34', 'cash', 3),
(5, 200, 105, '2018-11-04 13:23:34', 'card', 4);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `manufacturer_name` varchar(55) DEFAULT NULL,
  `contact_person` varchar(55) DEFAULT NULL,
  `FK_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `manufacturer_name`, `contact_person`, `FK_address_id`) VALUES
(1, 'Audi', 'Apfel Mark', 1),
(2, 'Peageut', 'Orange Otto', 2),
(3, 'Toyota', 'Kohlrabi Karoline', 3),
(4, 'Skoda', 'Apfel Rachel', 4),
(5, 'Suzuki', 'Brokkoli Bobby', 5),
(6, 'Honda', 'Rot Rudolf', 6),
(7, 'Volvo', 'Apfel Armin', 7),
(8, 'Volkswagen', 'Erdapfel Ervin', 8),
(9, 'Opel', 'Kartoffel Ofelia', 9),
(10, 'Mercedes Benz', 'Erdapfel Peter', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `pickup_id` int(11) NOT NULL,
  `pickup_time` datetime DEFAULT NULL,
  `FK_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`pickup_id`, `pickup_time`, `FK_address_id`) VALUES
(1, '2018-11-06 08:02:12', 15),
(2, '2018-11-11 09:02:12', 15),
(3, '2018-11-09 07:02:12', 16),
(4, '2018-11-09 19:02:12', 16);

-- --------------------------------------------------------

--
-- Table structure for table `rent_method`
--

CREATE TABLE `rent_method` (
  `rent_id` int(11) NOT NULL,
  `FK_invoice_id` int(11) DEFAULT NULL,
  `FK_pickup_id` int(11) DEFAULT NULL,
  `FK_return_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rent_method`
--

INSERT INTO `rent_method` (`rent_id`, `FK_invoice_id`, `FK_pickup_id`, `FK_return_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `repair`
--

CREATE TABLE `repair` (
  `repair_id` int(11) NOT NULL,
  `reapair_date` date DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repair`
--

INSERT INTO `repair` (`repair_id`, `reapair_date`, `cost`) VALUES
(1, '2018-12-01', 245),
(2, '2018-11-30', 1445);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `reservation_type` varchar(55) DEFAULT NULL,
  `FK_reservation_date_id` int(11) DEFAULT NULL,
  `FK_car_id` int(11) DEFAULT NULL,
  `FK_rent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `reservation_type`, `FK_reservation_date_id`, `FK_car_id`, `FK_rent_id`) VALUES
(1, 'online', 1, 3, 1),
(2, 'online', 2, 5, 2),
(3, 'personal', 3, 6, 3),
(4, 'online', 4, 4, 4),
(5, 'online', 5, 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_date`
--

CREATE TABLE `reservation_date` (
  `reservation_date_id` int(11) NOT NULL,
  `make_reservation` datetime DEFAULT NULL,
  `min_day` int(11) DEFAULT NULL,
  `max_day` int(11) DEFAULT NULL,
  `start_reservation` date DEFAULT NULL,
  `end_reservation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation_date`
--

INSERT INTO `reservation_date` (`reservation_date_id`, `make_reservation`, `min_day`, `max_day`, `start_reservation`, `end_reservation`) VALUES
(1, '2018-09-20 21:42:11', 1, 7, '2018-11-06', '2018-11-07'),
(2, '2018-09-23 13:42:11', 1, 7, '2018-11-11', '2018-11-14'),
(3, '2018-09-22 01:42:11', 2, 14, '2018-11-09', '2018-11-23'),
(4, '2018-09-13 21:42:11', 2, 30, '2018-11-09', '2018-11-17'),
(5, '2018-09-01 11:42:11', 1, 7, '2018-11-23', '2018-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `returned`
--

CREATE TABLE `returned` (
  `returned_id` int(11) NOT NULL,
  `return_time` datetime DEFAULT NULL,
  `FK_address_id` int(11) DEFAULT NULL,
  `FK_control_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `returned`
--

INSERT INTO `returned` (`returned_id`, `return_time`, `FK_address_id`, `FK_control_id`) VALUES
(1, '2018-11-07 21:12:12', 15, 1),
(2, '2018-11-14 21:12:12', 15, 2),
(3, '2018-11-23 11:12:12', 16, 3),
(4, '2018-11-16 01:12:12', 16, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additionail_cost`
--
ALTER TABLE `additionail_cost`
  ADD PRIMARY KEY (`additional_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD PRIMARY KEY (`available_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `FK_available_id` (`FK_available_id`),
  ADD KEY `FK_company_id` (`FK_company_id`),
  ADD KEY `FK_manufacturer_id` (`FK_manufacturer_id`),
  ADD KEY `FK_description_id` (`FK_description_id`);

--
-- Indexes for table `car_description`
--
ALTER TABLE `car_description`
  ADD PRIMARY KEY (`description_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `FK_address_id` (`FK_address_id`);

--
-- Indexes for table `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`control_id`),
  ADD KEY `FK_repair_id` (`FK_repair_id`);

--
-- Indexes for table `custtomer_account`
--
ALTER TABLE `custtomer_account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `FK_reservation_id` (`FK_reservation_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `FK_address_id` (`FK_address_id`),
  ADD KEY `FK_account_id` (`FK_account_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `FK_additional_id` (`FK_additional_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD KEY `FK_address_id` (`FK_address_id`);

--
-- Indexes for table `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`pickup_id`),
  ADD KEY `FK_address_id` (`FK_address_id`);

--
-- Indexes for table `rent_method`
--
ALTER TABLE `rent_method`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `FK_invoice_id` (`FK_invoice_id`),
  ADD KEY `FK_pickup_id` (`FK_pickup_id`),
  ADD KEY `FK_return_id` (`FK_return_id`);

--
-- Indexes for table `repair`
--
ALTER TABLE `repair`
  ADD PRIMARY KEY (`repair_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `FK_reservation_date_id` (`FK_reservation_date_id`),
  ADD KEY `FK_car_id` (`FK_car_id`),
  ADD KEY `FK_rent_id` (`FK_rent_id`);

--
-- Indexes for table `reservation_date`
--
ALTER TABLE `reservation_date`
  ADD PRIMARY KEY (`reservation_date_id`);

--
-- Indexes for table `returned`
--
ALTER TABLE `returned`
  ADD PRIMARY KEY (`returned_id`),
  ADD KEY `FK_address_id` (`FK_address_id`),
  ADD KEY `FK_control_id` (`FK_control_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`FK_available_id`) REFERENCES `available` (`available_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`FK_company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `car_ibfk_3` FOREIGN KEY (`FK_manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`),
  ADD CONSTRAINT `car_ibfk_4` FOREIGN KEY (`FK_description_id`) REFERENCES `car_description` (`description_id`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`FK_address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`FK_repair_id`) REFERENCES `repair` (`repair_id`);

--
-- Constraints for table `custtomer_account`
--
ALTER TABLE `custtomer_account`
  ADD CONSTRAINT `custtomer_account_ibfk_1` FOREIGN KEY (`FK_reservation_id`) REFERENCES `reservation` (`reservation_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`FK_address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`FK_account_id`) REFERENCES `custtomer_account` (`account_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`FK_additional_id`) REFERENCES `additionail_cost` (`additional_id`);

--
-- Constraints for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD CONSTRAINT `manufacturer_ibfk_1` FOREIGN KEY (`FK_address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `pickup`
--
ALTER TABLE `pickup`
  ADD CONSTRAINT `pickup_ibfk_1` FOREIGN KEY (`FK_address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `rent_method`
--
ALTER TABLE `rent_method`
  ADD CONSTRAINT `rent_method_ibfk_1` FOREIGN KEY (`FK_invoice_id`) REFERENCES `invoice` (`invoice_id`),
  ADD CONSTRAINT `rent_method_ibfk_2` FOREIGN KEY (`FK_pickup_id`) REFERENCES `pickup` (`pickup_id`),
  ADD CONSTRAINT `rent_method_ibfk_3` FOREIGN KEY (`FK_return_id`) REFERENCES `returned` (`returned_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`FK_reservation_date_id`) REFERENCES `reservation_date` (`reservation_date_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`FK_car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`FK_rent_id`) REFERENCES `rent_method` (`rent_id`);

--
-- Constraints for table `returned`
--
ALTER TABLE `returned`
  ADD CONSTRAINT `returned_ibfk_1` FOREIGN KEY (`FK_address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `returned_ibfk_2` FOREIGN KEY (`FK_control_id`) REFERENCES `control` (`control_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
