-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 09:46 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `rollno` varchar(10) NOT NULL,
  `room_id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `present` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `room_id` varchar(10) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `particular` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` varchar(10) NOT NULL,
  `no_of_rooms` int(11) NOT NULL,
  `no_of_students` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `hostel_name` varchar(30) NOT NULL,
  `rooms_vacant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leaveform`
--

CREATE TABLE `leaveform` (
  `rollno` varchar(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `status` varchar(9) NOT NULL DEFAULT 'pending',
  `hostel_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE `mess` (
  `rollno` varchar(10) NOT NULL,
  `fees` int(11) NOT NULL,
  `hostel_id` varchar(10) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `rollno` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `message` varchar(400) NOT NULL,
  `student_view` int(11) NOT NULL DEFAULT '1',
  `admin_view` int(11) NOT NULL DEFAULT '1',
  `from` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `name_of_student` varchar(50) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `hostel_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL,
  `equipment_id` varchar(10) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `fine` int(11) NOT NULL,
  `equipment_details` varchar(20) NOT NULL,
  `hostel_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` varchar(10) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_salary` int(11) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `employee_job` varchar(30) NOT NULL,
  `hostel_id` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `dob` date NOT NULL,
  `branch` varchar(50) NOT NULL,
  `primary_mobile_no` varchar(12) NOT NULL,
  `secondary_mobile_no` varchar(12) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `year` varchar(1) NOT NULL,
  `hostel_id` varchar(10) DEFAULT NULL,
  `room_id` varchar(10) DEFAULT NULL,
  `blood_group` varchar(15) NOT NULL,
  `home_address` varchar(200) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_user`
--

INSERT INTO `student_user` (`username`, `password`) VALUES
('191210048', 'test123'),
('191210052', 'test123'),
('191210061', 'test123'),
('student', 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `aadhar_number` int(11) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `visitor_name` varchar(50) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `date` date NOT NULL,
  `relationship` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`rollno`,`date`),
  ADD KEY `rollno` (`rollno`,`room_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`rollno`,`date`),
  ADD KEY `room_id` (`room_id`,`rollno`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indexes for table `leaveform`
--
ALTER TABLE `leaveform`
  ADD PRIMARY KEY (`rollno`,`start_date`),
  ADD KEY `rollno` (`rollno`,`hostel_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`rollno`,`date`),
  ADD KEY `rollno` (`rollno`,`hostel_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`rollno`,`date`,`from`),
  ADD KEY `rollno` (`rollno`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`,`rollno`),
  ADD KEY `hostel_id` (`hostel_id`),
  ADD KEY `rollno` (`rollno`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`equipment_id`),
  ADD KEY `rollno` (`rollno`,`hostel_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`),
  ADD KEY `hostel_id` (`hostel_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `student_user`
--
ALTER TABLE `student_user`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`aadhar_number`,`date`),
  ADD KEY `rollno` (`rollno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leaveform`
--
ALTER TABLE `leaveform`
  ADD CONSTRAINT `leaveform_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leaveform_ibfk_2` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mess`
--
ALTER TABLE `mess`
  ADD CONSTRAINT `mess_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mess_ibfk_2` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sports`
--
ALTER TABLE `sports`
  ADD CONSTRAINT `sports_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sports_ibfk_2` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `visitor`
--
ALTER TABLE `visitor`
  ADD CONSTRAINT `visitor_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`) ON DELETE CASCADE ON UPDATE CASCADE;


INSERT INTO `hostel` (`hostel_id`, `no_of_rooms`, `no_of_students`, `location`, `hostel_name`, `rooms_vacant`) VALUES
('1001', 500, 440, 'Narela', 'Hostel A ', 60),
('1002', 400, 380, 'Narela', 'Hostel B', 20),
('1003', 360, 355, 'Narela', 'Hostel C', 5),
('1004', 600, 590, 'Narela', 'Hostel D', 10); 


INSERT INTO `staff` (`emp_id`, `emp_name`, `emp_salary`, `city`, `state`, `pincode`, `address`, `mobile_number`, `hostel_id`, `designation`) VALUES
('10011', 'Dr. Shailendra Tiwari', 800000, '19 Vijay Kailas Estate', 'Mumbai', 'Mahara', '400063', '9856748597', '1001', 'Warden'),
('10012', 'Mr. Kuldeep Singh ', 85000, '3/b/11, Op Jk Gram', 'Mumbai', 'Mahara', '400606', '9874658875', '1001', 'Caretaker'),
('10013', 'Pratik Dhingra', 10000, 'B-8, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '6589756824', '1001', 'security guard'),
('10014', 'Vijaya Kara', 12000, '40, Chinchwad', 'Bangalore', 'Karnat', '560011', '8569748426', '1001', 'security guard'),
('10015', 'Nitya Rajagopalan', 8000, '48, Chinchwad', 'Bangalore', 'Karnat', '560011', '9865478523', '1001', 'sweeper'),
('10016', 'Asim Dalal', 9500, '21 Vijay Kailas Estate', 'Mumbai', 'Mahara', '400063', '8597468592', '1001', 'sweeper'),
('10017', 'Aditya Minhas', 12000, 'B-9, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '7854236981', '1001', 'Electrician'),
('10021', 'Dr. Singara Singh', 1200000, '193, Angappa Street', 'Chennai', 'Tamil ', '600001', '9864785521', '1002', 'Warden'),
('10022', 'Mr. Jagjit Singh', 10000, '4-1-449, Bank Street', 'Hyderabad', 'Andhra', '500095', '8745985674', '1002', 'Caretaker'),
('10031', 'Dr. S.C. Bose', 95000, ' 1, Vakta Bhavan', 'Chennai', 'Tamil ', '600001', '6845783295', '1003', 'Warden'),
('10032', 'Mr. Raj kumar', 75000, '#125,10th Main', 'Bangalore', 'Karnat', '560011', '9875813254', '1003', 'Caretaker'),
('10041', 'Dr. Madhup Kumar Mittal', 1200000, '38/4, Ring Rd', 'Bangalore', 'Karnat', '560011', '7854986582', '1004', 'Warden'),
('10042', 'Mr. Purushottam Lal', 75000, ' B-6, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '7854236981', '1004', 'Caretaker'),
('10023', 'Pratik Dhingra', 10000, 'B-8, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '6589756824', '1002', 'security guard'),
('10024', 'Vijaya Kara', 12000, '40, Chinchwad', 'Bangalore', 'Karnat', '560011', '8569748426', '1002', 'security guard'),
('10025', 'Nitya Rajagopalan', 8000, '48, Chinchwad', 'Bangalore', 'Karnat', '560011', '9865478523', '1002', 'sweeper'),
('10026', 'Asim Dalal', 9500, '21 Vijay Kailas Estate', 'Mumbai', 'Mahara', '400063', '8597468592', '1002', 'sweeper'),
('10027', 'Aditya Minhas', 12000, 'B-9, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '7854236981', '1002', 'Electrician'),
('10033', 'Pratik Dhingra', 10000, 'B-8, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '6589756824', '1031', 'security guard'),
('10034', 'Vijaya Kara', 12000, '40, Chinchwad', 'Bangalore', 'Karnat', '560011', '8569748426', '1003', 'security guard'),
('10035', 'Nitya Rajagopalan', 8000, '48, Chinchwad', 'Bangalore', 'Karnat', '560011', '7665478523', '1003', 'sweeper'),
('10036', 'Asim Dalal', 9500, '21 Vijay Kailas Estate', 'Mumbai', 'Mahara', '400063', '6197468592', '1031', 'sweeper'),
('10037', 'Aditya Minhas', 12000, 'B-9, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '9654236981', '1003', 'Electrician'),
('10043', 'Pratik Dhingra', 10000, 'B-8, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '8589756824', '1004', 'security guard'),
('10044', 'Vijaya Kara', 12000, '40, Chinchwad', 'Bangalore', 'Karnat', '560011', '9569748426', '1004', 'security guard'),
('10045', 'Nitya Rajagopalan', 8000, '48, Chinchwad', 'Bangalore', 'Karnat', '560011', '4865478523', '1004', 'sweeper'),
('10046', 'Asim Dalal', 9500, '21 Vijay Kailas Estate', 'Mumbai', 'Mahara', '400063', '6597468592', '1004', 'sweeper'),
('10047', 'Aditya Minhas', 12000, 'B-9, Apmc, Vashi', 'Mumbai', 'Mahara', '400703', '9854236981', '1004', 'Electrician');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
