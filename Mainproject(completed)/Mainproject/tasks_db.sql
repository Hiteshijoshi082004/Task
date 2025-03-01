-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 08:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_tasks`
--

CREATE TABLE `assigned_tasks` (
  `id` int(11) NOT NULL,
  `task_title` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `proj_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assigned_tasks`
--

INSERT INTO `assigned_tasks` (`id`, `task_title`, `description`, `emp_id`, `proj_id`, `status`) VALUES
(1, 'task1', 'implement login page.', 3, -1, 'PENDING'),
(2, 'task1', 'implement login page ', 2, 5, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(10) NOT NULL,
  `project_name` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `description`) VALUES
(1, 'make login page', 'make a page to allow any user to register into a required portal.'),
(2, 'make a e-commerce based website.', 'a website that allows people to buy and sell physical goods, services, and digital products over the'),
(4, 'desgin a site with html & css.', 'in this the site is made through CSS & html codes.'),
(5, 'sfsdf', 'ssf');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `title` varchar(15) NOT NULL,
  `description` varchar(40) NOT NULL,
  `employee_name` varchar(25) NOT NULL,
  `project_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`title`, `description`, `employee_name`, `project_name`) VALUES
('title 1 ', 'description 1', 'employee 1', 'project 1'),
('title 2', 'description 2', 'employee 2', 'project 2'),
('title 3', 'description 3', 'employee 3', 'project 3'),
('title 4', 'description 4', 'employee 4', 'project 4');

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`id`, `name`, `designation`, `email`, `password`) VALUES
(1, 'ridhima kalia', 'manager', 'ridz1@gmail.com', '[C@548ae0d9'),
(2, 'shubhi puri', ' sr manager', 'puri3@gmail.com', '[C@644225a5'),
(3, 'kartik attri ', 'assistant manager', 'attri5@gmail.com', '4455'),
(4, 'shreya joshi', 'employee', 'shreya8@gmail.com', '9988');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_tasks`
--
ALTER TABLE `assigned_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_tasks`
--
ALTER TABLE `assigned_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user2`
--
ALTER TABLE `user2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
