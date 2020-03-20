-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 02:38 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jiahsin_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(5) NOT NULL,
  `code` varchar(5) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `code`, `name`) VALUES
(1, 'JHV', 'Jiahsin'),
(2, 'SHM', 'Shimmer');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `name`) VALUES
(1, 'AC', 'Kế Toán|会计|Accounting'),
(2, 'GA', 'Tổng Vụ|一般事情|General Affair'),
(3, 'HR', 'Nhân Sự|人力资源|Human Resource'),
(4, 'IN', 'Y tế|医务室|Infirmary'),
(5, 'IT', 'CNTT|信息技术|IT'),
(6, 'WH', 'Kho|仓库|Warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location_internal`
--

CREATE TABLE `location_internal` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_basic`
--

CREATE TABLE `medicine_basic` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `code` varchar(10) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name',
  `unit_code` varchar(5) NOT NULL,
  `specification` varchar(250) NOT NULL,
  `approval_no` varchar(25) DEFAULT NULL,
  `manufactory` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_basic`
--

INSERT INTO `medicine_basic` (`id`, `code`, `name`, `unit_code`, `specification`, `approval_no`, `manufactory`) VALUES
(4, '', 'ALPHA CHOAY', 'PIL', '500mg', '', 'Công ty dược phẩm Long An'),
(5, 'AS0026', 'ALAXAN', 'BOX', '125mg*12', '', 'Công ty dược phẩm Long An'),
(6, '', '3B', 'BOX', '50mg', '', 'Công ty cổ phần dược phẩm Hậu Giang');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_stock`
--

CREATE TABLE `medicine_stock` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `user_code` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name',
  `category` varchar(50) NOT NULL,
  `unit_code` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `specification` varchar(250) NOT NULL,
  `approval_no` varchar(25) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date NOT NULL,
  `min_stock` int(11) DEFAULT NULL,
  `forbidden` varchar(10) DEFAULT 'no',
  `special` varchar(250) DEFAULT NULL,
  `manufactory` varchar(250) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_room_booking`
--

CREATE TABLE `meeting_room_booking` (
  `id` int(22) NOT NULL,
  `user_code` varchar(11) NOT NULL,
  `com_code` varchar(5) NOT NULL,
  `dept_code` varchar(5) NOT NULL,
  `room_code` varchar(5) NOT NULL,
  `presiding` varchar(128) NOT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meeting_room_booking`
--

INSERT INTO `meeting_room_booking` (`id`, `user_code`, `com_code`, `dept_code`, `room_code`, `presiding`, `title`, `content`, `start`, `end`, `status`) VALUES
(2, 'I12758', 'JHV', 'HR', 'SO1', 'John', 'test', 'test', '2018-04-18 16:32:00', '2018-04-18 16:32:00', 1),
(3, 'I12758', 'JHV', 'IT', 'SO1', 'Mr.Steven', 'Phổ biến phần mềm đặt phòng họp', '<p>- Chính sách bảo mật</p><p>- Hướng dẫn sử dụng</p>', '2018-04-22 07:33:00', '2018-04-22 08:33:00', 1),
(4, 'I11174', 'JHV', 'AC', 'SO2', 'Ms Mai', 'TIPTOP TSCĐ', '<p>- TSCĐ</p><p>- Tạo mã TSCĐ</p><p>- Nhập liệu TIPTOP<br><p><br></p></p>', '2018-04-22 10:14:00', '2018-04-22 11:14:00', 1),
(5, 'steven', 'JHV', 'IT', 'SO2', 'Mr. Max', 'Tổng quan hệ thống TIPTOP', '<p>- Giới thiệu TIPTOP</p><p>- Lộ trình triển khai ứng dụng<br><p>- Phân chia trách nhiệm liên đới<br></p></p>', '2018-04-22 13:22:00', '2018-04-22 13:22:00', 1),
(6, 'I12758', 'JHV', 'IT', 'SO1', 'Matt', 'Các vấn đề chung kế toán', '<p>- Tài chính</p><p>- TSCĐ<br><p><br></p></p>', '2018-04-24 08:30:00', '2018-04-24 11:30:00', 1),
(7, 'AS0174', 'SHM', 'GA', 'SO1', 'Mr.Wang Qiang', 'Họp đầu tháng', '<p>ABC<br><p><br></p></p>', '2018-04-24 14:00:00', '2018-04-24 16:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(5) NOT NULL,
  `code` varchar(5) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `code`, `name`) VALUES
(1, 'EMP', 'Nhân viên|雇员|Employee'),
(2, 'TLD', 'Trưởng nhóm|队长|Team Leader'),
(3, 'MNG', 'Quản lý|经理|Manager');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(5) NOT NULL,
  `code` varchar(5) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `code`, `name`) VALUES
(1, 'ADM', 'Admin'),
(2, 'USR', 'User'),
(3, 'GST', 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `code`, `name`) VALUES
(1, 'SO1', 'SO1'),
(2, 'SO2', 'SO2');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `code`, `name`) VALUES
(1, 'THL', 'Thiên Long');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `code`, `name`) VALUES
(4, 'BOX', 'Hộp|框|Box'),
(5, 'PIL', 'Viên|丸|Pill'),
(6, 'TUB', 'Ống|管|Tube');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `code` varchar(11) NOT NULL COMMENT 'User',
  `pass` varchar(128) NOT NULL COMMENT 'Password',
  `fullname` varchar(64) NOT NULL COMMENT 'Fullname',
  `role_code` varchar(5) NOT NULL COMMENT 'Role',
  `com_code` varchar(5) NOT NULL COMMENT 'Company',
  `dept_code` varchar(5) DEFAULT NULL COMMENT 'Department',
  `posi_code` varchar(5) DEFAULT NULL COMMENT 'Position',
  `email` varchar(64) NOT NULL COMMENT 'Email',
  `phone_extend` varchar(16) DEFAULT NULL COMMENT 'Phone extend',
  `about` text COMMENT 'About',
  `status` int(5) DEFAULT NULL COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `code`, `pass`, `fullname`, `role_code`, `com_code`, `dept_code`, `posi_code`, `email`, `phone_extend`, `about`, `status`) VALUES
(1, 'I12758', '$2y$08$RDAzc0gwKys3aFBNQ3E5TOzlJCpuCv9itp1WYNOMVtsm/HgT17lwG', 'John Nguyen', 'ADM', 'JHV', 'IT', 'TLD', 'PhucNguyen.Pham@jiahsin.com.vn', '1159', '', 1),
(2, 'I13042', '$2y$08$V2U2TlN3K1J0elhrbFRmV.5gC5huJ/Z4EdKUQoTP05mF4BoR91iQ.', 'Lê Duy', 'ADM', 'JHV', 'IT', 'EMP', 'Duy.Le@jiahsin.com.vn', '1159', '', 1),
(3, 'A0630', '$2y$08$ZXA3UjVBMzhIejBpTVJWW.XciFg246xGNO686l11tVKsWCqUd60Ba', 'Đinh Thị Xuân Mai', 'USR', 'JHV', 'AC', 'TLD', 'Mai.dinh@jiahsin.com.vn', '1110', '', 1),
(4, 'C3878', '$2y$08$M2RRRTRyZjVxeG5LeHoxauAy1asLMU2EO.nMADcwXyW4XWcX1jeSK', 'Huỳnh Thanh Hưng', 'USR', 'JHV', 'AC', 'EMP', 'Hung.Huynh@jiahsin.com.vn', '1110', '', 1),
(5, 'G5959', '$2y$08$RWVkQkl0Qi91OHZIQmxwZOmvjY2IrvGKW2EK2B21kamRIM9LwUfYC', 'Phạm Trần Kiều Mi', 'USR', 'JHV', 'AC', 'EMP', 'Mi.pham@jiahsin.com.vn', '1109', '', 1),
(6, 'H8097', '$2y$08$TTd6MzFaMVJCVW0zUndkTeadzzzm7bm6GV09klj3gd3Gd7LKueAPu', 'Ngô Thị Hiền', 'USR', 'JHV', 'AC', 'EMP', 'Hien.Ngo@jiahsin.com.vn', '1110', '', 1),
(9, 'I12028', '$2y$08$K0ovbC9GSWE2TGxBVWdxNeREsVx8/eyJrVb9kc0SM4nyzcCl2oLYO', 'Nguyễn Thị Kim The', 'USR', 'JHV', 'AC', 'EMP', 'Accounting.JHV@jiahsin.com.vn', '1109', '', 1),
(10, 'I11174', '$2y$08$dW9vL1JmemNGcW9iakxUZ.e0JUUr7OFtCsG76gx6vcuc3hWTwbd0W', 'Phạm Thị Kiều Trinh', 'USR', 'JHV', 'AC', 'EMP', 'Trinh.Pham@jiahsin.com.vn', '', '', 1),
(11, 'B2286', '$2y$08$bUFjSE5qYW5HZXdQdDR6LuUwHczG8.ZimgjvIqKZxr17sSxR7IiuG', 'Lê Thị Kim Trang', 'USR', 'JHV', 'WH', 'EMP', 'Khovatlieu.Trang@jiahsin.com.vn', '1250', '', 1),
(12, 'A0205', '$2y$08$Y2RyT1BjNFNhdXFSOE5ER.B0Rg/l2RzngliFvjzqOVtgZ/pJLMEsi', 'Thái Nhựt Phong', 'USR', 'JHV', 'AC', 'TLD', 'khovatlieu.phong@jiahsin.com.vn', '1222', '', 1),
(13, 'A0071', '$2y$08$M1hLdXNQUXNEM0hwOUhIS.ay2cYFaYXoa0OPF6ZC5F3/1C8EHwb7i', 'Lương Bội Văn', 'USR', 'JHV', 'GA', 'TLD', 'van.luong@jiahsin.com.vn', '1180', '', 1),
(14, 'steven', '$2y$08$K1Bhb0MrL3czUUhaSXNRV.3gY9ukdD9oDpR.db2YmIzY1lOFu4WnO', 'Steven Chang', 'ADM', 'JHV', 'IT', 'MNG', 'steven.chang@jiahsin.com.vn', '1159', '', 1),
(15, 'AS0174', '$2y$08$WnQvWFd1VXRkV2RkcGJRN.a.66PtNpB3/P7JOSb5ZDaiBb6T9/7ai', 'Nguyễn Thị Hồng Diễm', 'USR', 'SHM', 'GA', 'EMP', 'Diem.Nguyen@shimmer.com.vn', '0', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `code`, `name`) VALUES
(1, 'X01', 'Xe 01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`code`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `location_internal`
--
ALTER TABLE `location_internal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `medicine_basic`
--
ALTER TABLE `medicine_basic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `unit_code` (`unit_code`);

--
-- Indexes for table `medicine_stock`
--
ALTER TABLE `medicine_stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD UNIQUE KEY `name` (`code`),
  ADD KEY `unit_code` (`unit_code`);

--
-- Indexes for table `meeting_room_booking`
--
ALTER TABLE `meeting_room_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `com_code` (`com_code`),
  ADD KEY `dept_code` (`dept_code`),
  ADD KEY `room_code` (`room_code`),
  ADD KEY `user_code` (`user_code`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`code`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`code`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `code_2` (`code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `role_code` (`role_code`),
  ADD KEY `com_code` (`com_code`),
  ADD KEY `dept_code` (`dept_code`),
  ADD KEY `position` (`posi_code`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location_internal`
--
ALTER TABLE `location_internal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine_basic`
--
ALTER TABLE `medicine_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `medicine_stock`
--
ALTER TABLE `medicine_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `meeting_room_booking`
--
ALTER TABLE `meeting_room_booking`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicine_basic`
--
ALTER TABLE `medicine_basic`
  ADD CONSTRAINT `medicine_basic_ibfk_1` FOREIGN KEY (`unit_code`) REFERENCES `unit` (`code`) ON UPDATE CASCADE;

--
-- Constraints for table `medicine_stock`
--
ALTER TABLE `medicine_stock`
  ADD CONSTRAINT `medicine_stock_ibfk_1` FOREIGN KEY (`unit_code`) REFERENCES `unit` (`code`) ON UPDATE CASCADE;

--
-- Constraints for table `meeting_room_booking`
--
ALTER TABLE `meeting_room_booking`
  ADD CONSTRAINT `meeting_room_booking_ibfk_1` FOREIGN KEY (`room_code`) REFERENCES `room` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `meeting_room_booking_ibfk_2` FOREIGN KEY (`dept_code`) REFERENCES `department` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `meeting_room_booking_ibfk_3` FOREIGN KEY (`com_code`) REFERENCES `company` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `meeting_room_booking_ibfk_4` FOREIGN KEY (`user_code`) REFERENCES `user` (`code`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_code`) REFERENCES `role` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`com_code`) REFERENCES `company` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`dept_code`) REFERENCES `department` (`code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_4` FOREIGN KEY (`posi_code`) REFERENCES `position` (`code`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
