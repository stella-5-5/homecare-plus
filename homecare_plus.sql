-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 08:15 PM
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
-- Database: `homecare_plus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(200) DEFAULT NULL,
  `admin_mobile` varchar(100) DEFAULT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `admin_gender` varchar(100) DEFAULT NULL,
  `admin_login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_mobile`, `admin_email`, `admin_gender`, `admin_login_id`) VALUES
(2, 'sam karuga', '0875432345', 'karuga@gmail.com', 'Male', 31);

-- --------------------------------------------------------

--
-- Table structure for table `ailment`
--

CREATE TABLE `ailment` (
  `ailment_id` int(11) NOT NULL,
  `ailment_appointment_id` int(11) DEFAULT NULL,
  `ailment_desc` varchar(200) DEFAULT NULL,
  `ailment_specialist_id` int(11) DEFAULT NULL,
  `prescription` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ailment`
--

INSERT INTO `ailment` (`ailment_id`, `ailment_appointment_id`, `ailment_desc`, `ailment_specialist_id`, `prescription`) VALUES
(22, 21, 'BackPain', 16, 'active'),
(23, 24, 'BackPain', 19, 'severe'),
(24, 22, 'BackPain', 19, 'painkillers'),
(26, 25, 'cavities', 18, 'mouthwash'),
(27, 25, 'cavities', 18, 'mouthwash/sensodyne toothpaste/painkillers'),
(28, 27, 'flu', 17, 'paracetamol/piriton');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_patient_id` int(11) DEFAULT NULL,
  `appointment_specialist_id` int(11) NOT NULL,
  `appointment_date` varchar(100) DEFAULT NULL,
  `appointment_status` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_patient_id`, `appointment_specialist_id`, `appointment_date`, `appointment_status`) VALUES
(21, 6, 16, '2024-12-25', '1'),
(22, 8, 19, '2024-12-07', '1'),
(23, 8, 19, '2024-12-07', '2'),
(24, 9, 19, '2024-12-07', '2'),
(25, 6, 18, '2025-12-20', '1'),
(26, 6, 17, '2024-10-10', '1'),
(27, 6, 17, '2024-10-10', '2'),
(28, 11, 21, '2024-12-25', '1'),
(29, 11, 20, '2024-12-31', '1'),
(30, 11, 18, '2024-12-23', '1'),
(31, 11, 16, '2024-12-27', '1'),
(32, 11, 18, '2024-12-24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(100) DEFAULT NULL,
  `login_password` varchar(200) DEFAULT NULL,
  `login_rank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_username`, `login_password`, `login_rank`) VALUES
(14, 'admin', '$2y$10$K8fcIdY4C0PbEmVSJHDdPOI.pLLVYBQRwj7wGm1DrgzGJLGPXN.Ja', 'admin'),
(23, 'stella', '$2y$10$u/GRDnx6JgpR0/yEglT7Se/ByMlUVYG5qGYZmLedH86OaL5zKdLW.', 'patient'),
(25, 'alex', '$2y$10$a3qrPJ3woDrgofXkzYrrSulJdDZrcJkLSZvkSQiYgZPfr7Ow7irQK', 'spec'),
(26, 'mary', '$2y$10$vmE6oyNXF4ow9iwz78f.6eTMQ4GOTSF.NFR1L68irxhzk0lDH.zBm', 'spec'),
(27, 'ashley', '$2y$10$EomEAR0d.eG5bE5E3ISz0uhA9cUWEm39eMfeEONEc4RQNePBn6iv2', 'spec'),
(28, 'liz', '$2y$10$LIq/uNxbEuiaNZ6z/1loveityXTuU6Gp64GlxQni91xbBqYf19miy', 'spec'),
(29, 'antony', '$2y$10$qWG9wuwTGpwqGMiT1WSs4OrQUbfWE1NFn23otDFf/arBWEVKao2x2', 'patient'),
(30, 'ben', '$2y$10$5Uty0xUu3tTB4Izf3zxEdumNU3DDqBkYNen/S3UiLYhbr.UWTqleK', 'patient'),
(31, 'karuga', '$2y$10$ZNyBUN4DQpgxCi/guxXTa.0kPsnyQLyIC/vY8OCbMR2lERQr..EgW', 'admin'),
(32, 'Trish', '$2y$10$/Wbkp9PrjU5FWWzDvTxoxeCkjEVG1j0VUWcjPJCGI6ULDGGOcU9eC', 'spec'),
(33, 'olayo', '$2y$10$mJAB8Iq7IdZt/o4se9NEXe98yu9a39/f5k9fOgXevb4NdFQJ7DTTG', 'spec'),
(34, 'Too', '$2y$10$U1RfCilnY4iVB5PARfkNSOEVtpN20.bBnipgQohMOmpdWGyPezAu6', 'patient'),
(35, 'tesa', '$2y$10$EL2g/y7Ruj.4Kt34KuSo5.9N7HJtuEmnD0ezKZBBRyo6iqHS43pE2', 'patient'),
(36, 'lisaz', '$2y$10$9oRJD1H/7B8ci8VoRnBYhunNlpLf/BBBeDFhDWLxrkgZdtcbouAvi', 'spec');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(200) DEFAULT NULL,
  `patient_mobile` varchar(100) DEFAULT NULL,
  `patient_email` varchar(100) DEFAULT NULL,
  `patient_gender` varchar(100) DEFAULT NULL,
  `patient_dob` varchar(100) DEFAULT NULL,
  `patient_location` varchar(100) DEFAULT NULL,
  `patient_login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_mobile`, `patient_email`, `patient_gender`, `patient_dob`, `patient_location`, `patient_login_id`) VALUES
