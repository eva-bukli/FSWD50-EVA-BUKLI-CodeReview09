-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2018 at 02:39 PM
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
  `fuel` int(11) DEFAULT NULL,
  `damage` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `available`
--

CREATE TABLE `available` (
  `available_id` int(11) NOT NULL,
  `available_from` date DEFAULT NULL,
  `available_until` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `pickup_id` int(11) NOT NULL,
  `pickup_time` datetime DEFAULT NULL,
  `FK_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `repair`
--

CREATE TABLE `repair` (
  `repair_id` int(11) NOT NULL,
  `reapair_date` date DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `returned`
--

CREATE TABLE `returned` (
  `returned_id` int(11) NOT NULL,
  `return_time` datetime DEFAULT NULL,
  `result` varchar(55) DEFAULT NULL,
  `FK_address_id` int(11) DEFAULT NULL,
  `FK_control_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
