-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2023 at 11:43 PM
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
-- Database: `DatabaseInformation`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `activity_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `action_description` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `affected_entity_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`activity_id`, `user_id`, `action_type`, `action_description`, `timestamp`, `affected_entity_id`) VALUES
(44, 1, 'DELETE', 'Deleted user with username: Test4', '2023-12-03 23:50:09', 23),
(45, 1, 'ADD', 'ADD user with username: Leoo', '2023-12-03 23:50:52', 31),
(46, 1, 'DELETE', 'Deleted user with username: Leoo', '2023-12-03 23:50:54', 31),
(47, 1, 'DELETE', 'Deleted user with username: JoJo', '2023-12-03 23:51:11', 28),
(48, 1, 'DELETE', 'Deleted user with username: Sarvesh123', '2023-12-03 23:51:13', 29),
(49, 1, 'APPROVE', 'Approved loan application for applicant ID: 30', '2023-12-03 23:51:42', 1),
(50, 1, 'DELETE', 'Deleted user with username: 123', '2023-12-03 23:51:51', 30),
(51, 1, 'ADD', 'ADD user with username: JOJO', '2023-12-03 23:52:16', 32),
(52, 1, 'DENY', 'Denied loan application for applicant ID: 1', '2023-12-03 23:52:27', 2),
(53, 1, 'UPDATE', 'Updated user with ID: 3; Username changed from Sarvesh to Sar; ', '2023-12-04 13:44:44', 3),
(54, 1, 'ADD', 'ADD user with username: Sarvesh', '2023-12-04 13:46:02', 33),
(55, 1, 'ADD', 'ADD user with username: 1', '2023-12-04 14:08:25', 34),
(56, 1, 'APPROVE', 'Approved loan application for applicant ID: 1', '2023-12-04 15:02:25', 1),
(57, 1, 'APPROVE', 'Approved loan application for applicant ID: 34', '2023-12-05 02:15:43', 10000),
(58, 1, 'ADD', 'ADD user with username: Derek', '2023-12-05 02:16:12', 35),
(59, 1, 'APPROVE', 'Approved loan application for applicant ID: 32', '2023-12-05 15:21:00', 10001),
(60, 1, 'APPROVE', 'Approved loan application for applicant ID: 32', '2023-12-05 15:21:43', 10001),
(61, 1, 'APPROVE', 'Approved loan application for applicant ID: 3', '2023-12-05 17:25:09', 20);

-- --------------------------------------------------------

--
-- Table structure for table `banker`
--

CREATE TABLE `banker` (
  `accountid` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `balance` double NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `temporary_password` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`id`, `address`, `city`, `credit_limit`, `email`, `full_name`, `state`, `zip`, `user_id`) VALUES
(5, '123123', 'New York', 2000, '123@gmail.com', '123', 'NY', '10001', 32);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` bigint(20) NOT NULL,
  `loan` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `loan`, `address`, `city`, `email`, `full_name`, `state`, `zip`, `user_id`) VALUES
(4, 1111, '123', '123', '123@gmail.com', '123', '123', '123123', 3);

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

CREATE TABLE `loan_applications` (
  `id` bigint(20) NOT NULL,
  `applicant_id` bigint(20) DEFAULT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `applicationDate` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `application_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_applications`
--

INSERT INTO `loan_applications` (`id`, `applicant_id`, `amount`, `purpose`, `applicationDate`, `status`, `application_date`, `email`, `name`) VALUES
(10002, 32, 1000.00, 'School', '2023-12-05 15:22:03', 'Pending', NULL, 'jojo@uncg.edu', 'JoJo'),
(10003, 1, 10000000000.00, 'Big Boss', '2023-12-05 21:25:16', 'Pending', NULL, 'Leo@LASBanking.com', 'Leo Liu');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `transaction_date` datetime(6) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_funds`
--

CREATE TABLE `transfer_funds` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `transaction_date` datetime(6) DEFAULT NULL,
  `transfer_from` varchar(255) DEFAULT NULL,
  `transfer_to` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `balance` decimal(38,2) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `user_name`, `balance`, `account_number`, `dob`, `address`, `ssn`, `state`, `zip`) VALUES
(1, 'Leo@LASBanking.com', '$2a$10$tY60VCmhTLN8rxSlphNgzuSp0hgpLUN6fZm3paBEnYEXj6MUqoTdC', 'ADMIN', 'Leo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Adam@LASbanking.com', '$2a$10$zP4uXViu9UVTylZXnaUQ3ue/lQ1MSpQPZzwlhpm1FoYYiUGA3G.u.', 'BANKER', 'Adam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Sarvesh@gmail.com', '$2a$10$YBvHIlw8tPwqJ6t3IszkIeHOxzDb/GgFVKItrajF6UMsswHKWyReG', 'USER', 'Sar', 10000.00, '123456789\r\n', NULL, NULL, NULL, NULL, NULL),
(22, 'Leo@gmail.com', '$2a$10$WWwcXopSVdmoTWeuBhuMtOzcB7efV//fYleUuOPiXmDD10T5HlXsu', 'USER', 'Sunnyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Alex@LASBanking.com', '$2a$10$JypSwbo85Q5qskJRIZw6R.B/p/RuhP9N57UP5lcLrUr./oai8fpkK', 'ADMIN', 'Alex', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'JoJo@uncg.edu', '$2a$10$D926SHe7zgqfstAjioNX.eFgwY2VuR8CjI0Me/3HyAk/ngvfMEwJm', 'USER', 'JOJO', 100.00, '13291911', NULL, NULL, NULL, NULL, NULL),
(33, 'Sarvesh123@gmail.com', '$2a$10$MjHR8C5VofTx4cQm8aLaBOPiOe1TZB3Jzs5nrJmKLCua94pM5mXne', 'USER', 'Sarvesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'I@uncg.edu', '$2a$10$zWP0Kp5B78ce1yfsbM5V9.EX2B1oZ5eZ5OkcTWnhOj6K1f1kLyE8S', 'USER', '1', 1000.00, '100000', '2023-12-06', NULL, NULL, NULL, NULL),
(35, '123@lasbanking.com', '$2a$10$qNWaABLNKl5E8WZMRu0GOeweOpP40L7zO0VCQXVa1DSY.GFdIo.Sa', 'USER', 'Derek', 10000.00, '12358341', '2023-12-05', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `banker`
--
ALTER TABLE `banker`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_8fmcvsch6q5pw01d8aweairme` (`user_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_snp5j1a5kw8r7f2kv1pxu9hp0` (`user_id`);

--
-- Indexes for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_applicant` (`applicant_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_hpt4ld81e7mwp09foynfw6avc` (`user_id`);

--
-- Indexes for table `transfer_funds`
--
ALTER TABLE `transfer_funds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKs1t0inl6es6x0w8ubasr3xemu` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `banker`
--
ALTER TABLE `banker`
  MODIFY `accountid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credit_card`
--
ALTER TABLE `credit_card`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan_applications`
--
ALTER TABLE `loan_applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfer_funds`
--
ALTER TABLE `transfer_funds`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `FKh4wi9724muee2kp2c4ku1yia2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `FKxxm1yc1xty3qn1pthgj8ac4f` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD CONSTRAINT `fk_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `FK9e5ssu5c6n40gw5bgt5dg4mph` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `transfer_funds`
--
ALTER TABLE `transfer_funds`
  ADD CONSTRAINT `FKdnbgc45sda7n2glta5kkfonl8` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