(6, 'stella mbuthia', '0768127702', 'stellawagiombuthia@gmail.com', 'female', '2024-12-02', 'kiambu', 23),
(8, 'Antony Mwaura', '0789453234', 'antony@gmail.com', 'Male', '2024-12-07', 'landless', 29),
(9, 'benson kinyanjui', '0754224556', 'ben@gmail.com', 'Male', '2024-12-07', 'nyeri', 30),
(10, 'melisa too', '0111176499', 'too@gmail.com', 'female', '2012-02-08', 'kaptagat groove', 34),
(11, 'Tesa charity', '075453228', 'tesa@gmail.com', 'female', '2000-05-05', 'kirinyaga', 35);

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `specialist_id` int(11) NOT NULL,
  `specialist_name` varchar(100) DEFAULT NULL,
  `specialist_mobile` varchar(100) DEFAULT NULL,
  `specialist_email` varchar(100) DEFAULT NULL,
  `specialist_gender` varchar(100) DEFAULT NULL,
  `specialist_location` varchar(100) DEFAULT NULL,
  `specialist_specialization_id` int(11) DEFAULT NULL,
  `specialist_login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`specialist_id`, `specialist_name`, `specialist_mobile`, `specialist_email`, `specialist_gender`, `specialist_location`, `specialist_specialization_id`, `specialist_login_id`) VALUES
(16, 'Alex mbuthia', '0768127702', 'alexmburu@gmail.com', 'Male', 'nairobi', 4, 25),
(17, 'mary mbuthia', '0739405728', 'mary@gmail.com', 'female', 'gatanga', 5, 26),
(18, 'ashley waringa', '0723456789', 'ashley@gmail.com', 'female', 'murang\'a', 2, 27),
(19, 'Liz mbuthia', '0735677889', 'liz@gmail.com', 'female', 'nyeri', 7, 28),
(20, 'trisha alego', '07542313567', 'trish@gmail.com', 'female', 'kisumu', 6, 32),
(21, 'olayo ouma', '0789564224', 'olayo@gmail.com', 'Male', 'karen', 1, 33),
(22, 'lisaz atelo', '0786543242', 'lisaz@gmail.com', 'female', 'kirinyaga', 9, 36);

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `specialization_id` int(11) NOT NULL,
  `specialization_name` varchar(100) DEFAULT NULL,
  `specialization_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`specialization_id`, `specialization_name`, `specialization_desc`) VALUES
(1, 'Cardiology', 'Deals with cardiology'),
(2, 'Dental', 'Deals with dental staff'),
(4, 'dermatologist', 'specializes in eczema'),
(5, 'paedetrician', 'kids specialization'),
(6, 'clinical  nurse', 'acute care'),
(7, 'gynecology', 'reproductive health'),
(8, 'oncologist', 'cancer specialization'),
(9, 'wound ostomy', 'injuries');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_login_id` (`admin_login_id`);

--
-- Indexes for table `ailment`
--
ALTER TABLE `ailment`
  ADD PRIMARY KEY (`ailment_id`),
  ADD KEY `ailment_appointment_id` (`ailment_appointment_id`),
  ADD KEY `ailment_specialist_id` (`ailment_specialist_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `appointment_patient_id` (`appointment_patient_id`),
  ADD KEY `appointment_specialist_id` (`appointment_specialist_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `patient_login_id` (`patient_login_id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`specialist_id`),
  ADD KEY `specialist_login_id` (`specialist_login_id`),
  ADD KEY `specialist_specialization_id` (`specialist_specialization_id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`specialization_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ailment`
--
ALTER TABLE `ailment`
  MODIFY `ailment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `specialist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `specialization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_login_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE;

--
-- Constraints for table `ailment`
--
ALTER TABLE `ailment`
  ADD CONSTRAINT `ailment_ibfk_1` FOREIGN KEY (`ailment_appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ailment_ibfk_2` FOREIGN KEY (`ailment_specialist_id`) REFERENCES `specialist` (`specialist_id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`appointment_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`appointment_specialist_id`) REFERENCES `specialist` (`specialist_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`appointment_specialist_id`) REFERENCES `specialist` (`specialist_id`) ON DELETE CASCADE;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`patient_login_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE;

--
-- Constraints for table `specialist`
--
ALTER TABLE `specialist`
  ADD CONSTRAINT `specialist_ibfk_1` FOREIGN KEY (`specialist_specialization_id`) REFERENCES `specialization` (`specialization_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `specialist_ibfk_2` FOREIGN KEY (`specialist_login_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `specialist_ibfk_3` FOREIGN KEY (`specialist_specialization_id`) REFERENCES `specialization` (`specialization_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
