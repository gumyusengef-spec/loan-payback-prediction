-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2025 at 09:50 AM
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
-- Database: `loan_prediction_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `loan_predictions`
--

CREATE TABLE `loan_predictions` (
  `id` int(11) NOT NULL,
  `annual_income` double DEFAULT NULL,
  `debt_to_income_ratio` double DEFAULT NULL,
  `credit_score` double DEFAULT NULL,
  `loan_amount` double DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `education_level` varchar(50) DEFAULT NULL,
  `employment_status` varchar(30) DEFAULT NULL,
  `loan_purpose` varchar(50) DEFAULT NULL,
  `grade_subgrade` varchar(10) DEFAULT NULL,
  `prediction` varchar(30) DEFAULT NULL,
  `probability_default` double DEFAULT NULL,
  `probability_paid` double DEFAULT NULL,
  `model_name` varchar(50) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_predictions`
--

INSERT INTO `loan_predictions` (`id`, `annual_income`, `debt_to_income_ratio`, `credit_score`, `loan_amount`, `interest_rate`, `gender`, `marital_status`, `education_level`, `employment_status`, `loan_purpose`, `grade_subgrade`, `prediction`, `probability_default`, `probability_paid`, `model_name`, `threshold`, `created_at`) VALUES
(1, 1000000, 0.9, 15000, 1000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149492, 'RandomForestClassifier', 0.5, '2025-12-28 17:38:07'),
(2, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850513, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:38:57'),
(3, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:03'),
(4, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850513, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:03'),
(5, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850513, 0.5382573713149492, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:03'),
(6, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149492, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:04'),
(7, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149492, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:04'),
(8, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850512, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:05'),
(9, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:05'),
(10, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:05'),
(11, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:05'),
(12, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850513, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:05'),
(13, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850513, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:06'),
(14, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:06'),
(15, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850513, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:06'),
(16, 1000000, 0.9, 15000, 1000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:06'),
(17, 1000000, 0.9, 15000, 10000000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.452082541121086, 0.5479174588789147, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:21'),
(18, 1000000, 0.9, 15000, 100000009999, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.5079136995845428, 0.4920863004154572, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:36'),
(19, 1000000, 0.9, 15000, 100000009999, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.5079136995845428, 0.4920863004154572, 'RandomForestClassifier', 0.5, '2025-12-28 17:39:37'),
(20, 10000000, 19, 12300, 10000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 17:58:21'),
(21, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:44'),
(22, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.555899451248764, 0.4441005487512349, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:44'),
(23, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:44'),
(24, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:44'),
(25, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:44'),
(26, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:44'),
(27, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:44'),
(28, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.4441005487512349, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(29, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(30, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(31, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(32, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(33, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725854, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(34, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(35, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 18:14:45'),
(36, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 18:44:19'),
(37, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 18:44:19'),
(38, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 18:44:19'),
(39, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 18:44:19'),
(40, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 18:44:19'),
(41, 1211, 11, 11, 1111111111111, 11, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.5079136995845428, 0.4920863004154572, 'RandomForestClassifier', 0.5, '2025-12-28 19:00:44'),
(42, 1211, 11, 11, 1111111111111, 11, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.5079136995845428, 0.4920863004154572, 'RandomForestClassifier', 0.5, '2025-12-28 19:00:49'),
(43, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 19:02:13'),
(44, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 19:02:13'),
(45, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 19:02:13'),
(46, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 19:02:13'),
(47, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 19:02:13'),
(48, 100000, 0.9, 1400, 19999, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.46174262868505134, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 19:03:14'),
(49, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921349, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:49'),
(50, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.33272245250786436, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:49'),
(51, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:49'),
(52, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921349, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:49'),
(53, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:49'),
(54, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:49'),
(55, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:50'),
(56, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:50'),
(57, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:51'),
(58, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:51'),
(59, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:51'),
(60, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:51'),
(61, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.33272245250786436, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:51'),
(62, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:52'),
(63, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:52'),
(64, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921349, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:52'),
(65, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:52'),
(66, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.33272245250786436, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:52'),
(67, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:52'),
(68, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:53'),
(69, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:53'),
(70, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.33272245250786436, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:53'),
(71, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.33272245250786436, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:54'),
(72, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921349, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:54'),
(73, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:54'),
(74, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:54'),
(75, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:55'),
(76, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.33272245250786436, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:55'),
(77, 1000000, 10, 150000, 100000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.6672775474921347, 0.3327224525078643, 'RandomForestClassifier', 0.5, '2025-12-28 19:27:55'),
(78, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4387159627894612, 0.5612840372105395, 'RandomForestClassifier', 0.5, '2025-12-28 19:28:47'),
(79, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.555899451248764, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 19:28:47'),
(80, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.45384885844592615, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 19:28:47'),
(81, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.45379324332741494, 0.5462067566725854, 'RandomForestClassifier', 0.5, '2025-12-28 19:28:47'),
(82, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 19:28:47'),
(83, 10000000, 0.15, 15000, 20000000, 15, 'Male', 'Married', 'Master\'s', 'Self-employed', 'Education', 'A2', 'Loan will NOT be Paid Back', 0.5738114876491742, 0.4261885123508252, 'RandomForestClassifier', 0.5, '2025-12-28 19:37:19'),
(84, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 19:39:39'),
(85, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 19:39:39'),
(86, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 19:39:39'),
(87, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725854, 'RandomForestClassifier', 0.5, '2025-12-28 19:39:39'),
(88, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 19:39:39'),
(89, 1000000, 9, 15000, 500000, 10, 'Female', 'Married', 'Bachelor\'s', 'Employed', 'Education', 'A1', 'Loan will be Paid Back', 0.4617426286850513, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-28 19:43:48'),
(90, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4387159627894612, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 19:44:49'),
(91, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 19:44:49'),
(92, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 19:44:49'),
(93, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 19:44:49'),
(94, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 19:44:49'),
(95, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(96, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(97, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(98, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(99, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(100, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(101, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(102, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(103, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(104, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.4494844798034917, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(105, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:11'),
(106, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(107, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(108, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(109, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(110, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(111, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(112, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(113, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725854, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(114, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(115, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(116, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.43871596278946123, 0.5612840372105394, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(117, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(118, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(119, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(120, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(121, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(122, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(123, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725856, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:12'),
(124, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-28 20:39:13'),
(125, 50000, 0.25, 720, 10000, 10.5, 'Male', 'Single', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4387159627894612, 0.5612840372105395, 'RandomForestClassifier', 0.5, '2025-12-29 06:24:08'),
(126, 75000, 0.35, 680, 15000, 13.2, 'Female', 'Married', 'Master\'s', 'Self-employed', 'Other', 'B2', 'Loan will NOT be Paid Back', 0.5558994512487639, 0.44410054875123495, 'RandomForestClassifier', 0.5, '2025-12-29 06:24:09'),
(127, 30000, 0.5, 610, 5000, 17.5, 'Male', 'Single', 'High School', 'Unemployed', 'Other', 'C3', 'Loan will be Paid Back', 0.4538488584459261, 0.5461511415540748, 'RandomForestClassifier', 0.5, '2025-12-29 06:24:09'),
(128, 90000, 0.15, 750, 25000, 9.1, 'Female', 'Married', 'PhD', 'Employed', 'Debt consolidation', 'A2', 'Loan will be Paid Back', 0.4537932433274149, 0.5462067566725854, 'RandomForestClassifier', 0.5, '2025-12-29 06:24:09'),
(129, 120000, 0.25, 690, 30000, 11.3, 'Male', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'B1', 'Loan will be Paid Back', 0.44948447980349165, 0.550515520196509, 'RandomForestClassifier', 0.5, '2025-12-29 06:24:09'),
(130, 50000000, 15, 15000, 3000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will be Paid Back', 0.4617426286850512, 0.5382573713149493, 'RandomForestClassifier', 0.5, '2025-12-29 06:25:18'),
(131, 50000000, 15, 15000, 30000000000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.5079136995845429, 0.4920863004154572, 'RandomForestClassifier', 0.5, '2025-12-29 08:39:18'),
(132, 50000000, 15, 15000, 30000000000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.5079136995845428, 0.4920863004154572, 'RandomForestClassifier', 0.5, '2025-12-29 08:39:18'),
(133, 50000000, 15, 15000, 30000000000000, 10, 'Female', 'Divorced', 'Bachelor\'s', 'Employed', 'Business', 'A1', 'Loan will NOT be Paid Back', 0.5079136995845429, 0.4920863004154571, 'RandomForestClassifier', 0.5, '2025-12-29 08:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `predictions`
--

CREATE TABLE `predictions` (
  `id` int(11) NOT NULL,
  `prediction` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `prob_default` float DEFAULT NULL,
  `prob_paid` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `predictions`
--

INSERT INTO `predictions` (`id`, `prediction`, `label`, `prob_default`, `prob_paid`, `created_at`) VALUES
(1, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 08:08:54'),
(2, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 08:08:54'),
(3, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 08:08:55'),
(4, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 08:08:55'),
(5, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 08:08:56'),
(6, 0, 'Loan will Not Paid Back', 0.504035, 0.495965, '2025-12-26 08:15:01'),
(7, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 08:15:21'),
(8, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 08:15:21'),
(9, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 08:15:21'),
(10, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 08:15:22'),
(11, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 08:15:22'),
(12, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 08:39:59'),
(13, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 08:40:00'),
(14, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 08:40:00'),
(15, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 08:40:00'),
(16, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 08:40:01'),
(17, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 08:40:28'),
(18, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 08:40:28'),
(19, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 08:40:29'),
(20, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 08:40:29'),
(21, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 08:40:30'),
(22, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:42:55'),
(23, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:24'),
(24, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:26'),
(25, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:27'),
(26, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:27'),
(27, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:28'),
(28, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:28'),
(29, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:28'),
(30, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:28'),
(31, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:29'),
(32, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:29'),
(33, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:30'),
(34, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:30'),
(35, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:30'),
(36, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:31'),
(37, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:31'),
(38, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:31'),
(39, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:32'),
(40, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:32'),
(41, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:32'),
(42, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:32'),
(43, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:52'),
(44, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:53'),
(45, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:54'),
(46, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:54'),
(47, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:54'),
(48, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:43:54'),
(49, 0, 'Loan will Not Paid Back', 0.576696, 0.423304, '2025-12-26 08:44:36'),
(50, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 09:21:14'),
(51, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 09:21:15'),
(52, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 09:21:15'),
(53, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 09:21:15'),
(54, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 09:21:16'),
(55, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:09:56'),
(56, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:09:56'),
(57, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:09:57'),
(58, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:09:56'),
(59, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:09:57'),
(60, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:09:57'),
(61, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:09:58'),
(62, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:09:58'),
(63, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:09:58'),
(64, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:00'),
(65, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:00'),
(66, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:00'),
(67, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:00'),
(68, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:01'),
(69, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:01'),
(70, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:02'),
(71, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:02'),
(72, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:02'),
(73, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:03'),
(74, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:03'),
(75, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:03'),
(76, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:04'),
(77, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:04'),
(78, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:04'),
(79, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:05'),
(80, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:05'),
(81, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:06'),
(82, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:06'),
(83, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:06'),
(84, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:06'),
(85, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:07'),
(86, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:07'),
(87, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:08'),
(88, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:08'),
(89, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:08'),
(90, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:08'),
(91, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:09'),
(92, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:09'),
(93, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:09'),
(94, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:09'),
(95, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:13'),
(96, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:13'),
(97, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:13'),
(98, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:14'),
(99, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:14'),
(100, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:15'),
(101, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:16'),
(102, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:16'),
(103, 1, 'Loan will be Paid Back', 0.438716, 0.561284, '2025-12-26 11:10:16'),
(104, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:17'),
(105, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:17'),
(106, 0, 'Loan will Not Paid Back', 0.555899, 0.444101, '2025-12-26 11:10:17'),
(107, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:18'),
(108, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:18'),
(109, 1, 'Loan will be Paid Back', 0.453849, 0.546151, '2025-12-26 11:10:18'),
(110, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:19'),
(111, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:19'),
(112, 1, 'Loan will be Paid Back', 0.453793, 0.546207, '2025-12-26 11:10:19'),
(113, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:20'),
(114, 1, 'Loan will be Paid Back', 0.449484, 0.550516, '2025-12-26 11:10:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loan_predictions`
--
ALTER TABLE `loan_predictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loan_predictions`
--
ALTER TABLE `loan_predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
