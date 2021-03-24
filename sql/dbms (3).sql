-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 07:51 PM
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

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`rollno`, `room_id`, `date`, `time`, `present`) VALUES
('19121', '85', '2020-11-01', '20:45:00', 'yes'),
('19121', '85', '2020-11-02', '20:00:00', 'no'),
('19121', '85', '2020-11-03', '20:30:00', 'yes'),
('19121', '85', '2020-11-04', '21:00:00', 'yes'),
('19121', '85', '2020-11-05', '20:00:00', 'no'),
('191210052', '11', '2020-11-01', '20:50:00', 'yes'),
('191210052', '11', '2020-11-02', '21:00:00', 'yes'),
('191210052', '11', '2020-11-03', '20:00:00', 'no'),
('191210052', '11', '2020-11-04', '21:00:00', 'yes'),
('191210052', '11', '2020-11-05', '20:20:00', 'yes'),
('191210061', '10', '2020-11-01', '20:30:00', 'yes'),
('191210061', '10', '2020-11-02', '20:25:00', 'yes'),
('191210061', '10', '2020-11-03', '20:00:00', 'no'),
('191210061', '10', '2020-11-04', '21:00:00', 'yes'),
('191210061', '10', '2020-11-05', '20:00:00', 'yes'),
('191210061', '10', '2020-11-07', '14:25:00', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `room_id` varchar(10) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `date1` date NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `particular` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`room_id`, `rollno`, `date1`, `status`, `particular`) VALUES
('85', '19121', '2020-10-25', 'pending', 'Electricity is out for 2 days'),
('32', '191210048', '2020-11-02', 'pending', 'Geyser not working'),
('11', '191210052', '2020-11-05', 'pending', 'Wifi not working'),
('10', '191210061', '2020-10-06', 'action taken', 'Wifi not working'),
('10', '191210061', '2020-11-06', 'action taken', 'wifi not working\r\n'),
('10', '191210061', '2020-11-07', 'action taken', 'Wifi not working'),
('5', '19122', '2020-11-06', 'pending', 'Wifi not working'),
('7', '19123', '2020-10-25', 'pending', 'Electricity is out for 2 days');

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
  `rooms_vacant` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `no_of_rooms`, `no_of_students`, `location`, `hostel_name`, `rooms_vacant`, `view`) VALUES
('1001', 500, 440, 'Narela', 'Hostel A ', 60, 1),
('1002', 400, 380, 'Narela', 'Hostel B', 20, 1),
('1003', 360, 355, 'Narela', 'Hostel C', 5, 1),
('1004', 600, 590, 'Narela', 'Hostel D', 10, 1);

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

--
-- Dumping data for table `leaveform`
--

INSERT INTO `leaveform` (`rollno`, `type`, `start_date`, `no_of_days`, `status`, `hostel_id`) VALUES
('19121', 'leave', '2020-11-22', 10, 'pending', '1003'),
('191210048', 'leave', '2020-11-22', 10, 'approved', '1002'),
('191210052', 'casual leave', '2020-11-25', 15, 'approved', '1001'),
('191210061', 'sick leave', '2020-11-07', 10, 'approved', '1001'),
('191210061', 'sick leave', '2020-11-13', 15, 'approved', '1001'),
('191210061', 'sick leave', '2020-11-15', 10, 'approved', '1001'),
('191210061', 'sick leave', '2020-11-21', 15, 'approved', '1001'),
('19122', 'casual leave', '2020-11-25', 15, 'pending', '1004'),
('19123', 'sick leave', '2020-11-15', 10, 'pending', '1002');

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

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `capacity`, `name_of_student`, `rollno`, `hostel_id`) VALUES
('10', 2, 'vinayak chachra', '191210061', '1001'),
('11', 2, 'Udit Singla', '191210052', '1001'),
('32', 1, 'Shlok Kumar Agarwal', '191210048', '1002'),
('5', 1, 'Darshan Chadha', '19122', '1004'),
('7', 1, 'Wahid Nath', '19123', '1002'),
('85', 2, 'Kavi Hans', '19121', '1003');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `issue_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `equipment_id` varchar(10) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `fine` int(11) DEFAULT NULL,
  `equipment_details` varchar(20) DEFAULT NULL,
  `hostel_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`issue_date`, `return_date`, `equipment_id`, `rollno`, `fine`, `equipment_details`, `hostel_id`) VALUES
('2020-10-16', '2020-11-01', '101', '191210052', 16, 'badminton racket', '1002'),
('2020-11-12', '2020-11-13', '106962656', '191210061', 100, 'ASDFE', '1001'),
('2020-10-16', '2020-11-02', '108', '19121', 0, 'carrom board', '1003'),
('2020-10-16', '2020-11-06', '112', '191210061', 1000, 'badminton racket', '1001'),
('2020-09-16', '2020-10-08', '113', '191210048', 0, 'badminton racket', '1001'),
('2020-10-06', '2020-11-06', '116', '19121', 400, 'bat', '1003'),
('2020-08-25', '2020-09-06', '124', '191210048', 15, 'carrom board', '1001'),
('2020-09-20', '2020-10-10', '125', '191210052', 0, 'shuttlecock', '1002'),
('2020-08-16', '2020-09-05', '168', '19123', 20, 'bat', '1002'),
('2020-10-12', '2020-11-03', '185', '19122', 10, 'shuttlecock', '1004'),
('2020-09-16', '2020-10-25', '196', '191210061', 0, 'chess', '1001'),
('2020-11-07', '2020-11-28', '46548', '191210052', 100, 'bat', '1002'),
('2020-11-10', '2020-11-14', '6656478865', '191210061', 100, '546', '1001');

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
  `hostel_id` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `emp_salary`, `city`, `state`, `pincode`, `address`, `mobile_number`, `hostel_id`, `designation`, `view`) VALUES
('10011', 'Dr. Shailendra Tiwari', 800000, 'Mumbai', 'Mahara', '400063', '19 Vijay Kailas Estate', '9856748597', '1001', 'Warden', 1),
('10012', 'Mr. Kuldeep Singh ', 85000, 'Mumbai', 'Mahara', '400606', '3/b/11, Op Jk Gram', '9874658875', '1001', 'Caretaker', 1),
('10013', 'Pratik Dhingra', 10000, 'Mumbai', 'Mahara', '400703', 'B-8, Apmc, Vashi', '6589756824', '1001', 'security guard', 1),
('10014', 'Vijaya Kara', 12000, 'Bangalore', 'Karnat', '560011', '40, Chinchwad', '8569748426', '1001', 'security guard', 1),
('10015', 'Nitya Rajagopalan', 8000, 'Bangalore', 'Karnat', '560011', '48, Chinchwad', '9865478523', '1001', 'sweeper', 1),
('10016', 'Asim Dalal', 9500, 'Mumbai', 'Mahara', '400063', '21 Vijay Kailas Estate', '8597468592', '1001', 'sweeper', 1),
('10021', 'Dr. Singara Singh', 1200000, 'Chennai', 'Tamil ', '600001', '193, Angappa Street', '9864785521', '1002', 'Warden', 1),
('10022', 'Mr. Jagjit Singh', 10000, 'Hyderabad', 'Andhra', '500095', '4-1-449, Bank Street', '8745985674', '1002', 'Caretaker', 1),
('10023', 'Pratik Dhingra', 10000, 'Mumbai', 'Mahara', '400703', 'B-8, Apmc, Vashi', '6589756824', '1002', 'security guard', 1),
('10024', 'Vijaya Kara', 12000, 'Bangalore', 'Karnat', '560011', '40, Chinchwad', '8569748426', '1002', 'security guard', 1),
('10025', 'Nitya Rajagopalan', 8000, 'Bangalore', 'Karnat', '560011', '48, Chinchwad', '9865478523', '1002', 'sweeper', 1),
('10026', 'Asim Dalal', 9500, 'Mumbai', 'Mahara', '400063', '21 Vijay Kailas Estate', '8597468592', '1002', 'sweeper', 1),
('10027', 'Aditya Minhas', 12000, 'Mumbai', 'Mahara', '400703', 'B-9, Apmc, Vashi', '7854236981', '1002', 'Electrician', 1),
('10031', 'Dr. S.C. Bose', 95000, 'Chennai', 'Tamil ', '600001', ' 1, Vakta Bhavan', '6845783295', '1003', 'Warden', 1),
('10032', 'Mr. Raj kumar', 75000, 'Bangalore', 'Karnat', '560011', '#125,10th Main', '9875813254', '1003', 'Caretaker', 1),
('10033', 'Pratik Dhingra', 10000, 'Mumbai', 'Mahara', '400703', 'B-8, Apmc, Vashi', '6589756824', '1031', 'security guard', 1),
('10034', 'Vijaya Kara', 12000, 'Bangalore', 'Karnat', '560011', '40, Chinchwad', '8569748426', '1003', 'security guard', 1),
('10035', 'Nitya Rajagopalan', 8000, 'Bangalore', 'Karnat', '560011', '48, Chinchwad', '7665478523', '1003', 'sweeper', 1),
('10036', 'Asim Dalal', 9500, 'Mumbai', 'Mahara', '400063', '21 Vijay Kailas Estate', '6197468592', '1031', 'sweeper', 1),
('10037', 'Aditya Minhas', 12000, 'Mumbai', 'Mahara', '400703', 'B-9, Apmc, Vashi', '9654236981', '1003', 'Electrician', 1),
('10041', 'Dr. Madhup Kumar Mittal', 1200000, 'Bangalore', 'Karnat', '560011', '38/4, Ring Rd', '7854986582', '1004', 'Warden', 1),
('10042', 'Mr. Purushottam Lal', 75000, 'Mumbai', 'Mahara', '400703', ' B-6, Apmc, Vashi', '7854236981', '1004', 'Caretaker', 1),
('10043', 'Pratik Dhingra', 10000, 'Mumbai', 'Mahara', '400703', 'B-8, Apmc, Vashi', '8589756824', '1004', 'security guard', 1),
('10044', 'Vijaya Kara', 12000, 'Bangalore', 'Karnat', '560011', '40, Chinchwad', '9569748426', '1004', 'security guard', 1),
('10045', 'Nitya Rajagopalan', 8000, 'Bangalore', 'Karnat', '560011', '48, Chinchwad', '4865478523', '1004', 'sweeper', 1),
('10046', 'Asim Dalal', 9500, 'Mumbai', 'Mahara', '400063', '21 Vijay Kailas Estate', '6597468592', '1004', 'sweeper', 1),
('10047', 'Aditya Minhas', 12000, 'Mumbai', 'Mahara', '400703', 'B-9, Apmc, Vashi', '9854236981', '1004', 'Electrician', 1);

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

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `student_name`, `father_name`, `age`, `dob`, `branch`, `primary_mobile_no`, `secondary_mobile_no`, `sex`, `year`, `hostel_id`, `room_id`, `blood_group`, `home_address`, `city`, `state`, `pincode`) VALUES
('19121', 'Kavi Hans', 'Father', 19, '2001-06-06', 'C.S.E', '8956748235', '9856478512', 'M', '2', '1003', '85', 'A+', '42', 'delhi', 'delhi', '11394'),
('191210048', 'Shlok Kumar Agarwal', 'Mr Agarwal', 20, '2000-06-16', 'C.S.E', '9874658231', '9874683214', 'M', '2', '1002', '32', 'B+', 'B-9, Apmc, Vashi', 'Mumbai', 'Maharashtra', '400703'),
('191210052', 'Udit Singla', 'Mr Singla', 20, '2000-06-01', 'C.S.E', '9874658238', '9874683213', 'M', '2', '1001', '11', 'A+', 'B-9, Apmc, Vashi', 'Mumbai', 'Maharashtra', '400703'),
('191210061', 'Vinayak Chachra', 'Vikas Chachra', 20, '2000-04-08', 'C.S.E', '9856748523', '985678265', 'M', '2', '1001', '10', 'B+', '44 AGGARSEN  NAGAR', 'AMBALA CANTT', 'Haryana', '133001'),
('19122', 'Darshan Chadha', 'Father', 19, '2001-06-08', 'C.S.E', '8956748234', '9856478516', 'M', '2', '1004', '5', 'A+', '95', 'delhi', 'delhi', '11394'),
('19123', 'Wahid Nath', 'Father', 20, '2000-06-08', 'C.S.E', '8986748234', '7856478516', 'M', '2', '1002', '7', 'A+', '93', 'delhi', 'delhi', '11394'),
('19124', 'Ajay Rao', 'Father', 20, '2000-05-08', 'C.S.E', '6986748234', '75685647851', 'M', '2', NULL, NULL, 'A+', '4-1-449, Bank Street', 'Hyderabad', 'Andhra Pradesh', '500095'),
('19125', 'Advay Subramaniam', 'Father', 20, '2000-05-06', 'C.S.E', '6976748234', '75585647851', 'M', '2', NULL, NULL, 'A+', '4-1-485, Bank Street', 'Hyderabad', 'Andhra Pradesh', '500095');

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
('19122', 'test123'),
('19123', 'test123'),
('19124', 'test123'),
('student', 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `aadhar_number` int(11) NOT NULL,
  `rollno` varchar(10) DEFAULT NULL,
  `visitor_name` varchar(50) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `date` date NOT NULL,
  `relationship` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`aadhar_number`, `rollno`, `visitor_name`, `time_in`, `time_out`, `date`, `relationship`) VALUES
(2147483647, '191210061', 'Rupal Thaman ', '10:30:00', '11:45:00', '2020-09-18', 'Cousin'),
(2147483647, '191210061', 'Binita Mehta', '10:30:00', '11:45:00', '2020-10-22', 'relative'),
(2147483647, '191210048', 'Aditi Munshi', '12:30:00', '14:45:00', '2020-10-29', 'Cousin'),
(2147483647, '191210061', 'vikas', '12:24:00', '14:24:00', '2020-11-07', 'father');

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
  ADD PRIMARY KEY (`rollno`,`date1`),
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
