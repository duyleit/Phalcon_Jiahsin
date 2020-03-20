-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 04:30 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appjhv_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmeal`
--

CREATE TABLE `bookmeal` (
  `bm_id` int(21) NOT NULL,
  `date` date DEFAULT NULL,
  `user_code` varchar(11) DEFAULT NULL,
  `dept_code` int(5) DEFAULT NULL,
  `lunch` smallint(3) DEFAULT '0',
  `lunch_add` smallint(3) DEFAULT '0',
  `lunch_veg` smallint(3) DEFAULT '0',
  `lunch_soup` smallint(3) DEFAULT '0',
  `lunch_veg_add` smallint(3) DEFAULT '0',
  `dinner` smallint(3) DEFAULT '0',
  `dinner_add` smallint(3) DEFAULT '0',
  `dinner_veg_add` smallint(3) DEFAULT '0',
  `supper` smallint(3) DEFAULT '0',
  `supper_veg` smallint(3) DEFAULT '0',
  `separate_table` smallint(3) DEFAULT '0',
  `buffet` smallint(3) DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modify` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_code_modify` varchar(11) DEFAULT NULL,
  `status` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookmeal`
--

INSERT INTO `bookmeal` (`bm_id`, `date`, `user_code`, `dept_code`, `lunch`, `lunch_add`, `lunch_veg`, `lunch_soup`, `lunch_veg_add`, `dinner`, `dinner_add`, `dinner_veg_add`, `supper`, `supper_veg`, `separate_table`, `buffet`, `note`, `date_create`, `date_modify`, `user_code_modify`, `status`) VALUES
(1, '2019-04-09', 'I13042', 20, 11, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 3, '', '2019-04-09 09:07:10', '2019-04-09 09:55:36', NULL, 0),
(2, '2019-04-09', 'J15157', 2, 0, 0, 0, 33, 2, 0, 0, 0, 0, 0, 0, 1, '', '2019-04-09 09:07:44', '2019-04-09 09:07:44', NULL, 0),
(3, '2019-04-09', 'IN0063', 3, 22, 0, 0, 0, 2, 0, 5, 0, 0, 0, 0, 0, '', '2019-04-09 09:08:17', '2019-04-09 09:08:17', NULL, 0),
(4, '2019-04-10', 'I13042', 20, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 33, '', '2019-04-09 09:09:01', '2019-04-09 09:56:38', NULL, -1),
(5, '2019-04-11', 'I13042', 20, 12, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, '', '2019-04-09 09:57:46', '2019-04-09 09:57:46', NULL, 0),
(6, '2019-04-08', 'I13042', 20, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 0, '', '2019-04-09 10:05:43', '2019-04-09 14:44:36', NULL, 0),
(7, '2019-04-13', 'I13042', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 2, '', '2019-04-09 14:06:47', '2019-04-09 14:06:47', NULL, 0),
(15, '2019-04-16', 'I13042', 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, '', '2019-04-16 16:27:59', '2019-04-16 16:28:08', NULL, 0),
(21, '2019-04-15', 'I13042', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2019-04-17 13:53:59', '2019-04-17 13:53:59', NULL, 0),
(25, '2019-04-18', 'I13042', 20, 1, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, '', '2019-04-17 14:09:38', '2019-04-17 14:09:38', NULL, 0),
(26, '2019-04-19', 'I13042', 20, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, '', '2019-04-17 14:11:01', '2019-04-17 14:33:38', NULL, 0),
(27, '2019-04-23', 'I13042', 20, 5, 0, 0, 0, 0, 0, 2, 0, 0, 22, 0, 11, '', '2019-04-22 03:59:39', '2019-04-22 15:32:42', NULL, 0),
(28, '2019-04-24', 'I12758', 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2019-04-22 04:04:12', '2019-04-22 15:04:34', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookmeal_dept`
--

CREATE TABLE `bookmeal_dept` (
  `bd_id` int(11) NOT NULL,
  `name` varchar(160) DEFAULT NULL,
  `bd_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookmeal_dept`
--

INSERT INTO `bookmeal_dept` (`bd_id`, `name`, `bd_code`) VALUES
(1, 'Hành Chánh', NULL),
(2, 'HR', 'HR'),
(3, 'CR', 'CR'),
(4, 'Đặt Hàng Phi SX', NULL),
(5, 'Kế Toán', NULL),
(6, 'BU1+BU2 Nghiệp Vụ', NULL),
(7, 'Kiểm Tra', NULL),
(8, 'Cơ Điện', NULL),
(9, 'Tạp Vụ', NULL),
(10, 'Tài Xế', NULL),
(11, 'BU1 Costing+ĐH Mẫu', NULL),
(12, 'BU2 Costing+ĐH Mẫu', NULL),
(13, 'BU1 Đặt Hàng SX', NULL),
(14, 'VR', 'VR'),
(15, 'Phòng Thử Nghiệm', NULL),
(16, 'BU2 Đặt Hàng SX', NULL),
(17, 'BU1 R&D', NULL),
(18, 'BU1 QIP', NULL),
(19, 'BU1 Điều Phối', NULL),
(20, 'IT', 'IT'),
(21, 'BU2 Điều Phối', NULL),
(22, 'BU1 ME', NULL),
(23, 'BU2 ME', NULL),
(24, 'BU1 Kho Vật Liệu', NULL),
(25, 'BU2 Kho Vật Liệu', NULL),
(26, 'BU2 QIP+QIP NB', NULL),
(27, 'BU2 R&D New Balance', NULL),
(28, 'BU1 AD', NULL),
(29, 'BU1 AE', NULL),
(30, 'CN Mới', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_room`
--

CREATE TABLE `book_room` (
  `id` int(22) NOT NULL,
  `user_code` varchar(11) NOT NULL,
  `dept_code` varchar(5) NOT NULL,
  `room_code` varchar(5) NOT NULL,
  `presiding` varchar(128) NOT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `receiver` varchar(2048) DEFAULT NULL,
  `shm_receiver` varchar(2048) DEFAULT NULL,
  `jhv_receiver` varchar(2048) DEFAULT NULL,
  `timeStart` datetime NOT NULL,
  `timeEnd` datetime NOT NULL,
  `status` int(5) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_room`
--

INSERT INTO `book_room` (`id`, `user_code`, `dept_code`, `room_code`, `presiding`, `title`, `content`, `receiver`, `shm_receiver`, `jhv_receiver`, `timeStart`, `timeEnd`, `status`, `created`, `modified`) VALUES
(34, 'CS1955', 'AC', 'SO3', 'Mr.Matt', 'Cán bộ hội ngoại họp sau kiểm kê', '<p>- Họp sau kiểm kê<br></p>', 'Matt.Fan@shimmer.com.vn;Tran.An@jiahsin.com.vn', NULL, NULL, '2018-07-02 10:00:00', '2018-07-02 12:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(37, 'BS0394', 'IP', 'SO3', 'TRANG', 'HỌP ĐẦU TUẦN', '<p>&nbsp;1.HỌP VỀ SẢN LƯỢNG</p><p>2.HỌP BÁO PHẾ</p>', 'Bauwei.Zhang@shimmer.com.vn;HoangNam.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-02 18:30:00', '2018-07-02 19:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(38, 'CS1955', 'AC', 'SO2', 'Mr.Matt', 'Kế toán họp', '<p>- Kế toán họp sau kiểm kê<br></p>', 'Matt.Fan@shimmer.com.vn', NULL, NULL, '2018-07-02 13:00:00', '2018-07-02 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(39, 'AS0174', 'JB', 'SO3', 'Ms.Hà ( công đoàn JH)', 'TUYÊN TRUYỀN GIAO THÔNG- AN NINH QUỐC PHÒNG', '<p>1. Hành chánh Shimmer hỗ trợ:</p><p>- Chuẩn bị 1 ly café cho 2 ca học ( thời gian Chị Hà sẽ báo cụ thể)</p><p>- Chuẩn bị 1 bình nước lọc ở bàn giáo viên</p><p>Ghi chú:</p><p>1. Bàn ghế bên công đoàn tự sắp xếp</p><p>2. ly giấy cho học viên và trên bàn giáo viên công đoàn tự đem qua</p><p>3. Công đoàn tự liên hệ IT về âm thanh, ánh sáng cho buổi học</p><p><br></p>', 'CongDoan.Ha@jiahsin.com.vn;dieuthuy.nguyen@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-07 07:30:00', '2018-07-07 11:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(40, 'AS0174', 'AD', 'SO5', 'HC SM + HC JH', 'ĐÀO TẠO - HUẤN LUYỆN VẬN HÀNH THIẾT BỊ NGHIÊM NGẶT', '<p>1. HÀNH CHÁNH SM CHUẨN BỊ NƯỚC LỌC, HC JH CHUẨN BỊ LY GIẤY</p><p>2. IT HỖ TRỢ MÁY CHIẾU</p><p>3. ANH HUY BẢO VỆ HỖ TRỢ ĐIỀU XE NÂNG THỰC HÀNH</p><p>4. ANH LINH EVA HỖ TRỢ VẬN HÀNH LÒ HƠI<br></p>', 'Mai.Huynh@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;Duc.Thai@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;bich.phan@jiahsin.com.vn;Huy.Tran@shimmer.com.vn;John.Wang@shimmer.com.vn', NULL, NULL, '2018-07-07 08:00:00', '2018-07-07 12:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(41, 'CS1912', 'RD', 'SO4', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ PHÒNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-07-02 13:00:00', '2018-07-02 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(42, 'AS0174', 'JB', 'SO5', 'Ms. Phượng HR', 'Traning to trainer', '<p>- Hỗ trợ đặt phòng giúp HR Jiahsin</p><p><br></p>', 'John.Wang@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;Nguyen;ThanhThuy(JHVHR)', NULL, NULL, '2018-07-02 08:30:00', '2018-07-02 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(43, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG', '<p>- Đào tạo lớp \"Kỹ năng giám sát hiệu quả\"</p>', 'John.Wang@shimmer.com.vn;\'Luong;Phuong(JHVHR)\';Nguyen;ThanhThuy(JHVHR);Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-02 13:30:00', '2018-07-02 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(44, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'PHÒNG MẪU', '<p>HỌP TIẾN ĐỘ<br></p>', 'Hua.Wang@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-07-04 15:00:00', '2018-07-04 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(45, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'PHÒNG MẪU', '<p>HỌP TIẾN ĐỘ<br></p>', 'Hua.Wang@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-07-06 15:00:00', '2018-07-06 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(46, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG', '<p>- Đào tạo lớp \"Kỹ năng giám sát hiệu quả\"<o:p></o:p></p>', 'John.Wang@shimmer.com.vn;Nguyen;ThanhThuy(JHVHR);Nguyen;ThanhThuy(JHVHR);Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-03 13:30:00', '2018-07-03 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(47, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'PHÒNG  MẪU', '<p>HỌP TIẾN ĐỘ<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;KhanhNgoc.Nguyen@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Linh.ThiNguyen@shimmer.com.vn;Phuong.Pham@shimmer.com.vn;QuangHuy.Tran@shimmer.com.vn;Huong.Nguyen@shimmer.com.vn;Phuong.Tran@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-07-03 13:00:00', '2018-07-03 15:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(48, 'AS0174', 'AD', 'SO4', 'Mr. Chris Lee', 'CUỘC HỌP CỦA MR. LÝ', '<p>- Hành Chánh hỗ trợ đặt phòng họp</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-05 10:00:00', '2018-07-05 12:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(50, 'BS0537', 'IP', 'SO1', 'Trần Hữu Thạch', 'họp tiến độ ', '<p>họp tiến độ đối chiếu đơn hàng với bên Nghiệp vụ JHV và nghiệp vụ SHM của mã 38673 .<br></p>', 'Do;Diep(JHVBusiness);Nguyen;QuynhDung(SHMR&DAD);Nguyen;Ngoc(JHVBusiness);Dang;Hien(JHVPurchasing)', NULL, NULL, '2018-07-04 08:00:00', '2018-07-04 12:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(51, 'AS0174', 'JB', 'SO3', 'Ms. THƯƠNG HR', 'HR JHV MƯỢN PHÒNG', '<p>- Đào tạo&nbsp;<span style=\"font-family: Arial, sans-serif;\">về WPO</span></p><p class=\"MsoNormal\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><o:p></o:p></span></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-04 09:00:00', '2018-07-04 10:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(52, 'AS0174', 'JB', 'SO3', 'MS. PHƯỢNG HR', 'HR JHV MƯỢN PHÒNG', '<p>-Đào tạo Kỹ năng giám sát hiệu quả<br></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;\'Luong;Phuong(JHVHR)\';Nguyen;ThanhThuy(JHVHR);an.nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-04 13:30:00', '2018-07-04 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(53, 'AS0174', 'JB', 'SO3', 'Khiêm - CR', 'CR JHV MƯỢN PHÒNG', '<p>- Đ<span style=\"font-family: Calibri, sans-serif; font-size: 11pt;\">ào tạo An toàn choCBQL xưởng Adidas&nbsp;</span></p>', 'Anh.Nguyen@jiahsin.com.vn;\'Wang;John(SMVGA)\';Huynh;Mai(SMVAdministration);Pham;Khiem(JHVCR)', NULL, NULL, '2018-07-06 09:00:00', '2018-07-06 11:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(54, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU ', '<p>HỌP BÁO BIỂU MỖI NGÀY.</p><p>HỌP SẢN LƯỢNG</p><p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn;HoangNam.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-05 08:30:00', '2018-07-05 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(55, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP BÁO BIỂU MỖI NGÀY</p><p>HỌP SẢN LƯỢNG&nbsp;</p><p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-07-06 08:30:00', '2018-07-06 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(57, 'AS0174', 'JB', 'SO3', 'MS. PHƯỢNG HR', 'HR JHV MƯỢN PHÒNG HỌP SHM', '<p>- Đào tạo Kỹ năng giám sát hiệu quả</p><p><o:p><br></o:p></p><p><o:p><br></o:p></p>', 'Phuong.Luong@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn;an.nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-05 13:30:00', '2018-07-05 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(58, 'BS0537', 'DP', 'SO1', 'Mr Thạch ', 'họp kiểm thảo kiểm kê nội bộ của đơn vị ', '<p>Họp giao ban với cán bộ quản lý của những khu vực nhỏ trong đơn vị kiểm thảo những vấn đề trong đợt kiểm kê tháng 6 .&nbsp;</p>', 'Khanh.Nguyen@shimmer.com.vn;Dang;Kieu(SMVMaterialsWH);Nguyen;Anh(SMVR&D);\'Nguyen;Nhi(SHMMaterialsWH)\';Thuong;Nguyen(SMVPlanning);KhoVatLieu.SMV@shimmer.com.vn;\'Wu;Darren(SHMR&D)\';Ho;Son(SMVWareHouse)', NULL, NULL, '2018-07-05 15:00:00', '2018-07-05 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(59, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG</p><p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;HoangNam.Nguyen@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-09 08:30:00', '2018-07-09 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(60, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XUỎNG</p><p>HỌP SẢN LƯỢNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-07-10 08:30:00', '2018-07-10 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(61, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG</p><p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'HoangNam.Nguyen@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-07-11 08:30:00', '2018-07-11 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(62, 'AS0067', 'QI', 'SO1', 'CÔ TRƯƠNG (QING.ZHANG)', 'HỌP CHẤT LƯỢNG HÀNG TUẦN', '<p>HỌP CHẤT LƯỢNG HÀNG TUẦN ĐẾ IP - EVA-HỘP DÁN<br></p>', 'Qing.Zhang@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Quan.Tran@shimmer.com.vn', NULL, NULL, '2018-07-07 14:00:00', '2018-07-07 16:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(63, 'AS0174', 'JB', 'SO3', 'Ms. PHƯỢNG HR', 'HR JHV MƯỢN PHÒNG HỌP SHM', '<p>- Đào tạo Kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-07 13:30:00', '2018-07-07 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(64, 'BS0537', 'DP', 'SO2', 'Mr Jay', '新型体上线试做讨论会议', '<p>新型体上线试做讨论会议<br></p>', 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;AnNa.Lyu@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-07-07 13:00:00', '2018-07-07 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(65, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'PHÒNG MẪU', '<p>HỌP TIẾN ĐỘ<br></p>', 'Hua.Wang@shimmer.com.vn;An.Voong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-09 15:00:00', '2018-07-09 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(66, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'PHÒNG MẪU', '<p>HỌP TIẾN ĐỘ<br></p>', 'Hua.Wang@shimmer.com.vn;An.Voong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-11 15:00:00', '2018-07-11 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(67, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'PHÒNG MẪU', '<p>HỌP TIẾN ĐỘ<br></p>', 'Hua.Wang@shimmer.com.vn;An.Voong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-13 15:00:00', '2018-07-13 16:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(68, 'CS1955', 'AC', 'SO1', 'Ms.Thùy', 'HỌP CÔNG ĐOÀN', '<p>&nbsp;- Họp định kỳ hàng tháng công đoàn&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 'DieuThuy.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-10 14:00:00', '2018-07-10 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(69, 'I12758', 'IT', 'SO5', 'TIPTOP', 'TIPTOP training schedule on July 2018|Lịch tập huấn TIPTOP tháng 7-2018', '<p>Buổi sáng ngày 10/07/2018 sẽ tập huấn với bộ phận kế toán trước, các bộ phận còn lại tùy theo tiến độ tập huấn John sẽ thông báo tiếp.</p><p>Accounting dept will be training first at 09:00AM on 10/07/2018, I will contact with other dept later when I have new detail schedule.<br></p>', 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Minh.Tra@shimmer.com.vn;Tham.Dao@shimmer.com.vn;Lanh.Hoang@shimmer.com.vn;John.Wang@shimmer.com.vn;Khovatlieu.Thao@shimmer.com.vn;Thach.Tran@shimmer.com.vn;Toan.Le@jiahsin.com.vn;Mai.dinh@jiahsin.com.vn;Hung.Huynh@jiahsin.com.vn;Khovatlieu.Trang@jiahsin.com.vn;khovatlieu.phong@jiahsin.com.vn;van.luong@jiahsin.com.vn;thai.vo@jiahsin.com.vn;Nhi.thai@jiahsin.com.vn;ha.bui@jiahsin.com.vn;Duy.Le@jiahsin.com.vn;steven.chang@jiahsin.com.vn;Max.Chiang@jiahsin.com.vn', NULL, NULL, '2018-07-10 09:00:00', '2018-07-10 16:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(70, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<br></p>', 'Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-09 13:30:00', '2018-07-09 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(71, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-10 13:30:00', '2018-07-10 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(72, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'ThanhThuy.Nguyen@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-11 13:30:00', '2018-07-11 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(73, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-12 13:30:00', '2018-07-12 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(74, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-13 13:30:00', '2018-07-13 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(75, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-14 13:30:00', '2018-07-14 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(76, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-16 13:30:00', '2018-07-16 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(78, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'HR JHV MƯỢN PHÒNG SHM', '<p>- Đào tạo kỹ năng giám sát hiệu quả<o:p></o:p></p>', 'Mai.Huynh@shimmer.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-28 13:30:00', '2018-07-28 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(79, 'AS0174', 'JB', 'SO3', 'Cảnh sát môi trường Long An', 'CR JHV MƯỢN PHÒNG HỌP', '<p><b><span style=\"font-size: 13pt; font-family: &quot;Times New Roman&quot;, serif; color: red; background-color: rgb(247, 247, 247);\">- Huấnluyện nhận thức về môi trường cho doanh nghiệp</span></b><br></p>', 'Son.Nguyen@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-14 07:30:00', '2018-07-14 12:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(80, 'BS0985', 'CP', 'SO4', 'Tuyết (阿雪)', 'New Balance meeting', '<p>Discussion and finalize price for SDL250 Molded</p>', 'Hoa.Dang@shimmer.com.vn;Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;dung.duong@jiashin.com.vn;hau.nguyen@jiahsin.com.vn', NULL, NULL, '2018-07-11 08:00:00', '2018-07-11 15:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(81, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG</p><p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p><p><br></p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;HoangNam.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-12 08:30:00', '2018-07-12 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(82, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG</p><p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Yuanhui.Zhang@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-07-13 08:30:00', '2018-07-13 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(86, 'AS0174', 'JB', 'SO2', 'Ms. Thủy CR', 'CR JHV MƯỢN PHÒNG HỌP', '<p>-&nbsp;<span style=\"font-family: Calibri, sans-serif; font-size: 11pt;\">Họp Hội đồng ATVSLĐ</span></p>', 'ThuThuy.Nguyen@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-12 14:00:00', '2018-07-12 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(87, 'AS0174', 'JB', 'SO3', 'CÔNG ĐOÀN JH ( CHỊ HÀ)', 'ĐẠI HỘI CÔNG ĐOÀN NĂM 2018', '<p>GHI CHÚ:</p><p>1. Hành chánh SM +JH&nbsp;hỗ trợ chuẩn bị café cho khách</p><p>2. Hành chánh SM hỗ trợ chuẩn bị 1 bình nước lọc cho CBCNV tham gia ( ly giấy Chị Hà đem qua)</p><p>3. IT hổ trợ âm thanh+ ánh sáng.<br></p><p><br></p>', 'DieuThuy.Nguyen@shimmer.com.vn;Congdoan.Ha@jiahsin.com.vn;Diem.Nguyen@shimmer.com.vn;Quynh.Nguyen@jiahsin.com.vn;John.Wang@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Duc.Thai@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-28 08:00:00', '2018-07-28 11:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(88, 'AS0070', 'HR', 'SO5', 'Lê Ý Mỵ Thư', 'Họp xử lý kỷ luật', '<p>Mời họp xử lý kỷ luật công nhân vi phạm.<br></p>', 'DieuThuy.Nguyen@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trinh.Pham@shimmer.com.vn;ThiMy.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-19 08:30:00', '2018-07-19 11:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(89, 'AS0070', 'HR', 'SO5', 'Lê Ý Mỵ Thư', 'Họp kỷ luật L2/07', '<p>Họp xử lý công nhân vi phạm<br></p>', 'DieuThuy.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Thu.Le@shimmer.com.vn', NULL, NULL, '2018-07-21 08:00:00', '2018-07-21 12:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(90, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'họp báo biểu', '<p>HỌP SẢN LƯỢNG&nbsp;</p>', 'Bauwei.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-07-16 08:30:00', '2018-07-16 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(91, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-07-17 08:30:00', '2018-07-17 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(92, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-07-18 08:30:00', '2018-07-18 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(93, 'CS1940', 'FO', 'SO2', 'Wang Wan Hua', 'Họp tiến độ', '<p>Phòng mẫu<br></p>', 'KhanhNgoc.Nguyen@shimmer.com.vn;Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Sloan.Hsu@jiahsin.com.vn', NULL, NULL, '2018-07-16 15:00:00', '2018-07-16 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(94, 'CS1940', 'FO', 'SO2', 'Wang Wan Hua', 'Họp tiến độ', '<p>Phòng mẫu<br></p>', 'KhanhNgoc.Nguyen@shimmer.com.vn;Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Sloan.Hsu@jiahsin.com.vn', NULL, NULL, '2018-07-18 15:00:00', '2018-07-18 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(95, 'CS1940', 'FO', 'SO2', 'Wang Wan Hua', 'Họp tiến độ', '<p>Phòng mẫu<br></p>', 'KhanhNgoc.Nguyen@shimmer.com.vn;Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Sloan.Hsu@jiahsin.com.vn', NULL, NULL, '2018-07-20 15:00:00', '2018-07-20 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(96, 'AS0174', 'JB', 'SO3', 'HR Jiahsin', 'Đào tạo Kỹ năng giao tiếp (Jia Hsin & Shimmer)', '<p><br></p>', 'ThanhThuy.Nguyen@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;John.Wang@shimmer.com.vn', NULL, NULL, '2018-07-25 07:30:00', '2018-07-25 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(97, 'AS0174', 'JB', 'SO3', 'HR Jiahsin', 'Đào tạo an toàn lao động cho CB-CNV', '<p><br></p>', 'thanhthuy.nguyen@jiahsin.com.vn;Diem.Nguyen@shimmer.com.vn;John.Wang@shimmer.com.vn', NULL, NULL, '2018-07-27 07:30:00', '2018-07-27 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(98, 'AS0174', 'JB', 'SO3', 'HR Jiahsin', 'Đào tạo an toàn lao động cho CB-CNV', '<p><br></p>', 'thanhthuy.nguyen@jiahsin.com.vn;Diem.Nguyen@shimmer.com.vn;John.Wang@shimmer.com.vn', NULL, NULL, '2018-07-21 07:30:00', '2018-07-21 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(99, 'AS0002', 'AC', 'SO3', 'Dieu Thuy', 'HOI NGHI NGUOI LAO DONG 2018', '<p>HOI NGHI NGUOI LAO DONG 2018<br></p>', 'Diem.Nguyen@shimmer.com.vn;John.Wang@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;ThiMy.Nguyen@shimmer.com.vn;Thu.Le@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trinh.Nguyen@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Quan.Tran@shimmer.com.vn', NULL, NULL, '2018-07-31 13:00:00', '2018-07-31 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(100, 'AS0174', 'JB', 'SO5', 'Ms. Huệ HR', 'Đào tạo công nhân mới', '<p>- HR JHV mượn phòng họp để đào tạo công nhân mới</p><p>- HR JHV sẽ tự chuẩn bị bàn ghế và nước uống cho công nhân</p>', 'John.Wang@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;Hue.Le@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-17 07:30:00', '2018-07-17 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(101, 'AS0174', 'JB', 'SO3', 'Ms. Huệ HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p style=\"color: rgb(51, 51, 51);\">- HR JHV mượn phòng họp để đào tạo công nhân mới</p><p style=\"color: rgb(51, 51, 51);\">- HR JHV sẽ tự chuẩn bị bàn ghế và nước uống cho công nhân</p>', 'John.Wang@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;Hue.Le@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-20 07:30:00', '2018-07-20 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(103, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG&nbsp;</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-07-19 08:30:00', '2018-07-19 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(105, 'AS0174', 'JB', 'SO3', 'Ms. Huệ HR', 'Đào tạo công nhân mới ', '<p><span style=\"color:#333333\">- HR JHV mượn phòng họp để đào tạo công nhân mới<o:p></o:p></span></p><p><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;color:#333333;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">- HR JHV sẽ tự chuẩnbị bàn ghế và nước uống cho công nhân.</span></p><p><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;color:#333333;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">- HR&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Times New Roman&quot;, serif; font-size: 16px;\">JHV nhớ nhắc nhỡ CN không hút thuốc trong nhà vệ sinh, chỉ hút thuốc đúng nơi qui định.</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;color:#333333;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\"><br></span><br></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Hue.Le@jiahsin.com.vn;Phuong.Luong@jiahsin.com.vn', NULL, NULL, '2018-07-19 09:00:00', '2018-07-19 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(106, 'AS0174', 'AD', 'SO2', 'Mr. Wang Qiang', 'HỌP NỘI BỘ', '<p>- Toàn thể nhân viên làm việc ngày mai sẽ họp với A Cường (bao gồm: Tổng Vụ, Cơ điện, Nhà Ăn (A Cầu), Hành Chánh, Y tế, Tài xế, Bảo vệ) theo thời gian trên.</p><p>- Các Anh/Chị quản lý có nhiệm vụ nhắc nhỡ nhân viên đi họp đúng giờ.</p><p><br></p>', 'Vu.Tran@shimmer.com.vn;Minh.Tra@shimmer.com.vn;Tham.Dao@shimmer.com.vn;CamTien.Nguyen@shimmer.com.vn;Phong.Nguyen@shimmer.com.vn;Phung.Pham@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Cau.Mach@jiahsin.com.vn', NULL, NULL, '2018-07-21 15:30:00', '2018-07-21 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(107, 'AS0174', 'JB', 'SO5', 'CÔNG ĐOÀN JH( CHỊ HÀ)', 'ĐẠI HỘI CÔNG ĐOÀN NĂM 2018.', '<p>Phòng O5&nbsp; dùng để kiểm tra phiếu bầu cử Ban chấp hành công đoàn <br></p>', 'Congdoan.Ha@jiahsin.com.vn;Diem.Nguyen@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-28 08:00:00', '2018-07-28 11:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(108, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ PHÒNg MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn;PhucNguyen.Pham@jiahsin.com.vn', NULL, NULL, '2018-07-23 15:00:00', '2018-07-23 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(109, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ PHÒNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;PhucNguyen.Pham@jiahsin.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-07-25 15:00:00', '2018-07-25 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(110, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ PHÒNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Sloan.Hsu@jiahsin.com.vn', NULL, NULL, '2018-07-27 15:00:00', '2018-07-27 16:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(111, 'BS0394', 'IP', 'SO2', 'ZHANG BAU WEI', 'HỌP ĐẦU TUẦN', '<p>HỌP SẢN LƯỢNG + CÁC VẤN&nbsp;ĐỀ CỦA XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-07-23 18:30:00', '2018-07-23 19:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(112, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG MỖI NGÀY</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-07-23 08:30:00', '2018-07-23 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(113, 'BS0394', 'IP', 'SO1', 'zhang bau wei', 'HỌP BÁO BIỂU', '<p>HỌP SẢN LƯỢNG CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-07-24 08:30:00', '2018-07-24 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(114, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU ', '<p>HỌP SẢN LƯỢNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-07-25 08:30:00', '2018-07-25 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(115, 'AS0174', 'AD', 'SO3', 'Mr. Li ', 'HỌP GIAO BAN ', '<p>- Hành Chánh Shimmer hỗ trợ sắp xếp bàn ghế và dọn dẹp vệ sinh</p>', 'John.Wang@shimmer.com.vn;Quynh.Nguyen@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-24 14:00:00', '2018-07-24 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(116, 'AS0174', 'JB', 'SO5', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp SHM để đào tạo công nhân mới.</p><p>- HR JHV tự chuẩn bị bàn ghế, giữ gìn vệ sinh chung và nhắc nhở CN hút thuốc đúng nơi qui định.</p>', 'John.Wang@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;giang.vuong@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-24 09:00:00', '2018-07-24 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(117, 'AS0174', 'SE', 'SO3', 'BẢO VỆ JH-SM', 'ĐÀO TẠO HUẤN LUYỆN NGHIỆP VỤ ĐỘI BẢO VỆ CỦA CÔNG TY JH- SM DO CÔNG AN TỈNH PHỤ TRÁCH ', '<p>GHI CHÚ:</p><p>1. SẮP XẾP BÀN GHẾ CHO 60 NGƯỜI DO ĐỘI BẢO VỆ PHỤ TRÁCH</p><p>2. NƯỚC + LY GIẤY CHO NHÂN VIÊN THAM GIA DO BẢO VỆ JH - SM PHỤ TRÁCH</p><p>3. ÂM THANH+ MÁY CHIẾU IT HỖ TRỢ</p><p>4. HÀNH CHÁNH HỖ TRỢ PHA CAFE CHO CÔNG AN TỈNH ( SỐ LƯỢNG ANH HUY BÁO SAU)</p><p><br></p>', 'Huy.Tran@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;John.Wang@shimmer.com.vn;Duc.Thai@shimmer.com.vn', NULL, NULL, '2018-07-26 14:00:00', '2018-07-26 15:29:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(118, 'AS0174', 'JB', 'SO3', 'CÔNG ĐOÀN JH', 'SẮP XẾP BÀN GHẾ CHUẨN BỊ CHO ĐẠI HỘI CÔNG ĐOÀN', '<p>1. CHỊ HÀ MƯỢN NHÀ ĂN SM 50 GHẾ INOX CHIỀU 15H30 QUA LẤY</p><p>2. BÊN CÔNG ĐOÀN SẼ SẮP XẾP BÀN GHẾ CHUẨN BỊ CHO ĐẠI HỘI CÔNG ĐOÀN TỪ KHUNG GIỜ TRÊN</p><p>3. CÁC VẤN ĐỀ KHÁC CÓ PHÁT SINH CÔNG ĐOÀN SẼ NHỜ HC SM HỖ TRỢ<br></p>', 'DieuThuy.Nguyen@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;cau.mach@jiahsin.com.vn;Congdoan.Ha@jiahsin.com.vN;John.Wang@shimmer.com.vn', NULL, NULL, '2018-07-26 15:30:00', '2018-07-26 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(119, 'AS0174', 'AD', 'SO5', 'Mr. Lí', 'HỌP ĐÀO TẠO CBHN', '<p>- Hành Chánh hỗ trợ sắp xếp bàn ghế, nước uống.</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-26 09:00:00', '2018-07-26 16:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(120, 'AS0174', 'AD', 'SO5', 'Mr.Lí', 'HỌP ĐÀO TẠO CBHN', '<p>- Hành Chánh hỗ trợ sắp xếp bàn ghế, nước uống.<o:p></o:p></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-27 13:00:00', '2018-07-27 16:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(121, 'BS1354', 'DP', 'SO1', 'Mrs.Thu Thủy', 'TỌA ĐÀM NHÂN VIÊN', '<p>HUẤN LUYỆN TỐ CHẤT NHÂN VIÊN</p>', 'Thach.Tran@shimmer.com.vn;Khanh.Nguyen@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Dieuphoi.Linh@shimmer.com.vn;Dieuphoi.Xuan@shimmer.com.vn;Dieuphoi.Trung@shimmer.com.vn;Planning.SMV@shimmer.com.vn;Dieuphoi.Quy@shimmer.com.vn;Chi.Ngo@shimmer.com.vn', NULL, NULL, '2018-07-25 16:00:00', '2018-07-25 18:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(122, 'AS0174', 'JB', 'SO3', 'Ms. Kim Anh ', 'HỌP VỚI CHỦ TỊCH TỈNH LONG AN', '<p>- Hành Chánh hỗ trợ phòng họp theo sự phân công của Chị Kim Anh.</p>', 'John.Wang@shimmer.com.vn;anh.nguyen@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-04 07:30:00', '2018-08-04 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(123, 'AS0174', 'JB', 'SO5', 'Ms. Kim Anh', 'HỌP VỚI CHỦ TỊCH TỈNH LONG AN', '<p>- Hành Chánh hỗ trợ phòng họp theo sự phân công của Chị Kim Anh.</p><p><o:p></o:p></p>', 'John.Wang@shimmer.com.vn;anh.nguyen@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-04 07:30:00', '2018-08-04 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(124, 'AS0174', 'JB', 'SO2', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp để đào tạo công nhân mới</p><p>- HR JHV tự sắp xếp bàn ghế và chuẩn bị nước uống cho Công nhân.</p>', 'John.Wang@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;Giang.Vuong@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-07-26 09:00:00', '2018-07-26 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(125, 'AS0174', 'AD', 'SO1', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p style=\"color: rgb(51, 51, 51);\">- HR JHV mượn phòng họp để đào tạo công nhân mới</p><p style=\"color: rgb(51, 51, 51);\">- HR JHV tự sắp xếp bàn ghế và chuẩn bị nước uống cho Công nhân.</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;Giang.Vuong@jiahsin.com.vn', NULL, NULL, '2018-07-28 09:00:00', '2018-07-28 12:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(126, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-07-26 08:30:00', '2018-07-26 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(127, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phương', 'Xử lý kỷ luật', '<p><br></p>', 'Thuong.Dinh@jiahsin.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Trinh.Pham@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Duy.Nguyen@shimmer.com.vn;ThiMy.Nguyen@shimmer.com.vn', NULL, NULL, '2018-07-28 08:00:00', '2018-07-28 10:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(128, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Xử lý kỷ luật', '<p><br></p>', 'Loan.Pham@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Thuong.Dinh@jiahsin.com.vn;phuong.luong@jiahsin.com.vn;trang.phan@jiahsin.com.vn;trinh.pham@shimmer.com.vn;Thu.Le@shimmer.com.vn', NULL, NULL, '2018-07-30 08:00:00', '2018-07-30 10:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(129, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ PHÒNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Sloan.Hsu@jiahsin.com.vn', NULL, NULL, '2018-07-30 15:00:00', '2018-07-30 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(130, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ PHONG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-08-01 15:00:00', '2018-08-01 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(131, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ PHÒNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-08-04 15:00:00', '2018-08-04 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(132, 'AS0174', 'JB', 'SO3', 'Ms. Kim Anh', 'CÔNG TÁC CHUẨN BỊ CHO SỰ KIỆN \"NGÀY HỘI TOÀN DÂN BẢO VỆ CHO ANTQ\"', '<p>- Thực hiện các công tác chuẩn bị đã được phân công dưới sự giám sát của bên tổ chức.</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Anh.Nguyen@jiahsin.com.vn;Quynh.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-08-02 07:30:00', '2018-08-03 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(133, 'BS0394', 'IP', 'SO1', 'zhang bau wei', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-07-31 08:30:00', '2018-07-31 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(134, 'CS1940', 'FO', 'SO2', 'LI FENG YU', 'Họp khuôn mới', '<p><br></p>', 'Loan.Truong@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-08-01 13:00:00', '2018-08-01 14:55:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(135, 'AS0174', 'JB', 'SO2', 'Mr. Khiêm CR', 'HỌP HỘI ĐỒNG AN TOÀN VỆ SINH LAO ĐỘNG ', '<p>- CR JHV mượn phòng họp SHM để&nbsp;<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;\">họp HĐ ATVSLĐ (14h - 15h)</span></p><p><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;\">- CR JHV tự sắp xếp bàn ghế và nước uống cho người tham gia</span></p><p><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;\">- Nhắc nhở mọi người hút thuốc đúng nơi qui định.&nbsp;</span></p>', 'John.Wang@shimmer.com.vn;Khiem.Pham@jiahsin.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-03 14:00:00', '2018-08-03 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(136, 'AS0174', 'JB', 'SO2', 'Ms. Ngọc JHV', 'HỌP TIẾN ĐỘ', '<p>- Ms. Ngọc JHV mượn phòng họp SHM&nbsp;</p><p>- Cơ Điện Shimmer sẽ hỗ trợ xếp bàn ghế cho 45 người họp</p>', 'John.Wang@shimmer.com.vn;Vu.Tran@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-03 09:00:00', '2018-08-03 10:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(137, 'CS1940', 'FO', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', 'KhanhNgoc.Nguyen@shimmer.com.vn;Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Sloan.Hsu@jiashin.com.vn;Guangming.Fu@shimmer.com.vn', NULL, NULL, '2018-08-06 15:00:00', '2018-08-06 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(138, 'CS1940', 'FO', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', 'KhanhNgoc.Nguyen@shimmer.com.vn;Sloan.Hsu@jiahsin.com.vn;Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn', NULL, NULL, '2018-08-08 15:00:00', '2018-08-08 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(139, 'CS1940', 'FO', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', 'KhanhNgoc.Nguyen@shimmer.com.vn;Sloan.Hsu@jiahsin.com.vn;Hua.Wang@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-08-10 15:00:00', '2018-08-10 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(189, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Trinh.Nguyen@shimmer.com.vn', NULL, NULL, '2018-08-08 08:30:00', '2018-08-08 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(190, 'AS0174', 'AD', 'SO4', 'Mr. John Wang', 'HỌP', '<p>- Họp với Mr. Sam, Mr. Jay</p>', 'John.Wang@shimmer.com.vn', NULL, NULL, '2018-08-09 13:30:00', '2018-08-09 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(191, 'AS0174', 'AD', 'SO4', 'Mr. John Wang', 'HỌP', '<p>- Họp với Mr. Sam, Mr. Jay<o:p></o:p></p>', 'John.Wang@shimmer.com.vn', NULL, NULL, '2018-08-15 13:30:00', '2018-08-15 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(192, 'AS0070', 'HR', 'SO5', 'Đinh Thị Thương', 'Họp XLKL', 'Họp xử lý kỷ luật<br>', 'Thuong.Dinh@jiahsin.com.vn', NULL, NULL, '2018-08-14 08:30:00', '2018-08-14 11:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(194, 'AS0174', 'JB', 'SO3', 'Ms. Thúy HR', 'Đào tạo cho CB-CNV Jia Hsin và Shimmer', '<p>- HR JHV mượn phòng họp SHM để đào tạo cho CB-CNV Jia Hsin và Shimmer</p><p>- HR JHV tự sắp sếp bàn ghề và chuẩn bị nước uống cho người tham dự</p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi qui định.&nbsp;</p><p><o:p></o:p></p>', 'ThanhThuy.Nguyen@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-15 07:30:00', '2018-08-15 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(195, 'AS0174', 'JB', 'SO3', 'Ms.Thúy HR', 'Đào tạo cho CB-CNV Jia Hsin và Shimmer', '<p>- HR JHV mượn phòng họp SHM để đào tạo cho CB-CNV Jia Hsin và Shimmer<o:p></o:p></p><p>- HR JHV tự sắp sếp bàn ghề và chuẩn bị nước uống cho người tham dự<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi qui định.&nbsp;<o:p></o:p></p>', 'ThanhThuy.Nguyen@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-25 07:30:00', '2018-08-25 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(196, 'AS0174', 'AD', 'SO3', 'Ms. Shirley HR', 'HỌP CBHN TOÀN CÔNG TY', '<p>- HC nhờ Cơ điện sắp xếp bàn ghế cho phòng họp</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-11 14:00:00', '2018-08-11 16:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(197, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>BÁO CÁO TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-13 15:00:00', '2018-08-13 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(198, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>BÁO CÁO TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-15 15:00:00', '2018-08-15 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(199, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>BÁO CÁO TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-17 15:00:00', '2018-08-17 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(200, 'AS0070', 'HR', 'SO5', 'Đinh Thị Thương', 'HỌP XỬ LÝ KỶ LUẬT', '<p>HỌP XỬ LÝ KỶ LUẬT<br></p>', 'Thuong.Dinh@jiahsin.com.vn', NULL, NULL, '2018-08-13 08:15:00', '2018-08-13 09:16:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(201, 'AS0174', 'AD', 'SO4', 'Mr. John Wang', 'HỌP NHÀ ĂN', '<p>- Họp trao đổi về nhà ăn</p><p>- Chia sẽ kinh nghiệm nấu ăn</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;cau.mach@jiahsin.com.vn', NULL, NULL, '2018-08-13 14:00:00', '2018-08-13 15:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(202, 'AS0174', 'AD', 'SO1', 'Mr. Chris Lee', 'HỌP', '<p>- HC chuẩn bị bánh, keo, coca</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-14 13:00:00', '2018-08-14 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(206, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp XLKL', '<p>Người vi phạm: Nguyễn Văn Tuấn</p><p>Chủ quản: Fu Guang MIng</p>', 'anhhuy.nguyen@jiahsin.com.vn;Phuong.Bui@shimmer.com.vn;Thuong.Dinh@jiahsin.com.vn', NULL, NULL, '2018-08-15 08:30:00', '2018-08-15 10:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(207, 'AS0067', 'QI', 'SO1', 'Cô Trương', 'Họp chất lượng xưởng EVA', '<p><br></p>', 'Chelsy.Lai@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;nhung.nguyen@shimmer.com.vn;Qing.Zhang@shimmer.com.vn', NULL, NULL, '2018-08-15 13:00:00', '2018-08-15 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(208, 'AS0174', 'JB', 'SO3', 'Ms. Hà Thanh', 'Huấn luyện về Guideline Adidas', '<p>- CR JHV mượn phòng họp SHM</p><p>- CR JHV tự sắp xếp bàn ghế và chuẩn bị nước uống cho người tham dự</p><p>- Nhắc nhỡ mọi người hút thuốc đúng nơi quy định.</p>', 'Anh.nguyen@jiahsin.com.vn;Son.Nguyen@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-16 07:30:00', '2018-08-16 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(213, 'AS0174', 'JB', 'SO3', 'Ms. An HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp SHM để đào tạo công nhân mới<o:p></o:p></p><p>- HR JHV tự sắp xếp bàn ghế cho người tham dự<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi qui định.&nbsp;<o:p></o:p></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Hue.Le@jiahsin.com.vn;an.nguyen@jiahsin.com.vn', NULL, NULL, '2018-08-20 09:00:00', '2018-08-20 15:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(214, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-20 15:00:00', '2018-08-20 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(215, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-22 15:00:00', '2018-08-22 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(216, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-24 15:00:00', '2018-08-24 16:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(218, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', 'HỌP SẢN LƯỢNG', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-08-21 08:00:00', '2018-08-21 09:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(219, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp Xử lý kỷ luật', '<p>Họp xử lý kỷ luật 8:30 - 10:00</p>', 'Thuong.Dinh@jiahsin.com.vn', NULL, NULL, '2018-08-25 08:30:00', '2018-08-25 10:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(220, 'AS0174', 'JB', 'SO3', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp SHM để đào tạo cho CBCNV SHM<o:p></o:p></p><p>- HR JHV tự sắp xếp bàn ghế cho người tham dự<o:p></o:p></p><p><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">- Nhớ nhắc nhở mọi người hút thuốc đúng nơi qui định.&nbsp;</span><br></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;giang.vuong@jiahsin.com.vn', NULL, NULL, '2018-08-22 07:30:00', '2018-08-22 15:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(225, 'BS1354', 'DP', 'SO1', 'Mr.Thạch', 'HỌP TIẾN ĐỘ', '<p>HỌP TIẾN&nbsp;ĐỘ</p>', 'Thach.Tran@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-08-23 13:00:00', '2018-08-23 15:00:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(226, 'AS0174', 'JB', 'SO3', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp SHM để đào tạo công nhân mới<o:p></o:p></p><p>- HR JHV tự sắp xếp bàn ghế cho người tham dự<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi qui định.&nbsp;<o:p></o:p></p>', 'Phuong.Luong@jiahsin.com.vn;giang.vuong@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-23 07:30:00', '2018-08-24 15:30:00', 1, '2018-08-23 11:38:49', '2018-08-23 11:38:49'),
(228, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'KHẢO SÁT CB-CNV', '<p>- HR JHV mượn phòng họp SHM để bên thứ 3 qua&nbsp;<span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Khảo sát hài lòng choCB-CNV của nhà máy Jia Hsin theo yêu cầu KH Adidas</span></p><p>- HR JHV tự sắp xếp bàn ghế cho người học<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi qui định.<o:p></o:p></p>', 'Phuong.Luong@jiahsin.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-28 07:30:00', '2018-08-28 16:30:00', 1, '2018-08-23 13:24:22', '2018-08-23 13:24:22'),
(229, 'AS0174', 'JB', 'SO5', 'Ms. Phượng HR', 'KHẢO SÁT CB-CNV', '<p><span style=\"font-family: Helvetica;\">- HR JHV mượn phòng họp SHM để bên thứ 3 qua&nbsp;</span><span style=\"font-size: 11pt; font-family: Helvetica;\">Khảo sát hài lòng choCB-CNV của nhàmáy Jia Hsin theo yêu cầu KH Adidas</span><o:p></o:p></p><p><span style=\"font-family: Helvetica;\">- HR JHV tự sắp xếp bàn ghế cho người học</span><o:p></o:p></p><p><span style=\"font-family: Helvetica;\"></span><span style=\"font-family: Helvetica;\"></span></p><p><span style=\"font-family: Helvetica;\">- Nhớ nhắc nhở mọi người hút thuốc đúng nơi qui định.</span><o:p></o:p></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-08-28 07:30:00', '2018-08-28 16:30:00', 1, '2018-08-23 13:26:24', '2018-08-23 13:26:24'),
(231, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HOP BAO BIEU', '<p>HOP SẢN LƯỢNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-08-24 08:30:00', '2018-08-24 09:30:00', 1, '2018-08-24 08:30:52', '2018-08-24 08:30:52'),
(232, 'BS0537', 'DP', 'SO1', 'MR JAY 藩副协理', '讨论OEE THẢO LUẬN OEE', '<p>关于讨论 OEE </p><p>THẢO LUẬN OEE</p><p><font face=\"Times New Roman\" size=\"3\"><p style=\"margin: 0in 0in 0pt;\"><span style=\"color: rgb(31, 73, 125); font-size: 12pt; mso-fareast-language: ZH-TW;\"><p><br></p></span></p><p><font face=\"Times New Roman\" size=\"3\"></font></p></font></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><span style=\"color: rgb(31, 73, 125); font-size: 12pt; mso-fareast-language: ZH-TW;\"><font face=\"Calibri\">&nbsp;</font></span></p><p><font face=\"Times New Roman\" size=\"3\"></font><br></p>', 'Jay.Pan@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn;John.Wang@shimmer.com.vn;Ha.Tong@jiahsin.com.vn', NULL, NULL, '2018-08-25 13:30:00', '2018-08-25 15:00:00', 1, '2018-08-24 10:53:23', '2018-08-24 10:53:23'),
(234, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-27 15:00:00', '2018-08-27 16:30:00', 1, '2018-08-25 09:50:32', '2018-08-25 09:50:32'),
(235, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Darren.Wu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-29 15:00:00', '2018-08-29 16:30:00', 1, '2018-08-25 09:52:51', '2018-08-25 09:52:51'),
(236, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Darren.Wu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-08-31 15:00:00', '2018-08-31 16:30:00', 1, '2018-08-25 09:54:27', '2018-08-25 09:54:27'),
(237, 'AS0174', 'AD', 'SO4', 'Mr. John Wang', 'ĐÀO TẠO NẤU ĂN', '<p>- Đào tạo và thảo luận với nhân viên nhà ăn nấu một số món mới</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;cau.mach@jiahsin.com.vn', NULL, NULL, '2018-08-25 14:30:00', '2018-08-25 15:30:00', 1, '2018-08-25 11:37:01', '2018-08-25 11:37:01'),
(238, 'BS0985', 'CP', 'SO4', 'Tuyết', 'Costing meeting', '<p>Report weekly</p><p><br></p>', 'Hoa.Dang@shimmer.com.vn;Costing.SMV@shimmer.com.vn', NULL, NULL, '2018-08-27 08:00:00', '2018-08-27 10:00:00', 1, '2018-08-25 14:13:37', '2018-08-25 14:13:37'),
(241, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', 'Họp xử lý kỷ luật.', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-01 08:30:00', '2018-09-01 11:00:00', 1, '2018-08-27 08:37:35', '2018-08-27 08:37:35'),
(242, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-01 13:30:00', '2018-09-01 16:00:00', 1, '2018-08-27 10:43:22', '2018-08-27 10:43:22');
INSERT INTO `book_room` (`id`, `user_code`, `dept_code`, `room_code`, `presiding`, `title`, `content`, `receiver`, `shm_receiver`, `jhv_receiver`, `timeStart`, `timeEnd`, `status`, `created`, `modified`) VALUES
(243, 'AS0174', 'JB', 'SO5', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp SHM để đào tạo công nhân mới<o:p></o:p></p><p>- HR JHV tự sắp xếp bàn ghế cho người tham dự</p><p>- Đảm bảo mọi người giữ gìn trật tự khi di chuyển trước và sau khi học.</p><p><o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quy định.&nbsp;</p><p><o:p></o:p></p>', 'Phuong.Luong@jiahsin.com.vn;giang.vuong@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-27 07:30:00', '2018-08-27 15:30:00', 1, '2018-08-27 11:42:12', '2018-08-27 11:42:12'),
(244, 'AS0174', 'JB', 'SO5', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp SHM để đào tạo công nhân mới<o:p></o:p></p><p>- HR JHV tự sắp xếp bàn ghế cho người tham dự<o:p></o:p></p><p>- Đảm bảo mọi người giữ gìn trật tự khi di chuyển trước và sau khi học.<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quy định. <o:p></o:p></p>', 'Phuong.Luong@jiahsin.com.vn;giang.vuong@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-29 07:30:00', '2018-08-31 15:30:00', 1, '2018-08-27 11:46:37', '2018-08-27 11:46:37'),
(245, 'AS0174', 'JB', 'SO3', 'Mr. Giang HR', 'ĐÀO TẠO CÔNG NHÂN MỚI', '<p>- HR JHV mượn phòng họp SHM để đào tạo công nhân mới<o:p></o:p></p><p>- HR JHV tự sắp xếp bàn ghế cho người tham dự<o:p></o:p></p><p>- Đảm bảo mọi người giữ gìn trật tự khi di chuyển trước và sau khi học.<o:p></o:p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quy định.&nbsp;<o:p></o:p></p><p></p><div class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><hr size=\"2\" width=\"100%\" align=\"center\"></div>', 'Phuong.Luong@jiahsin.com.vn;giang.vuong@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-09-01 07:30:00', '2018-09-01 15:30:00', 1, '2018-08-27 11:48:41', '2018-08-27 11:48:41'),
(246, 'AS0174', 'JB', 'SO3', 'Ms. Yi Planning', 'Họp tiến độ sản xuất xưởng ADIDAS', '<p><span style=\"background-color: rgb(255, 255, 255);\">-</span><span style=\"color: blue; font-family: Arial, sans-serif; font-size: 12pt;\">&nbsp;Đi</span><span style=\"color: blue; font-family: Arial, sans-serif; font-size: 12pt;\">ều</span><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: blue; font-family: Arial, sans-serif; font-size: 12pt;\">&nbsp;phối BU1 Jiahsin mượn phòng họp Shimmer&nbsp;</span></span></p><p><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: blue; font-family: Arial, sans-serif; font-size: 12pt;\">- Đi</span><span style=\"color: blue; font-family: Arial, sans-serif; font-size: 12pt;\">ều phối BU1 Jiahsin tự sắp xếp bàn ghế, nước uống cho người tham dự</span></span></p><p><font color=\"#0000ff\" face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quy định.</span></font></p>', 'Dieuphoi.Linh@jiahsin.com.vn;Jiyu.Yi@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-30 13:30:00', '2018-08-30 14:30:00', 1, '2018-08-27 13:48:05', '2018-08-27 13:48:05'),
(247, 'AS0174', 'JB', 'SO2', 'Ms. Thủy CR', 'Hội Đồng ATVSLĐ Shimmer ', '<p>- CR JHV mượn phòng họp Shimmer<o:p></o:p></p><p>- CR JHV tự sắp xếp bàn ghế cho người tham dự<o:p></o:p></p><p><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quiđịnh.&nbsp;</span><br></p>', 'ThuThuy.Nguyen@jiahsin.com.vn;QuynhTram.Nguyen@jiahsin.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-08-30 08:30:00', '2018-08-30 09:30:00', 1, '2018-08-28 09:32:10', '2018-08-28 09:32:10'),
(248, 'BS0985', 'CP', 'SO4', 'TUYẾT', 'INTERNAL MEETING', '<p>TRANNING</p>', 'Hoa.Dang@shimmer.com.vn;Costing.SMV@shimmer.com.vn', NULL, NULL, '2018-08-27 10:30:00', '2018-08-28 11:30:00', 1, '2018-08-28 10:22:00', '2018-08-28 10:22:00'),
(249, 'BS0985', 'AD', 'SO2', 'Mr. John Wang', 'HỌP BỘ PHẬN', '<p>- Thảo luận và phân công các công việc sắp tới</p>', 'Vu.Tran@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Minh.Tra@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;CamTien.Nguyen@shimmer.com.vn;Phung.Pham@shimmer.com.vn;John.Wang@shimmer.com.vn;cau.mach@jiahsin.com.vn', NULL, NULL, '2018-08-28 15:30:00', '2018-08-28 16:30:00', 1, '2018-08-28 11:12:59', '2018-08-28 11:12:59'),
(250, 'AS0174', 'AD', 'SO3', 'Mr. Chris Lee', 'HỌP GIAO BAN CÔNG TY JHV & SHM', '<p>-&nbsp;Họp giao ban công ty JHV &amp; SHM</p><p>- Số lượng khoảng : 115 người</p><p>- Cơ điện SHM hỗ trợ HC sắp xếp bàn, ghế</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Vu.Tran@shimmer.com.vn;Quynh.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-08-29 08:30:00', '2018-08-29 11:30:00', 1, '2018-08-28 13:41:02', '2018-08-28 13:41:02'),
(251, 'BS1354', 'DP', 'SO4', 'Mr.Thạch', 'HỌP TIẾN ĐỘ', '<p>HỌP TIẾN &nbsp;ĐỘ</p>', 'Thach.Tran@shimmer.com.vn;KhoVatLieu.SMV@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-08-29 13:00:00', '2018-08-29 14:30:00', 1, '2018-08-29 07:53:46', '2018-08-29 07:53:46'),
(252, 'AS0174', 'JB', 'SO3', 'Ms. Phượng HR', 'ĐÀO TẠO CÔNG NHÂN PX A SHIMMER', '<p>- HR JHV sử dụng phòng họp O3 để đào tạo công nhân PXA Shimmer<o:p></o:p></p><p>- HR JHV tự sắp xếp, chuẩn bị bàn ghế, nước uống cho người tham dự<o:p></o:p></p><p>- Đảm bảo mọi người giữ gìn trật tự khi di chuyển trước và sau khi học.<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quy định.&nbsp;<o:p></o:p></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-08-31 07:30:00', '2018-08-31 11:30:00', 1, '2018-08-29 15:10:44', '2018-08-29 15:10:44'),
(253, 'AS0070', 'HR', 'SO2', 'Giang.Vương', 'Đào tạo công nhân mới', '<p>training new commer</p>', 'Thu.Le@shimmer.com.vn', NULL, NULL, '2018-08-30 13:00:00', '2018-08-30 16:11:00', 1, '2018-08-30 13:12:42', '2018-08-30 13:12:42'),
(254, 'AS0174', 'JB', 'SO2', 'Mr. Giang HR', 'PHỎNG VẤN CÔNG NHÂN MỚI', '<p>- HR mượn phòng họp để phỏng vấn công nhân mới</p><p>- Số lượng : 10 người</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;giang.vuong@jiahsin.com.vn', NULL, NULL, '2018-08-31 08:00:00', '2018-08-31 09:00:00', 1, '2018-08-31 07:56:04', '2018-08-31 07:56:04'),
(255, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-05 15:00:00', '2018-09-05 16:30:00', 1, '2018-08-31 09:50:11', '2018-08-31 09:50:11'),
(256, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-07 15:00:00', '2018-09-07 16:30:00', 1, '2018-08-31 09:52:42', '2018-08-31 09:52:42'),
(257, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', 'Họp xử lý kỷ luật: CS2061, CS1719, BS0519, CS1984, CS2061', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-07 08:30:00', '2018-09-07 11:00:00', 1, '2018-09-04 09:05:59', '2018-09-04 09:05:59'),
(258, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-08 08:30:00', '2018-09-08 11:00:00', 1, '2018-09-04 09:07:38', '2018-09-04 09:07:38'),
(259, 'AS0174', 'JB', 'SO5', 'Mr. Giang', 'Đào tạo cán bộ, công nhân viên mới', '<p>- HR JHV mượn phòng họp để phỏng vấn công nhân mới</p><p>- Số lượng: 20-35 người</p><p>- HR JHV tự sắp xếp, chuẩn bị bàn ghế,nước uống cho người học.<o:p></o:p></p><p>- Đảm bảo mọi người giữ gìn trật tự khi di chuyển trước và sau khi học.<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quy định.&nbsp;<o:p></o:p></p><p><o:p></o:p></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Giang.Vuong@jiahsin.com.vn;Phuong.Luong@jiahsin.com.vn', NULL, NULL, '2018-09-04 07:30:00', '2018-09-08 15:30:00', 1, '2018-09-04 09:59:22', '2018-09-04 09:59:22'),
(260, 'AS0174', 'JB', 'SO3', 'Mrs. Phượng (HR)', 'QT Đào tạo, Xử lý kỷ luật, Khiếu nại khiếu kiện & Hướng dẫn sử dụng hệ thống TMKN TINABO', '<p>- HR JHV mượn phòng họp để đào tạo cho&nbsp;<o:p></o:p><b><span style=\"font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">CBQL &amp; Trợ lýBP/PX của Jia Hsin &amp; Shimmer&nbsp;</span></b></p><p>- Số lượng: 80 người<o:p></o:p></p><p>- HR JHV tự sắp xếp, chuẩn bị bàn ghế,nước uống cho người học.<o:p></o:p></p><p>- Đảm bảo mọi người giữ gìn trật tự khi di chuyển trước và sau khi học.<o:p></o:p></p><p></p><p>- Nhớ nhắc nhở mọi người hút thuốc đúng nơi quy định.&nbsp;<o:p></o:p></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Phuong.Luong@jiahsin.com.vn;ThanhThuy.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-08 07:30:00', '2018-09-08 11:00:00', 1, '2018-09-04 11:00:27', '2018-09-04 11:00:27'),
(261, 'BS0848', 'IT', 'SO3', 'IT', 'kiểm tra thiết bị phòng họp', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">kiểm tra thiết bị phòng họp</font></font><br>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-06 07:00:00', '2018-09-07 16:30:00', 1, '2018-09-05 09:44:16', '2018-09-05 09:44:16'),
(262, 'BS0537', 'PWP', 'SO1', 'MR JAY 藩副协理', '讨论 Energy foma ', '<p>关于Energy Foma 协理召开会议.</p><p>&nbsp;thảo luận về Energy foma</p>', 'Jay.Pan@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-05 14:30:00', '2018-09-05 15:55:00', 1, '2018-09-05 11:09:38', '2018-09-05 11:09:38'),
(263, 'BS0537', 'PWP', 'SO1', '阿石', '生产进度会', '<p>检讨每天生产产量与进度。</p>', 'Darren.Wu@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;AnNa.Lyu@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-06 08:30:00', '2018-09-06 10:30:00', 1, '2018-09-06 08:29:28', '2018-09-06 08:29:28'),
(264, 'AS0174', 'JB', 'SO3', 'Ms. Kim Anh', 'Khách hàng VF đến tham quan ', '<p>- CR JHV mượn phòng họp cho khách hàng VF đến tham quan</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Anh.nguyen@jiahsin.com.vn;Son.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-13 07:30:00', '2018-09-13 16:30:00', 1, '2018-09-06 09:28:12', '2018-09-06 09:28:12'),
(265, 'BS0537', 'PWP', 'SO1', 'A THACH', 'HỌP TIẾN DỘ CHUYỀN HỌP DÁN', '<p>HỌP TIẾN DỘ CHUYỀN HỌP DÁN<br></p>', 'Thuong.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-06 13:01:00', '2018-09-06 13:55:00', 1, '2018-09-06 13:01:05', '2018-09-06 13:01:05'),
(266, 'BS0537', 'PWP', 'SO1', '阿石', '开进度会', '<p>跟IP厂开进度与早会讨论SA150模具的问题。</p>', 'Bauwei.Zhang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;AnNa.Lyu@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Yong.Cai@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-07 08:30:00', '2018-09-07 11:00:00', 1, '2018-09-07 07:16:33', '2018-09-07 07:16:33'),
(267, 'AS0174', 'AD', 'SO3', 'TIỆC BTGĐ', 'Tiệc Ban Tổng Giám Đốc và Cán Bộ công ty JH - SM', '<p><font face=\"Times New Roman\" size=\"3\"><span style=\"color: rgb(31, 73, 125);\">1. HÀNH CHÁNH SM HỖ TRỢ <br></span></font></p><ul style=\"list-style-type: disc; direction: ltr;\"><li style=\"color: rgb(31, 73, 125); font-style: normal; font-weight: normal;\"><p style=\"color: rgb(0, 0, 0); font-style: normal; font-weight: normal; margin-top: 0in; margin-bottom: 0pt; mso-list: l0 level1 lfo1;\"><span style=\"color: rgb(31, 73, 125);\">Anh Vũ hỗ trợ đembàn ghế phòng họp ra ngoài phòng O5 và đem vào khi kết thúc chương trình.</span></p></li><li style=\'color: rgb(31, 73, 125); font-family: \"Calibri\",\"sans-serif\"; font-size: 11pt; font-style: normal; font-weight: normal;\'><p style=\'color: rgb(0, 0, 0); font-family: \"Calibri\",\"sans-serif\"; font-size: 11pt; font-style: normal; font-weight: normal; margin-top: 0in; margin-bottom: 0pt; mso-list: l0 level1 lfo1;\'><span style=\"color: rgb(31, 73, 125);\">Chuẩn bị 1&nbsp;thùngrác lớn.</span></p></li><li style=\'color: rgb(31, 73, 125); font-family: \"Calibri\",\"sans-serif\"; font-size: 11pt; font-style: normal; font-weight: normal;\'><p style=\'color: rgb(0, 0, 0); font-family: \"Calibri\",\"sans-serif\"; font-size: 11pt; font-style: normal; font-weight: normal; margin-top: 0in; margin-bottom: 0pt; mso-list: l0 level1 lfo1;\'><span style=\"color: rgb(31, 73, 125);\">1 bình nước nóng lạnh phòng O3<font face=\"Times New Roman\" size=\"3\"></font><br></span></p></li></ul>', 'Quynh.Nguyen(Quynh.Nguyen@jiahsin.com.vn);Vu.Tran@shimmer.com.vn;John.Wang@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, NULL, '2018-09-08 13:00:00', '2018-09-08 17:00:00', 1, '2018-09-07 08:06:30', '2018-09-07 08:06:30'),
(268, 'BS0394', 'IP', 'SO2', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-07 08:30:00', '2018-09-07 09:30:00', 1, '2018-09-07 08:23:52', '2018-09-07 08:23:52'),
(269, 'BS0394', 'IP', 'SO2', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-07 08:30:00', '2018-09-07 09:30:00', 1, '2018-09-07 08:25:46', '2018-09-07 08:25:46'),
(270, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-10 08:30:00', '2018-09-10 09:30:00', 1, '2018-09-07 08:27:32', '2018-09-07 08:27:32'),
(271, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-11 08:30:00', '2018-09-11 09:30:00', 1, '2018-09-07 08:28:28', '2018-09-07 08:28:28'),
(272, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-11 08:30:00', '2018-09-11 09:30:00', 1, '2018-09-07 08:28:59', '2018-09-07 08:28:59'),
(273, 'AS0174', 'JB', 'SO2', 'Ms. Kim Anh', 'Chuẩn bị cho chuyến tham quan khách hàng VF', '<p>- CR JHV mượn phòng họp Shimmer để trao đổi về công tác \"Chuẩn bị cho chuyến tham quan của khách hàng VF\"</p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:red\"><o:p></o:p></span></b></p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Anh.nguyen@jiahsin.com.vn;Son.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-10 09:30:00', '2018-09-10 10:30:00', 1, '2018-09-08 14:44:03', '2018-09-08 14:44:03'),
(274, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp XLKL</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-10 08:00:00', '2018-09-10 10:00:00', 1, '2018-09-08 14:46:50', '2018-09-08 14:46:50'),
(275, 'AS0070', 'HR', 'SO5', 'Giang.Vuong', 'Training new commer', '<p>Training new commer</p><p>Đào tạo CNV mới</p>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-10 07:30:00', '2018-09-10 16:39:00', 1, '2018-09-10 07:41:05', '2018-09-10 07:41:05'),
(276, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'Training', '<p>Training&nbsp;<br></p>', 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Toan.le@jiahsin.com.vn;Mai.dinh@jiahsin.com.vn', NULL, NULL, '2018-09-10 10:30:00', '2018-09-10 16:30:00', 1, '2018-09-10 08:22:26', '2018-09-10 08:22:26'),
(277, 'CS1955', 'AC', 'SO2', 'Mr.Matt', 'Training ', '<p>Training Tiptop<br></p>', 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Toan.le@jiahsin.com.vn;Mai.dinh@jiahsin.com.vn', NULL, NULL, '2018-09-11 08:30:00', '2018-09-11 16:30:00', 1, '2018-09-10 08:35:55', '2018-09-10 08:35:55'),
(278, 'CS1955', 'AC', 'SO1', 'Mr.Matt', 'Meeting', '<p>meeting&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 'Matt.Fan@shimmer.com.vn', NULL, NULL, '2018-09-13 08:00:00', '2018-09-13 16:30:00', 1, '2018-09-10 08:41:33', '2018-09-10 08:41:33'),
(279, 'CS1955', 'AC', 'SO1', 'Mr.Matt', 'Meeting', '<p>Meeting&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 'Matt.Fan@shimmer.com.vn', NULL, NULL, '2018-09-14 08:00:00', '2018-09-14 16:30:00', 1, '2018-09-10 08:43:17', '2018-09-10 08:43:17'),
(280, 'AS0174', 'AD', 'SO3', 'HC+CR', 'CÔNG TÁC CHUẨN BỊ CHO KHÁCH HÀNG', '<p>- Cr hỗ trợ sắp xếp bàn ghế trong phòng họp </p><p>- HC công tác chuẩn bị bánh, kẹo, nước uống, khăn trải bàn, dụng cụ ăn uống,...</p>', 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Son.Nguyen@jiahsin.com.vn;Quynh.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-12 07:30:00', '2018-09-12 16:30:00', 1, '2018-09-10 10:22:23', '2018-09-10 10:22:23'),
(281, 'AS0070', 'HR', 'SO5', 'Giang.Vuong', 'Training new commer', '<p>đào tạo công nhân viên mới</p>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-11 07:46:00', '2018-09-15 15:47:00', 1, '2018-09-10 14:48:32', '2018-09-10 14:48:32'),
(283, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-12 08:30:00', '2018-09-12 09:30:00', 1, '2018-09-11 07:59:15', '2018-09-11 07:59:15'),
(284, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', 'thảo luận OEE ', '<p>thảo luận OEE&nbsp;</p>', 'Darren.Wu@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, NULL, '2018-09-12 13:30:00', '2018-09-12 14:50:00', 1, '2018-09-12 13:18:41', '2018-09-12 13:18:41'),
(285, 'BS0394', 'IP', 'SO2', 'ZHANG BAU WEI', 'HỌP SẢN LƯỢNG', '<p>HỌP SẢN LƯỢNG</p><p><br></p><p><br></p>', 'Bauwei.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-14 08:30:00', '2018-09-14 09:30:00', 1, '2018-09-13 08:33:30', '2018-09-13 08:33:30'),
(287, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP SẢN LƯỢNG', '<p>HỌP SẢN LƯỢNG<br></p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-17 08:30:00', '2018-09-17 09:30:00', 1, '2018-09-13 08:40:24', '2018-09-13 08:40:24'),
(288, 'AS0070', 'HR', 'SO4', 'Lê Ý Mỵ Thư', 'Nghỉ hộ sản và sa thải', '<p><br></p>', 'Trang.Phan@shimmer.com.vn;ThuThuy.Do@shimmer.com.vn;Thuy.Pham@shimmer.com.vn;An.Voong@shimmer.com.vn;KhanhNgoc.Nguyen@shimmer.com.vn;Loan.Pham@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Phuoc.Lai@shimmer.com.vn', NULL, NULL, '2018-09-14 14:00:00', '2018-09-14 14:30:00', 1, '2018-09-13 10:55:02', '2018-09-13 10:55:02'),
(290, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-14 15:00:00', '2018-09-14 16:30:00', 1, '2018-09-14 09:06:10', '2018-09-14 09:06:10'),
(291, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-17 15:00:00', '2018-09-17 16:30:00', 1, '2018-09-14 09:07:33', '2018-09-14 09:07:33'),
(292, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-19 15:00:00', '2018-09-19 16:30:00', 1, '2018-09-14 09:09:16', '2018-09-14 09:09:16'),
(293, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-21 15:00:00', '2018-09-21 16:30:00', 1, '2018-09-14 09:11:04', '2018-09-14 09:11:04'),
(294, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật: công nhân IP, Công thức, QIP</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-18 08:30:00', '2018-09-18 11:00:00', 1, '2018-09-14 11:35:08', '2018-09-14 11:35:08'),
(295, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật: công nhân kho vật liệu</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-18 13:00:00', '2018-09-18 15:00:00', 1, '2018-09-14 11:38:35', '2018-09-14 11:38:35'),
(296, 'BS0537', 'PWP', 'SO2', 'Mr zhang', 'họp phẩm chất开品质会议', '<p>&nbsp;họp chất lượng&nbsp;</p>', 'Qing.Zhang@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Khovatlieu.Son@shimmer.com.vn;Kieu.Dang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, NULL, '2018-09-14 13:30:00', '2018-09-14 14:30:00', 1, '2018-09-14 11:38:54', '2018-09-14 11:38:54'),
(301, 'AS0002', 'AC', 'SO4', 'dieuthuy', 'họp công đoàn', '<p>Họp thảo luận công việc công đoàn &lt;gấp&gt;</p>', 'DieuThuy.Nguyen@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Thu.Le@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;nguyennguyenthanhsum@gmail.com;minhtam.4523@gmail.com;ThiMy.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn', NULL, NULL, '2018-09-14 14:31:00', '2018-09-14 16:00:00', 1, '2018-09-14 11:42:25', '2018-09-14 11:42:25'),
(310, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'EY audit from 24/9 ~ 28/9/2018', '<p>EY audit from 24/9 ~ 28/9/2018 <br></p>', 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;An.Tran@jiahsin.com.vn;Kevin.Chou@jiahsin.com.vn', NULL, NULL, '2018-09-24 07:30:00', '2018-09-28 16:30:00', 1, '2018-09-15 10:25:37', '2018-09-15 10:25:37'),
(311, 'AS0070', 'HR', 'SO5', 'Giang.Vương', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-17 07:12:00', '2018-09-17 16:13:00', 1, '2018-09-15 13:13:43', '2018-09-15 13:13:43'),
(312, 'AS0070', 'HR', 'SO4', 'giang.vương', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-18 07:14:00', '2018-09-18 16:15:00', 1, '2018-09-15 13:14:43', '2018-09-15 13:14:43'),
(313, 'AS0070', 'HR', 'SO5', 'Giang.Vuong', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-19 07:15:00', '2018-09-22 16:16:00', 1, '2018-09-15 13:15:31', '2018-09-15 13:15:31'),
(314, 'BS0394', 'IP', 'SO1', 'zhang bau wei', 'HỌP BÁO BIỂU', 'HỌP BÁO BIỂU', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-18 08:30:00', '2018-09-18 09:30:00', 1, '2018-09-17 08:26:37', '2018-09-17 08:26:37'),
(315, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP BÁO BIỂU</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Xiaobo.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-19 08:30:00', '2018-09-19 09:30:00', 1, '2018-09-17 08:27:42', '2018-09-17 08:27:42'),
(316, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU ', '<p>HỌP BÁO BIỂU</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-20 08:30:00', '2018-09-20 09:30:00', 1, '2018-09-17 08:28:42', '2018-09-17 08:28:42'),
(317, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'NEW ERP', '<p>NEW ERP R&amp;D<br></p>', 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn', NULL, NULL, '2018-09-18 09:00:00', '2018-09-18 10:00:00', 1, '2018-09-17 16:50:19', '2018-09-17 16:50:19'),
(318, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-21 13:30:00', '2018-09-21 14:30:00', 1, '2018-09-18 08:16:16', '2018-09-18 08:16:16'),
(319, 'BS0537', 'PWP', 'SO1', 'mr Jay', 'họp vấn đề  phẩm chất ', '<p>họp chất lượng</p>', 'Qing.Zhang@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, NULL, '2018-09-19 13:03:00', '2018-09-19 14:03:00', 1, '2018-09-19 13:04:21', '2018-09-19 13:04:21'),
(320, 'AS0002', 'AC', 'SO4', 'Mr Matt', 'EY audit', '<p>EY audit<br></p>', 'Matt.Fan@shimmer.com.vn;An.Tran@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-20 07:30:00', '2018-09-20 16:30:00', 1, '2018-09-19 15:43:33', '2018-09-19 15:43:33'),
(321, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP BÁO BIỂU</p>', 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-09-21 07:30:00', '2018-09-21 09:30:00', 1, '2018-09-19 16:13:46', '2018-09-19 16:13:46'),
(322, 'AS0070', 'HR', 'SO2', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', 'Họp xử lý kỷ luật', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-22 08:30:00', '2018-09-22 09:30:00', 1, '2018-09-20 08:21:49', '2018-09-20 08:21:49'),
(323, 'AS0070', 'HR', 'SO2', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-25 08:30:00', '2018-09-25 10:30:00', 1, '2018-09-20 08:23:56', '2018-09-20 08:23:56'),
(324, 'AS0070', 'HR', 'SO2', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-26 13:30:00', '2018-09-26 14:30:00', 1, '2018-09-20 08:25:57', '2018-09-20 08:25:57'),
(325, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật.</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-01 13:15:00', '2018-10-01 14:30:00', 1, '2018-09-20 08:27:54', '2018-09-20 08:27:54'),
(326, 'AS0002', 'AC', 'SO1', 'Diệu Thùy', 'Tiếp khách (Elmich)', '<p>Tiếp khách (Elmich)<br></p>', 'CongDoan.Ha@jiahsin.com.vn', NULL, NULL, '2018-09-20 11:00:00', '2018-09-20 12:01:00', 1, '2018-09-20 10:05:17', '2018-09-20 10:05:17'),
(327, 'CS1912', 'RD', 'SO2', 'LI FENG YU', 'HỌP KHUÔN', '<p>HỌP KHUÔN<br></p>', 'FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-09-21 10:00:00', '2018-09-21 12:00:00', 1, '2018-09-21 10:08:44', '2018-09-21 10:08:44'),
(328, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-24 15:00:00', '2018-09-24 16:30:00', 1, '2018-09-21 11:26:56', '2018-09-21 11:26:56'),
(329, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, NULL, '2018-09-26 15:00:00', '2018-09-26 16:30:00', 1, '2018-09-21 11:28:10', '2018-09-21 11:28:10'),
(330, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn', NULL, NULL, '2018-09-28 15:00:00', '2018-09-28 16:30:00', 1, '2018-09-21 11:29:45', '2018-09-21 11:29:45'),
(331, 'AS0002', 'AC', 'SO1', 'Diệu Thùy', 'Họp BCH công đoàn', '<p>Họp BCH công đoàn<br></p>', 'Linh.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Trinh.Pham@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Thu.Le@shimmer.com.vn;ThiMy.Nguyen@shimmer.com.vn;nguyennguyenthanhsum@gmail.com;minhtam.4523@gmail.com', NULL, NULL, '2018-09-22 14:00:00', '2018-09-22 16:00:00', 1, '2018-09-21 13:10:38', '2018-09-21 13:10:38'),
(332, 'AS0070', 'HR', 'SO5', 'Giang.Vuong', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-24 07:54:00', '2018-09-29 17:55:00', 1, '2018-09-22 07:55:28', '2018-09-22 07:55:28'),
(336, 'AS0070', 'HR', 'SO4', 'LƯƠNG THỊ ÁNH PHƯỢNG', 'Họp xử lý kỷ luật', '<p>Họp xử lý CS1800</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-29 13:15:00', '2018-09-29 14:30:00', 1, '2018-09-26 14:57:34', '2018-09-26 14:57:34'),
(337, 'AS0002', 'AC', 'SO2', 'Mr Matt.Fan', 'Hop thao luan', '<p>Hop thao luan<br></p>', 'DieuThuy.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-27 07:29:00', '2018-09-27 16:30:00', 1, '2018-09-26 17:30:37', '2018-09-26 17:30:37'),
(338, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-02 08:30:00', '2018-10-02 10:30:00', 1, '2018-09-27 08:06:54', '2018-09-27 08:06:54'),
(339, 'AS0070', 'HR', 'SO1', 'Viên Y Mi', 'Không tái ký hợp đồng lao động', '<p><br></p>', 'DieuThuy.Nguyen@shimmer.com.vn;Nhung.Nguyen@shimmer.com.vn;Thu.Le@shimmer.com.vn', NULL, NULL, '2018-09-28 07:30:00', '2018-09-28 08:30:00', 1, '2018-09-27 08:29:05', '2018-09-27 08:29:05'),
(340, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-09-29 08:30:00', '2018-09-29 10:30:00', 1, '2018-09-27 12:50:15', '2018-09-27 12:50:15'),
(341, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'NEW ERP', '<p>NEW ERP<br></p>', 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Max.chiang@jiahsin.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn;Thach.Tran@shimmer.com.vn;Jim.kao@jiahsin.com.vn;Yan.Zeng@jiahsin.com.vn;Lan.Pham@shimmer.com.vn', NULL, NULL, '2018-09-28 13:00:00', '2018-09-28 14:55:00', 1, '2018-09-28 10:16:02', '2018-09-28 10:16:02'),
(343, 'AS0174', 'AD', 'SO2', 'Công đoàn, Bảo vệ, Hành chánh, trợ lý R&D', 'Lập biên bản V/v nhặc của rơi  trả lại người bị mất', '<p><br></p>', 'DieuThuy.Nguyen@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;An.Voong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn', NULL, NULL, '2018-09-29 14:00:00', '2018-09-29 15:00:00', 1, '2018-09-29 08:34:37', '2018-09-29 08:34:37'),
(346, 'J15138', 'CR', 'SO2', 'Ms. Tram', 'Họp về quyết định trợ cấp TNLĐ', '<p>CR mượn phòng họp để họp quyết định mức trợ cấp trường hợp tai nạn lao động của anh Nguyễn Thanh Hòa</p>', 'QuynhTram.Nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-01 09:00:00', '2018-10-01 09:30:00', 1, '2018-09-29 08:58:33', '2018-09-29 13:55:30'),
(347, 'BS0985', 'CP', 'SO4', 'Tuyết', 'Report', 'Report', 'Costing.SMV@shimmer.com.vn;Sang.nguyen@Jiahsin.com', NULL, NULL, '2018-10-01 08:30:00', '2018-10-01 11:30:00', 1, '2018-09-29 09:43:06', '2018-09-29 09:43:06'),
(348, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-10-01 15:00:00', '2018-10-01 16:30:00', 1, '2018-09-29 11:54:11', '2018-09-29 11:54:11'),
(349, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, NULL, '2018-10-03 15:00:00', '2018-10-03 16:30:00', 1, '2018-09-29 11:56:11', '2018-09-29 11:56:11'),
(350, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn', NULL, NULL, '2018-10-05 15:00:00', '2018-10-05 16:30:00', 1, '2018-09-29 11:58:36', '2018-09-29 11:58:36'),
(352, 'BS0394', 'IP', 'SO1', 'ZHANG YUANHUI', 'HỌP ĐẦU TUẦN', '<p>CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', 'Yuanhui.Zhang@shimmer.com.vn;Xiaobo.Zhang@shimmer.com.vn;Zaiyong.Zhang@shimmer.com.vn', NULL, NULL, '2018-10-01 18:00:00', '2018-10-01 19:00:00', 1, '2018-09-29 15:19:31', '2018-09-29 15:19:31'),
(353, 'AS0070', 'HR', 'SO5', 'Giang.Vuong', 'Đào Tạo Công Nhân mới', '<p>Đào Tạo Công Nhân mới<br></p>', 'Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-10-01 07:30:00', '2018-10-06 16:38:00', 1, '2018-10-01 07:38:15', '2018-10-01 07:38:15'),
(354, 'J15138', 'CR', 'SO2', 'Ms. Thu Thủy', 'HỌP HỘI ĐỒNG BHLĐ', '<p>- CR mượn phòng để họp Hội đồng BHLĐ tháng 09/2018</p>', 'ThuThuy.Do@shimmer.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, NULL, '2018-10-02 09:00:00', '2018-10-02 10:00:00', 1, '2018-10-01 09:10:56', '2018-10-01 09:10:56'),
(355, 'AS0002', 'AC', 'SO1', 'Mr Matt.Fan', 'Họp bộ phận', '<p>Họp bộ phận<br></p>', 'Matt.Fan@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Hang.Huynh@shimmer.com.vn;DaiTrang.Nguyen@shimmer.com.vn;ThanhTruc.Dang@shimmer.com.vn;Lanh.Hoang@shimmer.com.vn;ThuHien.Pham@shimmer.com.vn;An.Tran@shimmer.com.vn', NULL, NULL, '2018-10-01 14:00:00', '2018-10-01 15:00:00', 1, '2018-10-01 10:35:32', '2018-10-01 10:35:32'),
(357, 'J15138', 'CR', 'SO2', 'Ms. Thu Thuy', 'Họp HĐ BHLĐ', 'Mượn phòng họp hội đồng ATVSLĐ tháng 9/2018 Shimmer', 'ThuThuy.Do@shimmer.com.vn;john.wang@shimmer.com.vn', NULL, NULL, '2018-10-03 14:00:00', '2018-10-03 14:55:00', 1, '2018-10-02 09:24:34', '2018-10-02 09:24:34'),
(358, 'AS0070', 'HR', 'SO2', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật 8 CNV QIP</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-02 13:30:00', '2018-10-02 15:30:00', 1, '2018-10-02 09:25:41', '2018-10-02 09:25:41'),
(360, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật.</p>', ';anhhuy.nguyen@jiahsin.com.vn', '', '', '2018-10-05 08:30:00', '2018-10-05 10:30:00', 1, '2018-10-02 16:01:18', '2018-10-02 16:01:18'),
(362, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp XLKL</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-08 13:30:00', '2018-10-08 15:30:00', 1, '2018-10-02 16:07:38', '2018-10-02 16:07:38'),
(363, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luât', '<p>Họp XLKL</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-09 08:30:00', '2018-10-09 10:30:00', 1, '2018-10-02 16:09:10', '2018-10-02 16:09:10'),
(364, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'NEW ERP', '<p>NEW ERP<br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Thach.Tran@shimmer.com.vn;Lan.Pham@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn;Yan.Zeng@jiahsin.com.vn', '2018-10-03 13:30:00', '2018-10-03 15:30:00', 1, '2018-10-03 08:14:14', '2018-10-03 08:14:14'),
(366, 'BS1354', 'DP', 'SO1', 'Mr.Khánh', 'HỌP TIẾN ĐỘ IP & KHO HẠT PE', '<p style=\"background-color: transparent; box-sizing: border-box; color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;,Helvetica,Arial,sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 10px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">1. 14h00-14h45 họp tiến&nbsp;độ cùng&nbsp;ĐP IP (a.Viễn-a.khánh-Linh-Nguyên)</p><p style=\"background-color: transparent; box-sizing: border-box; color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;,Helvetica,Arial,sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 10px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">2. 14h50-16h00 họp kho hạt PE &nbsp; &nbsp; &nbsp; &nbsp; (a.Viễn-a.Khánh-a.Tấn-a.Hiệp-Toàn)</p><p><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>', NULL, 'Thach.Tran@shimmer.com.vn;Khanh.Nguyen@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Dieuphoi.Linh@shimmer.com.vn;Dieuphoi.Quy@shimmer.com.vn;Planning.SMV@shimmer.com.vn;Thuan.Doan@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, '2018-10-04 14:00:00', '2018-10-04 16:00:00', 1, '2018-10-03 14:58:56', '2018-10-03 14:58:56'),
(368, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'NEW ERP', '<p>NEW ERP<br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn', '2018-10-05 14:00:00', '2018-10-05 15:00:00', 1, '2018-10-05 09:14:37', '2018-10-05 09:14:37'),
(369, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-06 08:30:00', '2018-10-06 11:00:00', 1, '2018-10-05 16:29:57', '2018-10-05 16:29:57'),
(370, 'AS0070', 'HR', 'SO1', 'nguyen.pham', 'hop GPLD', '<p>hop GPLD<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', NULL, '2018-10-06 09:08:00', '2018-10-06 09:50:00', 1, '2018-10-06 09:09:21', '2018-10-06 09:09:21'),
(371, 'BS0537', 'PWP', 'SO1', 'a. thach', 'ME项目内容讨论事宜', '<p>ME项目内容讨论事宜<br></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn;Jay.Pan@shimmer.com.vn;Darren.Wu@shimmer.com.vn', NULL, '2018-10-08 10:00:00', '2018-10-08 12:00:00', 1, '2018-10-06 11:45:44', '2018-10-06 11:45:44'),
(372, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, NULL, NULL, '2018-10-08 15:00:00', '2018-10-08 16:30:00', 1, '2018-10-08 08:51:22', '2018-10-08 08:51:22'),
(373, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-10-10 15:00:00', '2018-10-10 16:30:00', 1, '2018-10-08 08:57:29', '2018-10-08 08:57:29'),
(374, 'CS1912', 'RD', 'SO2', 'WANG WANG HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn', NULL, '2018-10-12 15:00:00', '2018-10-12 16:30:00', 1, '2018-10-08 09:03:37', '2018-10-08 09:03:37'),
(375, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'NEW ERP', '<p>NEW ERP<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Jay.Pan@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn', '2018-10-09 15:30:00', '2018-10-09 16:30:00', 1, '2018-10-08 09:05:43', '2018-10-08 09:05:43'),
(376, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'NEW ERP', '<p><br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn;Phuong.Tran@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn', '2018-10-11 15:30:00', '2018-10-11 16:30:00', 1, '2018-10-08 09:09:02', '2018-10-08 09:09:02'),
(377, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'NEW ERP', '<p><br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn;Phuong.Tran@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn', '2018-10-13 15:00:00', '2018-10-13 16:30:00', 1, '2018-10-08 09:10:24', '2018-10-08 09:10:24'),
(378, 'BS0537', 'PWP', 'SO1', 'thạch', 'ME项目内容讨论事宜', '<p><span lang=\"EN-US\" style=\"font-size:12.0pt;font-family:&quot;新細明體&quot;,serif;mso-bidi-font-family:新細明體;mso-font-kerning:0pt;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA\">ME</span><span style=\"font-size:12.0pt;font-family:&quot;新細明體&quot;,serif;mso-bidi-font-family:新細明體;mso-font-kerning:0pt;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA\">项目内容讨论事宜</span><br></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;AnNa.Lyu@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Yong.Cai@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, '2018-10-09 10:00:00', '2018-10-09 12:00:00', 1, '2018-10-08 09:14:39', '2018-10-08 09:14:39'),
(379, 'BS0394', 'IP', 'SO1', 'ZHANG BAU WEI', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-10-09 08:00:00', '2018-10-09 09:00:00', 1, '2018-10-09 07:57:54', '2018-10-09 07:57:54'),
(380, 'AS0174', 'AD', 'SO1', 'Mr. John Wang', 'HỌP ', '<p>- Nội dung cụ thể sẽ trao đổi trong cuộc họp<br></p>', '', 'Huy.Tran@shimmer.com.vn;Minh.Tra@shimmer.com.vn;CamTien.Nguyen@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Tham.Dao@shimmer.com.vn;Phung.Pham@shimmer.com.vn;Vu.Tran@shimmer.com.vn;John.Wang@shimmer.com.vn', 'Cau.Mach@jiahsin.com.vn', '2018-10-09 13:15:00', '2018-10-09 13:30:00', 1, '2018-10-09 08:31:05', '2018-10-09 08:31:05'),
(381, 'AS0174', 'AD', 'SO2', 'Mr. Sam', 'KHÁCH HÀNG ADIDAS', '<p>- BTGĐ họp với khách hàng Adidas</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-10-11 07:30:00', '2018-10-11 16:30:00', 1, '2018-10-09 10:40:16', '2018-10-09 10:40:16'),
(382, 'AS0002', 'AC', 'SO1', 'Diệu Thùy', 'Họp định kỳ công đoàn cơ sở', '<p>Họp định kỳ công đoàn cơ sở&nbsp;<br></p>', 'nguyennguyenthanhsum@gmail.com;minhtam.4523@gmail.com', 'Linh.Nguyen@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Trinh.Pham@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn', NULL, '2018-10-17 14:00:00', '2018-10-17 16:00:00', 1, '2018-10-11 11:29:30', '2018-10-11 11:29:30'),
(384, 'AS0070', 'HR', 'SO5', 'Giang.Vương', 'Đào Tạo Công Nhân Mới', '<p>Đào Tạo Công Nhân Mới<br></p>', '', 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-10-11 07:30:00', '2018-10-13 16:30:00', 1, '2018-10-11 13:43:13', '2018-10-11 13:43:13'),
(385, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'SBR, ADIBOUNCY, ENERGY FOAM', '<p>PROPLEM SBR, ADIBOUNCY, ENERGY FOAM<br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Nhung.Nguyen@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;AnNa.Lyu@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-10-12 09:30:00', '2018-10-12 12:00:00', 1, '2018-10-11 16:21:33', '2018-10-11 16:21:33'),
(386, 'BS0394', 'IP', 'SO1', 'zhang bao wei', 'HỌP BÁO BIỂU', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-10-12 08:00:00', '2018-10-12 09:00:00', 1, '2018-10-11 16:30:26', '2018-10-11 16:30:26'),
(387, 'BS0537', 'PWP', 'SO1', 'thach', 'họp nội bộ ', '<p>họp nội bộ cán bộ&nbsp;</p>', NULL, 'Khanh.Nguyen@shimmer.com.vn', NULL, '2018-10-11 17:30:00', '2018-10-11 19:00:00', 1, '2018-10-11 16:54:39', '2018-10-11 16:54:39'),
(388, 'AS0070', 'HR', 'SO3', 'Viên Y Mi', 'Thuyên chuyển công việc', '<p><br></p>', NULL, 'Thu.Le@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Nguyen.Pham@shimmer.com.vn', NULL, '2018-10-13 15:00:00', '2018-10-13 16:30:00', 1, '2018-10-12 10:46:33', '2018-10-12 10:46:33'),
(389, 'AS0174', 'CR', 'SO2', 'Mr. Ethan ', 'Thảo luận về việc tổ chức FLA sẽ đến tham quan Shimmer ', '<p><span style=\"font-family: Helvetica;\">- CR mượn phòng họp để họp \"</span><font face=\"Sylfaen, serif\"><span style=\"font-family: Helvetica;\">T</span></font><span style=\"text-indent: -0.25in; font-size: 13pt; font-family: Helvetica;\">hảoluận về việc tổ chức FLA sẽ đến tham quan Shimmer ngày 17.10.2018\"</span></p><p class=\"MsoListParagraph\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1\"><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><o:p></o:p></span></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-10-13 09:00:00', '2018-10-13 11:30:00', 1, '2018-10-12 13:32:44', '2018-10-12 13:32:44'),
(390, 'BS0394', 'AC', 'SO1', 'Nguyễn Thị Diệu Thùy', 'họp định kỳ công đoàn cơ sở', 'họp định kỳ công đoàn cơ sở<br>', NULL, 'Chi.Ngo@shimmer.com.vn;Thu.Le@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Trinh.Pham@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Cam.Phan@shimmer.com.vn', NULL, '2018-10-13 10:00:00', '2018-10-13 11:00:00', 1, '2018-10-12 14:19:58', '2018-10-12 14:19:58'),
(391, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', 'Shimmer -Weekly Meeting <新禾週會>', '<p class=\"MsoListParagraph\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">議題</span><span lang=\"EN-US\">: </span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">新禾直間工比</span> <span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">議題</span><span lang=\"EN-US\">: </span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">新禾</span><span lang=\"EN-US\">2018</span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">年營運近況</span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">和</span><span lang=\"EN-US\">11</span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">及</span><span lang=\"EN-US\">12</span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">月份目標</span><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">議題</span><span lang=\"EN-US\">: </span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">各產品退貨率狀況</span><span lang=\"EN-US\"><o:p></o:p></span></p><p></p><p class=\"MsoListParagraph\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">議題</span><span lang=\"EN-US\">: </span><span style=\"font-family:&quot;新細明體&quot;,serif;mso-fareast-language:ZH-TW\">共同議題</span><span lang=\"EN-US\"><o:p></o:p></span></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Quan.Tran@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn', NULL, '2018-10-13 09:00:00', '2018-10-13 09:55:00', 1, '2018-10-12 14:24:53', '2018-10-12 14:24:53'),
(392, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-10-15 15:00:00', '2018-10-15 16:30:00', 1, '2018-10-13 13:12:51', '2018-10-13 13:12:51'),
(393, 'AS0070', 'HR', 'SO5', 'Giang.Vương', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-10-15 07:30:00', '2018-10-20 16:30:00', 1, '2018-10-13 13:16:14', '2018-10-13 13:16:14'),
(395, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-10-17 15:00:00', '2018-10-17 16:30:00', 1, '2018-10-13 13:20:27', '2018-10-13 13:20:27'),
(396, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-10-19 15:00:00', '2018-10-19 16:30:00', 1, '2018-10-13 13:21:57', '2018-10-13 13:21:57'),
(397, 'AS0174', 'CR', 'SO3', 'Mr. Justin CR', 'CÔNG TÁC CHUẨN BỊ CHO KHÁCH HÀNG FLA ĐẾN THĂM SHIMMER', '<p>- CR+HC Shimmer phối hợp chuẩn bị cho \"KHÁCH HÀNG FLA ĐẾN THĂM SHIMMER\" (17/10/2018)</p><p><br></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'anh.nguyen@jiahsin.com.vn;Son.Le@jiahsin.com.vn;Son.Nguyen@jiahsin.com.vn', '2018-10-15 07:30:00', '2018-10-16 16:30:00', 1, '2018-10-13 13:44:28', '2018-10-13 13:44:28'),
(398, 'AS0174', 'CR', 'SO3', 'Mr. Justin CR', 'KHÁCH HÀNG FLA ĐẾN THAM QUAN SHIMMER (17/10/2018)', '<p><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">- Khách hàng FLA đến tham quanShimmer (14h-16h)&nbsp;</span><br></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'anh.nguyen@jiahsin.com.vn;Son.Le@jiahsin.com.vn;Son.Nguyen@jiahsin.com.vn;QuynhTram.Nguyen@jiahsin.com.vn;ThuNga.Huynh@jiahsin.com.vn', '2018-10-17 08:00:00', '2018-10-17 16:30:00', 1, '2018-10-13 13:48:15', '2018-10-13 13:48:15'),
(399, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-19 08:30:00', '2018-10-19 11:00:00', 1, '2018-10-13 15:45:04', '2018-10-13 15:45:04');
INSERT INTO `book_room` (`id`, `user_code`, `dept_code`, `room_code`, `presiding`, `title`, `content`, `receiver`, `shm_receiver`, `jhv_receiver`, `timeStart`, `timeEnd`, `status`, `created`, `modified`) VALUES
(400, 'BS0394', 'IP', 'SO1', 'Zhang Bau Wei', 'HỌP NỘI BỘ', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-10-17 07:30:00', '2018-10-17 09:00:00', 1, '2018-10-16 16:21:25', '2018-10-16 16:21:25'),
(401, 'CS1912', 'RD', 'SO2', 'MR.JAY', 'ENERGY FOAM', '<p><br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Thach.Tran@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-10-18 08:00:00', '2018-10-18 10:00:00', 1, '2018-10-17 16:39:44', '2018-10-17 16:39:44'),
(402, 'AS0070', 'HR', 'SO3', 'Thạch Thị Thu Cúc', 'Thảo luận các qui định công ty', '<p><span style=\"font-size: 11pt; font-family: Calibri, sans-serif;\">Thảoluận các qui định công ty</span><br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Cuc.Thach@jiahsin.com.vn', '2018-10-19 15:00:00', '2018-10-19 16:30:00', 1, '2018-10-18 09:55:19', '2018-10-18 09:55:19'),
(403, 'AS0174', 'JB', 'SO3', 'Ms. Shirley', 'HỌP CBHN', '<p>-&nbsp;Ms. Shirley đặt phòng họp để họp CBHN</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-10-20 13:00:00', '2018-10-20 16:00:00', 1, '2018-10-18 13:57:40', '2018-10-18 13:57:40'),
(404, 'BS0394', 'IP', 'SO1', 'Zhang Bau Wei', 'HỌP NỘI BỘ', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-10-19 07:30:00', '2018-10-19 09:00:00', 1, '2018-10-19 07:23:33', '2018-10-19 07:23:33'),
(405, 'AS0174', 'HR', 'SO3', 'Ms. Y Mi HR', 'Thảo luận cách tính thưởng sản phẩm', '<p>- HR JHV mượn phòng O3 đề \"Thảo luận cách tính thưởng sản phẩm\".</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'Ymi.Vien@jiahsin.com.vn;Sang.Bach@jiahsin.com.vn', '2018-10-22 15:15:00', '2018-10-22 16:30:00', 1, '2018-10-22 13:39:30', '2018-10-22 13:39:30'),
(406, 'AS0067', 'QI', 'SO2', 'CHỊ NHung Phó khối QIP', 'HOP chất lượng xưởng eva', '<p><br></p>', NULL, 'Nhung.Nguyen@shimmer.com.vn', NULL, '2018-10-23 10:00:00', '2018-10-23 11:00:00', 1, '2018-10-22 14:48:36', '2018-10-22 14:48:36'),
(407, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'ENERGY FOAM', '<p>ENERGY FOAM<br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn;Thach.Tran@shimmer.com.vn;LiQing.Teng@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn;Luz.Espino@jiahsin.com.vn', '2018-10-23 09:00:00', '2018-10-23 11:00:00', 1, '2018-10-22 18:06:54', '2018-10-22 18:06:54'),
(408, 'AS0070', 'HR', 'SO5', 'Giang.Vương', 'đào tạo công nhân mới', '<p>đào tạo công nhân mới<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-10-23 07:30:00', '2018-10-27 16:30:00', 1, '2018-10-23 10:58:19', '2018-10-23 10:58:19'),
(409, 'AS0070', 'HR', 'SO3', 'Giang.Vuong', 'Phỏng vấn công nhân thời vụ', '<p>&nbsp;&nbsp;&nbsp;&nbsp;Phỏng vấn công nhân thời vụ<br></p>', 'giang.vuong@jiahsin.com.vn', 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-10-23 07:30:00', '2018-10-31 13:00:00', 1, '2018-10-23 10:59:28', '2018-10-23 10:59:28'),
(410, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'ENERGY FOAM', '<p><br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn;Thach.Tran@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn;Luz.Espino@jiahsin.com.vn', '2018-10-23 13:00:00', '2018-10-23 15:00:00', 1, '2018-10-23 11:41:11', '2018-10-23 11:41:11'),
(411, 'AS0067', 'QI', 'SO1', 'MR JAY', 'họp với khách hàng newbalan', '<p><br></p>', NULL, 'Nhung.Nguyen@shimmer.com.vn', NULL, '2018-10-24 07:30:00', '2018-10-24 16:30:00', 1, '2018-10-23 14:53:46', '2018-10-23 14:53:46'),
(412, 'AS0067', 'QI', 'SO1', 'MR JAY', 'HỌP VỚI KHÁCH HÀNG NEWBALAN', '<p><br></p>', NULL, 'Nhung.Nguyen@shimmer.com.vn', NULL, '2018-10-25 07:30:00', '2018-10-25 16:30:00', 1, '2018-10-23 14:55:27', '2018-10-23 14:55:27'),
(413, 'AS0067', 'QI', 'SO1', 'Mr Jay', 'HỌP VỚI KHÁCH HÀNG NEWBALAN', '<p><br></p>', NULL, 'Nhung.Nguyen@shimmer.com.vn', NULL, '2018-10-26 07:30:00', '2018-10-26 16:30:00', 1, '2018-10-23 14:56:56', '2018-10-23 14:56:56'),
(414, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-10-29 15:00:00', '2018-10-29 16:00:00', 1, '2018-10-26 10:32:44', '2018-10-26 10:32:44'),
(415, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-10-31 15:00:00', '2018-10-31 16:30:00', 1, '2018-10-26 10:33:57', '2018-10-26 10:33:57'),
(416, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-02 15:00:00', '2018-11-02 16:30:00', 1, '2018-10-26 10:36:43', '2018-10-26 10:36:43'),
(417, 'BS0537', 'PWP', 'SO2', 'Mr Thạch', 'họp nội bộ planning & warehouse ', '<p>họp nội bộ planning &amp; warehouse&nbsp;<br></p>', NULL, 'Anh.Nguyen@shimmer.com.vn;Kieu.Dang@shimmer.com.vn;Thuong.Nguyen@shimmer.com.vn;KhoVatLieu.SMV@shimmer.com.vn;Planning.SMV@shimmer.com.vn;Khovatlieu.Son@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Nhi.Nguyen@shimmer.com.vn;Khanh.Nguyen@shimmer.com.vn', NULL, '2018-10-26 15:00:00', '2018-10-26 16:30:00', 1, '2018-10-26 13:11:45', '2018-10-26 13:11:45'),
(418, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp XLKL</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-27 08:30:00', '2018-10-27 11:00:00', 1, '2018-10-26 15:35:21', '2018-10-26 15:35:21'),
(419, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp XLKL</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-30 08:30:00', '2018-10-30 11:00:00', 1, '2018-10-26 15:36:40', '2018-10-26 15:36:40'),
(420, 'CS1912', 'RD', 'SO4', 'WANG WAN HUA', 'HOP TIEN DO', '<p><br></p>', NULL, 'KhanhNgoc.Nguyen@shimmer.com.vn', NULL, '2018-10-26 15:00:00', '2018-10-26 16:30:00', 1, '2018-10-26 15:40:08', '2018-10-26 15:40:08'),
(421, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', ' Shimmer -Weekly Meeting <新禾週會>', '<p>&nbsp;Shimmer -Weekly Meeting &lt;新禾週會&gt;<br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Quan.Tran@shimmer.com.vn', NULL, '2018-10-27 09:00:00', '2018-10-27 10:00:00', 1, '2018-10-27 07:35:13', '2018-10-27 07:35:13'),
(422, 'BS0537', 'PWP', 'SO1', 'mr Jay ', 'họp biên chế ', '<p>họp biên chế&nbsp;</p>', NULL, 'Jay.Pan@shimmer.com.vn', NULL, '2018-10-27 13:00:00', '2018-10-27 16:00:00', 1, '2018-10-27 13:01:13', '2018-10-27 13:01:13'),
(423, 'AS0070', 'HR', 'SO5', 'Giang.Vương', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới</p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-10-29 07:30:00', '2018-11-03 16:30:00', 1, '2018-10-27 13:02:21', '2018-10-27 13:02:21'),
(425, 'AS0070', 'HR', 'SO3', 'Giang.Vương', 'phỏng vấn công nhân thời vụ', '<p>phỏng vấn công nhân thời vụ<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-11-01 07:30:00', '2018-11-03 09:30:00', 1, '2018-10-27 15:30:38', '2018-10-27 15:30:38'),
(426, 'AS0174', 'CR', 'SO2', 'Ms. Thủy CR', 'Hội đồng an toàn vệ sinh lao động tháng 10/2018 Shimmer', '<p>- CR đặt phòng để họp \"H<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 13pt;\">ội đồng an toàn vệsinh lao động tháng 10/2018 Shimmer\"</span></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'QuynhTram.Nguyen@jiahsin.com.vn', '2018-10-31 14:00:00', '2018-10-31 14:45:00', 1, '2018-10-29 09:03:55', '2018-10-29 09:03:55'),
(427, 'AS0070', 'HR', 'SO4', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-10-31 08:30:00', '2018-10-31 10:00:00', 1, '2018-10-29 15:45:38', '2018-10-29 15:45:38'),
(429, 'AS0174', 'AD', 'SO3', 'Trần Đức Huy - Trần Thanh Vũ', 'Đào tạo nội bộ Hệ thống ISO 14001, OHSAS 18001, ISO 50001', '<p><br></p>', NULL, 'Huy.Tran@shimmer.com.vn;Vu.Tran@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-10-31 15:30:00', '2018-10-31 16:00:00', 1, '2018-10-30 08:55:34', '2018-10-30 08:55:34'),
(430, 'BS0537', 'PWP', 'SO1', 'Mr Jay', 'hop chuyen doi tai san chuyen hop dan ', '<p>hop chuyen doi tai san cong cu dung cu&nbsp;</p>', NULL, 'DieuThuy.Nguyen@shimmer.com.vn;Matt.Fan@shimmer.com.vn;Quan.Tran@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Anh.Nguyen@shimmer.com.vn;Thuong.Nguyen@shimmer.com.vn;KhoVatLieu.SMV@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, '2018-10-30 11:00:00', '2018-10-30 12:00:00', 1, '2018-10-30 10:39:17', '2018-10-30 10:39:17'),
(431, 'AS0070', 'HR', 'SO2', 'Lương Thị Ánh Phượng', 'Giải quyết khiếu nại và xử lý kỷ luật', '<p>Giải quyết khiếu nại và xử lý kỷ luật<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', '', '', '2018-11-03 08:30:00', '2018-11-03 10:00:00', 1, '2018-10-30 14:44:00', '2018-10-30 14:44:00'),
(432, 'AS0070', 'HR', 'SO5', 'Giang Vương', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-11-05 07:30:00', '2018-11-10 16:30:00', 1, '2018-10-31 10:17:52', '2018-10-31 10:17:52'),
(433, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Thao.Tran@shimmer.com.vn;LiQing.Teng@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-02 08:00:00', '2018-11-02 10:00:00', 1, '2018-11-02 07:53:19', '2018-11-02 07:53:19'),
(434, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-05 15:00:00', '2018-11-05 16:30:00', 1, '2018-11-02 14:31:16', '2018-11-02 14:31:16'),
(435, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-07 15:00:00', '2018-11-07 16:30:00', 1, '2018-11-02 14:33:05', '2018-11-02 14:33:05'),
(436, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Guangming.Fu@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-09 15:00:00', '2018-11-09 16:30:00', 1, '2018-11-02 14:34:44', '2018-11-02 14:34:44'),
(437, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', 'Shimmer -Weekly Meeting <新禾週會>', '<p>Shimmer -Weekly Meeting &lt;新禾週會&gt;<br></p>', NULL, 'Linh.Nguyen@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Yong.Cai@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, '2018-11-03 09:00:00', '2018-11-03 11:00:00', 1, '2018-11-02 19:29:50', '2018-11-02 19:29:50'),
(438, 'AS0174', 'CR', 'SO1', 'Ms. Kim Anh CR', 'Kiểm tra tần số vô tuyến điện (Sở truyền thông)', '<p>- Tiếp đoàn \"Kiểm tra&nbsp;tần số vô tuyến điện\" thuộc Sở Truyền thông</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'anh.nguyen@jiahsin.com.vn;HongNga.Huynh@jiahsin.com.vn', '2018-11-05 13:30:00', '2018-11-05 15:30:00', 1, '2018-11-05 08:08:56', '2018-11-05 08:08:56'),
(439, 'AS0002', 'AC', 'SO1', 'Diệu Thùy', 'HỌP ĐỊNH KỲ HÀNG THÁNG CÔNG ĐOÀN', '<p>HỌP ĐỊNH KỲ HÀNG THÁNG CÔNG ĐOÀN<br></p>', 'nguyennguyenthanhsum@gmail.com;minhtam.4523@gmail.com', 'Nhung.Huynh@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Thu.Le@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Trinh.Pham@shimmer.com.vn', NULL, '2018-11-09 14:00:00', '2018-11-09 15:28:00', 1, '2018-11-06 08:33:12', '2018-11-06 08:33:12'),
(440, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', 'tiếp Supplier Green Pou ', '<p>tiếp Supplier Green Pou&nbsp;<br></p>', NULL, 'Jay.Pan@shimmer.com.vn', NULL, '2018-11-06 01:00:00', '2018-11-06 02:33:00', 1, '2018-11-06 11:36:14', '2018-11-06 11:36:14'),
(441, 'BS0394', 'IP', 'SO1', 'Zhang Bao Wei', 'HỌP NỘI BỘ', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-11-07 08:00:00', '2018-11-07 09:30:00', 1, '2018-11-07 07:50:28', '2018-11-07 07:50:28'),
(442, 'BS0537', 'PWP', 'SO1', '潘协理', '讨论ME主题', '<p>讨论ME主题<br></p>', NULL, 'Qing.Zhang@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, '2018-11-07 15:30:00', '2018-11-07 17:00:00', 1, '2018-11-07 09:16:25', '2018-11-07 09:16:25'),
(443, 'AS0070', 'HR', 'SO2', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', 'Họp xlkl', ';anhhuy.nguyen@jiahsin.com.vn', '', '', '2018-11-10 08:30:00', '2018-11-10 10:00:00', 1, '2018-11-08 07:57:58', '2018-11-08 07:57:58'),
(444, 'AS0070', 'HR', 'SO2', 'Lương Thị Ánh Phượng', 'Họp XLKL', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-11-14 08:30:00', '2018-11-14 10:30:00', 1, '2018-11-08 08:00:40', '2018-11-08 08:00:40'),
(445, 'BS0537', 'PWP', 'SO2', 'MR THẠCH ', 'training OEE cho cán bộ ', '<p>training OEE cho cán bộ&nbsp;<br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn', NULL, '2018-11-09 07:45:00', '2018-11-09 09:00:00', 1, '2018-11-08 17:36:45', '2018-11-08 17:36:45'),
(446, 'BS0537', 'PWP', 'SO1', 'Mr Jay', 'Shimmer -Weekly Meeting <新禾週會>', '<p>Shimmer -Weekly Meeting &lt;新禾週會&gt;<br></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn', NULL, '2018-11-10 09:00:00', '2018-11-10 11:00:00', 1, '2018-11-09 19:31:07', '2018-11-09 19:31:07'),
(447, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-11-12 15:00:00', '2018-11-12 16:30:00', 1, '2018-11-10 08:35:42', '2018-11-10 08:35:42'),
(448, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-11-14 15:00:00', '2018-11-14 16:30:00', 1, '2018-11-10 08:37:05', '2018-11-10 08:37:05'),
(449, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn', NULL, '2018-11-16 15:00:00', '2018-11-16 16:30:00', 1, '2018-11-10 08:38:12', '2018-11-10 08:38:12'),
(450, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'TIẾP ĐÓN KHÁCH HÀNG NB', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn', NULL, '2018-11-12 15:00:00', '2018-11-12 16:30:00', 1, '2018-11-12 15:00:01', '2018-11-12 15:00:01'),
(451, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-11-14 13:30:00', '2018-11-14 15:30:00', 1, '2018-11-12 17:39:36', '2018-11-12 17:39:36'),
(452, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', NULL, NULL, NULL, '2018-11-15 08:30:00', '2018-11-15 09:30:00', 1, '2018-11-12 17:40:32', '2018-11-12 17:40:32'),
(453, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-11-19 13:30:00', '2018-11-19 15:30:00', 1, '2018-11-12 17:42:10', '2018-11-12 17:42:10'),
(454, 'BS0537', 'PWP', 'SO1', 'Mr Thach ', 'training new ERP ', '<p>training new ERP&nbsp;<br></p>', NULL, 'Thuong.Nguyen@shimmer.com.vn;Khanh.Nguyen@shimmer.com.vn;Anh.Nguyen@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Nga.Tran@shimmer.com.vn;Kieu.Dang@shimmer.com.vn;Dieuphoi.Xuan@shimmer.com.vn;Dieuphoi.Trung@shimmer.com.vn', NULL, '2018-11-14 14:00:00', '2018-11-14 16:00:00', 1, '2018-11-13 15:16:02', '2018-11-13 15:16:02'),
(455, 'BS0537', 'PWP', 'SO1', '张副理', '开生产内部会议', '<p>开生产内部会议</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Darren.Wu@shimmer.com.vn', NULL, '2018-11-16 08:00:00', '2018-11-16 09:30:00', 1, '2018-11-16 07:47:43', '2018-11-16 07:47:43'),
(456, 'AS0174', 'JB', 'SO3', 'Business team', 'KHÁCH HÀNG REEF', '<p>-&nbsp;<span style=\"font-family: Calibri, sans-serif; font-size: 11pt;\">Reef team JHV mượn phòng họp cho Khách hàng&nbsp;</span></p><p><span style=\"font-family: Calibri, sans-serif; font-size: 11pt;\">- HC SHM hỗ trợ sắp xếp bàn ghế theo sơ đồ của Reef team</span></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'thinh.phan@jiahsin.com.vn;Quynh.Nguyen@jiahsin.com.vn;Suong.Phan@jiahsin.com.vn', '2018-11-19 08:00:00', '2018-11-19 16:30:00', 1, '2018-11-16 09:48:10', '2018-11-16 09:48:10'),
(457, 'AS0174', 'JB', 'SO1', 'TNF team', 'TNF team', '<p>-&nbsp;TNF team mượn phòng họp</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'thinh.phan@jiahsin.com.vn;Suong.Phan@jiahsin.com.vn', '2018-11-19 12:00:00', '2018-11-19 16:30:00', 1, '2018-11-16 09:53:14', '2018-11-16 09:53:14'),
(458, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-11-19 15:00:00', '2018-11-19 16:30:00', 1, '2018-11-16 14:51:06', '2018-11-16 14:51:06'),
(459, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-11-21 15:00:00', '2018-11-21 16:30:00', 1, '2018-11-16 14:52:09', '2018-11-16 14:52:09'),
(460, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p>TIẾN ĐỘ HÀNG MẪU<br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-11-23 15:00:00', '2018-11-23 16:30:00', 1, '2018-11-16 14:53:38', '2018-11-16 14:53:38'),
(461, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'NEW ERP', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Hang.Truong@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn', '2018-11-20 15:30:00', '2018-11-20 16:30:00', 1, '2018-11-19 08:54:19', '2018-11-19 08:54:19'),
(462, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', '2015W-16 QUOTATUON', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Jay.Pan@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Tuyet.Nguyen@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-23 08:00:00', '2018-11-23 10:00:00', 1, '2018-11-22 17:17:11', '2018-11-22 17:17:11'),
(463, 'BS0537', 'PWP', 'SO2', 'Thạch', 'họp tiến độ', '<p>họp tiến độ<br></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Hoa.Dang@shimmer.com.vn', NULL, '2018-11-23 08:00:00', '2018-11-23 12:00:00', 1, '2018-11-23 07:39:56', '2018-11-23 07:39:56'),
(464, 'BS0537', 'PWP', 'SO2', 'Mr Thach', 'hop hinh the moi ', '<p>hop hinh the moi&nbsp;<br></p>', NULL, 'Darren.Wu@shimmer.com.vn', NULL, '2018-11-23 13:30:00', '2018-11-23 14:55:00', 1, '2018-11-23 13:10:26', '2018-11-23 13:10:26'),
(465, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', 'Shimmer - weekly  meeting   新禾周会', '<p>Shimmer - weekly&nbsp; meeting&nbsp;</p><p>新禾周会</p><p>Shimmer họp giao ban&nbsp;</p>', NULL, 'Linh.Nguyen@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, '2018-11-24 09:00:00', '2018-11-24 12:00:00', 1, '2018-11-24 07:48:55', '2018-11-24 07:48:55'),
(466, 'AS0070', 'HR', 'SO5', 'Huỳnh Anh Huy', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-11-30 08:30:00', '2018-11-30 11:00:00', 1, '2018-11-24 16:09:48', '2018-11-24 16:09:48'),
(467, 'AS0070', 'HR', 'SO5', 'Huỳnh Anh Huy', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-12-01 08:30:00', '2018-12-01 09:30:00', 1, '2018-11-24 16:11:08', '2018-11-24 16:11:08'),
(470, 'AS0070', 'HR', 'SO5', 'Huỳnh Anh Huy', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-12-03 08:30:00', '2018-12-03 10:00:00', 1, '2018-11-24 16:14:21', '2018-11-24 16:14:21'),
(472, 'AS0070', 'HR', 'SO5', 'Huỳnh Anh Huy', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-12-08 08:30:00', '2018-12-08 10:00:00', 1, '2018-11-24 16:18:51', '2018-11-24 16:18:51'),
(473, 'AS0070', 'HR', 'SO5', 'Huỳnh Anh Huy', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-12-10 08:30:00', '2018-12-10 11:00:00', 1, '2018-11-24 16:20:02', '2018-11-24 16:20:02'),
(474, 'AS0070', 'HR', 'SO5', 'Huỳnh Anh Huy', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-12-11 08:30:00', '2018-12-11 09:30:00', 1, '2018-11-24 16:21:09', '2018-11-24 16:21:09'),
(476, 'AS0070', 'HR', 'SO5', 'Huỳnh Anh Huy', 'Họp xử lý kỷ luật', '<p>Họp xử lý kỷ luật&nbsp;&nbsp;<br></p>', NULL, NULL, NULL, '2018-12-15 08:30:00', '2018-12-15 09:30:00', 1, '2018-11-24 16:23:03', '2018-11-24 16:23:03'),
(477, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-26 15:00:00', '2018-11-26 16:30:00', 1, '2018-11-26 13:04:26', '2018-11-26 13:04:26'),
(478, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-28 15:00:00', '2018-11-28 16:30:00', 1, '2018-11-26 13:05:49', '2018-11-26 13:05:49'),
(479, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-11-30 15:00:00', '2018-11-30 16:30:00', 1, '2018-11-26 13:07:05', '2018-11-26 13:07:05'),
(480, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'NEW ERP', '<p><br></p>', NULL, NULL, NULL, '2018-11-27 15:30:00', '2018-11-27 16:30:00', 1, '2018-11-26 13:08:55', '2018-11-26 13:08:55'),
(481, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'MOLD 1010', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-11-27 10:00:00', '2018-11-27 12:00:00', 1, '2018-11-27 10:09:57', '2018-11-27 10:09:57'),
(482, 'AS0070', 'HR', 'SO5', 'Lương Thị Ánh Phượng', 'Họp xử lý kỷ luật', '<p>Họp&nbsp;</p>', 'anhhuy.nguyen@jiahsin.com.vn', NULL, NULL, '2018-11-29 09:00:00', '2018-11-29 09:45:00', 1, '2018-11-28 09:01:28', '2018-11-28 09:01:28'),
(483, 'AS0174', 'JB', 'SO3', 'Ms. Yi', 'Họp tiến độ sản xuất xưởng ADIDAS', '<p>- Đ<span style=\"font-family: Arial, sans-serif; font-size: 12pt;\">iềuphối BU1 Jiahsin mượn phòng họp SHM</span></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'DieuPhoi.Linh@jiahsin.com.vn;Jiyu.Yi@jiahsin.com.vn', '2018-11-29 10:00:00', '2018-11-29 11:30:00', 1, '2018-11-28 09:26:23', '2018-11-28 09:26:23'),
(484, 'AS0174', 'JB', 'SO3', 'Hành chánh JH ( INSEE ĐÀO TẠO)', 'Đào tạo về việc phân loại rác Công nghiệp và Rác nguy hại', '<p>- Số lượng tham gia 70 người (JH)</p><p>- Shimmer dự thính 3 người (Mai -HC; Huy, Thanh - Bảo vệ)<br></p>', NULL, 'John.Wang@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'Bich.Phan@jiahsin.com.vn;Quynh.Nguyen@jiahsin.com.vn', '2018-12-05 08:30:00', '2018-12-05 12:00:00', 1, '2018-11-28 14:29:55', '2018-11-28 14:29:55'),
(485, 'AS0174', 'AD', 'SO2', 'Mr. Chris Lee', 'TIẾP KHÁCH CỦA BTGĐ', '<p>- BTGĐ tiếp Cơ quan Nhà nước</p><p>- HC chuẩn bị bánh, kẹo và nước uống</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'An.Tran@jiahsin.com.vn', '2018-11-29 13:30:00', '2018-11-29 16:30:00', 1, '2018-11-28 16:18:20', '2018-11-28 16:18:20'),
(488, 'AS0002', 'AC', 'SO4', 'Diệu Thùy', 'HỌP CÔNG ĐOÀN THÁNG 11.2018', '<p>HỌP CÔNG ĐOÀN THÁNG 11.2018<br></p>', 'minhtam.45230@gmail.com;nguyennguyenthanhsum@gmail.com', 'Linh.Nguyen@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Trinh.Nguyen@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Thu.Le@shimmer.com.vn', NULL, '2018-12-08 14:00:00', '2018-12-08 16:00:00', 1, '2018-11-30 11:35:52', '2018-11-30 11:35:52'),
(489, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'NEW ERP', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn;Thach.Tran@shimmer.com.vn', NULL, '2018-12-01 15:00:00', '2018-12-01 16:30:00', 1, '2018-11-30 13:39:26', '2018-11-30 13:39:26'),
(490, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', ' Shimmer -Weekly Meeting < 新禾週會>', '<p>&nbsp;Shimmer -Weekly Meeting &lt; 新禾週會&gt;</p><p>内容：&nbsp;下周 ADIDAS SME组来验厂评核</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;新型体介绍（&nbsp;开发-&nbsp;王先生做好准备）</p><p><br></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Nhung.Nguyen@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, '2018-12-01 08:00:00', '2018-12-01 10:00:00', 1, '2018-11-30 14:12:54', '2018-11-30 14:12:54'),
(491, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-12-03 15:00:00', '2018-12-03 16:30:00', 1, '2018-12-03 08:56:41', '2018-12-03 08:56:41'),
(492, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-12-05 15:00:00', '2018-12-05 16:30:00', 1, '2018-12-03 09:00:48', '2018-12-03 09:00:48'),
(493, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2018-12-07 15:00:00', '2018-12-07 15:30:00', 1, '2018-12-03 09:02:17', '2018-12-03 09:02:17'),
(494, 'CS1851', 'BS', 'SO4', 'Mr. Sam', 'Brooks Visit-Brooks客人參觀', '<p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><font face=\"Calibri\" size=\"3\">Hi all,</font></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><font face=\"Calibri\" size=\"3\">&nbsp;</font></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><font face=\"Calibri\" size=\"3\">Please note that 4 visitors from Brooks will visit Shimmeraround 9am tomorrow ( Dec. 04 ), kindly be ready for it, thanks.</font></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><font size=\"3\"><span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">請注意明天</span><font face=\"Calibri\">(12</font><span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">月</span><font face=\"Calibri\">4</font><span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">日</span><font face=\"Calibri\">)</font> <span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">早上</span><font face=\"Calibri\">9</font><span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">點</span><font face=\"Calibri\">4</font><span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">個來自</span><font face=\"Calibri\">Brooks</font><span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">的客人將參觀新禾</span><font face=\"Calibri\">,</font> <span lang=\"ZH-TW\" style=\"font-family: PMingLiU;\">各單位請作好準備</span><font face=\"Calibri\">, thanks.</font></font></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><font face=\"Calibri\" size=\"3\">&nbsp;</font></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><font face=\"Calibri\" size=\"3\">Best Regards,</font></p><p><font face=\"Times New Roman\"></font><br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;ToTran.Truong@shimmer.com.vn;Lan.Pham@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn;John.Wang@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Thach.Tran@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Jay.Pan@shimmer.com.vn;KieuTrinh.Nguyen@shimmer.com.vn', NULL, '2018-12-04 09:00:00', '2018-12-04 16:30:00', 1, '2018-12-03 09:21:25', '2018-12-03 09:21:25'),
(495, 'BS0537', 'PWP', 'SO1', 'Mr Zhang Bao Wei', 'IP厂开生产会议', '<p>IP厂开生产会议<br></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-12-04 08:00:00', '2018-12-04 09:00:00', 1, '2018-12-03 18:25:42', '2018-12-03 18:25:42'),
(496, 'AS0174', 'CR', 'SO2', 'Ms. Thuy CR', 'Họp Hội đồng BHLĐ', '<p>-&nbsp;<span style=\"font-family: Calibri, sans-serif; font-size: 11pt;\">Họp Hội đồng BHLĐ&nbsp;</span><span style=\"font-family: Calibri, sans-serif; font-size: 11pt;\">tháng 11.2018</span></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'anh.nguyen@jiahsin.com.vn', '2018-12-06 15:00:00', '2018-12-06 16:00:00', 1, '2018-12-05 08:52:24', '2018-12-05 08:52:24'),
(497, 'BS0537', 'PWP', 'SO1', 'thach', 'hop noi bo', '<p>hop noi bo can bo&nbsp;<br></p>', NULL, 'Thach.Tran@shimmer.com.vn', NULL, '2018-12-05 09:01:00', '2018-12-05 11:01:00', 1, '2018-12-05 09:02:20', '2018-12-05 09:02:20'),
(498, 'AS0174', 'AD', 'SO2', 'Mr. John Wang', 'HỌP BỘ PHẬN', '<p>- Chủ quản Vương Cường họp các bộ phận JHV và SHM</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;Vu.Tran@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Minh.Tra@shimmer.com.vn;CamTien.Nguyen@shimmer.com.vn;Phung.Pham@shimmer.com.vn', 'Quynh.Nguyen@jiahsin.com.vn;Cau.Mach@jiahsin.com.vn', '2018-12-08 13:30:00', '2018-12-08 15:30:00', 1, '2018-12-06 10:17:54', '2018-12-06 10:17:54'),
(499, 'I12758', 'IT', 'SO5', 'John Nguyen', 'Họp nội bộ IT phần mềm', '<p>Họp nội bộ IT phần mềm<br></p>', NULL, NULL, NULL, '2018-12-06 10:45:00', '2018-12-06 11:15:00', 1, '2018-12-06 10:30:21', '2018-12-06 10:30:21'),
(501, 'AS0174', 'AC', 'SO1', 'Ms. Thùy', 'Họp quà tết 2019', '<p>- Họp quà tết 2019</p>', NULL, 'DieuThuy.Nguyen@shimmer.com.vn', NULL, '2018-12-06 16:00:00', '2018-12-06 16:30:00', 1, '2018-12-06 13:38:47', '2018-12-06 13:38:47'),
(502, 'CS1912', 'RD', 'SO5', 'WANG WAN HUA', 'NEW ERP', '<p><br></p>', NULL, 'Sam.Kuo@shimmer.com.vn;Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Thach.Tran@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn;Phuong.Tran@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn;Nga.Tran@shimmer.com.vn;Lan.Pham@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn;ToTran.Truong@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;NhuNgoc.Pham@shimmer.com.vn;Matt.Fan@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn;Max.Chiang@jiahsin.com.vn', '2018-12-08 11:00:00', '2018-12-08 16:00:00', 1, '2018-12-07 09:05:56', '2018-12-07 09:05:56'),
(503, 'AS0174', 'AD', 'SO3', 'Mr. Jerry', 'Khách hàng Puma tham quan nhà máy', '<p>- Nghiệp Vụ JHV đặt phòng cho K<span style=\"color: rgb(0, 32, 96); font-family: &quot;Times New Roman&quot;, serif; font-size: 13pt;\">háchhàng Puma</span></p><p><span style=\"color: rgb(0, 32, 96); font-family: &quot;Times New Roman&quot;, serif; font-size: 13pt;\">- Hành Chánh Shimmer chuẩn bị:&nbsp;</span><span style=\"color: rgb(0, 32, 96); font-family: &quot;Times New Roman&quot;, serif; font-size: 13pt;\">Máy pha café, Phích nước nóng, thùng đựng đá</span></p><p class=\"MsoNormal\"><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#002060\"><o:p></o:p></span></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'Quynh.Nguyen@jiahsin.com.vn;Thu.Tran@jiahsin.com.vn', '2018-12-11 09:00:00', '2018-12-11 10:30:00', 1, '2018-12-07 10:54:35', '2018-12-07 10:54:35'),
(505, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'NEW ERP', '<p><br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Loan.Truong@shimmer.com.vn;Phuong.Tran@shimmer.com.vn;QuynhDung.Nguyen@shimmer.com.vn;Lan.Pham@shimmer.com.vn;ToTran.Truong@shimmer.com.vn;Thach.Tran@shimmer.com.vn', 'Jim.Kao@jiahsin.com.vn', '2018-12-07 13:00:00', '2018-12-07 14:55:00', 1, '2018-12-07 11:52:22', '2018-12-07 11:52:22'),
(506, 'AS0174', 'AD', 'SO1', 'Mr. Chris Lee', 'BTGĐ HỌP', '<p>-&nbsp; CUỘC HỌP CỦA BTGĐ</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-12-07 13:30:00', '2018-12-07 16:00:00', 1, '2018-12-07 11:54:52', '2018-12-07 11:54:52'),
(507, 'AS0070', 'HR', 'SO3', 'Giang Vương', 'Đào tao công nhân mới', '<p>Đào tao công nhân mới<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-12-08 07:30:00', '2018-12-08 16:30:00', 1, '2018-12-07 14:38:13', '2018-12-07 14:38:13'),
(508, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-10 15:00:00', '2018-12-10 16:30:00', 1, '2018-12-08 07:58:08', '2018-12-08 07:58:08'),
(509, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-12 15:00:00', '2018-12-12 16:30:00', 1, '2018-12-08 07:59:26', '2018-12-08 07:59:26'),
(510, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-14 15:00:00', '2018-12-14 16:30:00', 1, '2018-12-08 08:01:03', '2018-12-08 08:01:03'),
(511, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'CS3 PROBLEM', '<p><br></p>', NULL, 'Jay.Pan@shimmer.com.vn;Hua.Wang@shimmer.com.vn;Thach.Tran@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;AnNa.Lyu@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn;LiQing.Teng@shimmer.com.vn', NULL, '2018-12-10 09:00:00', '2018-12-10 11:00:00', 1, '2018-12-08 11:45:03', '2018-12-08 11:45:03'),
(512, 'BS0537', 'PWP', 'SO1', 'MR Zhang ', 'họp phẩm chất 42192 ', '<p>họp phẩm chất 42192&nbsp;<br></p>', NULL, 'Darren.Wu@shimmer.com.vn', NULL, '2018-12-11 13:30:00', '2018-12-11 15:00:00', 1, '2018-12-11 11:33:59', '2018-12-11 11:33:59'),
(513, 'BS0537', 'PWP', 'SO1', '潘副协理', ' 新禾庫存出貨及產能規劃事宜', '<p class=\"MsoNormal\"><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">Hi BU1 / BU2 </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">生管与底采购</span><span lang=\"ZH-CN\" style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\"> </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">主管</span><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p><p class=\"MsoNormal\"></p><p class=\"MsoNormal\"><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">&nbsp; &nbsp;&nbsp;&nbsp;</span><span lang=\"ZH-CN\" style=\"font-family:SimSun;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">关于以下问题，计划本周五下午</span><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">13</span><span lang=\"ZH-CN\" style=\"font-family:SimSun;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">点</span><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">30 </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">在新禾写字楼小会室召开讨论会议，请两</span><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">TEAM BU </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\">主管安排时间来参加，以上呈通知。谢谢！</span><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\"><o:p></o:p></span></p>', NULL, 'Jay.Pan@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn', 'Cindy.Luo@jiahsin.com.vn;Sean.Nong@jiahsin.com.vn;Chunxiong.Tan@jiahsin.com.vn;Celia.Zhang@jiahsin.com.vn;Jiyu.Yi@jiahsin.com.vn', '2018-12-14 13:30:00', '2018-12-14 16:00:00', 1, '2018-12-11 17:45:01', '2018-12-11 17:45:01'),
(515, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Hang.Truong@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-17 15:00:00', '2018-12-17 16:30:00', 1, '2018-12-14 08:41:38', '2018-12-14 08:41:38'),
(516, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-19 15:00:00', '2018-12-19 16:30:00', 1, '2018-12-14 08:42:56', '2018-12-14 08:42:56'),
(517, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-21 15:00:00', '2018-12-21 16:30:00', 1, '2018-12-14 08:44:24', '2018-12-14 08:44:24');
INSERT INTO `book_room` (`id`, `user_code`, `dept_code`, `room_code`, `presiding`, `title`, `content`, `receiver`, `shm_receiver`, `jhv_receiver`, `timeStart`, `timeEnd`, `status`, `created`, `modified`) VALUES
(518, 'AS0174', 'AD', 'SO5', 'NGUYỄN ĐẠI THANH (GIẢNG VIÊN BÊN NGOÀI)', 'ĐÀO TẠO SƠ CẤP NGHỀ VÀ AN TOÀN VẬN HÀNH ', '<p><font face=\"Times New Roman\" size=\"3\"></font></p><table width=\"1036\" style=\"margin: auto auto auto -0.15pt; width: 777pt; border-collapse: collapse; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><font face=\"Times New Roman\" size=\"3\"> </font><tbody><tr style=\"height: 22.5pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; padding: 0in 5.4pt; border: 1pt solid windowtext; border-image: none; width: 28pt; height: 22.5pt;\" rowspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Stt</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 125pt; height: 22.5pt;\" rowspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Họ  và tên</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 59pt; height: 22.5pt;\" rowspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Mã  số</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"151\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 113pt; height: 22.5pt;\" rowspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Công  việc</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 52pt; height: 22.5pt;\" rowspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Bộ  phận</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"139\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 104pt; height: 22.5pt;\" colspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Thời  hạn</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 80pt; height: 22.5pt;\" rowspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Chữ  ký</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"288\" nowrap=\"\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext black rgb(0, 0, 0); padding: 0in 5.4pt; width: 3in; height: 22.5pt;\" rowspan=\"2\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Ghi  chú</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 22.5pt; mso-yfti-irow: 1;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 22.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Lần  đầu</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 22.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><b><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Định  kỳ</span></b></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 78.75pt; mso-yfti-irow: 2;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>01</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Trần Thanh Nam</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>CS2343&nbsp;&nbsp;  </span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"151\" style=\"background: white; border-width: 0px 1pt 0px 0px; border-style: none solid none none; border-color: rgb(0, 0, 0) windowtext rgb(0, 0, 0) rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 113pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Nhóm  3 - nghiệp vụ kỹ thuật an toàn vận hành xe nâng hàng</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>TÀI  XẾ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"288\" style=\"background: white; border-width: 0px 1pt 0px 0px; border-style: none solid none none; border-color: rgb(0, 0, 0) windowtext rgb(0, 0, 0) rgb(0, 0, 0); padding: 0in 5.4pt; border-image: none; width: 3in; height: 78.75pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Người mới lái xe nâng hàng, học lớp được cấp chứng chỉ và thẻ an  toàn lao động, vệ sinh lao động&nbsp; theo yêu cầu quy định&nbsp; các công việc  nghiêm ngặt về ATLĐ (Nhóm3)</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 26.25pt; mso-yfti-irow: 3;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>02</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>Cao Hữu Thỏ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>CS2168</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"151\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext black rgb(0, 0, 0); padding: 0in 5.4pt; width: 113pt; height: 26.25pt;\" rowspan=\"4\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Nhóm  3 - nghiệp vụ kỹ thuật an toàn vận hành thiết bị áp lực</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>ĐẾ  IP</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"288\" style=\"background: white; border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext black rgb(0, 0, 0); padding: 0in 5.4pt; width: 3in; height: 26.25pt;\" rowspan=\"4\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Người mới vận hành thiết bị áp lực bình silicon, học lớp cấp thẻ  an toàn lao động, vệ sinh lao động&nbsp; theo yêu cầu quy định&nbsp; các công  việc nghiêm ngặt về ATLĐ (Nhóm3)</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 26.25pt; mso-yfti-irow: 4;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>03</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>Nguyễn Hoàng Nhật Tân</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>CS2422</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>ĐẾ  IP</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 26.25pt; mso-yfti-irow: 5;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>04</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>Nguyễn Văn Phú</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>CS2188</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>ĐẾ  IP</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 26.25pt; mso-yfti-irow: 6;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>05</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>Phạm Quốc Tuấn</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 26.25pt; background-color: transparent;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 12pt;\'>CS2105</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>ĐẾ  IP</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 26.25pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 25.5pt; mso-yfti-irow: 7;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>06</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Lương  Minh Vương</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>AS0016</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"151\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext black rgb(0, 0, 0); padding: 0in 5.4pt; width: 113pt; height: 25.5pt;\" rowspan=\"6\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Nhóm  3 - nghiệp vụ kỹ thuật an toàn vận hành thang nâng người</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>CĐ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"288\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 3in; height: 25.5pt;\" rowspan=\"6\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Học lớp bồi dưỡng cấp thẻ an toàn lao động, vệ sinh lao động  thang nâng người&nbsp;&nbsp; theo yêu cầu quy định&nbsp; các công việc nghiêm  ngặt về ATLĐ (Nhóm3)</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 25.5pt; mso-yfti-irow: 8;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>07</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Bùi Phan Duy Thái</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>AS0026</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>CĐ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 25.5pt; mso-yfti-irow: 9;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>08</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Lâm Tấn Phong</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>AS0012</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>CĐ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 25.5pt; mso-yfti-irow: 10;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>09</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Võ Duy Linh</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>AS0019</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>CĐ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 25.5pt; mso-yfti-irow: 11;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>10</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Nguyễn Minh Tiến</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>AS0018</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>CĐ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"> </font><tr style=\"height: 25.5pt; mso-yfti-irow: 12; mso-yfti-lastrow: yes;\"><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"37\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: rgb(0, 0, 0) windowtext windowtext; padding: 0in 5.4pt; border-image: none; width: 28pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>11</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"167\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 125pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p style=\"margin: 0in 0in 0pt;\"><span style=\'font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>Phạm  Duy Cường</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"79\" nowrap=\"\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 59pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>AS0280</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>CĐ</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"69\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 52pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>x</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\">  </font><td width=\"107\" style=\"background: white; border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: rgb(0, 0, 0) windowtext windowtext rgb(0, 0, 0); padding: 0in 5.4pt; width: 80pt; height: 25.5pt;\"><font face=\"Times New Roman\" size=\"3\">  </font><p align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><span style=\'color: black; font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>&nbsp;</span></p><font face=\"Times New Roman\" size=\"3\">  </font></td><font face=\"Times New Roman\" size=\"3\"> </font></tr><font face=\"Times New Roman\" size=\"3\"></font></tbody></table><p><font face=\"Times New Roman\" size=\"3\"></font><br></p>', NULL, 'Trang.Phan@shimmer.com.vn;Vu.Tran@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Minh.Tra@shimmer.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-12-22 08:00:00', '2018-12-22 12:00:00', 1, '2018-12-15 10:07:41', '2018-12-15 10:07:41');
INSERT INTO `book_room` (`id`, `user_code`, `dept_code`, `room_code`, `presiding`, `title`, `content`, `receiver`, `shm_receiver`, `jhv_receiver`, `timeStart`, `timeEnd`, `status`, `created`, `modified`) VALUES
(519, 'CS1955', 'AC', 'SO3', 'Mr.Matt', 'HỌP NỘI DUNG KIỂM KÊ', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Họp nội dung kiểm kê trong tháng 12.</font></font></p>', NULL, NULL, NULL, '2018-12-17 09:30:00', '2018-12-17 12:00:00', 1, '2018-12-15 13:09:57', '2018-12-15 13:09:57'),
(520, 'CS1955', 'AC', 'SO3', 'Mr.Matt', 'HỌP NỘI DUNG KIỂM KÊ', '<p>Họp nội dung kiểm kê trong tháng 12.</p>', NULL, NULL, NULL, '2018-12-18 09:30:00', '2018-12-18 12:00:00', 1, '2018-12-15 13:13:08', '2018-12-15 13:13:08'),
(521, 'AS0002', 'AC', 'SO3', 'LÂM CẨM HÀ', 'HỌP ĐỐI THOẠI ĐỊNH KỲ', '<p>Jiahsin &amp; Shimmer họp đối thoại định kỳ quý III &amp; quý IV năm 2018.</p>', 'nguyennguyenthanhsum@gmail.com;minhtam.45230@gmail.com', 'Linh.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Thu.Le@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Trinh.Pham@shimmer.com.vn', 'Congdoan.Ha@jiahsin.com.vn;Ymi.Vien@jiahsin.com.vn;anh.nguyen@jiahsin.com.vn', '2018-12-19 13:00:00', '2018-12-19 16:30:00', 1, '2018-12-17 10:25:14', '2018-12-17 10:25:14'),
(522, 'AS0002', 'AC', 'SO3', 'LÂM CẨM HÀ', 'HỌP ĐỐI THOẠI ĐỊNH KỲ', '<p>Jiahsin &amp; Shimmer họp đối thoại định kỳ quý III &amp; quý IV năm 2018.</p>', 'nguyennguyenthanhsum@gmail.com;minhtam.45230@gmail.com', 'Linh.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Thu.Le@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Trinh.Pham@shimmer.com.vn', 'Congdoan.Ha@jiahsin.com.vn;Ymi.Vien@jiahsin.com.vn;anh.nguyen@jiahsin.com.vn', '2018-12-19 13:00:00', '2018-12-19 16:30:00', 1, '2018-12-17 10:25:18', '2018-12-17 10:25:18'),
(523, 'AS0174', 'AD', 'SO1', 'Vương Cường', 'Họp nội bộ Jh-SM', '<p>Chú ý: Anh Chị chú ý phòng họp chuyển từ O2 sang phòng &nbsp;O1, do phòng O2 đã có lịch đặt trước đó.<br></p>', NULL, 'Huy.Tran@shimmer.com.vn;Minh.Tra@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn;Phung.Pham@shimmer.com.vn;Vu.Tran@shimmer.com.vn;CamTien.Nguyen@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;John.Wang@shimmer.com.vn', 'Quynh.Nguyen@jiahsin.com.vn;Cau.Mach@jiahsin.com.vn;Codien.Hung@jiahsin.com.vn;Minh.To@jiahsin.com.vn', '2018-12-17 15:45:00', '2018-12-17 16:30:00', 1, '2018-12-17 12:25:16', '2018-12-17 12:25:16'),
(526, 'BS0537', 'PWP', 'SO1', 'thach', 'hop nội bộ cán bộ ', '<p>hop nội bộ cán bộ&nbsp;<br></p>', NULL, NULL, NULL, '2018-12-19 08:55:00', '2018-12-19 10:55:00', 1, '2018-12-19 08:56:32', '2018-12-19 08:56:32'),
(527, 'BS0537', 'PWP', 'SO1', 'Mr  Zhang ', '内部盘点会议', '<p>内部盘点会议<br></p>', NULL, NULL, NULL, '2018-12-20 08:30:00', '2018-12-20 10:30:00', 1, '2018-12-20 07:19:23', '2018-12-20 07:19:23'),
(528, 'AS0174', 'AC', 'SO3', 'Ms. Ân', 'HỌP KIỂM KÊ', '<p>- Kế Toán hướng dẫn kiểm kê</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn', 'An.Tran@jiahsin.com.vn', '2018-12-22 10:00:00', '2018-12-22 12:00:00', 1, '2018-12-20 07:50:12', '2018-12-20 07:50:12'),
(529, 'AS0174', 'CR', 'SO3', 'Mr. Son CR', 'Đào tạo viết báo cáo GRI', '<p>-&nbsp;<b><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;color:red;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Đàotạo viết báo cáo GRI</span></b></p><p><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">- Người đào tạo: <b><span style=\"color:red\">Đơn vị ngoài</span></b></span><b><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;color:red;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\"><br></span></b></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'Son.Nguyen@jiahsin.com.vn', '2018-12-28 07:30:00', '2018-12-29 16:30:00', 1, '2018-12-20 07:52:35', '2018-12-20 07:52:35'),
(530, 'BS0537', 'PWP', 'SO1', 'Mr Zhang', '内部盘点会议', '<p><span lang=\"ZH-CN\" style=\"font-family:SimSun;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:&quot;Times New Roman&quot;\">内部盘点会议</span><o:p></o:p></p>', NULL, NULL, NULL, '2018-12-20 15:00:00', '2018-12-20 16:30:00', 1, '2018-12-20 08:17:27', '2018-12-20 08:17:27'),
(531, 'CS1912', 'RD', 'SO4', 'WANG WAN HUA', 'NB CUSTOMER', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Jay.Pan@shimmer.com.vn', NULL, '2018-12-20 14:00:00', '2018-12-20 16:00:00', 1, '2018-12-20 12:22:18', '2018-12-20 12:22:18'),
(532, 'BS0537', 'PWP', 'SO1', 'Mr Thach ', 'hop tiến kế hoạch tuần ', '<p>hop tiến kế hoạch tuần&nbsp;<br></p>', NULL, NULL, NULL, '2018-12-21 08:30:00', '2018-12-21 11:00:00', 1, '2018-12-21 07:37:12', '2018-12-21 07:37:12'),
(533, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2018-12-24 15:00:00', '2018-12-24 16:00:00', 1, '2018-12-21 13:43:56', '2018-12-21 13:43:56'),
(534, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2018-12-26 15:00:00', '2018-12-26 16:30:00', 1, '2018-12-21 13:45:02', '2018-12-21 13:45:02'),
(535, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-28 15:00:00', '2018-12-28 16:30:00', 1, '2018-12-21 13:46:20', '2018-12-21 13:46:20'),
(536, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop giao ban ', '<p>giao ban can bo&nbsp;</p>', NULL, NULL, NULL, '2018-12-21 16:30:00', '2018-12-21 18:00:00', 1, '2018-12-21 13:56:24', '2018-12-21 13:56:24'),
(537, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'for ASCO audit working', '<p>- \"For ASCO audit working\"<br></p>', NULL, 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, '2018-12-24 07:30:00', '2018-12-24 16:30:00', 1, '2018-12-21 14:00:44', '2018-12-21 14:00:44'),
(538, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'for ASCO audit working', '<p>- For ASCO audit working<br></p>', NULL, 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Diem.Nguyen@shimmer.com.vn', NULL, '2018-12-27 07:30:00', '2018-12-27 16:30:00', 1, '2018-12-21 14:02:27', '2018-12-21 14:02:27'),
(539, 'BS0394', 'IP', 'SO1', 'Zhang Bao Wei', 'HỌP NỘI BỘ', '<p>HỌP CÁC VẤN&nbsp;ĐỂ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn;Yong.Cai@shimmer.com.vn', NULL, '2018-12-22 07:30:00', '2018-12-22 08:30:00', 1, '2018-12-21 16:02:54', '2018-12-21 16:02:54'),
(540, 'BS0394', 'IP', 'SO1', 'Zhang Bao Wei', 'HỌP NỘI BỘ', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-12-25 07:30:00', '2018-12-25 08:30:00', 1, '2018-12-21 16:04:42', '2018-12-21 16:04:42'),
(541, 'BS0394', 'IP', 'SO1', 'Zhang Bao Wei', 'HỌP NỘI BỘ', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn', NULL, '2018-12-26 07:30:00', '2018-12-26 08:30:00', 1, '2018-12-21 16:05:42', '2018-12-21 16:05:42'),
(543, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', 'Shimmer -Weekly Meeting <新禾週會>', '<p>Shimmer -Weekly Meeting &lt;新禾週會&gt;<br></p>', NULL, 'Linh.Nguyen@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Hua.Wang@shimmer.com.vn', NULL, '2018-12-22 09:00:00', '2018-12-22 11:00:00', 1, '2018-12-21 19:46:05', '2018-12-21 19:46:05'),
(544, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'HỌP KIỂM KÊ ', '<p>- HỌP NỘI DUNG KIỂM KÊ</p>', NULL, 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Hang.Huynh@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;ThuHien.Pham@shimmer.com.vn;Cam.Phan@shimmer.com.vn;DaiTrang.Nguyen@shimmer.com.vn;ThanhTruc.Dang@shimmer.com.vn', NULL, '2018-12-22 14:00:00', '2018-12-22 15:00:00', 1, '2018-12-22 11:15:07', '2018-12-22 11:15:07'),
(545, 'BS0394', 'IP', 'SO1', 'ZHANG BAO WEI', 'HỌP NỘI BỘ', '<p>HỌP CÁC VẤN&nbsp;ĐỀ&nbsp;Ở XƯỞNG</p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Yuanhui.Zhang@shimmer.com.vn', NULL, '2018-12-25 08:35:00', '2018-12-25 09:30:00', 1, '2018-12-25 08:19:03', '2018-12-25 08:19:03'),
(546, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop luu trinh cung cap mau ', '<p>hop luu trinh cung cap mau&nbsp;<br></p>', NULL, NULL, NULL, '2018-12-25 15:25:00', '2018-12-25 17:25:00', 1, '2018-12-25 15:27:36', '2018-12-25 15:27:36'),
(548, 'AS0174', 'AD', 'SO1', 'Vương Cường', 'Tiếp Điện lực Cần Đước', '<p><br></p>', NULL, 'Vu.Tran@shimmer.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-12-27 10:30:00', '2018-12-27 12:00:00', 1, '2018-12-26 15:08:42', '2018-12-26 15:08:42'),
(549, 'AS0174', 'AC', 'SO2', 'Mr. Matt', 'KIỂM TOÁN TAIWAN', '<p>- KIỂM TOÁN TAIWAN<br></p>', NULL, 'John.Wang@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn;Matt.Fan@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2018-12-27 14:00:00', '2018-12-28 14:59:00', 1, '2018-12-27 14:01:03', '2018-12-27 14:01:03'),
(550, 'AS0070', 'HR', 'SO5', 'Giang Vương', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2018-12-28 07:29:00', '2018-12-28 16:30:00', 1, '2018-12-27 15:33:16', '2018-12-27 15:33:16'),
(551, 'BS0537', 'PWP', 'SO1', 'thạch', 'hop cán bộ', '<p>hop cán bộ<br></p>', NULL, NULL, NULL, '2018-12-29 08:25:00', '2018-12-29 10:30:00', 1, '2018-12-29 08:26:10', '2018-12-29 08:26:10'),
(552, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2018-12-31 15:00:00', '2018-12-31 16:30:00', 1, '2018-12-29 11:14:16', '2018-12-29 11:14:16'),
(553, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2019-01-02 15:00:00', '2019-01-02 16:30:00', 1, '2018-12-29 11:16:20', '2018-12-29 11:16:20'),
(554, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2019-01-04 15:00:00', '2019-01-04 16:30:00', 1, '2018-12-29 11:18:05', '2018-12-29 11:18:05'),
(555, 'BS0537', 'PWP', 'SO2', 'Mr Zhang ', 'IP生产周会', '<p>IP生产周会<br></p>', NULL, NULL, NULL, '2018-12-31 14:00:00', '2018-12-31 14:55:00', 1, '2018-12-31 07:36:47', '2018-12-31 07:36:47'),
(556, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'EY audit', '<p>- EY audit&nbsp;&nbsp;&nbsp;&nbsp;</p>', NULL, 'Matt.Fan@shimmer.com.vn', NULL, '2019-01-02 08:30:00', '2019-01-02 16:30:00', 1, '2019-01-02 08:34:22', '2019-01-02 08:34:22'),
(557, 'AS0070', 'HR', 'SO2', 'Ms. Thy', 'Phỏng vấn', '<p>Phỏng vấn<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn', '2019-01-03 09:00:00', '2019-01-03 11:00:00', 1, '2019-01-02 16:28:58', '2019-01-02 16:28:58'),
(558, 'AS0174', 'LA', 'SO5', 'Phòng thử nghiệm Jiahsin ', 'Buổi đào tạo về CFA Training and exam của VF.', '<p><font face=\"Times New Roman\" size=\"3\"></font></p><p style=\"margin: 0in 0in 0pt;\"><span style=\"font-size: 13pt;\"><font face=\"Times New Roman\">- Sốlượng:25 &nbsp;khoảng người- &nbsp;Có Projector </font></span></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><p><span style=\"font-size: 13pt;\"><font face=\"Times New Roman\">- Bánh kẹo và cơm trưa Lab sẽ làm phiếu trìnhđưa tổng vụ và nhà ăn Jiahsin chuẩn bị</font></span></p><span style=\"font-size: 13pt;\"><p><font face=\"Times New Roman\"><font size=\"3\"><span style=\'color: rgb(31, 73, 125); font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>- HC SM hỗ trợ nhân viên dọp dẹp vệ sinh và chăm thêm tràbánh giờ nghĩ giải lao</span></font><p><font size=\"3\"><span style=\'color: rgb(31, 73, 125); font-family: \"Times New Roman\",\"serif\"; font-size: 13pt;\'>- <span style=\'color: rgb(31, 73, 125); font-family: \"Calibri\",\"sans-serif\"; font-size: 11pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\'>Chiềungày 05/01/2019 PTN sẽ qua sắp xếp lại bàn ghế </span><br></span></font></p><p><font size=\"3\"></font><br></p><p><br></p></font></p><p><p><br></p></p></span><p><br></p><p><br></p><p><font face=\"Times New Roman\" size=\"3\"></font></p><div align=\"center\" style=\"margin: 0in 0in 0pt; text-align: center;\"><font face=\"Times New Roman\" size=\"3\"><hr width=\"100%\" size=\"2\" align=\"center\"><br></font></div>', NULL, 'Mai.Huynh@shimmer.com.vn;John.Wang@shimmer.com.vn', 'Lab.Hanh@jiahsin.com.vn;Lab.Tuyen@jiahsin.com.vn', '2019-01-07 07:30:00', '2019-01-08 16:30:00', 1, '2019-01-03 09:48:03', '2019-01-03 09:48:03'),
(559, 'AS0174', 'JB', 'SO1', 'Ms. Shirley', 'INTERVIEW', '<p>- Ms. Shirley mượn phòng họp để phỏng vấn</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2019-01-04 14:30:00', '2019-01-04 16:00:00', 1, '2019-01-03 16:15:17', '2019-01-03 16:15:17'),
(560, 'BS0537', 'PWP', 'SO1', '潘协理', '新禾庫存出貨及產能規劃事宜 （ 第二次）', '<p class=\"MsoNormal\"><span style=\"color:#1F497D\">Hi BU1 / BU2 </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;color:#1F497D\">生管与底采购</span><span lang=\"ZH-CN\" style=\"color:#1F497D\"> </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;color:#1F497D\">主管</span><span style=\"color:#1F497D\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p><p></p><p class=\"MsoNormal\"><span style=\"color:#1F497D\">&nbsp; &nbsp; &nbsp;针对新禾库存第二次讨论</span><span lang=\"ZH-CN\" style=\"font-family:SimSun;color:#1F497D\">计划本周六下午</span><span style=\"color:#1F497D\">13</span><span lang=\"ZH-CN\" style=\"font-family:SimSun;color:#1F497D\">点</span><span style=\"color:#1F497D\">30 </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;color:#1F497D\">在新禾写字楼小会室召开讨论会议，请两</span><span style=\"color:#1F497D\">TEAM BU </span><span lang=\"ZH-CN\" style=\"font-family:SimSun;color:#1F497D\">主管安排时间来参加，以上呈通知。谢谢！</span><span style=\"color:#1F497D\"><o:p></o:p></span></p>', NULL, 'Jay.Pan@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn', 'Cindy.Luo@jiahsin.com.vn;Sean.Nong@jiahsin.com.vn;Chunxiong.Tan@jiahsin.com.vn;Celia.Zhang@jiahsin.com.vn;Jiyu.Yi@jiahsin.com.vn', '2019-01-05 13:30:00', '2019-01-05 15:00:00', 1, '2019-01-03 18:08:29', '2019-01-03 18:08:29'),
(561, 'BS0537', 'PWP', 'SO1', '阿石', 'IP开下周排模状况', '<p>IP开下周排模状况<br></p>', NULL, NULL, NULL, '2019-01-04 08:30:00', '2019-01-04 10:30:00', 1, '2019-01-04 07:50:37', '2019-01-04 07:50:37'),
(562, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2019-01-07 15:00:00', '2019-01-07 16:30:00', 1, '2019-01-04 09:10:26', '2019-01-04 09:10:26'),
(563, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-01-09 15:00:00', '2019-01-10 16:30:00', 1, '2019-01-04 09:11:29', '2019-01-04 09:11:29'),
(564, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-01-11 15:00:00', '2019-01-11 16:30:00', 1, '2019-01-04 09:13:13', '2019-01-04 09:13:13'),
(565, 'BS0537', 'PWP', 'SO4', 'Jay', 'hop kiem thao Ennergy foam', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">hop kiem thao Ennergy foam</font></font></p>', NULL, NULL, NULL, '2019-01-04 13:25:00', '2019-01-04 14:30:00', 1, '2019-01-04 13:00:58', '2019-01-04 13:00:58'),
(566, 'AS0002', 'AC', 'SO4', 'Diệu Thùy', 'HỌP ĐỊNH KỲ CĐCS', '<p>&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 'nguyennguyenthanhsum@gmail.com;minhtam.45230@gmail.com', 'Linh.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Nhung.Huynh@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Thu.Le@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Trinh.Nguyen@shimmer.com.vn', NULL, '2019-01-09 14:00:00', '2019-01-09 16:01:00', 1, '2019-01-04 14:01:26', '2019-01-04 14:01:26'),
(567, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', 'Shimmer -Weekly Meeting <新禾週會>', '<p>Shimmer -Weekly Meeting &lt;新禾週會&gt;<br></p>', NULL, 'Bauwei.Zhang@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Qing.Zhang@shimmer.com.vn;Hua.Wang@shimmer.com.vn', NULL, '2019-01-05 08:00:00', '2019-01-05 11:30:00', 1, '2019-01-04 19:16:47', '2019-01-04 19:16:47'),
(568, 'BS0537', 'PWP', 'SO1', '潘协理', '新禾庫存出貨及產能規劃事宜（第二次）', '<p class=\"MsoNormal\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#1F497D\">Hi BU1 / BU2&nbsp;</span><span lang=\"ZH-CN\" style=\"font-size:10.5pt;font-family:SimSun;color:#1F497D\">生管与底采购</span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#1F497D\">&nbsp;</span><span lang=\"ZH-CN\" style=\"font-size:10.5pt;font-family:SimSun;color:#1F497D\">主管</span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#1F497D\">&nbsp;<o:p></o:p></span></p><p></p><p class=\"MsoNormal\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#1F497D\">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=\"ZH-CN\" style=\"font-size:10.5pt;font-family:SimSun;mso-ascii-font-family:Helvetica;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Helvetica;color:#1F497D\">抱歉！因今天我司潘协理出差所以会议延期到下礼拜一</span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#1F497D\">1</span><span lang=\"ZH-CN\" style=\"font-size:10.5pt;font-family:SimSun;mso-ascii-font-family:Helvetica;mso-fareast-font-family:SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Helvetica;color:#1F497D\">点半讨论，以上请知悉。谢谢！</span><span style=\"mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;color:#1F497D\"><o:p></o:p></span></p>', NULL, 'Jay.Pan@shimmer.com.vn;Darren.Wu@shimmer.com.vn;Bauwei.Zhang@shimmer.com.vn', 'Cindy.Luo@jiahsin.com.vn;Sean.Nong@jiahsin.com.vn;Chunxiong.Tan@jiahsin.com.vn;Celia.Zhang@jiahsin.com.vn;Jiyu.Yi@jiahsin.com.vn', '2019-01-07 13:30:00', '2019-01-07 15:00:00', 1, '2019-01-05 08:56:56', '2019-01-05 08:56:56'),
(569, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Phuong.Tran@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn', NULL, '2019-01-07 09:30:00', '2019-01-07 11:00:00', 1, '2019-01-07 08:40:27', '2019-01-07 08:40:27'),
(570, 'AS0174', 'CR', 'SO1', 'Nguyễn Thị Thu Thủy (Bộ phận CR)', 'Họp hội đồng an toàn vệ sinh lao động tháng 12/2018 Shimmer', '<p><br></p>', NULL, 'Mai.Huynh@shimmer.com.vn;John.Wang@shimmer.com.vn;Huy.Tran@shimmer.com.vn;Vu.Tran@shimmer.com.vn;Phung.Pham@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Thach.Tran@shimmer.com.vn;Duc.Minh@shimmer.com.vn', 'QuynhTram.Nguyen@jiahsin.com.vn;ThuThuy.Nguyen@jiahsin.com.vn', '2019-01-09 14:00:00', '2019-01-09 15:00:00', 1, '2019-01-07 16:00:34', '2019-01-07 16:00:34'),
(571, 'AS0174', 'LA', 'SO3', 'VF', 'tổ chức thi cho buổi đào tạo của VF', '<p><br></p>', NULL, 'Mai.Huynh@shimmer.com.vn;John.Wang@shimmer.com.vn;Tang.Ngo@shimmer.com.vn', 'Lab.Tuyen@jiahsin.com.vn;Lab.Hanh@jiahsin.com.vn', '2019-01-08 13:00:00', '2019-01-08 15:00:00', 1, '2019-01-07 16:08:42', '2019-01-07 16:08:42'),
(572, 'AS0174', 'AD', 'SO3', 'Ban Tổng Giám đốc', 'HỌP GIAO BAN', '<p>- Họp giao ban JHV &amp; SHM</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'Quynh.Nguyen@jiahsin.com.vn', '2019-01-08 08:30:00', '2019-01-08 12:00:00', 1, '2019-01-07 17:14:23', '2019-01-07 17:14:23'),
(574, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Thao.Tran@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-01-08 10:30:00', '2019-01-08 12:00:00', 1, '2019-01-08 08:04:52', '2019-01-08 08:04:52'),
(575, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Thao.Tran@shimmer.com.vn', NULL, '2019-01-09 09:00:00', '2019-01-09 11:00:00', 1, '2019-01-08 08:09:35', '2019-01-08 08:09:35'),
(576, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-01-10 09:00:00', '2019-01-10 10:30:00', 1, '2019-01-08 08:11:38', '2019-01-08 08:11:38'),
(578, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-01-11 09:00:00', '2019-01-11 10:30:00', 1, '2019-01-08 08:15:40', '2019-01-08 08:15:40'),
(579, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Thao.Tran@shimmer.com.vn', NULL, '2019-01-12 09:00:00', '2019-01-12 10:30:00', 1, '2019-01-08 08:16:55', '2019-01-08 08:16:55'),
(580, 'BS0537', 'PWP', 'SO1', 'mr jay ', 'eva tien do cs3 ', '<p>eva tien do cs3&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-09 08:00:00', '2019-01-09 08:55:00', 1, '2019-01-09 07:34:29', '2019-01-09 07:34:29'),
(581, 'BS0537', 'PWP', 'SO1', 'Mr zhang Bau Wei ', 'họp nội bộ IP', '<p>họp nội bộ IP<br></p>', NULL, NULL, NULL, '2019-01-12 08:00:00', '2019-01-12 08:59:00', 1, '2019-01-12 08:00:12', '2019-01-12 08:00:12'),
(582, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Thao.Tran@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn;Phuong.Tran@shimmer.com.vn', NULL, '2019-01-14 09:00:00', '2019-01-14 10:30:00', 1, '2019-01-14 08:19:20', '2019-01-14 08:19:20'),
(583, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Hang.Truong@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2019-01-14 15:00:00', '2019-01-14 16:30:00', 1, '2019-01-14 08:21:15', '2019-01-14 08:21:15'),
(584, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2019-01-16 15:00:00', '2019-01-16 16:30:00', 1, '2019-01-14 08:22:19', '2019-01-14 08:22:19'),
(585, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', 'Sloan.Hsu@jiahsin.com.vn', '2019-01-18 15:00:00', '2019-01-18 16:30:00', 1, '2019-01-14 08:23:28', '2019-01-14 08:23:28'),
(586, 'CS1912', 'RD', 'SO1', 'WANG WAN HUA', 'EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn', NULL, '2019-01-15 09:00:00', '2019-01-15 10:25:00', 1, '2019-01-14 08:24:21', '2019-01-14 08:24:21'),
(587, 'BS0537', 'PWP', 'SO1', '张经理', 'IP内部会议', '<p>IP内部会议<br></p>', NULL, NULL, NULL, '2019-01-16 08:00:00', '2019-01-16 09:00:00', 1, '2019-01-16 08:01:01', '2019-01-16 08:01:01'),
(588, 'BS0537', 'PWP', 'SO1', 'Mr Thạch ', 'họp tiến độ IP ', '<p>họp tiến độ IP&nbsp;</p>', NULL, NULL, NULL, '2019-01-17 08:00:00', '2019-01-17 08:55:00', 1, '2019-01-17 07:26:40', '2019-01-17 07:26:40'),
(589, 'BS0537', 'PWP', 'SO1', 'Mr Thạch ', 'họp tiến độ IP ', '<p>họp tiến độ IP&nbsp;</p>', NULL, NULL, NULL, '2019-01-17 08:00:00', '2019-01-17 08:55:00', 1, '2019-01-17 07:26:48', '2019-01-17 07:26:48'),
(590, 'BS0537', 'PWP', 'SO1', 'Mr Thạch ', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-18 08:00:00', '2019-01-18 09:00:00', 1, '2019-01-17 07:27:45', '2019-01-17 07:27:45'),
(591, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-19 08:00:00', '2019-01-19 11:30:00', 1, '2019-01-17 07:29:17', '2019-01-17 07:29:17'),
(592, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-21 08:00:00', '2019-01-21 09:00:00', 1, '2019-01-17 07:29:48', '2019-01-17 07:29:48'),
(593, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-22 08:00:00', '2019-01-22 09:00:00', 1, '2019-01-17 07:30:25', '2019-01-17 07:30:25'),
(594, 'BS0537', 'PWP', 'SO1', 'Mr Thạch ', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-23 08:00:00', '2019-01-23 09:31:00', 1, '2019-01-17 07:31:20', '2019-01-17 07:31:20'),
(595, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-24 08:00:00', '2019-01-24 09:00:00', 1, '2019-01-17 07:31:53', '2019-01-17 07:31:53'),
(596, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-25 08:00:00', '2019-01-25 09:00:00', 1, '2019-01-17 07:32:30', '2019-01-17 07:32:30'),
(597, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'họp tiến dộ IP ', '<p>họp tiến dộ IP&nbsp;<br></p>', NULL, NULL, NULL, '2019-01-26 08:00:00', '2019-01-26 11:33:00', 1, '2019-01-17 07:33:05', '2019-01-17 07:33:05'),
(598, 'AS0070', 'HR', 'SO3', 'Viên Y Mi', 'Phép năm 2019', '<p><br></p>', NULL, 'Thu.Le@shimmer.com.vn', NULL, '2019-01-19 14:30:00', '2019-01-19 16:30:00', 1, '2019-01-18 08:29:48', '2019-01-18 08:29:48'),
(599, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'IP-EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-01-19 08:30:00', '2019-01-19 09:00:00', 1, '2019-01-19 08:22:38', '2019-01-19 08:22:38'),
(600, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-21 15:00:00', '2019-01-21 16:30:00', 1, '2019-01-19 08:39:15', '2019-01-19 08:39:15'),
(601, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-23 15:00:00', '2019-01-23 16:30:00', 1, '2019-01-19 08:43:06', '2019-01-19 08:43:06'),
(602, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-25 15:00:00', '2019-01-25 16:30:00', 1, '2019-01-19 09:03:43', '2019-01-19 09:03:43'),
(603, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ HÀNG MẪU', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Linh.ThiNguyen@shimmer.com.vn;Phuong.Tran@shimmer.com.vn', NULL, '2019-01-21 08:30:00', '2019-01-21 10:00:00', 1, '2019-01-19 09:07:15', '2019-01-19 09:07:15'),
(604, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'IP-EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn', NULL, '2019-01-23 08:30:00', '2019-01-23 10:00:00', 1, '2019-01-22 16:15:09', '2019-01-22 16:15:09'),
(605, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'IP-EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-24 08:30:00', '2019-01-24 10:00:00', 1, '2019-01-22 16:16:10', '2019-01-22 16:16:10'),
(606, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'IP-EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-25 08:30:00', '2019-01-25 10:30:00', 1, '2019-01-24 16:19:21', '2019-01-24 16:19:21'),
(607, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'IP-EVA', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-26 08:30:00', '2019-01-26 10:30:00', 1, '2019-01-24 16:20:21', '2019-01-24 16:20:21'),
(608, 'BS0537', 'PWP', 'SO1', 'Mr Jay ', '新禾庫存出貨及產能規劃事宜', '<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;font-family:標楷體;color:#1F497D\">Hi BU1 / BU2&nbsp;<span lang=\"ZH-CN\">生管与底采购</span>&nbsp;<span lang=\"ZH-CN\">主管</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:14.0pt;font-family:標楷體;color:#333333\"><o:p></o:p></span></p><p></p><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;font-family:標楷體;color:#1F497D\">&nbsp; &nbsp; <span lang=\"ZH-CN\">针对新禾库存第三次检讨，计划本周六下午</span>13<span lang=\"ZH-CN\">点</span>30&nbsp;<span lang=\"ZH-CN\">在新禾写字楼小会室召开讨论会议，请两</span>TEAM BU&nbsp;<span lang=\"ZH-CN\">主管安排时间来参加，以上呈通知。谢谢！</span></span><span style=\"font-size:14.0pt;font-family:標楷體;color:#333333\"><o:p></o:p></span></p>', NULL, NULL, NULL, '2019-01-26 13:30:00', '2019-01-26 15:00:00', 1, '2019-01-24 19:51:32', '2019-01-24 19:51:32'),
(609, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-28 15:00:00', '2019-01-28 16:30:00', 1, '2019-01-25 09:58:28', '2019-01-25 09:58:28'),
(610, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-01-30 15:00:00', '2019-01-30 16:30:00', 1, '2019-01-25 09:59:33', '2019-01-25 09:59:33'),
(611, 'AS0174', 'JB', 'SO4', 'Ms. Shirley', 'INTERVIEW', '<p>&nbsp; &nbsp; - Interview<br></p>', NULL, 'Mai.Huynh@shimmer.com.vn', NULL, '2019-01-26 14:00:00', '2019-01-26 16:00:00', 1, '2019-01-26 09:44:22', '2019-01-26 09:44:22'),
(612, 'CS1955', 'AC', 'SO4', 'Diệu Thùy', 'HỌP ĐỊNH KỲ CĐCS', '<p>        <br></p>', 'nguyennguyenthanhsum@gmail.com;minhtam.45230@gmail.com', 'Nhung.Huynh@shimmer.com.vn;Cam.Phan@shimmer.com.vn;Trang.Phan@shimmer.com.vn;Trang.Vo@shimmer.com.vn;Trinh.Pham@shimmer.com.vn;Huyen.Nguyen@shimmer.com.vn;Chi.Ngo@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn;Thu.Le@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn', '', '2019-02-01 09:00:00', '2019-02-01 10:00:00', 1, '2019-01-26 10:40:20', '2019-01-26 10:40:20'),
(613, 'AS0174', 'JB', 'SO1', 'Ms. Shirley', 'PRESENTATION', '<p>-&nbsp;PRESENTATION</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2019-01-29 14:30:00', '2019-01-29 16:00:00', 1, '2019-01-28 08:24:47', '2019-01-28 08:24:47'),
(614, 'AS0174', 'JB', 'SO1', 'Ms. Shirley', 'PRESENTATION', '<p>PRESENTATION<br></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2019-01-30 14:30:00', '2019-01-30 16:00:00', 1, '2019-01-28 08:26:53', '2019-01-28 08:26:53'),
(615, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop noi bo ', '<p>hop can bo</p>', NULL, NULL, NULL, '2019-01-30 16:30:00', '2019-01-30 18:00:00', 1, '2019-01-30 10:04:38', '2019-01-30 10:04:38'),
(616, 'AS0067', 'QI', 'SO4', 'Chị Nhung Phó Khối QIP', 'HỌP CHẤT LƯỢNG XƯỞNG EVA', '<p>HỌP CHẤT LƯỢNG XƯỞNG EVA<br></p>', NULL, 'Nhung.Nguyen@shimmer.com.vn;Trinh.Pham@shimmer.com.vn;Linh.Nguyen@shimmer.com.vn', NULL, '2019-01-30 15:00:00', '2019-01-30 16:00:00', 1, '2019-01-30 10:44:03', '2019-01-30 10:44:03'),
(617, 'BS0537', 'PWP', 'SO1', '潘协理', '新型体会议', '<p>讨论新型体5502上线事宜</p>', NULL, NULL, NULL, '2019-01-31 08:30:00', '2019-01-31 11:30:00', 1, '2019-01-31 07:43:44', '2019-01-31 07:43:44'),
(618, 'AS0174', 'AD', 'SO2', 'Mr.Cường', 'Họp ', '<p><br></p>', NULL, 'Huy.Tran@shimmer.com.vn;Vu.Tran@shimmer.com.vn;John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'Quynh.Nguyen@jiahsin.com.vn;Cau.Mach@jiahsin.com.vn;Codien.Hung@jiahsin.com.vn;Minh.To@jiahsin.com.vn', '2019-02-02 11:00:00', '2019-02-02 12:00:00', 1, '2019-02-02 08:40:57', '2019-02-02 08:40:57'),
(619, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-02-11 15:00:00', '2019-02-11 16:30:00', 1, '2019-02-11 09:55:23', '2019-02-11 09:55:23'),
(620, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-02-13 15:00:00', '2019-02-13 16:30:00', 1, '2019-02-11 09:56:19', '2019-02-11 09:56:19'),
(621, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, NULL, NULL, '2019-02-15 15:00:00', '2019-02-15 16:30:00', 1, '2019-02-11 09:57:03', '2019-02-11 09:57:03'),
(622, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Thao.Tran@shimmer.com.vn;Hieu.Nguyen@shimmer.com.vn;Phuong.Tran@shimmer.com.vn;ToNhu.Truong@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, '2019-02-12 15:00:00', '2019-02-12 16:30:00', 1, '2019-02-12 10:30:00', '2019-02-12 10:30:00'),
(623, 'AS0174', 'JB', 'SO1', 'Ms. Shirley HR', 'INTERVIEW', '<p>INTERVIEW<br></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2019-02-13 13:30:00', '2019-02-13 15:00:00', 1, '2019-02-12 16:28:32', '2019-02-12 16:28:32'),
(624, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'họp tiến độ ', '<p>họp tiến độ&nbsp;</p>', NULL, NULL, NULL, '2019-02-15 08:00:00', '2019-02-15 12:00:00', 1, '2019-02-15 07:38:47', '2019-02-15 07:38:47'),
(625, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-02-18 15:00:00', '2019-02-18 16:30:00', 1, '2019-02-15 11:32:48', '2019-02-15 11:32:48'),
(626, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-02-20 15:00:00', '2019-02-20 16:30:00', 1, '2019-02-15 11:33:46', '2019-02-15 11:33:46'),
(627, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn', NULL, '2019-02-22 15:00:00', '2019-02-22 16:30:00', 1, '2019-02-15 11:34:45', '2019-02-15 11:34:45'),
(628, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop giao ban ', '<p>hop giao ban&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-15 16:30:00', '2019-02-15 17:30:00', 1, '2019-02-15 15:54:26', '2019-02-15 15:54:26'),
(629, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'hop tiến độ ', '<p>hop tiến độ&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-18 08:00:00', '2019-02-18 12:00:00', 1, '2019-02-18 07:24:38', '2019-02-18 07:24:38'),
(630, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'hop tiến độ ', '<p>hop tiến độ&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-19 08:00:00', '2019-02-19 12:00:00', 1, '2019-02-18 07:25:14', '2019-02-18 07:25:14'),
(631, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'hop tiến độ ', '<p>hop tiến độ&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-20 08:00:00', '2019-02-20 12:00:00', 1, '2019-02-18 07:25:54', '2019-02-18 07:25:54'),
(632, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'hop tiến độ ', '<p>hop tiến độ&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-21 08:00:00', '2019-02-21 12:00:00', 1, '2019-02-18 07:26:29', '2019-02-18 07:26:29'),
(633, 'BS0537', 'PWP', 'SO1', 'Mr Thạch', 'hop tiến độ ', '<p>hop tiến độ&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-22 08:00:00', '2019-02-22 12:00:00', 1, '2019-02-18 07:27:17', '2019-02-18 07:27:17'),
(634, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Linh.ThiNguyen@shimmer.com.vn;Phuong.Tran@shimmer.com.vn;Hien.Pham@shimmer.com.vn', NULL, '2019-02-19 08:30:00', '2019-02-19 10:00:00', 1, '2019-02-19 07:51:01', '2019-02-19 07:51:01'),
(635, 'AS0070', 'HR', 'SO3', 'đào tạo công nhân mới', 'đào tạo công nhân mới', '<p>đào tạo công nhân mới<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Giang.Vuong@jiahsin.com.vn;Linh.Mai@jiahsin.com.vn', '2019-02-20 07:30:00', '2019-02-20 16:30:00', 1, '2019-02-20 07:40:31', '2019-02-20 07:40:31'),
(636, 'AS0174', 'CR', 'SO3', 'Khách hàng New Balance', 'HỌP QUÝ 1 CỦA KHÁCH HÀNG NEW BALANCE', '<p>- CR mượn phòng họp cho khách hàng New Balance&nbsp;</p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', 'anh.nguyen@jiahsin.com.vn;Son.Nguyen@jiahsin.com.vn', '2019-03-28 07:30:00', '2019-03-29 16:30:00', 1, '2019-02-20 07:58:08', '2019-02-20 07:58:08'),
(637, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn', NULL, '2019-02-20 08:30:00', '2019-02-20 10:00:00', 1, '2019-02-20 08:30:48', '2019-02-20 08:30:48'),
(638, 'AS0070', 'HR', 'SO3', 'Mai Trúc Linh', 'Đào tạo công nhân mới', '<p>Đào tạo công nhân mới<br></p>', NULL, 'Diem.Nguyen@shimmer.com.vn', 'Linh.Mai@jiahsin.com.vn;Giang.Vuong@jiahsin.com.vn;Phuong.Luong@jiahsin.com.vn', '2019-02-23 07:30:00', '2019-02-23 16:30:00', 1, '2019-02-22 16:21:58', '2019-02-22 16:21:58'),
(639, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop tien do ', '<p>hop tien do&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-26 08:00:00', '2019-02-26 12:00:00', 1, '2019-02-25 09:30:24', '2019-02-25 09:30:24'),
(640, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop tien do ', '<p>hop tien do&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-27 08:00:00', '2019-02-27 12:00:00', 1, '2019-02-25 09:30:54', '2019-02-25 09:30:54'),
(641, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop tien do ', '<p>hop tien do&nbsp;<br></p>', NULL, NULL, NULL, '2019-02-28 08:00:00', '2019-02-28 12:00:00', 1, '2019-02-25 09:31:22', '2019-02-25 09:31:22'),
(642, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop tien do ', '<p>hop tien do&nbsp;<br></p>', NULL, NULL, NULL, '2019-03-01 08:00:00', '2019-03-01 12:00:00', 1, '2019-02-25 09:31:57', '2019-02-25 09:31:57'),
(643, 'BS0537', 'PWP', 'SO1', 'Mr Thach', 'hop tien do ', '<p>hop tien do&nbsp;<br></p>', NULL, NULL, NULL, '2019-03-02 08:00:00', '2019-03-02 12:00:00', 1, '2019-02-25 09:32:26', '2019-02-25 09:32:26'),
(644, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-02-25 15:00:00', '2019-02-25 16:30:00', 1, '2019-02-25 13:19:58', '2019-02-25 13:19:58'),
(645, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;FengYu.Li@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-02-27 15:00:00', '2019-02-27 16:30:00', 1, '2019-02-25 13:20:55', '2019-02-25 13:20:55'),
(646, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-03-01 15:00:00', '2019-03-02 08:00:00', 1, '2019-02-25 13:23:34', '2019-02-25 13:23:34'),
(648, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn;Hang.Truong@shimmer.com.vn;Linh.ThiNguyen@shimmer.com.vn;Phuong.Tran@shimmer.com.vn;Thao.Tran@shimmer.com.vn;An.Voong@shimmer.com.vn', NULL, '2019-02-28 08:30:00', '2019-02-28 10:00:00', 1, '2019-02-28 07:51:15', '2019-02-28 07:51:15'),
(649, 'AS0174', 'CR', 'SO2', 'Thủy CR', 'Họp BẢO HỘ LAO ĐỘNG', '<p><br></p>', NULL, 'Mai.Huynh@shimmer.com.vn;John.Wang@shimmer.com.vn', 'ThuThuy.Nguyen@jiahsin.com.vn;QuynhTram.Nguyen@jiahsin.com.vn', '2019-03-02 09:00:00', '2019-03-02 10:00:00', 1, '2019-02-28 08:17:58', '2019-02-28 08:17:58'),
(650, 'AS0174', 'AD', 'SO2', 'Mr.Cường', 'Họp', '<p><br></p>', NULL, 'John.Wang@shimmer.com.vn;Mai.Huynh@shimmer.com.vn', NULL, '2019-02-28 15:40:00', '2019-02-28 16:30:00', 1, '2019-02-28 14:28:00', '2019-02-28 14:28:00'),
(651, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'Thảo luận báo cáo hải quan.', '<p>- Thảo luận báo cáo hải quan cuối năm 2018.</p>', NULL, 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn', 'An.Tran@jiahsin.com.vn', '2019-03-01 14:00:00', '2019-03-01 16:30:00', 1, '2019-03-01 10:08:39', '2019-03-01 10:08:39'),
(652, 'CS1955', 'AC', 'SO4', 'Mr.Matt', 'Họp kiểm toán ASCO từ ngày 08~09/03/2019', '<p>- Họp kiểm toán Asco báo cáo năm 2018.</p>', NULL, 'Matt.Fan@shimmer.com.vn;DieuThuy.Nguyen@shimmer.com.vn', NULL, '2019-03-08 07:30:00', '2019-03-09 16:30:00', 1, '2019-03-01 10:18:35', '2019-03-01 10:18:35'),
(653, 'CS1912', 'RD', 'SO4', 'WANG WANG HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;Hang.Truong@shimmer.com.vn;LiQing.Teng@shimmer.com.vn', NULL, '2019-03-02 15:00:00', '2019-03-02 16:30:00', 1, '2019-03-02 15:00:43', '2019-03-02 15:00:43'),
(654, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn;LiQing.Teng@shimmer.com.vn;FengYu.Li@shimmer.com.vn;Duc.Minh@shimmer.com.vn', NULL, '2019-03-04 15:00:00', '2019-03-04 16:30:00', 1, '2019-03-04 11:32:55', '2019-03-04 11:32:55'),
(655, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn', NULL, '2019-03-06 15:00:00', '2019-03-06 16:33:00', 1, '2019-03-04 11:33:41', '2019-03-04 11:33:41'),
(656, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn', NULL, '2019-03-08 15:00:00', '2019-03-08 16:34:00', 1, '2019-03-04 11:34:24', '2019-03-04 11:34:24'),
(657, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn', NULL, '2019-03-05 08:30:00', '2019-03-05 10:00:00', 1, '2019-03-04 11:35:11', '2019-03-04 11:35:11'),
(658, 'CS1912', 'RD', 'SO2', 'WANG WAN HUA', 'HỌP TIẾN ĐỘ', '<p><br></p>', NULL, 'Hua.Wang@shimmer.com.vn', NULL, '2019-03-07 08:30:00', '2019-03-07 10:00:00', 1, '2019-03-04 11:35:51', '2019-03-04 11:35:51'),
(659, 'BS0537', 'PWP', 'SO1', '张保卫经理', '开早会', '<p>开早会<br></p>', NULL, NULL, NULL, '2019-03-05 08:00:00', '2019-03-05 12:00:00', 1, '2019-03-05 07:32:25', '2019-03-05 07:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(72) NOT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `numberPosts` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post Category';

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `numberPosts`) VALUES
(1, 'phalcon php', 'phalcon-php-te', 1),
(2, 'phong cảnh', 'phong-canh', 1),
(5, 'test123', 'test-test-123', NULL),
(6, 'test', 'test', NULL);

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
  `name` varchar(128) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `name`) VALUES
(1, 'AC', 'Kế Toán 会计 Accounting'),
(2, 'GA', 'Tổng Vụ 一般事情 General Affair'),
(3, 'HR', 'Nhân Sự 人力资源 Human Resource'),
(5, 'IT', 'CNTT 信息技术 IT'),
(6, 'WH', 'Kho 仓库 Warehouse'),
(7, 'AD', 'Hành Chánh 管理员 Administration'),
(8, 'JB', 'JIAHSIN 佳新 Company'),
(9, 'BS', 'Nghiệp Vụ 商业 Business'),
(10, 'FO', 'Công Thức 式 Formula'),
(11, 'RD', 'R&D 研究与开发 Research & Development'),
(12, 'CT', 'Chế Tạo 制造业 Manufacturing'),
(13, 'CP', 'Chi Phí 成本核算 Costing'),
(14, 'DP', 'Điều Phối 协调 Planning'),
(15, 'TH', 'Thành Hình 形状 Shape'),
(16, 'IP', 'Đế IP 鞋垫 IP Insole'),
(17, 'CD', 'Cơ Điện 电气工程 Electrical Engineering'),
(18, 'LA', 'LAB 实验室 LAB'),
(19, 'QI', 'QIP'),
(20, 'IF', 'Y Tế 医务室 Infirmary'),
(21, 'SE', 'Bảo Vệ 安全 Security'),
(22, 'GM', 'Giám Đốc 董事 Directors'),
(23, 'PH', 'Thu Mua 购买 Purchasing'),
(24, 'PWP', 'Điều Phối-KVL-Đặt Hàng 规划-仓库-购买 Planning-Warehouse-Purchasing'),
(25, 'CR', 'CR 企业责任 Corporate Responsibility');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `keyword` varchar(128) NOT NULL,
  `com_code` varchar(5) NOT NULL DEFAULT 'SHM'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email`, `name`, `keyword`, `com_code`) VALUES
(1, 'Sample@jiahsin.com.vn', 'ABSample', 'AB Sample', 'JHV'),
(2, 'ABSample.JHV@jiahsin.com.vn', 'ABSample', 'AB Sample', 'JHV'),
(3, 'Accounting.JHV@jiahsin.com.vn', 'Accounting', 'Accounting', 'JHV'),
(4, 'ad.development@jiahsin.com.vn', 'ad development', 'ad development', 'JHV'),
(5, 'AD.KVL01@jiahsin.com.vn', 'AD KVL01', 'AD KVL01', 'JHV'),
(6, 'AD.KVL02@jiahsin.com.vn', 'AD KVL02', 'AD KVL02', 'JHV'),
(7, 'AD.KVL03@jiahsin.com.vn', 'AD KVL03', 'AD KVL03', 'JHV'),
(8, 'AD.KVL04@jiahsin.com.vn', 'AD KVL04', 'AD KVL04', 'JHV'),
(9, 'AD.KVL05@jiahsin.com.vn', 'AD KVL05', 'AD KVL05', 'JHV'),
(10, 'Adidas.Kiemhang@jiahsin.com.vn', 'Adidas Kiemhang', 'Adidas Kiem hang', 'JHV'),
(11, 'Adidas.Mai@jiahsin.com.vn', 'Adidas Mai', 'Adidas Mai', 'JHV'),
(12, 'Administration.JHV@jiahsin.com.vn', 'Administration', 'Administration', 'JHV'),
(13, 'ADSample.JHV@jiahsin.com.vn', 'ADSample', 'ADSample', 'JHV'),
(14, 'ADSample1.JHV@jiahsin.com.vn', 'ADSample1', 'ADSample1', 'JHV'),
(15, 'ADSample2.JHV@jiahsin.com.vn', 'ADSample2', 'ADSample2', 'JHV'),
(16, 'Ai.Nguyen@jiahsin.com.vn', 'Ai Nguyen', 'Ai Nguyen', 'JHV'),
(17, 'Alice.Liu@jiahsin.com.vn', 'Alice Liu (QIP2)', 'Alice Liu (QIP2)', 'JHV'),
(18, 'Allen.Tung@jiahsin.com.vn', 'Allen Tung', 'Allen Tung', 'JHV'),
(19, 'An.Pham@jiahsin.com.vn', 'An Pham', 'An Pham', 'JHV'),
(20, 'An.Tran@jiahsin.com.vn', 'An Tran', 'An Tran', 'JHV'),
(21, 'anh.nguyen@jiahsin.com.vn', 'anh nguyen (CR)', 'anh nguyen (CR)', 'JHV'),
(22, 'Assistant.JHV@jiahsin.com.vn', 'Assistant', 'Assistant', 'JHV'),
(23, 'Tien.Bach@jiahsin.com.vn', 'Bach Tien (QIP2)', 'Bach Tien (QIP2)', 'JHV'),
(24, 'Sang.Bach@jiahsin.com.vn', 'Bach Sang (Administration)', 'Bach Sang (Administration)', 'JHV'),
(25, 'Khon.Banh@jiahsin.com.vn', 'Banh Khon (VR)', 'Banh Khon (VR)', 'JHV'),
(26, 'baove.dung@jiahsin.com.vn', 'baove dung', 'baove dung', 'JHV'),
(27, 'Bich.Phan@jiahsin.com.vn', 'Bich Phan', 'Bich Phan', 'JHV'),
(28, 'BichTuyen.Tran@jiahsin.com.vn', 'BichTuyen Tran', 'BichTuyen Tran', 'JHV'),
(29, 'Bobson.Shih@jiahsin.com.vn', 'Bobson shih (ME)', 'Bobson shih (ME)', 'JHV'),
(30, 'An.Bui@jiahsin.com.vn', 'Bui An (Tech)', 'Bui An (Tech)', 'JHV'),
(31, 'QuangLan.Bui@jiahsin.com.vn', 'Bui Quang Lan (ME)', 'Bui Quang Lan (ME)', 'JHV'),
(32, 'Thao.Bui@jiahsin.com.vn', 'Bui Thao(Business)', 'Bui Thao(Business)', 'JHV'),
(33, 'Thi.Bui@jiahsin.com.vn', 'Bui Thi (Purchase Sample)', 'Bui Thi (Purchase Sample)', 'JHV'),
(34, 'Tuyen.Bui@jiahsin.com.vn', 'Bui Tuyen (Planning)', 'Bui Tuyen (Planning)', 'JHV'),
(35, 'Van.Bui@jiahsin.com.vn', 'Bui Van (HR)', 'Bui Van (HR)', 'JHV'),
(36, 'Dieuphoi.Xuan@jiahsin.com.vn', 'Bui Xuan (Planning)', 'Bui Xuan (Planning)', 'JHV'),
(37, 'Business.JHV@jiahsin.com.vn', 'Business', 'Business', 'JHV'),
(38, 'Kayla.C@jiahsin.com.vn', 'C Kayla (Costing)', 'C Kayla (Costing)', 'JHV'),
(39, 'Giao.Cao@jiahsin.com.vn', 'Cao Giao (Pusrchase)', 'Cao Giao (Pusrchase)', 'JHV'),
(40, 'Mai.Cao@jiahsin.com.vn', 'Cao Mai (Planning)', 'Cao Mai (Planning)', 'JHV'),
(41, 'PhuongThuy.Cao@jiahsin.com.vn', 'Cao Phuong Thuh (Qip3)', 'Cao Phuong Thuh (Qip3)', 'JHV'),
(42, 'catlieuAB.jhv@jiahsin.com.vn', 'catlieuAB', 'catlieuAB', 'JHV'),
(43, 'Steven.Chang@jiahsin.com.vn', 'Chang Steven (IT)', 'Chang Steven (IT)', 'JHV'),
(44, 'Huyen.Chau@jiahsin.com.vn', 'Chau Huyen (QIP2)', 'Chau Huyen (QIP2)', 'JHV'),
(45, 'Chau.Nguyen@jiahsin.com.vn', 'Chau Nguyen', 'Chau Nguyen', 'JHV'),
(46, 'Chau.Thiem@jiahsin.com.vn', 'Chau Thiem', 'Chau Thiem', 'JHV'),
(47, 'iris.Chen@jiahsin.com.vn', 'Chen Iris (Business)', 'Chen Iris (Business)', 'JHV'),
(48, 'Nick.Chen@jiahsin.com.vn', 'Chen Nick (R&D AD)', 'Chen Nick (R&D AD)', 'JHV'),
(49, 'Tina.Chen@jiahsin.com.vn', 'Chen Tina (HR)', 'Chen Tina (HR)', 'JHV'),
(50, 'Cherry.Liu@jiahsin.com.vn', 'Cherry Liu', 'Cherry Liu', 'JHV'),
(51, 'Chetao.Chuc@jiahsin.com.vn', 'Che tao Chuc', 'Che tao Chuc', 'JHV'),
(52, 'Chetao.Huong@jiahsin.com.vn', 'Che tao Huong', 'Che tao Huong', 'JHV'),
(53, 'Chetao.Khanh@jiahsin.com.vn', 'Che tao Khanh', 'Che tao Khanh', 'JHV'),
(54, 'Chetao.Sang@jiahsin.com.vn', 'Che tao Sang', 'Che tao Sang', 'JHV'),
(55, 'Chetao.Thai@jiahsin.com.vn', 'Che tao Thai', 'Che tao Thai', 'JHV'),
(56, 'chi.ta@jiahsin.com.vn', 'Chi', 'Chi', 'JHV'),
(57, 'Chi.Duong@jiahsin.com.vn', 'Chi Duong', 'Chi Duong', 'JHV'),
(58, 'Chi.Le@jiahsin.com.vn', 'Chi Le', 'Chi Le', 'JHV'),
(59, 'Max.Chiang@jiahsin.com.vn', 'Chiang Max (Assistant GM)', 'Chiang Max (Assistant GM)', 'JHV'),
(60, 'Chien.Pham@jiahsin.com.vn', 'Chien Pham', 'Chien Pham', 'JHV'),
(61, 'Olivia.Chiu@jiahsin.com.vn', 'Chiu Olivia (Business)', 'Chiu Olivia (Business)', 'JHV'),
(62, 'Tommy.Chiu@jiahsin.com.vn', 'Chiu Tommy (AB R&D)', 'Chiu Tommy (AB R&D)', 'JHV'),
(63, 'ChucPhuong.Huynh@jiahsin.com.vn', 'Chuc Phuong Huynh', 'ChucPhuong Huynh', 'JHV'),
(64, 'Codien.Hung@jiahsin.com.vn', 'Codien Hung', 'Co dien Hung', 'JHV'),
(65, 'Congdoan.Ha@jiahsin.com.vn', 'Cong doan Ha', 'Cong doan Ha', 'JHV'),
(66, 'Costing.JHV@jiahsin.com.vn', 'Costing', 'Costing', 'JHV'),
(67, 'CR.JHV@jiahsin.com.vn', 'CR', 'CR', 'JHV'),
(68, 'Cuc.Thach@jiahsin.com.vn', 'Cuc Thach', 'Cuc Thach', 'JHV'),
(69, 'Cuong.Nguyen@jiahsin.com.vn', 'Cuong Nguyen', 'Cuong Nguyen', 'JHV'),
(70, 'Cuong.Pham@jiahsin.com.vn', 'Cuong Pham', 'Cuong Pham', 'JHV'),
(71, 'Chat.Dang@jiahsin.com.vn', 'Dang Chat (Administration)', 'Dang Chat (Administration)', 'JHV'),
(72, 'Hoa.Dang@jiahsin.com.vn', 'Dang Hoa (QIP2)', 'Dang Hoa (QIP2)', 'JHV'),
(73, 'Linh.Dang@jiahsin.com.vn', 'Dang Linh (QIP1)', 'Dang Linh (QIP1)', 'JHV'),
(74, 'KhoVatLieu.Vy@jiahsin.com.vn', 'Dang Vy (Materials WH)', 'Dang Vy (Materials WH)', 'JHV'),
(75, 'Hang.Dao@jiahsin.com.vn', 'Dao Hang (R&D AD)', 'Dao Hang (R&D AD)', 'JHV'),
(76, 'HuynhMai.Dao@jiahsin.com.vn', 'Dao Mai (Planning)', 'Dao Mai (Planning)', 'JHV'),
(77, 'Nham.Dao@jiahsin.com.vn', 'Dao Nham (Business)', 'Dao Nham (Business)', 'JHV'),
(78, 'Van.Dao@jiahsin.com.vn', 'Dao Van (EFac)', 'Dao Van (EFac)', 'JHV'),
(79, 'dao.dang@jiahsin.com.vn', 'dao dang', 'dao dang', 'JHV'),
(80, 'Daotao.Hai@jiahsin.com.vn', 'Daotao Hai', 'Daotao Hai', 'JHV'),
(81, 'Daotao.Hao@jiahsin.com.vn', 'Daotao Hao', 'Daotao Hao', 'JHV'),
(82, 'Daotao.Hien@jiahsin.com.vn', 'Daotao Hien', 'Daotao Hien', 'JHV'),
(83, 'Daotao.Linh@jiahsin.com.vn', 'Daotao Linh', 'Daotao Linh', 'JHV'),
(84, 'Daotao.Trinh@jiahsin.com.vn', 'Daotao Trinh', 'Daotao Trinh', 'JHV'),
(85, 'David.Lin@jiahsin.com.vn', 'David Lin', 'David Lin', 'JHV'),
(86, 'Development01@jiahsin.com.vn', 'Development', 'Development', 'JHV'),
(87, 'Diem.Trinh@jiahsin.com.vn', 'Diem Trinh', 'Diem Trinh', 'JHV'),
(88, 'Diem.Van@jiahsin.com.vn', 'Diem Van', 'Diem Van', 'JHV'),
(89, 'Diep.Do@jiahsin.com.vn', 'Diep Do', 'Diep Do', 'JHV'),
(90, 'Diep.Le@jiahsin.com.vn', 'Diep Le', 'Diep Le', 'JHV'),
(91, 'Diep.Nguyen@jiahsin.com.vn', 'Diep Nguyen', 'Diep Nguyen', 'JHV'),
(92, 'Diep.Phan@jiahsin.com.vn', 'Diep Phan', 'Diep Phan', 'JHV'),
(93, 'Dieuphoi.Hai@jiahsin.com.vn', 'Dieu phoi Hai', 'Dieu phoi Hai', 'JHV'),
(94, 'Dieuphoi.JHV@jiahsin.com.vn', 'Dieuphoi', 'Dieuphoi', 'JHV'),
(95, 'DieuPhoi.Linh@jiahsin.com.vn', 'Dieu phoi Linh', 'Dieu phoi Linh', 'JHV'),
(96, 'DieuPhoi.Ly@jiahsin.com.vn', 'Dieu phoi Ly', 'Dieu phoi Ly', 'JHV'),
(97, 'DieuPhoi.Nga@jiahsin.com.vn', 'Dieu phoi Nga', 'Dieu phoi Nga', 'JHV'),
(98, 'DieuPhoi.NgocMai@jiahsin.com.vn', 'Dieu phoi NgocMai', 'Dieu phoi NgocMai', 'JHV'),
(99, 'Dieuphoi.NhuMai@jiahsin.com.vn', 'Dieu phoi NhuMai', 'Dieu phoi NhuMai', 'JHV'),
(100, 'Dieuphoi.Sang@jiahsin.com.vn', 'Dieu phoi Sang', 'Dieu phoi Sang', 'JHV'),
(101, 'DieuPhoi.Tho@jiahsin.com.vn', 'Dieu phoi Tho', 'Dieu phoi Tho', 'JHV'),
(102, 'DieuPhoi.Tran@jiahsin.com.vn', 'Dieu phoi Tran', 'Dieu phoi Tran', 'JHV'),
(103, 'Dieuphoi.Trang@jiahsin.com.vn', 'Dieu phoi Trang', 'Dieu phoi Trang', 'JHV'),
(104, 'Dieuphoi.TrucMai@jiahsin.com.vn', 'Dieu phoi TrucMai', 'Dieu phoi TrucMai', 'JHV'),
(105, 'Dieuphoi.Tuyen@jiahsin.com.vn', 'Dieu phoi Tuyen', 'Dieu phoi Tuyen', 'JHV'),
(106, 'DieuThuy.Nguyen@jiahsin.com.vn', 'DieuThuy Nguyen', 'DieuThuy Nguyen', 'JHV'),
(107, 'Thuong.Dinh@jiahsin.com.vn', 'Dinh Thuong (HR)', 'Dinh Thuong (HR)', 'JHV'),
(108, 'Tuan.Dinh@jiahsin.com.vn', 'Dinh Tuan (Shipping)', 'Dinh Tuan (Shipping)', 'JHV'),
(109, 'DieuPhoi.MyLinh@jiahsin.com.vn', 'Do Linh (Planning)', 'Do Linh (Planning)', 'JHV'),
(110, 'Phuong.Do@jiahsin.com.vn', 'Do Phuong (Purchase)', 'Do Phuong (Purchase)', 'JHV'),
(111, 'Thuy.Do@jiahsin.com.vn', 'Do Thuy (Costing)', 'Do Thuy (Costing)', 'JHV'),
(112, 'Tran.Do@jiahsin.com.vn', 'Do Tran (Business)', 'Do Tran (Business)', 'JHV'),
(113, 'Chi.Doan@jiahsin.com.vn', 'Doan Chi (QIP AD)', 'Doan Chi (QIP AD)', 'JHV'),
(114, 'Thuy.Doan@jiahsin.com.vn', 'Doan Thuy (Puchase)', 'Doan Thuy (Puchase)', 'JHV'),
(115, 'DucAnh.Nguyen@jiahsin.com.vn', 'DucAnh Nguyen', 'DucAnh Nguyen', 'JHV'),
(116, 'Dung.Duong@jiahsin.com.vn', 'Dung Duong', 'Dung Duong', 'JHV'),
(117, 'Dung.Nguyen@jiahsin.com.vn', 'Dung Nguyen', 'Dung Nguyen', 'JHV'),
(118, 'dung.tran@jiahsin.com.vn', 'dung tran', 'dung tran', 'JHV'),
(119, 'Dung.Van@jiahsin.com.vn', 'Dung Van', 'Dung Van', 'JHV'),
(120, 'NgocDung.Duong@jiahsin.com.vn', 'Duong Dung (CR)', 'Duong Dung (CR)', 'JHV'),
(121, 'Nguyen.Duong@jiahsin.com.vn', 'Duong Nguyen ( R&D AD)', 'Duong Nguyen ( R&D AD)', 'JHV'),
(122, 'Thuy.Duong@jiahsin.com.vn', 'Duong Thuy (COSTING)', 'Duong Thuy (COSTING)', 'JHV'),
(123, 'Duong.Trinh@jiahsin.com.vn', 'Duong Trinh', 'Duong Trinh', 'JHV'),
(124, 'Duyen.Luu@jiahsin.com.vn', 'Duyen Luu', 'Duyen Luu', 'JHV'),
(125, 'Ronald.Espino@jiahsin.com.vn', 'E Ronald (Supervisior)', 'E Ronald (Supervisior)', 'JHV'),
(126, 'David.Fang@jiahsin.com.vn', 'Fang Yuan (Administration)', 'Fang Yuan (Administration)', 'JHV'),
(127, 'Fang.Liang@jiahsin.com.vn', 'Fang Liang', 'Fang Liang', 'JHV'),
(128, 'Flowmessage@jiahsin.com.vn', 'Flowmessage', 'Flowmessage', 'JHV'),
(129, 'Frank.Lee@jiahsin.com.vn', 'Frank Lee (BUSINESS)', 'Frank Lee (BUSINESS)', 'JHV'),
(130, 'Gam.Nguyen@jiahsin.com.vn', 'Gam Nguyen', 'Gam Nguyen', 'JHV'),
(131, 'Gia.Truong@jiahsin.com.vn', 'Gia Truong', 'Gia Truong', 'JHV'),
(132, 'GiaCong@jiahsin.com.vn', 'GiaCong', 'GiaCong', 'JHV'),
(133, 'Giacong.Huyen@jiahsin.com.vn', 'Giacong Huyen', 'Giacong Huyen', 'JHV'),
(134, 'GiaCong.JHV@jiahsin.com.vn', 'GiaCong', 'GiaCong', 'JHV'),
(135, 'Giacong.Linh@jiahsin.com.vn', 'Giacong Linh', 'Giacong Linh', 'JHV'),
(136, 'Giacong.Loan@jiahsin.com.vn', 'Giacong Loan', 'Giacong Loan', 'JHV'),
(137, 'giacong.thuy@jiahsin.com.vn', 'giacong thuy', 'giacong thuy', 'JHV'),
(138, 'ToGiang.Huynh@jiahsin.com.vn', 'Giang Huynh (Tech)', 'Giang Huynh (Tech)', 'JHV'),
(139, 'Truc.Ha@jiahsin.com.vn', 'Ha Truc (Shipping)', 'Ha Truc (Shipping)', 'JHV'),
(140, 'Ha.Bui@jiahsin.com.vn', 'Ha Bui', 'Ha Bui', 'JHV'),
(141, 'Ha.Nguyen@jiahsin.com.vn', 'Ha Nguyen', 'Ha Nguyen', 'JHV'),
(142, 'Ha.Tong@jiahsin.com.vn', 'Ha Tong', 'Ha Tong', 'JHV'),
(143, 'Hai.Ngo@jiahsin.com.vn', 'Hai Ngo', 'Hai Ngo', 'JHV'),
(144, 'Hai.Tran@jiahsin.com.vn', 'Hai Tran', 'Hai Tran', 'JHV'),
(145, 'Hang.Ngo@jiahsin.com.vn', 'Hang Ngo', 'Hang Ngo', 'JHV'),
(146, 'Hang.Truong@jiahsin.com.vn', 'Hang Truong', 'Hang Truong', 'JHV'),
(147, 'Hanh.Dang@jiahsin.com.vn', 'Hanh Dang', 'Hanh Dang', 'JHV'),
(148, 'Hanh.Nguyen@jiahsin.com.vn', 'Hanh Nguyen', 'Hanh Nguyen', 'JHV'),
(149, 'Hanhchanh.JHV@jiahsin.com.vn', 'Hanhchanh', 'Hanhchanh', 'JHV'),
(150, 'HaPhuong.Bui@jiahsin.com.vn', 'HaPhuong Bui', 'HaPhuong Bui', 'JHV'),
(151, 'Jianhua.He@jiahsin.com.vn', 'He Jianhua (Planning)', 'He Jianhua (Planning)', 'JHV'),
(152, 'Hien.Dang@jiahsin.com.vn', 'Hien Dang', 'Hien Dang', 'JHV'),
(153, 'Hieu.To@jiahsin.com.vn', 'Hieu To', 'Hieu To', 'JHV'),
(154, 'Hieu.Tran@jiahsin.com.vn', 'Hieu Tran', 'Hieu Tran', 'JHV'),
(155, 'Dung.Ho@jiahsin.com.vn', 'Ho Dung (Purchase)', 'Ho Dung (Purchase)', 'JHV'),
(156, 'Mo.Ho@jiahsin.com.vn', 'Ho Mo (Planning)', 'Ho Mo (Planning)', 'JHV'),
(157, 'Hoa.Bui@jiahsin.com.vn', 'Hoa Bui', 'Hoa Bui', 'JHV'),
(158, 'Hoa.Mai@jiahsin.com.vn', 'Hoa Mai', 'Hoa Mai', 'JHV'),
(159, 'Ha.Hoang@jiahsin.com.vn', 'Hoang Ha (GA)', 'Hoang Ha (GA)', 'JHV'),
(160, 'Mai.Hoang@jiahsin.com.vn', 'Hoang Mai (Shipping)', 'Hoang Mai (Shipping)', 'JHV'),
(161, 'Hong.Bui@jiahsin.com.vn', 'Hong Bui', 'Hong Bui', 'JHV'),
(162, 'Hong.Dao@jiahsin.com.vn', 'Hong Dao', 'Hong Dao', 'JHV'),
(163, 'Hong.Nguyen@jiahsin.com.vn', 'Hong Nguyen', 'Hong Nguyen', 'JHV'),
(164, 'Hong.Tran@jiahsin.com.vn', 'Hong Tran', 'Hong Tran', 'JHV'),
(165, 'HR.JHV@jiahsin.com.vn', 'HR', 'HR', 'JHV'),
(166, 'HR01.JHV@jiahsin.com.vn', 'HR01', 'HR01', 'JHV'),
(167, 'Justin.Hsu@jiahsin.com.vn', 'Hsu Justin (CR)', 'Hsu Justin (CR)', 'JHV'),
(168, 'Sloan.Hsu@jiahsin.com.vn', 'Hsu Sloan (Assastant of GM)', 'Hsu Sloan (Assastant of GM)', 'JHV'),
(169, 'Huang.Hui@jiahsin.com.vn', 'Huang Hui (EVA)', 'Huang Hui (EVA)', 'JHV'),
(170, 'Huiging.Huang@jiahsin.com.vn', 'Huang Huiging (R&D AB)', 'Huang Huiging (R&D AB)', 'JHV'),
(171, 'Huiying.Huang@jiahsin.com.vn', 'Huang Huiying (R$D AB)', 'Huang Huiying (R$D AB)', 'JHV'),
(172, 'Jerry.Huang@jiahsin.com.vn', 'Huang Jerry (Senior Manager)', 'Huang Jerry (Senior Manager)', 'JHV'),
(173, 'Shirley.Huang@jiahsin.com.vn', 'Huang Shirley (HR)', 'Huang Shirley (HR)', 'JHV'),
(174, 'Sunny.Huang@jiahsin.com.vn', 'Huang Sunny (Planning)', 'Huang Sunny (Planning)', 'JHV'),
(175, 'Hue.Bach@jiahsin.com.vn', 'Hue Bach', 'Hue Bach', 'JHV'),
(176, 'Hue.Le@jiahsin.com.vn', 'Hue Le', 'Hue Le', 'JHV'),
(177, 'Hung.Huynh@jiahsin.com.vn', 'Hung Huynh', 'Hung Huynh', 'JHV'),
(178, 'Huong.Do@jiahsin.com.vn', 'Huong Do', 'Huong Do', 'JHV'),
(179, 'Huong.Nguyen@jiahsin.com.vn', 'Huong Nguyen', 'Huong Nguyen', 'JHV'),
(180, 'Huong.Pham@jiahsin.com.vn', 'Huong Pham', 'Huong Pham', 'JHV'),
(181, 'Huong.Phan@jiahsin.com.vn', 'Huong Phan', 'Huong Phan', 'JHV'),
(182, 'Huong.Tran@jiahsin.com.vn', 'Huong Tran', 'Huong Tran', 'JHV'),
(183, 'Huyen.Vo@jiahsin.com.vn', 'Huyen Vo', 'Huyen Vo', 'JHV'),
(184, 'huyenchau.nguyen@jiahsin.com.vn', 'huyen chau nguyen', 'huyen chau nguyen', 'JHV'),
(185, 'Dao.Huynh@jiahsin.com.vn', 'Huynh Dao(Planning)', 'Huynh Dao(Planning)', 'JHV'),
(186, 'DiemPhuong.Huynh@jiahsin.com.vn', 'Huynh Diem Phuong (R&D AB)', 'Huynh Diem Phuong (R&D AB)', 'JHV'),
(187, 'Giang.Huynh@jiahsin.com.vn', 'Huynh Giang (AB R&D)', 'Huynh Giang (AB R&D)', 'JHV'),
(188, 'Hang.Huynh@jiahsin.com.vn', 'Huynh Hang (Shipping)', 'Huynh Hang (Shipping)', 'JHV'),
(189, 'Lua.Huynh@jiahsin.com.vn', 'Huynh Lua (Planning)', 'Huynh Lua (Planning)', 'JHV'),
(190, 'HongNga.Huynh@jiahsin.com.vn', 'Huynh Nga (CR)', 'Huynh Nga (CR)', 'JHV'),
(191, 'Nga.Huynh@jiahsin.com.vn', 'Huynh Nga (QIP AD)', 'Huynh Nga (QIP AD)', 'JHV'),
(192, 'Ngoc.Huynh@jiahsin.com.vn', 'Huynh Ngoc (Shipping)', 'Huynh Ngoc (Shipping)', 'JHV'),
(193, 'Nhu.Huynh@jiahsin.com.vn', 'Huynh Nhu (Planning)', 'Huynh Nhu (Planning)', 'JHV'),
(194, 'Oanh.Huynh@jiahsin.com.vn', 'Huynh Oanh (QIP AD)', 'Huynh Oanh (QIP AD)', 'JHV'),
(195, 'ThanhPhuong.Huynh@jiahsin.com.vn', 'Huynh Phuong (Shipping)', 'Huynh Phuong (Shipping)', 'JHV'),
(196, 'Phuong.Huynh@jiahsin.com.vn', 'Huynh Phuong (Purchase)', 'Huynh Phuong (Purchase)', 'JHV'),
(197, 'ThuNga.Huynh@jiahsin.com.vn', 'Huynh Thu Nga (CR)', 'Huynh Thu Nga (CR)', 'JHV'),
(198, 'Thuong.Huynh@jiahsin.com.vn', 'huynh Thuong (Planing)', 'huynh Thuong (Planing)', 'JHV'),
(199, 'Tra.Huynh@jiahsin.com.vn', 'Huynh Tra (Shipping)', 'Huynh Tra (Shipping)', 'JHV'),
(200, 'Trinh.Huynh@jiahsin.com.vn', 'Huynh Trinh (Tech)', 'Huynh Trinh (Tech)', 'JHV'),
(201, 'Tung.Huynh@jiahsin.com.vn', 'Huynh Tung (Factory AD)', 'Huynh Tung (Factory AD)', 'JHV'),
(202, 'Xuan.Huynh@jiahsin.com.vn', 'Huynh Xuan (PKH 01)', 'Huynh Xuan (PKH 01)', 'JHV'),
(203, 'KimPhuong.Huynh@jiahsin.com.vn', 'Huynh Kim Phuong (Business)', 'Huynh Kim Phuong (Business)', 'JHV'),
(204, 'iris.yang@jiahsin.com.vn', 'iris yang', 'iris yang', 'JHV'),
(205, 'it.dept@jiahsin.com.vn', 'IT dept', 'IT dept', 'JHV'),
(206, 'Wayne.J@jiahsin.com.vn', 'J Wayne (QIP1)', 'J Wayne (QIP1)', 'JHV'),
(207, 'Jacky.Huang@jiahsin.com.vn', 'Jacky Huang', 'Jacky Huang', 'JHV'),
(208, 'Scanfiles.JHV@jiahsin.com.vn', 'JHV Scanfiles', 'JHV Scanfiles', 'JHV'),
(209, 'Jian.Zhang@jiahsin.com.vn', 'Jian Zhang', 'Jian Zhang', 'JHV'),
(210, 'Jingxia.Ding@jiahsin.com.vn', 'Jingxia Ding (AD R&D)', 'Jingxia Ding (AD R&D)', 'JHV'),
(211, 'Jim.Kao@jiahsin.com.vn', 'Kao Jim (Assistant)', 'Kao Jim (Assistant)', 'JHV'),
(212, 'kate.long@jiahsin.com.vn', 'kate long', 'kate long', 'JHV'),
(213, 'Keolua.Ha@jiahsin.com.vn', 'Keolua Ha', 'Keolua Ha', 'JHV'),
(214, 'Keolua.Manh@jiahsin.com.vn', 'Keolua Manh', 'Keolua Manh', 'JHV'),
(215, 'keolua.Nuong@jiahsin.com.vn', 'keolua Nuong', 'keolua Nuong', 'JHV'),
(216, 'Keolua.Thuy@jiahsin.com.vn', 'Keolua Thuy', 'Keolua Thuy', 'JHV'),
(217, 'Keolua.Tien@jiahsin.com.vn', 'Keolua Tien', 'Keolua Tien', 'JHV'),
(218, 'Kevin.Chou@jiahsin.com.vn', 'Kevin Chou (GM)', 'Kevin Chou (GM)', 'JHV'),
(219, 'Kha.Le@jiahsin.com.vn', 'Kha Le', 'Kha Le', 'JHV'),
(220, 'Khanh.Phan@jiahsin.com.vn', 'Khanh Phan', 'Khanh Phan', 'JHV'),
(221, 'Khiet.Cao@jiahsin.com.vn', 'Khiet Cao', 'Khiet Cao', 'JHV'),
(222, 'KhoThanhPham.Toan@jiahsin.com.vn', 'Kho Thanh Pham Toan', 'Kho Thanh Pham Toan', 'JHV'),
(223, 'Khovatlieu.BichPhuong@jiahsin.com.vn', 'Kho vat lieu Bich Phuong', 'Kho vat lieu Bich Phuong', 'JHV'),
(224, 'Khovatlieu.Hoa@jiahsin.com.vn', 'Kho vat lieu Hoa', 'Kho vat lieu Hoa', 'JHV'),
(225, 'Khovatlieu.KieuTrang@jiahsin.com.vn', 'Kho vat lieu Kieu Trang', 'Kho vat lieu Kieu Trang', 'JHV'),
(226, 'Khovatlieu.Phong@jiahsin.com.vn', 'Kho vat lieu Phong', 'Kho vat lieu Phong', 'JHV'),
(227, 'Khovatlieu.Tham@jiahsin.com.vn', 'Kho vat lieu Tham', 'Kho vat lieu Tham', 'JHV'),
(228, 'khovatlieu.thu@jiahsin.com.vn', 'Kho vat lieu thu', 'Kho vat lieu thu', 'JHV'),
(229, 'Khovatlieu.Tran@jiahsin.com.vn', 'Kho vat lieu Tran', 'Kho vat lieu Tran', 'JHV'),
(230, 'Khovatlieu.Trang@jiahsin.com.vn', 'Kho vat lieu Trang', 'Kho vat lieu Trang', 'JHV'),
(231, 'Hai.Khuu@jiahsin.com.vn', 'Khuu Hai (EVA)', 'Khuu Hai (EVA)', 'JHV'),
(232, 'Kiemcongno.JHV@jiahsin.com.vn', 'Kiem cong no', 'Kiem cong no', 'JHV'),
(233, 'Kiemhang.AD@jiahsin.com.vn', 'Kiem hang AD', 'Kiem hang AD', 'JHV'),
(234, 'Phuong.Kieu@jiahsin.com.vn', 'Kieu Phuong (QIP3)', 'Kieu Phuong (QIP3)', 'JHV'),
(235, 'KieuDiep.Nguyen@jiahsin.com.vn', 'Kieu Diep Nguyen', 'Kieu Diep Nguyen', 'JHV'),
(236, 'Kim.Ho@jiahsin.com.vn', 'Kim Ho', 'Kim Ho', 'JHV'),
(237, 'kimthuy.do@jiahsin.com.vn', 'kimthuy do', 'kimthuy do', 'JHV'),
(238, 'Lab.Hanh@jiahsin.com.vn', 'Lab Hanh', 'Lab Hanh', 'JHV'),
(239, 'LAB.JHV@jiahsin.com.vn', 'LAB', 'LAB', 'JHV'),
(240, 'Lab.Thuy@jiahsin.com.vn', 'Lab Thuy', 'Lab Thuy', 'JHV'),
(241, 'Lab.Tuyen@jiahsin.com.vn', 'Lab Tuyen', 'Lab Tuyen', 'JHV'),
(242, 'Lab.Vinh@jiahsin.com.vn', 'Lab Vinh', 'Lab Vinh', 'JHV'),
(243, 'LABJHV@jiahsin.com.vn', 'LAB', 'LAB', 'JHV'),
(244, 'LABJHV02@jiahsin.com.vn', 'LAB02', 'LAB02', 'JHV'),
(245, 'Lab.luz@jiahsin.com.vn', 'Labluz', 'Labluz', 'JHV'),
(246, 'Ngoc.Lai@jiahsin.com.vn', 'Lai Ngoc (Project)', 'Lai Ngoc (Project)', 'JHV'),
(247, 'An.Lam@jiahsin.com.vn', 'Lam An (ME)', 'Lam An (ME)', 'JHV'),
(248, 'Binh.Lam@jiahsin.com.vn', 'Lam Binh (HR)', 'Lam Binh (HR)', 'JHV'),
(249, 'Linh.Lam@jiahsin.com.vn', 'Lam Linh (EVA)', 'Lam Linh (EVA)', 'JHV'),
(250, 'Thy.lam@jiahsin.com.vn', 'Lam Thuy (Planning)', 'Lam Thuy (Planning)', 'JHV'),
(251, 'Lan.Nguyen@jiahsin.com.vn', 'Lan Nguyen', 'Lan Nguyen', 'JHV'),
(252, 'lan.pham@jiahsin.com.vn', 'lan pham', 'lan pham', 'JHV'),
(253, 'Lan.Phan@jiahsin.com.vn', 'Lan Phan', 'Lan Phan', 'JHV'),
(254, 'Landi.Tsai@jiahsin.com.vn', 'Landi Tsai', 'Landi Tsai', 'JHV'),
(255, 'LanPhuong.Nguyen@jiahsin.com.vn', 'Lan Phuong Nguyen', 'Lan Phuong Nguyen', 'JHV'),
(256, 'BinhPhuong.Le@jiahsin.com.vn', 'Le Binh Phuong (R&D AD)', 'Le Binh Phuong (R&D AD)', 'JHV'),
(257, 'DiemHuong.Le@jiahsin.com.vn', 'Le Diem Huong (Tech)', 'Le Diem Huong (Tech)', 'JHV'),
(258, 'Diem.Le@jiahsin.com.vn', 'Le Diem (Business)', 'Le Diem (Business)', 'JHV'),
(259, 'Duy.Le@jiahsin.com.vn', 'Le Duy (IT)', 'Le Duy (IT)', 'JHV'),
(260, 'Hang.Le@jiahsin.com.vn', 'Le Hang (Planning)', 'Le Hang (Planning)', 'JHV'),
(261, 'Hanh.Le@jiahsin.com.vn', 'Le Hanh (Cting)', 'Le Hanh (Cting)', 'JHV'),
(262, 'Hau.Le@jiahsin.com.vn', 'Le Hau (R&D AD)', 'Le Hau (R&D AD)', 'JHV'),
(263, 'Hoa.Le@jiahsin.com.vn', 'Le Hoa (Planning)', 'Le Hoa (Planning)', 'JHV'),
(264, 'KieuLan.Le@jiahsin.com.vn', 'Le Kieu Lan (Planning)', 'Le Kieu Lan (Planning)', 'JHV'),
(265, 'Lan.Le@jiahsin.com.vn', 'Le Lan (Planning)', 'Le Lan (Planning)', 'JHV'),
(266, 'Lien.Le@jiahsin.com.vn', 'Le Lien (Planning)', 'Le Lien (Planning)', 'JHV'),
(267, 'Linh.Le@jiahsin.com.vn', 'Le Linh (Warehouse)', 'Le Linh (Warehouse)', 'JHV'),
(268, 'Loc.Le@jiahsin.com.vn', 'Le Loc (PatternAD)', 'Le Loc (PatternAD)', 'JHV'),
(269, 'CheTao.Minh@jiahsin.com.vn', 'Le Minh', 'Le Minh', 'JHV'),
(270, 'Anh.Le@jiahsin.com.vn', 'Le Ngoc Anh (R&DAB)', 'Le Ngoc Anh (R&DAB)', 'JHV'),
(271, 'Nhan.Le@jiahsin.com.vn', 'Le Nhan (Shipping)', 'Le Nhan (Shipping)', 'JHV'),
(272, 'Nhi.Le@jiahsin.com.vn', 'Le Nhi (Business)', 'Le Nhi (Business)', 'JHV'),
(273, 'Phi.Le@jiahsin.com.vn', 'Le Phi (Planning)', 'Le Phi (Planning)', 'JHV'),
(274, 'Son.Le@jiahsin.com.vn', 'Le Son (CR)', 'Le Son (CR)', 'JHV'),
(275, 'ThuPhuong.Le@jiahsin.com.vn', 'Le Thu Phuong (Planning)', 'Le Thu Phuong (Planning)', 'JHV'),
(276, 'Truc.Le@jiahsin.com.vn', 'Le Truc (Planning)', 'Le Truc (Planning)', 'JHV'),
(277, 'Tuong.Le@jiahsin.com.vn', 'Le Tuong (Costing)', 'Le Tuong (Costing)', 'JHV'),
(278, 'Thao.Le@jiahsin.com.vn', 'Le Thao(Qip2)', 'Le Thao(Qip2)', 'JHV'),
(279, 'Chris.Lee@jiahsin.com.vn', 'Lee Chris (GM)', 'Lee Chris (GM)', 'JHV'),
(280, 'Eric.Leow@jiahsin.com.vn', 'Leow Eric (Business)', 'Leow Eric (Business)', 'JHV'),
(281, 'ZhengZhu.Li@jiahsin.com.vn', 'Li Zheng Zhu (AB Production)', 'Li Zheng Zhu (AB Production)', 'JHV'),
(282, 'Liem.Nguyen@jiahsin.com.vn', 'Liem Nguyen', 'Liem Nguyen', 'JHV'),
(283, 'Lien.Huynh@jiahsin.com.vn', 'Lien Huynh', 'Lien Huynh', 'JHV'),
(284, 'Lien.Nguyen@jiahsin.com.vn', 'Lien Nguyen', 'Lien Nguyen', 'JHV'),
(285, 'Lien.Tran@jiahsin.com.vn', 'Lien Tran', 'Lien Tran', 'JHV'),
(286, 'Lieu.Tran@jiahsin.com.vn', 'Lieu Tran', 'Lieu Tran', 'JHV'),
(287, 'Megan.Lim@jiahsin.com.vn', 'Lim Megan (R&D AD)', 'Lim Megan (R&D AD)', 'JHV'),
(288, 'Arthur.Lin@jiahsin.com.vn', 'Lin Arthur (JHV&SHM AD/GA)', 'Lin Arthur (JHV&SHM AD/GA)', 'JHV'),
(289, 'Linh.Tran@jiahsin.com.vn', 'Linh Tran', 'Linh Tran', 'JHV'),
(290, 'Qinyu.Liu@jiahsin.com.vn', 'Liu Qinyu (EVA)', 'Liu Qinyu (EVA)', 'JHV'),
(291, 'Vicky.Liu@jiahsin.com.vn', 'Liu Vicky (Business)', 'Liu Vicky (Business)', 'JHV'),
(292, 'Liz.Fun@jiahsin.com.vn', 'Liz (Assitant to GM)', 'Liz (Assitant to GM)', 'JHV'),
(293, 'Loan.Pham@jiahsin.com.vn', 'Loan Pham (Purchase)', 'Loan Pham (Purchase)', 'JHV'),
(294, 'Dragon.Long@jiahsin.com.vn', 'Long Dragon (Tooling)', 'Long Dragon (Tooling)', 'JHV'),
(295, 'Vu.Lu@jiahsin.com.vn', 'Lu Vu (Pattern)', 'Lu Vu (Pattern)', 'JHV'),
(296, 'Cindy.Luo@jiahsin.com.vn', 'Luo Cindy (Purchase)', 'Luo Cindy (Purchase)', 'JHV'),
(297, 'Jiang.Luo@jiahsin.com.vn', 'Luo Jiang (AD Production)', 'Luo Jiang (AD Production)', 'JHV'),
(298, 'Anh.Luong@jiahsin.com.vn', 'Luong Anh (AD)', 'Luong Anh (AD)', 'JHV'),
(299, 'Chau.Luong@jiahsin.com.vn', 'Luong Chau (Purchase)', 'Luong Chau (Purchase)', 'JHV'),
(300, 'Phuong.Luong@jiahsin.com.vn', 'Luong Phuong (HR)', 'Luong Phuong (HR)', 'JHV'),
(301, 'Soai.Luu@jiahsin.com.vn', 'Luu Soai (Planning', 'Luu Soai (Planning', 'JHV'),
(302, 'Tuyen.Luu@jiahsin.com.vn', 'Luu Tuyen (Purchase)', 'Luu Tuyen (Purchase)', 'JHV'),
(303, 'Luz.Espino@jiahsin.com.vn', 'Luz Espino', 'Luz Espino', 'JHV'),
(304, 'Khoan.Ly@jiahsin.com.vn', 'Ly Khoan (AD Factory)', 'Ly Khoan (AD Factory)', 'JHV'),
(305, 'Tu.Ly@jiahsin.com.vn', 'Ly Tu (Purchase)', 'Ly Tu (Purchase)', 'JHV'),
(306, 'Ly.Luu@jiahsin.com.vn', 'Ly Luu', 'Ly Luu', 'JHV'),
(307, 'Ly.Truong@jiahsin.com.vn', 'Ly Truong', 'Ly Truong', 'JHV'),
(308, 'Diem.Mac@jiahsin.com.vn', 'Mac Diem (AD R&D)', 'Mac Diem (AD R&D)', 'JHV'),
(309, 'Linh.Mai@jiahsin.com.vn', 'Mai Linh (HR)', 'Mai Linh (HR)', 'JHV'),
(310, 'Mai.Dinh@jiahsin.com.vn', 'Mai Dinh', 'Mai Dinh', 'JHV'),
(311, 'Mai.Lai@jiahsin.com.vn', 'Mai Lai', 'Mai Lai', 'JHV'),
(312, 'Mai.Mach@jiahsin.com.vn', 'Mai Mach', 'Mai Mach', 'JHV'),
(313, 'Mai.Pham@jiahsin.com.vn', 'Mai Pham', 'Mai Pham', 'JHV'),
(314, 'mai.phan@jiahsin.com.vn', 'mai phan', 'mai phan', 'JHV'),
(315, 'Mai.Vo@jiahsin.com.vn', 'Mai Vo', 'Mai Vo', 'JHV'),
(316, 'Cau.Mach@jiahsin.com.vn', 'Manh Cau (NHA AN)', 'Manh Cau (NHA AN)', 'JHV'),
(317, 'ME.JHV@jiahsin.com.vn', 'Me', 'Me', 'JHV'),
(318, 'Men.Ho@jiahsin.com.vn', 'Men Ho', 'Men Ho', 'JHV'),
(319, 'Mi.Pham@jiahsin.com.vn', 'Mi Pham', 'Mi Pham', 'JHV'),
(320, 'Minh.Tran@jiahsin.com.vn', 'Minh Tran', 'Minh Tran', 'JHV'),
(321, 'MyHong.Ly@jiahsin.com.vn', 'MyHong Ly', 'MyHong Ly', 'JHV'),
(322, 'MyHuong.Nguyen@jiahsin.com.vn', 'MyHuong Nguyen', 'MyHuong Nguyen', 'JHV'),
(323, 'Nang.Nguyen@jiahsin.com.vn', 'Nang Nguyen', 'Nang Nguyen', 'JHV'),
(324, 'Nga.Trinh@jiahsin.com.vn', 'Nga Trinh', 'Nga Trinh', 'JHV'),
(325, 'Ngan.Huynh@jiahsin.com.vn', 'Ngan Huynh', 'Ngan Huynh', 'JHV'),
(326, 'Nghia.Bui@jiahsin.com.vn', 'Nghia Bui', 'Nghia Bui', 'JHV'),
(327, 'Nghia.Le@jiahsin.com.vn', 'Nghia Le', 'Nghia Le', 'JHV'),
(328, 'Nghia.Nguyen@jiahsin.com.vn', 'Nghia Nguyen', 'Nghia Nguyen', 'JHV'),
(329, 'BichPhuong.Ngo@jiahsin.com.vn', 'Ngo Bich Phuong (Purchase)', 'Ngo Bich Phuong (Purchase)', 'JHV'),
(330, 'Hien.Ngo@jiahsin.com.vn', 'Ngo Hien (Accounting)', 'Ngo Hien (Accounting)', 'JHV'),
(331, 'Thi.Ngo@jiahsin.com.vn', 'Ngo Le Thi (QIP1)', 'Ngo Le Thi (QIP1)', 'JHV'),
(332, 'Nhung.Ngo@jiahsin.com.vn', 'Ngo Nhung (EVA)', 'Ngo Nhung (EVA)', 'JHV'),
(333, 'Trang.Ngo@jiahsin.com.vn', 'Ngo Trang (QIP AD)', 'Ngo Trang (QIP AD)', 'JHV'),
(334, 'Trong.Ngo@jiahsin.com.vn', 'Ngo Trong (Warehouse)', 'Ngo Trong (Warehouse)', 'JHV'),
(335, 'Ngoc.Bui@jiahsin.com.vn', 'Ngoc Bui', 'Ngoc Bui', 'JHV'),
(336, 'Ngoc.Pham@jiahsin.com.vn', 'Ngoc Pham', 'Ngoc Pham', 'JHV'),
(337, 'Long.Nguyen@jiahsin.com.vn', 'Nguen Long (Purchase Sam)', 'Nguen Long (Purchase Sam)', 'JHV'),
(338, 'ThiXuan.Nguyen@jiahsin.com.vn', 'Nguyen Thi Xuan (R&DAB)', 'Nguyen Thi Xuan (R&DAB)', 'JHV'),
(339, 'An.Nguyen@jiahsin.com.vn', 'Nguyen An ( JHV HR)', 'Nguyen An ( JHV HR)', 'JHV'),
(340, 'CheTao.An@jiahsin.com.vn', 'Nguyen An (EVA)', 'Nguyen An (EVA)', 'JHV'),
(341, 'ThuyAn.Nguyen@jiahsin.com.vn', 'Nguyen An (Puma Developer)', 'Nguyen An (Puma Developer)', 'JHV'),
(342, 'AnhTuyet.Nguyen@jiahsin.com.vn', 'Nguyen Anh Tuyet (Shipping)', 'Nguyen Anh Tuyet (Shipping)', 'JHV'),
(343, 'Bao.Nguyen@jiahsin.com.vn', 'Nguyen Bao(Tech)', 'Nguyen Bao(Tech)', 'JHV'),
(344, 'BichTram.Nguyen@jiahsin.com.vn', 'Nguyen Bich Tram (Planning)', 'Nguyen Bich Tram (Planning)', 'JHV'),
(345, 'BichTuyen.Nguyen@jiahsin.com.vn', 'Nguyen Bich Tuyen', 'Nguyen Bich Tuyen', 'JHV'),
(346, 'CamHuong.Nguyen@jiahsin.com.vn', 'Nguyen Cam Huong (Shipping)', 'Nguyen Cam Huong (Shipping)', 'JHV'),
(347, 'Chuc.Nguyen@jiahsin.com.vn', 'Nguyen Chuc (EVA)', 'Nguyen Chuc (EVA)', 'JHV'),
(348, 'Cong.Nguyen@jiahsin.com.vn', 'Nguyen Cong (ME)', 'Nguyen Cong (ME)', 'JHV'),
(349, 'DieuPhoi.Diem@jiahsin.com.vn', 'Nguyen Diem (Planning)', 'Nguyen Diem (Planning)', 'JHV'),
(350, 'DieuHien.Nguyen@jiahsin.com.vn', 'Nguyen DieuHien (AB R&D)', 'Nguyen DieuHien (AB R&D)', 'JHV'),
(351, 'DucThanh.Nguyen@jiahsin.com.vn', 'Nguyen DucThanh (TECH)', 'Nguyen DucThanh (TECH)', 'JHV'),
(352, 'HoangDung.Nguyen@jiahsin.com.vn', 'Nguyen Dung (Tech)', 'Nguyen Dung (Tech)', 'JHV'),
(353, 'Duong.Nguyen@jiahsin.com.vn', 'Nguyen Duong (Planning)', 'Nguyen Duong (Planning)', 'JHV'),
(354, 'Duy.Nguyen@jiahsin.com.vn', 'Nguyen Duy (R&D AD)', 'Nguyen Duy (R&D AD)', 'JHV'),
(355, 'Giang.Nguyen@jiahsin.com.vn', 'Nguyen Giang (Planning)', 'Nguyen Giang (Planning)', 'JHV'),
(356, 'DieuPhoi.Ha@jiahsin.com.vn', 'Nguyen Ha (Planning)', 'Nguyen Ha (Planning)', 'JHV'),
(357, 'Hang.Nguyen@jiahsin.com.vn', 'Nguyen Hang (Accounting)', 'Nguyen Hang (Accounting)', 'JHV'),
(358, 'Hau.Nguyen@jiahsin.com.vn', 'Nguyen Hau (Costing)', 'Nguyen Hau (Costing)', 'JHV'),
(359, 'Hien.Nguyen@jiahsin.com.vn', 'Nguyen Hien (ME)', 'Nguyen Hien (ME)', 'JHV'),
(360, 'Hoa.Nguyen@jiahsin.com.vn', 'Nguyen Hoa (Admintration)', 'Nguyen Hoa (Admintration)', 'JHV'),
(361, 'HongDuy.Nguyen@jiahsin.com.vn', 'Nguyen Hong Duh (Admin)', 'Nguyen Hong Duh (Admin)', 'JHV'),
(362, 'HongNga.Nguyen@jiahsin.com.vn', 'Nguyen Hong Nga (Plan)', 'Nguyen Hong Nga (Plan)', 'JHV'),
(363, 'HongPhuc.Nguyen@jiahsin.com.vn', 'Nguyen Hong Phuc (ME)', 'Nguyen Hong Phuc (ME)', 'JHV'),
(364, 'Hung.Nguyen@jiahsin.com.vn', 'Nguyen Hung (QIP2)', 'Nguyen Hung (QIP2)', 'JHV'),
(365, 'Huy.Nguyen@jiahsin.com.vn', 'Nguyen Huy (R&DAD)', 'Nguyen Huy (R&DAD)', 'JHV'),
(366, 'Huyen.Nguyen@jiahsin.com.vn', 'Nguyen Huyen (HR)', 'Nguyen Huyen (HR)', 'JHV'),
(367, 'Khuong.Nguyen@jiahsin.com.vn', 'Nguyen Khuong (Business)', 'Nguyen Khuong (Business)', 'JHV'),
(368, 'KimHoa.Nguyen@jiahsin.com.vn', 'Nguyen Kim Hoa (Tooling)', 'Nguyen Kim Hoa (Tooling)', 'JHV'),
(369, 'KimNgan.Nguyen@jiahsin.com.vn', 'Nguyen Kim Ngan (Planning)', 'Nguyen Kim Ngan (Planning)', 'JHV'),
(370, 'Lam.Nguyen@jiahsin.com.vn', 'Nguyen Lam (QIP1)', 'Nguyen Lam (QIP1)', 'JHV'),
(371, 'KimLan.Nguyen@jiahsin.com.vn', 'Nguyen Lan (Tech)', 'Nguyen Lan (Tech)', 'JHV'),
(372, 'Lat.Nguyen@jiahsin.com.vn', 'Nguyen Lat (R&D AB)', 'Nguyen Lat (R&D AB)', 'JHV'),
(373, 'Linh.Nguyen@jiahsin.com.vn', 'Nguyen Linh (Business)', 'Nguyen Linh (Business)', 'JHV'),
(374, 'Loan.Nguyen@jiahsin.com.vn', 'Nguyen Loan (Business)', 'Nguyen Loan (Business)', 'JHV'),
(375, 'Loc.Nguyen@jiahsin.com.vn', 'Nguyen Loc (Tech AD)', 'Nguyen Loc (Tech AD)', 'JHV'),
(376, 'MaiPhuong.Nguyen@jiahsin.com.vn', 'Nguyen Mai Phuong (Planning)', 'Nguyen Mai Phuong (Planning)', 'JHV'),
(377, 'MyLinh.Nguyen@jiahsin.com.vn', 'Nguyen My Linh (HR)', 'Nguyen My Linh (HR)', 'JHV'),
(378, 'Nhien.Nguyen@jiahsin.com.vn', 'Nguyen My Nhien (Warehouse)', 'Nguyen My Nhien (Warehouse)', 'JHV'),
(379, 'My.Nguyen@jiahsin.com.vn', 'Nguyen Mh (IT)', 'Nguyen Mh (IT)', 'JHV'),
(380, 'Nga.Nguyen@jiahsin.com.vn', 'Nguyen Nga (R&D AD)', 'Nguyen Nga (R&D AD)', 'JHV'),
(381, 'Ngan.Nguyen@jiahsin.com.vn', 'Nguyen Ngan (R&D AD)', 'Nguyen Ngan (R&D AD)', 'JHV'),
(382, 'NgocAn.Nguyen@jiahsin.com.vn', 'Nguyen Ngoc An (Purchase)', 'Nguyen Ngoc An (Purchase)', 'JHV'),
(383, 'Ngoc.Nguyen@jiahsin.com.vn', 'Nguyen Ngoc (Business)', 'Nguyen Ngoc (Business)', 'JHV'),
(384, 'NgocAnh.Nguyen@jiahsin.com.vn', 'Nguyen Ngoc Anh (Planning)', 'Nguyen Ngoc Anh (Planning)', 'JHV'),
(385, 'NgocThuy.Nguyen@jiahsin.com.vn', 'Nguyen Ngoc Thuy (Planning)', 'Nguyen Ngoc Thuy (Planning)', 'JHV'),
(386, 'NgocTien.Nguyen@jiahsin.com.vn', 'Nguyen Ngoc Tien (Business)', 'Nguyen Ngoc Tien (Business)', 'JHV'),
(387, 'NgocTram.Nguyen@jiahsin.com.vn', 'Nguyen Ngoc Tram (HR)', 'Nguyen Ngoc Tram (HR)', 'JHV'),
(388, 'NgocTrang.Nguyen@jiahsin.com.vn', 'Nguyen Ngoc Trang (Planning)', 'Nguyen Ngoc Trang (Planning)', 'JHV'),
(389, 'Nhac.Nguyen@jiahsin.com.vn', 'Nguyen Nhac (Co Dien)', 'Nguyen Nhac (Co Dien)', 'JHV'),
(390, 'Nhung.Nguyen@jiahsin.com.vn', 'Nguyen Nhung (AB Production)', 'Nguyen Nhung (AB Production)', 'JHV'),
(391, 'Phat.Nguyen@jiahsin.com.vn', 'Nguyen Phat (HR)', 'Nguyen Phat (HR)', 'JHV'),
(392, 'PhuongThao.Nguyen@jiahsin.com.vn', 'Nguyen Phuong Thao', 'Nguyen Phuong Thao', 'JHV'),
(393, 'Phuong.Nguyen@jiahsin.com.vn', 'Nguyen Phuong (Planning)', 'Nguyen Phuong (Planning)', 'JHV'),
(394, 'QueThy.Nguyen@jiahsin.com.vn', 'Nguyen Que Thh (HR)', 'Nguyen Que Thh (HR)', 'JHV'),
(395, 'Khovatlieu.QueTran@jiahsin.com.vn', 'Nguyen Que Tran (Materia)', 'Nguyen Que Tran (Materia)', 'JHV'),
(396, 'Quyen.Nguyen@jiahsin.com.vn', 'Nguyen Quyen (QIP2)', 'Nguyen Quyen (QIP2)', 'JHV'),
(397, 'Son.Nguyen@jiahsin.com.vn', 'Nguyen Son (CR)', 'Nguyen Son (CR)', 'JHV'),
(398, 'PhuongTam.Nguyen@jiahsin.com.vn', 'Nguyen Tam (ME)', 'Nguyen Tam (ME)', 'JHV'),
(399, 'ThaiChau.Nguyen@jiahsin.com.vn', 'Nguyen Thai Chau (ME)', 'Nguyen Thai Chau (ME)', 'JHV'),
(400, 'NgocThao.Nguyen@jiahsin.com.vn', 'Nguyen Thao(Administration)', 'Nguyen Thao(Administration)', 'JHV'),
(401, 'The.Nguyen@jiahsin.com.vn', 'Nguyen The (Accounting)', 'Nguyen The (Accounting)', 'JHV'),
(402, 'ThiHoa.Nguyen@jiahsin.com.vn', 'Nguyen Thi Hoa (CR)', 'Nguyen Thi Hoa (CR)', 'JHV'),
(403, 'ThiTrang.Nguyen@jiahsin.com.vn', 'Nguyen Thi Trang (Pattern)', 'Nguyen Thi Trang (Pattern)', 'JHV'),
(404, 'ThienHuong.Nguyen@jiahsin.com.vn', 'Nguyen Thien Huong (Shipping)', 'Nguyen Thien Huong (Shipping)', 'JHV'),
(405, 'Thu.Nguyen@jiahsin.com.vn', 'Nguyen Thu (HR)', 'Nguyen Thu (HR)', 'JHV'),
(406, 'ThiThu.Nguyen@jiahsin.com.vn', 'Nguyen Thu (QIP2)', 'Nguyen Thu (QIP2)', 'JHV'),
(407, 'ThuHien.Nguyen@jiahsin.com.vn', 'Nguyen Thu Hien (Tech)', 'Nguyen Thu Hien (Tech)', 'JHV'),
(408, 'ThuMai.Nguyen@jiahsin.com.vn', 'Nguyen Thu Mai (Shipping)', 'Nguyen Thu Mai (Shipping)', 'JHV'),
(409, 'ThuThuy.Nguyen@jiahsin.com.vn', 'Nguyen Thu Thuh (CR)', 'Nguyen Thu Thuh (CR)', 'JHV'),
(410, 'Thuan.Nguyen@jiahsin.com.vn', 'Nguyen Thuan (Assistant)', 'Nguyen Thuan (Assistant)', 'JHV'),
(411, 'ThanhThuong.Nguyen@jiahsin.com.vn', 'Nguyen Thuong (R&D AD)', 'Nguyen Thuong (R&D AD)', 'JHV'),
(412, 'Tech.Thuy@jiahsin.com.vn', 'Nguyen Thuy (AD R&D Tech)', 'Nguyen Thuy (AD R&D Tech)', 'JHV'),
(413, 'ThuyHong.Nguyen@jiahsin.com.vn', 'Nguyen Thuy Hong (Business)', 'Nguyen Thuy Hong (Business)', 'JHV'),
(414, 'ThuyTien.Nguyen@jiahsin.com.vn', 'Nguyen Thuy Tien (Tech)', 'Nguyen Thuy Tien (Tech)', 'JHV'),
(415, 'Thy.Nguyen@jiahsin.com.vn', 'Nguyen Thh (QIP1)', 'Nguyen Thh (QIP1)', 'JHV'),
(416, 'Business.ThuyTien@jiahsin.com.vn', 'Nguyen Tien (Business)', 'Nguyen Tien (Business)', 'JHV'),
(417, 'CamTien.Nguyen@jiahsin.com.vn', 'Nguyen Tien (GA)', 'Nguyen Tien (GA)', 'JHV'),
(418, 'TiepTan.My@jiahsin.com.vn', 'Nguyen Tra Mh (Administration)', 'Nguyen Tra Mh (Administration)', 'JHV'),
(419, 'Tram.Nguyen@jiahsin.com.vn', 'Nguyen Tram (Accounting)', 'Nguyen Tram (Accounting)', 'JHV'),
(420, 'QuynhTram.Nguyen@jiahsin.com.vn', 'Nguyen Tram (CR)', 'Nguyen Tram (CR)', 'JHV'),
(421, 'Trang.Nguyen@jiahsin.com.vn', 'Nguyen Trang (AB R&D)', 'Nguyen Trang (AB R&D)', 'JHV'),
(422, 'ThuyTrinh.Nguyen@jiahsin.com.vn', 'Nguyen Trinh (Shipping)', 'Nguyen Trinh (Shipping)', 'JHV'),
(423, 'Trinh.Nguyen@jiahsin.com.vn', 'Nguyen Trinh (Shipping)', 'Nguyen Trinh (Shipping)', 'JHV'),
(424, 'TuanThanh.Nguyen@jiahsin.com.vn', 'Nguyen Tuan Thanh (Qip2)', 'Nguyen Tuan Thanh (Qip2)', 'JHV'),
(425, 'Tuong.Nguyen@jiahsin.com.vn', 'Nguyen Tuong (Planning)', 'Nguyen Tuong (Planning)', 'JHV'),
(426, 'KimTuyen.Nguyen@jiahsin.com.vn', 'Nguyen Tuyen (Purchase)', 'Nguyen Tuyen (Purchase)', 'JHV'),
(427, 'Ty.Nguyen@jiahsin.com.vn', 'Nguyen Ty (EFac)', 'Nguyen Ty (EFac)', 'JHV'),
(428, 'VanHung.Nguyen@jiahsin.com.vn', 'Nguyen Van Hung (Shipping)', 'Nguyen Van Hung (Shipping)', 'JHV'),
(429, 'VanTrang.Nguyen@jiahsin.com.vn', 'Nguyen Van Trang (Planning)', 'Nguyen Van Trang (Planning)', 'JHV'),
(430, 'Vy.Nguyen@jiahsin.com.vn', 'Nguyen Vy (CR)', 'Nguyen Vy (CR)', 'JHV'),
(431, 'Xinh.Nguyen@jiahsin.com.vn', 'Nguyen Xinh (R&D AD)', 'Nguyen Xinh (R&D AD)', 'JHV'),
(432, 'Xuan.Nguyen@jiahsin.com.vn', 'Nguyen Xuan (Puma Developer)', 'Nguyen Xuan (Puma Developer)', 'JHV'),
(433, 'Y.Nguyen@jiahsin.com.vn', 'Nguyen h (EVA)', 'Nguyen h (EVA)', 'JHV'),
(434, 'Nguyen.To@jiahsin.com.vn', 'Nguyen To', 'Nguyen To', 'JHV'),
(435, 'Nhaan.JHV@jiahsin.com.vn', 'Nhaan', 'Nhaan', 'JHV'),
(436, 'Nhaan.My@jiahsin.com.vn', 'Nhaan My', 'Nhaan My', 'JHV'),
(437, 'Nhanh.Duong@jiahsin.com.vn', 'Nhanh Duong', 'Nhanh Duong', 'JHV'),
(438, 'Nhansu.JHV@jiahsin.com.vn', 'Nhansu', 'Nhansu', 'JHV'),
(439, 'Nhat.Tran@jiahsin.com.vn', 'Nhat Tran', 'Nhat Tran', 'JHV'),
(440, 'Nhi.Huynh@jiahsin.com.vn', 'Nhi Huynh', 'Nhi Huynh', 'JHV'),
(441, 'Nhi.Thai@jiahsin.com.vn', 'Nhi Thai', 'Nhi Thai', 'JHV'),
(442, 'Nhu.Nguyen@jiahsin.com.vn', 'Nhu Nguyen', 'Nhu Nguyen', 'JHV'),
(443, 'Nhu.Pham@jiahsin.com.vn', 'Nhu Pham', 'Nhu Pham', 'JHV'),
(444, 'Nhu.Phan@jiahsin.com.vn', 'Nhu Phan', 'Nhu Phan', 'JHV'),
(445, 'Nhung.Dang@jiahsin.com.vn', 'Nhung Dang', 'Nhung Dang', 'JHV'),
(446, 'Tansy.Nong@jiahsin.com.vn', 'Nong Tansy (R&DAB)', 'Nong Tansy (R&DAB)', 'JHV'),
(447, 'Oanh.Nguyen@jiahsin.com.vn', 'Oanh Nguyen', 'Oanh Nguyen', 'JHV'),
(448, 'Trang.On@jiahsin.com.vn', 'On Trang (SHIPPING)', 'On Trang (SHIPPING)', 'JHV'),
(449, 'YuanCong.Ou@jiahsin.com.vn', 'Ou YuanCong (Planning)', 'Ou YuanCong (Planning)', 'JHV'),
(450, 'Pattern.Tech@jiahsin.com.vn', 'Pattern Tech (Tech)', 'Pattern Tech (Tech)', 'JHV'),
(451, 'patternab.tech@jiahsin.com.vn', 'patternab tech', 'patternab tech', 'JHV'),
(452, 'PatternAD.Tech@jiahsin.com.vn', 'PatternAD (Tech)', 'PatternAD (Tech)', 'JHV'),
(453, 'Peggy.Chen@jiahsin.com.vn', 'Peggy Chen', 'Peggy Chen', 'JHV'),
(454, 'Gracia.Peng@jiahsin.com.vn', 'Peng Gracia (QIP)', 'Peng Gracia (QIP)', 'JHV'),
(455, 'Pha.Nguyen@jiahsin.com.vn', 'Pha Nguyen', 'Pha Nguyen', 'JHV'),
(456, 'Anh.Pham@jiahsin.com.vn', 'Pham Anh (Controller)', 'Pham Anh (Controller)', 'JHV'),
(457, 'Chau.Pham@jiahsin.com.vn', 'Pham Chau (SHIPPING)', 'Pham Chau (SHIPPING)', 'JHV'),
(458, 'Diep.Pham@jiahsin.com.vn', 'Pham Diep (Accounting)', 'Pham Diep (Accounting)', 'JHV'),
(459, 'Duyen.Pham@jiahsin.com.vn', 'Pham Duyen (QIP3)', 'Pham Duyen (QIP3)', 'JHV'),
(460, 'Giau.Pham@jiahsin.com.vn', 'Pham Giau (Business)', 'Pham Giau (Business)', 'JHV'),
(461, 'Hieu.Pham@jiahsin.com.vn', 'Pham Hieu (Purchase)', 'Pham Hieu (Purchase)', 'JHV'),
(462, 'Hoa.Pham@jiahsin.com.vn', 'Pham Hoa (Business)', 'Pham Hoa (Business)', 'JHV'),
(463, 'Khanh.Pham@jiahsin.com.vn', 'Pham Khanh (CUT)', 'Pham Khanh (CUT)', 'JHV'),
(464, 'Khiem.Pham@jiahsin.com.vn', 'Pham Khiem (CR)', 'Pham Khiem (CR)', 'JHV'),
(465, 'Kieu.Pham@jiahsin.com.vn', 'Pham Kieu (AD)', 'Pham Kieu (AD)', 'JHV'),
(466, 'Trinh.Pham@jiahsin.com.vn', 'Pham Kieu Trinh (Acc)', 'Pham Kieu Trinh (Acc)', 'JHV'),
(467, 'Ly.Pham@jiahsin.com.vn', 'Pham Lh (Planning)', 'Pham Lh (Planning)', 'JHV'),
(468, 'Nguyet.Pham@jiahsin.com.vn', 'Pham Nguyet (QIP1)', 'Pham Nguyet (QIP1)', 'JHV'),
(469, 'Nhi.Pham@jiahsin.com.vn', 'Pham Nhi (AD R&D)', 'Pham Nhi (AD R&D)', 'JHV'),
(470, 'PhucNguyen.Pham@jiahsin.com.vn', 'John Nguyen (IT)', 'John Nguyen (IT)', 'JHV'),
(471, 'Thai.Pham@jiahsin.com.vn', 'Pham Thai (R&D AB)', 'Pham Thai (R&D AB)', 'JHV'),
(472, 'Thuy.Pham@jiahsin.com.vn', 'Pham Thuy (AD R&D)', 'Pham Thuy (AD R&D)', 'JHV'),
(473, 'Tien.Pham@jiahsin.com.vn', 'Pham Tien (Purchase)', 'Pham Tien (Purchase)', 'JHV'),
(474, 'Tram.Pham@jiahsin.com.vn', 'Pham Tram (Planning)', 'Pham Tram (Planning)', 'JHV'),
(475, 'KieuTrinh.Pham@jiahsin.com.vn', 'Pham Trinh (Accounting)', 'Pham Trinh (Accounting)', 'JHV'),
(476, 'TuMai.Nguyen@jiahsin.com.vn', 'Pham Tu Mai (Assistant)', 'Pham Tu Mai (Assistant)', 'JHV'),
(477, 'TuMai.Pham@jiahsin.com.vn', 'Pham Tu Mai (Assistant)', 'Pham Tu Mai (Assistant)', 'JHV'),
(478, 'van.pham@jiahsin.com.vn', 'Pham Van (AB R&D)', 'Pham Van (AB R&D)', 'JHV'),
(479, 'An.Phan@jiahsin.com.vn', 'Phan An (R&D AB)', 'Phan An (R&D AB)', 'JHV'),
(480, 'Chetao.CamHuong@jiahsin.com.vn', 'Phan Cam Huong (EVA)', 'Phan Cam Huong (EVA)', 'JHV'),
(481, 'Chi.Phan@jiahsin.com.vn', 'Phan Chi (EVA)', 'Phan Chi (EVA)', 'JHV'),
(482, 'Duc.Phan@jiahsin.com.vn', 'Phan Duc (Warehouse)', 'Phan Duc (Warehouse)', 'JHV'),
(483, 'Hong.Phan@jiahsin.com.vn', 'Phan Hong (Business)', 'Phan Hong (Business)', 'JHV'),
(484, 'Kieu.Phan@jiahsin.com.vn', 'Phan Kieu (Tech)', 'Phan Kieu (Tech)', 'JHV'),
(485, 'Nhon.Phan@jiahsin.com.vn', 'Phan Nhon (VR)', 'Phan Nhon (VR)', 'JHV'),
(486, 'Phi.Phan@jiahsin.com.vn', 'Phan Phi (Purchase)', 'Phan Phi (Purchase)', 'JHV'),
(487, 'Phu.Phan@jiahsin.com.vn', 'Phan Phu (AB)', 'Phan Phu (AB)', 'JHV'),
(488, 'Quyen.Phan@jiahsin.com.vn', 'Phan Quyen (Shipping)', 'Phan Quyen (Shipping)', 'JHV'),
(489, 'Thi.Phan@jiahsin.com.vn', 'Phan Thi (Business)', 'Phan Thi (Business)', 'JHV'),
(490, 'Tram.Phan@jiahsin.com.vn', 'Phan Tram (Shipping)', 'Phan Tram (Shipping)', 'JHV'),
(491, 'Tuyen.Phan@jiahsin.com.vn', 'Phan Tuyen (Business)', 'Phan Tuyen (Business)', 'JHV'),
(492, 'YenThu.Phan@jiahsin.com.vn', 'Phan Yen Thu (Cong no)', 'Phan Yen Thu (Cong no)', 'JHV'),
(493, 'ThuHong.Phan@jiahsin.com.vn', 'Phan Hong (Business)', 'Phan Hong (Business)', 'JHV'),
(494, 'Luong.Phan@jiahsin.com.vn', 'Phan Luong (Planning)', 'Phan Luong (Planning)', 'JHV'),
(495, 'Phan.Tran@jiahsin.com.vn', 'Phan Tran', 'Phan Tran', 'JHV'),
(496, 'Phi.Hoang@jiahsin.com.vn', 'Phi Hoang', 'Phi Hoang', 'JHV'),
(497, 'PhienDich.JHV@jiahsin.com.vn', 'Phien Dich', 'Phien Dich', 'JHV'),
(498, 'Phong.Lam@jiahsin.com.vn', 'Phong Lam', 'Phong Lam', 'JHV'),
(499, 'PhongKiemHang@jiahsin.com.vn', 'Phong Kiem Hang', 'Phong Kiem Hang', 'JHV'),
(500, 'Phongkiemhang02@jiahsin.com.vn', 'Phong kiem hang 02', 'Phong kiem hang 02', 'JHV'),
(501, 'Phuc.Xa@jiahsin.com.vn', 'Phuc Xa', 'Phuc Xa', 'JHV'),
(502, 'Diep.Phung@jiahsin.com.vn', 'Phung Diep (Purchase)', 'Phung Diep (Purchase)', 'JHV'),
(503, 'Van.Phung@jiahsin.com.vn', 'Phung Van (AD A&D)', 'Phung Van (AD A&D)', 'JHV'),
(504, 'Phuong.Lai@jiahsin.com.vn', 'Phuong Lai', 'Phuong Lai', 'JHV'),
(505, 'Phuong.Le@jiahsin.com.vn', 'Phuong Le', 'Phuong Le', 'JHV'),
(506, 'Phuong.Ngo@jiahsin.com.vn', 'Phuong Ngo', 'Phuong Ngo', 'JHV'),
(507, 'Phuong.Pham@jiahsin.com.vn', 'Phuong Pham', 'Phuong Pham', 'JHV'),
(508, 'Phuong.Truong@jiahsin.com.vn', 'Phuong Truong', 'Phuong Truong', 'JHV'),
(509, 'PhuongDuyen.Nguyen@jiahsin.com.vn', 'Phuong Duyen Nguyen', 'Phuong Duyen Nguyen', 'JHV'),
(510, 'PhuongThao.Tran@jiahsin.com.vn', 'Phuong Thao Tran', 'Phuong Thao Tran', 'JHV'),
(511, 'PhuongVi.Nguyen@jiahsin.com.vn', 'Phuong Vi Nguyen', 'Phuong Vi Nguyen', 'JHV'),
(512, 'KiemHangBN.JHV@jiahsin.com.vn', 'PKH NB (QIP2)', 'PKH NB (QIP2)', 'JHV'),
(513, 'planning01@jiahsin.com.vn', 'planning01 (Planning)', 'planning01 (Planning)', 'JHV'),
(514, 'planning02@jiahsin.com.vn', 'planning02', 'planning02', 'JHV'),
(515, 'planning03@jiahsin.com.vn', 'planning03', 'planning03', 'JHV'),
(516, 'planning04@jiahsin.com.vn', 'planning04', 'planning04', 'JHV'),
(517, 'planning05@jiahsin.com.vn', 'planning05', 'planning05', 'JHV'),
(518, 'Purchase01@jiahsin.com.vn', 'Purchase01', 'Purchase01', 'JHV'),
(519, 'purchase02@jiahsin.com.vn', 'purchase02', 'purchase02', 'JHV'),
(520, 'PurchaseSample.JHV@jiahsin.com.vn', 'Purchase Sample', 'Purchase Sample', 'JHV'),
(521, 'QA.JHV@jiahsin.com.vn', 'QA', 'QA', 'JHV'),
(522, 'QIP1.JHV@jiahsin.com.vn', 'QIP1', 'QIP1', 'JHV'),
(523, 'QIP1  - 01.JHV@jiahsin.com.vn', NULL, 'QIP1  - 01', 'JHV'),
(524, 'QIP2.JHV@jiahsin.com.vn', 'QIP2', 'QIP2', 'JHV'),
(525, 'QIP3.JHV@jiahsin.com.vn', 'QIP3', 'QIP3', 'JHV'),
(526, 'Quan.Truong@jiahsin.com.vn', 'Quan Truong', 'Quan Truong', 'JHV'),
(527, 'QuanAnh.Nguyen@jiahsin.com.vn', 'Quan Anh Nguyen', 'Quan Anh Nguyen', 'JHV'),
(528, 'Que.Tran@jiahsin.com.vn', 'Que Tran', 'Que Tran', 'JHV'),
(529, 'QueAnh.Nguyen@jiahsin.com.vn', 'Que Anh Nguyen', 'Que Anh Nguyen', 'JHV'),
(530, 'QuocThai.Duong@jiahsin.com.vn', 'Quoc Thai Duong', 'Quoc Thai Duong', 'JHV'),
(531, 'Nhung.Quynh@jiahsin.com.vn', 'Quynh Nhung (QIP1)', 'Quynh Nhung (QIP1)', 'JHV'),
(532, 'Quynh.Nguyen@jiahsin.com.vn', 'Quynh Nguyen', 'Quynh Nguyen', 'JHV'),
(533, 'Quynh.Tran@jiahsin.com.vn', 'Quynh Tran', 'Quynh Tran', 'JHV'),
(534, 'QuynhDung.Nguyen@jiahsin.com.vn', 'QuynhDung Nguyen', 'QuynhDung Nguyen', 'JHV'),
(535, 'Reagan.Lin@jiahsin.com.vn', 'Reagan Lin', 'Reagan Lin', 'JHV'),
(536, 'Jason.Ren@jiahsin.com.vn', 'Ren Jason (AB Product)', 'Ren Jason (AB Product)', 'JHV'),
(537, 'Sam.Kuo@jiahsin.com.vn', 'Sam Kuo', 'Sam Kuo', 'JHV'),
(538, 'Sandy.To@jiahsin.com.vn', 'Sandy To', 'Sandy To', 'JHV'),
(539, 'Sean.Nong@jiahsin.com.vn', 'Sean Nong (Purchase)', 'Sean Nong (Purchase)', 'JHV'),
(540, 'Sen.Nguyen@jiahsin.com.vn', 'Sen Nguyen', 'Sen Nguyen', 'JHV'),
(541, 'Shipping.Jhv@jiahsin.com.vn', 'Shipping', 'Shipping', 'JHV'),
(542, 'a.JHV@jiahsin.com.vn', 'Shipping', 'Shipping', 'JHV'),
(543, 'Suong.Phan@jiahsin.com.vn', 'Suong Phan', 'Suong Phan', 'JHV'),
(544, 'system1@jiahsin.com.vn', 'system1', 'system1', 'JHV'),
(545, 'Jas.T@jiahsin.com.vn', 'T Jas (R&D AB)', 'T Jas (R&D AB)', 'JHV'),
(546, 'Tam.Nguyen@jiahsin.com.vn', 'Tam Nguyen', 'Tam Nguyen', 'JHV'),
(547, 'Chunxiong.Tan@jiahsin.com.vn', 'Tan Chunxiong (Planning)', 'Tan Chunxiong (Planning)', 'JHV'),
(548, 'Tan.Du@jiahsin.com.vn', 'Tan Du', 'Tan Du', 'JHV'),
(549, 'Jose.Tang@jiahsin.com.vn', 'Tang Jose (QIP2)', 'Tang Jose (QIP2)', 'JHV'),
(550, 'Long.Tang@jiahsin.com.vn', 'Tang Long (Materials WH)', 'Tang Long (Materials WH)', 'JHV'),
(551, 'Niki.Tang@jiahsin.com.vn', 'Tang Niki (Assis Manager)', 'Tang Niki (Assis Manager)', 'JHV'),
(552, 'Anh.Tat@jiahsin.com.vn', 'Tat Anh (Warehouse)', 'Tat Anh (Warehouse)', 'JHV'),
(553, 'TechAB.JHV@jiahsin.com.vn', 'Tech AB', 'Tech AB', 'JHV'),
(554, 'TechAD.JHV@jiahsin.com.vn', 'Tech', 'Tech', 'JHV'),
(555, 'Melody.Teng@jiahsin.com.vn', 'Teng Melody (Costing)', 'Teng Melody (Costing)', 'JHV'),
(556, 'Duc.Thai@jiahsin.com.vn', 'Thai Trong Duc (IT)', 'Thai Trong Duc (IT)', 'JHV'),
(557, 'Thai.Duong@jiahsin.com.vn', 'Thai Duong', 'Thai Duong', 'JHV'),
(558, 'Thai.Vo@jiahsin.com.vn', 'Thai Vo', 'Thai Vo', 'JHV'),
(559, 'Tham.Dao@jiahsin.com.vn', 'Tham Dao', 'Tham Dao', 'JHV'),
(560, 'Tham.Tran@jiahsin.com.vn', 'Tham Tran', 'Tham Tran', 'JHV'),
(561, 'Thanh.Dinh@jiahsin.com.vn', 'Thanh Dinh', 'Thanh Dinh', 'JHV'),
(562, 'Thanh.Nguyen@jiahsin.com.vn', 'Thanh Nguyen', 'Thanh Nguyen', 'JHV'),
(563, 'Thanhhuong.Nguyen@jiahsin.com.vn', 'Thanh huong Nguyen', 'Thanh huong Nguyen', 'JHV'),
(564, 'ThanhThanh.Nguyen@jiahsin.com.vn', 'Thanh Thanh Nguyen', 'Thanh Thanh Nguyen', 'JHV'),
(565, 'ThanhThuy.Nguyen@jiahsin.com.vn', 'Thanh Thuy Nguyen', 'Thanh Thuy Nguyen', 'JHV'),
(566, 'Thanhtruc.Tran@jiahsin.com.vn', 'Thanh truc Tran', 'Thanh truc Tran', 'JHV'),
(567, 'Thao.Huynh@jiahsin.com.vn', 'Thao Huynh', 'Thao Huynh', 'JHV'),
(568, 'Thao.Nguyen@jiahsin.com.vn', 'Thao Nguyen', 'Thao Nguyen', 'JHV'),
(569, 'Thao.Tran@jiahsin.com.vn', 'Thao Tran', 'Thao Tran', 'JHV'),
(570, 'Thi.Nguyen@jiahsin.com.vn', 'Thi Nguyen', 'Thi Nguyen', 'JHV'),
(571, 'Thien.Mai@jiahsin.com.vn', 'Thien Mai', 'Thien Mai', 'JHV'),
(572, 'thinh.phan@jiahsin.com.vn', 'thinh phan', 'thinh phan', 'JHV'),
(573, 'Tho.Nguyen@jiahsin.com.vn', 'Tho Nguyen', 'Tho Nguyen', 'JHV'),
(574, 'Thoa.Vo@jiahsin.com.vn', 'Thoa Vo', 'Thoa Vo', 'JHV'),
(575, 'Thu.Tang@jiahsin.com.vn', 'Thu Tang', 'Thu Tang', 'JHV'),
(576, 'thu.tien@jiahsin.com.vn', 'thu tien', 'thu tien', 'JHV'),
(577, 'Thu.Tran@jiahsin.com.vn', 'Thu Tran', 'Thu Tran', 'JHV'),
(578, 'Thu.Vo@jiahsin.com.vn', 'Thu Vo', 'Thu Vo', 'JHV'),
(579, 'Thuc.Nguyen@jiahsin.com.vn', 'Thuc Nguyen', 'Thuc Nguyen', 'JHV'),
(580, 'Thuong.Nguyen@jiahsin.com.vn', 'Thuong Nguyen', 'Thuong Nguyen', 'JHV'),
(581, 'thuy.cao@jiahsin.com.vn', 'thuy cao', 'thuy cao', 'JHV'),
(582, 'Thuy.Dang@jiahsin.com.vn', 'Thuy Dang', 'Thuy Dang', 'JHV'),
(583, 'Thuy.Nguyen@jiahsin.com.vn', 'Thuy Nguyen', 'Thuy Nguyen', 'JHV'),
(584, 'ThuyAn.Vo@jiahsin.com.vn', 'ThuyAn Vo', 'ThuyAn Vo', 'JHV'),
(585, 'Tien.Duong@jiahsin.com.vn', 'Tien Duong', 'Tien Duong', 'JHV'),
(586, 'Tien.Nguyen@jiahsin.com.vn', 'Tien Nguyen', 'Tien Nguyen', 'JHV'),
(587, 'Tieptan.Thao@jiahsin.com.vn', 'Tieptan Thao', 'Tieptan Thao', 'JHV'),
(588, 'Hung.Tieu@jiahsin.com.vn', 'Tieu Hung (Tech)', 'Tieu Hung (Tech)', 'JHV'),
(589, 'Thu.Tieu@jiahsin.com.vn', 'Tieu Thu (QIP AD)', 'Tieu Thu (QIP AD)', 'JHV'),
(590, 'An.Tin@jiahsin.com.vn', 'Tin An (IT)', 'Tin An (IT)', 'JHV'),
(591, 'Minh.To@jiahsin.com.vn', 'To Minh (Assistant)', 'To Minh (Assistant)', 'JHV'),
(592, 'Minh.ToRD@jiahsin.com.vn', 'To Minh (R&D AB)', 'To Minh (R&D AB)', 'JHV'),
(593, 'Yen.To@jiahsin.com.vn', 'To Yen (VR)', 'To Yen (VR)', 'JHV'),
(594, 'Toan.Le@jiahsin.com.vn', 'Toan Le', 'Toan Le', 'JHV'),
(595, 'Todongthung.Hau@jiahsin.com.vn', 'To dong thung Hau', 'To dong thung Hau', 'JHV'),
(596, 'Tongvu.JHV@jiahsin.com.vn', 'Tongvu', 'Tong vu', 'JHV'),
(597, 'toolingdepartment@jiahsin.com.vn', 'tooling department', 'tooling department', 'JHV'),
(598, 'Nghi.Tram@jiahsin.com.vn', 'Tram Nghi (HR Assistant)', 'Tram Nghi (HR Assistant)', 'JHV'),
(599, 'Bach.Tran@jiahsin.com.vn', 'Tran Bach (CR)', 'Tran Bach (CR)', 'JHV'),
(600, 'ADFmca.JHV@jiahsin.com.vn', 'Tran Bang Chau (R&DAD)', 'Tran Bang Chau (R&DAD)', 'JHV'),
(601, 'BaoChau.Tran@jiahsin.com.vn', 'Tran Bao Chau (Planning)', 'Tran Bao Chau (Planning)', 'JHV'),
(602, 'Chinh.Tran@jiahsin.com.vn', 'Tran Chinh (Tech)', 'Tran Chinh (Tech)', 'JHV'),
(603, 'Chung.Tran@jiahsin.com.vn', 'Tran Chung (Costing)', 'Tran Chung (Costing)', 'JHV'),
(604, 'MyDung.Tran@jiahsin.com.vn', 'Tran Dung (EFac)', 'Tran Dung (EFac)', 'JHV'),
(605, 'Hien.Tran@jiahsin.com.vn', 'Tran Hien (VR)', 'Tran Hien (VR)', 'JHV'),
(606, 'Lab.Kieu@jiahsin.com.vn', 'Tran Kieu (LAB)', 'Tran Kieu (LAB)', 'JHV'),
(607, 'Lam.Tran@jiahsin.com.vn', 'Tran Lam (R&D AB)', 'Tran Lam (R&D AB)', 'JHV'),
(608, 'Ly.Tran@jiahsin.com.vn', 'Tran Ly (Shipping)', 'Tran Ly (Shipping)', 'JHV'),
(609, 'Mai.Tran@jiahsin.com.vn', 'Tran Mai (Planning)', 'Tran Mai (Planning)', 'JHV'),
(610, 'MinhMan.Tran@jiahsin.com.vn', 'Tran Man (Shipping)', 'Tran Man (Shipping)', 'JHV'),
(611, 'Man.Tran@jiahsin.com.vn', 'Tran Man (VR)', 'Tran Man (VR)', 'JHV'),
(612, 'Ngocchau.Tran@jiahsin.com.vn', 'Tran Ngoc Chau (WH)', 'Tran Ngoc Chau (WH)', 'JHV'),
(613, 'NgocLinh.Tran@jiahsin.com.vn', 'Tran Ngoc Linh (EFac)', 'Tran Ngoc Linh (EFac)', 'JHV'),
(614, 'Nguyen.Tran@jiahsin.com.vn', 'Tran Nguyen (Costing)', 'Tran Nguyen (Costing)', 'JHV'),
(615, 'Nhan.Tran@jiahsin.com.vn', 'Tran Nhan (Business)', 'Tran Nhan (Business)', 'JHV'),
(616, 'Nhi.tran@jiahsin.com.vn', 'Tran Nhi (QIP2)', 'Tran Nhi (QIP2)', 'JHV'),
(617, 'Nhu.Tran@jiahsin.com.vn', 'Tran Nhu (AB R&D)', 'Tran Nhu (AB R&D)', 'JHV'),
(618, 'Phuong.Tran@jiahsin.com.vn', 'Tran Phuong (Tech)', 'Tran Phuong (Tech)', 'JHV'),
(619, 'Sang.Tran@jiahsin.com.vn', 'Tran Sang (Accounting)', 'Tran Sang (Accounting)', 'JHV'),
(620, 'NgocThu.tran@jiahsin.com.vn', 'Tran Thu (Dieu Phoi)', 'Tran Thu (Dieu Phoi)', 'JHV'),
(621, 'Thuy.Tran@jiahsin.com.vn', 'Tran Thuy (Business)', 'Tran Thuy (Business)', 'JHV'),
(622, 'Tien.Tran@jiahsin.com.vn', 'Tran Tien (Costing)', 'Tran Tien (Costing)', 'JHV'),
(623, 'Toan.Tran@jiahsin.com.vn', 'Tran Toan (Tech)', 'Tran Toan (Tech)', 'JHV'),
(624, 'truc.tran@jiahsin.com.vn', 'Tran Truc (Planning)', 'Tran Truc (Planning)', 'JHV'),
(625, 'PhuongDung.Tran@jiahsin.com.vn', 'Tran Phuong Dung (AB R&D)', 'Tran Phuong Dung (AB R&D)', 'JHV'),
(626, 'Trang.Tran@jiahsin.com.vn', 'Tran Trang (Business)', 'Tran Trang (Business)', 'JHV'),
(627, 'Tran.Dang@jiahsin.com.vn', 'Tran Dang', 'Tran Dang', 'JHV'),
(628, 'Tran.Nguyen@jiahsin.com.vn', 'Tran Nguyen', 'Tran Nguyen', 'JHV');
INSERT INTO `email` (`id`, `email`, `name`, `keyword`, `com_code`) VALUES
(629, 'Tuyen.Trang@jiahsin.com.vn', 'Trang Tuyen (HR)', 'Trang Tuyen (HR)', 'JHV'),
(630, 'Trang.Bui@jiahsin.com.vn', 'Trang Bui', 'Trang Bui', 'JHV'),
(631, 'Trang.Dao@jiahsin.com.vn', 'Trang Dao', 'Trang Dao', 'JHV'),
(632, 'Tran.Trieu@jiahsin.com.vn', 'Trieu Tran (Shipping)', 'Trieu Tran (Shipping)', 'JHV'),
(633, 'Trinh.Dao@jiahsin.com.vn', 'Trinh Dao', 'Trinh Dao', 'JHV'),
(634, 'Trinh.Phan@jiahsin.com.vn', 'Trinh Phan', 'Trinh Phan', 'JHV'),
(635, 'Trinh.Tran@jiahsin.com.vn', 'Trinh Tran', 'Trinh Tran', 'JHV'),
(636, 'Troly.JHV@jiahsin.com.vn', 'Troly', 'Troly', 'JHV'),
(637, 'Development@jiahsin.com.vn', 'Truc Mai (Development)', 'Truc Mai (Development)', 'JHV'),
(638, 'Ai.Truong@jiahsin.com.vn', 'Truong Ai (Purchase)', 'Truong Ai (Purchase)', 'JHV'),
(639, 'Dung.Truong@jiahsin.com.vn', 'Truong Dung (Business)', 'Truong Dung (Business)', 'JHV'),
(640, 'Loan.Truong@jiahsin.com.vn', 'Truong Loan (Tech)', 'Truong Loan (Tech)', 'JHV'),
(641, 'Trang.Truong@jiahsin.com.vn', 'Truong Trang (AB R&D)', 'Truong Trang (AB R&D)', 'JHV'),
(642, 'KimThuy.Truong@jiahsin.com.vn', 'Truong Thuh (Planning)', 'Truong Thuh (Planning)', 'JHV'),
(643, 'Truongan.Tran@jiahsin.com.vn', 'Truongan Tran', 'Truongan Tran', 'JHV'),
(644, 'Mark.Tsai@jiahsin.com.vn', 'Tsai Mark (VR)', 'Tsai Mark (VR)', 'JHV'),
(645, 'Irene.Tsao@jiahsin.com.vn', 'Tsao Irene (Assis Manage)', 'Tsao Irene (Assis Manage)', 'JHV'),
(646, 'Jeff.Tseng@jiahsin.com.vn', 'Tseng Jeff (Vice GM)', 'Tseng Jeff (Vice GM)', 'JHV'),
(647, 'Tu.Ngoc@jiahsin.com.vn', 'Tu Ngoc', 'Tu Ngoc', 'JHV'),
(648, 'Tu.Nguyen@jiahsin.com.vn', 'Tu Nguyen', 'Tu Nguyen', 'JHV'),
(649, 'tuan.luong@jiahsin.com.vn', 'tuan luong', 'tuan luong', 'JHV'),
(650, 'Tuoi.Nguyen@jiahsin.com.vn', 'Tuoi Nguyen', 'Tuoi Nguyen', 'JHV'),
(651, 'Tuyen.Dang@jiahsin.com.vn', 'Tuyen Dang', 'Tuyen Dang', 'JHV'),
(652, 'Tuyen.Huynh@jiahsin.com.vn', 'Tuyen Huynh', 'Tuyen Huynh', 'JHV'),
(653, 'Tuyen.Nguyen@jiahsin.com.vn', 'Tuyen Nguyen', 'Tuyen Nguyen', 'JHV'),
(654, 'Tuyen.Tran@jiahsin.com.vn', 'Tuyen Tran', 'Tuyen Tran', 'JHV'),
(655, 'Tuyet.Doan@jiahsin.com.vn', 'Tuyet Doan', 'Tuyet Doan', 'JHV'),
(656, 'Tuyet.Le@jiahsin.com.vn', 'Tuyet Le', 'Tuyet Le', 'JHV'),
(657, 'Tuyet.Nguyen@jiahsin.com.vn', 'Tuyet Nguyen', 'Tuyet Nguyen', 'JHV'),
(658, 'Vay.Ung@jiahsin.com.vn', 'Ung Vah (QIP1)', 'Ung Vah (QIP1)', 'JHV'),
(659, 'Phuong.Van@jiahsin.com.vn', 'Van Phuong (Tech)', 'Van Phuong (Tech)', 'JHV'),
(660, 'Truc.Van@jiahsin.com.vn', 'Van Truc (Business)', 'Van Truc (Business)', 'JHV'),
(661, 'Tuan.Van@jiahsin.com.vn', 'Van Tuan (Tech)', 'Van Tuan (Tech)', 'JHV'),
(662, 'Van.Huynh@jiahsin.com.vn', 'Van Huynh', 'Van Huynh', 'JHV'),
(663, 'Van.Luong@jiahsin.com.vn', 'Van Luong', 'Van Luong', 'JHV'),
(664, 'Van.Tran@jiahsin.com.vn', 'Van Tran', 'Van Tran', 'JHV'),
(665, 'Van.Truong@jiahsin.com.vn', 'Van Truong', 'Van Truong', 'JHV'),
(666, 'Vi.Nguyen@jiahsin.com.vn', 'Vi Nguyen', 'Vi Nguyen', 'JHV'),
(667, 'ViTinh.JHV@jiahsin.com.vn', 'ViTinh', 'ViTinh', 'JHV'),
(668, 'Vitinh@jiahsin.com.vn', 'Vitinh', 'Vitinh', 'JHV'),
(669, 'KhoVatLieu.Giang@jiahsin.com.vn', 'Vo Giang (Material WH)', 'Vo Giang (Material WH)', 'JHV'),
(670, 'Giang.Vo@jiahsin.com.vn', 'Vo Giang (Planning)', 'Vo Giang (Planning)', 'JHV'),
(671, 'Loi.Vo@jiahsin.com.vn', 'Vo Loi (AD Production)', 'Vo Loi (AD Production)', 'JHV'),
(672, 'Ngan.Vo@jiahsin.com.vn', 'Vo Ngan (Puchase)', 'Vo Ngan (Puchase)', 'JHV'),
(673, 'Nhung.Vo@jiahsin.com.vn', 'Vo Nhung (EFac)', 'Vo Nhung (EFac)', 'JHV'),
(674, 'Phat.Vo@jiahsin.com.vn', 'Vo Phat (VR)', 'Vo Phat (VR)', 'JHV'),
(675, 'PhuongTrang.Vo@jiahsin.com.vn', 'Vo Phuong Trang (Planning)', 'Vo Phuong Trang (Planning)', 'JHV'),
(676, 'Trung.Vo@jiahsin.com.vn', 'Vo Trung (Tooling)', 'Vo Trung (Tooling)', 'JHV'),
(677, 'Vinh.Vo@jiahsin.com.vn', 'Vo Vinh (Tech)', 'Vo Vinh (Tech)', 'JHV'),
(678, 'Y.Vo@jiahsin.com.vn', 'Vo h (Planning)', 'Vo h (Planning)', 'JHV'),
(679, 'Phuong.Vu@jiahsin.com.vn', 'Vu Phuong (ME)', 'Vu Phuong (ME)', 'JHV'),
(680, 'Van.Vu@jiahsin.com.vn', 'Vu Van (Kho Tam AD)', 'Vu Van (Kho Tam AD)', 'JHV'),
(681, 'Vu.Nguyen@jiahsin.com.vn', 'Vu Nguyen', 'Vu Nguyen', 'JHV'),
(682, 'Giang.Vuong@jiahsin.com.vn', 'Vuong Giang (HR)', 'Vuong Giang (HR)', 'JHV'),
(683, 'wayne.chang@jiahsin.com.vn', 'wayne chang', 'wayne chang', 'JHV'),
(684, 'Zhong.Wei@jiahsin.com.vn', 'Wei Zhong (AB Manager)', 'Wei Zhong (AB Manager)', 'JHV'),
(685, 'Qin.Wen@jiahsin.com.vn', 'Wen Qin (AB Stitching)', 'Wen Qin (AB Stitching)', 'JHV'),
(686, 'Kun.Wu@jiahsin.com.vn', 'Wu Kun (R&D AB)', 'Wu Kun (R&D AB)', 'JHV'),
(687, 'Xuongadidas@jiahsin.com.vn', 'Xuongadidas', 'Xuongadidas', 'JHV'),
(688, 'XuongAdidas.Ngoc@jiahsin.com.vn', 'XuongAdidas Ngoc', 'XuongAdidas Ngoc', 'JHV'),
(689, 'Xuyen.Nguyen@jiahsin.com.vn', 'Xuyen Nguyen', 'Xuyen Nguyen', 'JHV'),
(690, 'Xuyen.Tran@jiahsin.com.vn', 'Xuyen Tran', 'Xuyen Tran', 'JHV'),
(691, 'Y.Lu@jiahsin.com.vn', 'Y Lu', 'Y Lu', 'JHV'),
(692, 'Y.Van@jiahsin.com.vn', 'Y Van', 'Y Van', 'JHV'),
(693, 'Yan.Zeng@jiahsin.com.vn', 'Yan Zeng', 'Yan Zeng', 'JHV'),
(694, 'Joe.Yang@jiahsin.com.vn', 'Yang Joe (Vice GM)', 'Yang Joe (Vice GM)', 'JHV'),
(695, 'Mengyue.Yang@jiahsin.com.vn', 'Yang Mengyue (AB R&D Stitch)', 'Yang Mengyue (AB R&D Stitch)', 'JHV'),
(696, 'Yen.Ngo@jiahsin.com.vn', 'Yen Ngo', 'Yen Ngo', 'JHV'),
(697, 'Yen.Nguyen@jiahsin.com.vn', 'Yen Nguyen', 'Yen Nguyen', 'JHV'),
(698, 'Jiyu.Yi@jiahsin.com.vn', 'Yi Jiyu (Manager)', 'Yi Jiyu (Manager)', 'JHV'),
(699, 'Ab.Yin@jiahsin.com.vn', 'Yin Ab (Assistan Manager)', 'Yin Ab (Assistan Manager)', 'JHV'),
(700, 'Ymi.Vien@jiahsin.com.vn', 'Ymi Vien', 'Ymi Vien', 'JHV'),
(701, 'Yuxiaobo.Yu@jiahsin.com.vn', 'Yu Yuxiaobo(R&D AB)', 'Yu Yuxiaobo(R&D AB)', 'JHV'),
(702, 'Hua.Yuan@jiahsin.com.vn', 'Yuan Hua (Manager)', 'Yuan Hua (Manager)', 'JHV'),
(703, 'Celia.Zhang@jiahsin.com.vn', 'Zhang Celia (Planning)', 'Zhang Celia (Planning)', 'JHV'),
(704, 'Zheng.Jie@jiahsin.com.vn', 'Zheng Jie (Planning)', 'Zheng Jie (Planning)', 'JHV'),
(705, 'Accounting.SHM@shimmer.com.vn', 'Accounting', 'Accounting', 'SHM'),
(706, 'Accounting.SMV@shimmer.com.vn', 'Accounting', 'Accounting', 'SHM'),
(707, 'Phuong.Bui@shimmer.com.vn', 'Bui Phuong (Planning)', 'Bui Phuong (Planning)', 'SHM'),
(708, 'Yong.Cai@shimmer.com.vn', 'Cai Yong (Technical)', 'Cai Yong (Technical)', 'SHM'),
(709, 'Xang.Cao@shimmer.com.vn', 'Cao Xang', 'Cao Xang', 'SHM'),
(710, 'Jeff.Chen@shimmer.com.vn', 'Chen Jeff', 'Chen Jeff', 'SHM'),
(711, 'Hien.Dang@shimmer.com.vn', 'Dang Hien (Purchase)', 'Dang Hien (Purchase)', 'SHM'),
(712, 'Kieu.Dang@shimmer.com.vn', 'Dang Kieu', 'Dang Kieu', 'SHM'),
(713, 'Son.Dang@shimmer.com.vn', 'Dang Son (QIP)', 'Dang Son (QIP)', 'SHM'),
(714, 'Hoa.Dang@shimmer.com.vn', 'Dang Hoa (Costing)', 'Dang Hoa (Costing)', 'SHM'),
(715, 'Nhu.Dang@shimmer.com.vn', 'Dang Nhu', 'Dang Nhu', 'SHM'),
(716, 'ThanhTruc.Dang@shimmer.com.vn', 'Dang ThanhTruc (Accounting)', 'Dang ThanhTruc (Accounting)', 'SHM'),
(717, 'Tham.Dao@shimmer.com.vn', 'Dao Tham (GA)', 'Dao Tham (GA)', 'SHM'),
(718, 'Yen.Dao@shimmer.com.vn', 'Dao Yen (QIP)', 'Dao Yen (QIP)', 'SHM'),
(719, 'Dieuphoi.Trung@shimmer.com.vn', 'Dinh Trung (Planning)', 'Dinh Trung (Planning)', 'SHM'),
(720, 'Tuan.Dinh@shimmer.com.vn', 'Dinh Tuan (Shipping)', 'Dinh Tuan (Shipping)', 'SHM'),
(721, 'Thuy.Do@shimmer.com.vn', 'Do Thuy (Purchase)', 'Do Thuy (Purchase)', 'SHM'),
(722, 'ThuThuy.Do@shimmer.com.vn', 'Do Thu Thuy (Planning)', 'Do Thu Thuy (Planning)', 'SHM'),
(723, 'Thuan.Doan@shimmer.com.vn', 'Doan Thuan (Materials WH)', 'Doan Thuan (Materials WH)', 'SHM'),
(724, 'David.Du@shimmer.com.vn', 'Du David', 'Du David', 'SHM'),
(725, 'Tuan.Duong@shimmer.com.vn', 'Duong Tuan (Materials WH)', 'Duong Tuan (Materials WH)', 'SHM'),
(726, 'Song.FaHua@shimmer.com.vn', 'FaHua Song (Tech)', 'FaHua Song (Tech)', 'SHM'),
(727, 'Matt.Fan@shimmer.com.vn', 'Fan Matt (Manager Accounting)', 'Fan Matt (Manager Accounting)', 'SHM'),
(728, 'Guangming.Fu@shimmer.com.vn', 'Fu Guangming (IP)', 'Fu Guangming (IP)', 'SHM'),
(729, 'GA.SHM@shimmer.com.vn', 'GA (GA)', 'GA (GA)', 'SHM'),
(730, 'Buu.Ha@shimmer.com.vn', 'Ha Buu (Assistant)', 'Ha Buu (Assistant)', 'SHM'),
(731, 'Kim.Ho@shimmer.com.vn', 'Ho Kim (R&D)', 'Ho Kim (R&D)', 'SHM'),
(732, 'Khovatlieu.Son@shimmer.com.vn', 'Ho Son (Material WH)', 'Ho Son (Material WH)', 'SHM'),
(733, 'Lanh.Hoang@shimmer.com.vn', 'Hoang Lanh (Accounting)', 'Hoang Lanh (Accounting)', 'SHM'),
(734, 'Dieuphoi.Quy@shimmer.com.vn', 'Hoang Quy (Planning)', 'Hoang Quy (Planning)', 'SHM'),
(735, 'HoangNam.Nguyen@shimmer.com.vn', 'HoangNam Nguyen', 'HoangNam Nguyen', 'SHM'),
(736, 'Mai.Huynh@shimmer.com.vn', 'Huynh Mai (Administration)', 'Huynh Mai (Administration)', 'SHM'),
(737, 'Nhung.Huynh@shimmer.com.vn', 'Huynh Nhung (Accounting)', 'Huynh Nhung (Accounting)', 'SHM'),
(738, 'Hang.Huynh@shimmer.com.vn', 'Huynh Hang (Accouting)', 'Huynh Hang (Accouting)', 'SHM'),
(739, 'KhoVatLieu.SMV@shimmer.com.vn', 'Kho Vat Lieu', 'Kho Vat Lieu', 'SHM'),
(740, 'Sam.Kuo@shimmer.com.vn', 'Kuo Sam', 'Kuo Sam', 'SHM'),
(741, 'Chelsy.Lai@shimmer.com.vn', 'Lai Chelsy (QIP)', 'Lai Chelsy (QIP)', 'SHM'),
(742, 'Phuoc.Lai@shimmer.com.vn', 'Lai Phuoc (R&D)', 'Lai Phuoc (R&D)', 'SHM'),
(743, 'Yen.Lam@shimmer.com.vn', 'Lam Yen (R&D)', 'Lam Yen (R&D)', 'SHM'),
(744, 'Thu.Le@shimmer.com.vn', 'Le Thu (HR)', 'Le Thu (HR)', 'SHM'),
(745, 'Li.De@shimmer.com.vn', 'Li DeHong (R&D Manager)', 'Li DeHong (R&D Manager)', 'SHM'),
(746, 'FengYu.Li@shimmer.com.vn', 'Li Fengyu (TECH)', 'Li Fengyu (TECH)', 'SHM'),
(747, 'Fang.Liang@shimmer.com.vn', 'Liang Fang (IP)', 'Liang Fang (IP)', 'SHM'),
(748, 'SiYong.Liu@shimmer.com.vn', 'Liu SiYong (Planning)', 'Liu SiYong (Planning)', 'SHM'),
(749, 'Dieuphoi.Xuan@shimmer.com.vn', 'Luong Xuan (Planning)', 'Luong Xuan (Planning)', 'SHM'),
(750, 'Quan.Luu@shimmer.com.vn', 'Luu Quan (QIP)', 'Luu Quan (QIP)', 'SHM'),
(751, 'Van.Luu@shimmer.com.vn', 'Luu Van (Assistant)', 'Luu Van (Assistant)', 'SHM'),
(752, 'AnNa.Lyu@shimmer.com.vn', 'Lyu AnNa (QIP)', 'Lyu AnNa (QIP)', 'SHM'),
(753, 'Hoang.Mai@shimmer.com.vn', 'Mai Hoang (FGWH)', 'Mai Hoang (FGWH)', 'SHM'),
(754, 'YaJun.Mao@shimmer.com.vn', 'Mao YaJun (QIP)', 'Mao YaJun (QIP)', 'SHM'),
(755, 'Duc.Minh@shimmer.com.vn', 'Minh Duc (R&D)', 'Minh Duc (R&D)', 'SHM'),
(756, 'Chi.Ngo@shimmer.com.vn', 'Ngo Chi (EVA)', 'Ngo Chi (EVA)', 'SHM'),
(757, 'Tang.Ngo@shimmer.com.vn', 'Ngo Tang (LAB)', 'Ngo Tang (LAB)', 'SHM'),
(758, 'TraMy.Nguyen@shimmer.com.vn', 'Nguyen Thi Tra My', 'Nguyen Thi Tra My', 'SHM'),
(759, 'Anh.Nguyen@shimmer.com.vn', 'Nguyen Anh (R&D)', 'Nguyen Anh (R&D)', 'SHM'),
(760, 'Chau.Nguyen@shimmer.com.vn', 'Nguyen Chau (QIP)', 'Nguyen Chau (QIP)', 'SHM'),
(761, 'Diem.Nguyen@shimmer.com.vn', 'Nguyen Diem (Administration)', 'Nguyen Diem (Administration)', 'SHM'),
(762, 'QuynhDung.Nguyen@shimmer.com.vn', 'Nguyen Dung (R&D)', 'Nguyen Dung (R&D)', 'SHM'),
(763, 'Duy.Nguyen@shimmer.com.vn', 'Nguyen Duy (FGWH)', 'Nguyen Duy (FGWH)', 'SHM'),
(764, 'Khovatlieu.Huong@shimmer.com.vn', 'Nguyen Huong (MaterialWH)', 'Nguyen Huong (MaterialWH)', 'SHM'),
(765, 'Huong.Nguyen@shimmer.com.vn', 'Nguyen Huong (R&D)', 'Nguyen Huong (R&D)', 'SHM'),
(766, 'Huyen.Nguyen@shimmer.com.vn', 'Nguyen Huyen (EVA)', 'Nguyen Huyen (EVA)', 'SHM'),
(767, 'Dieuphoi.Huyen@shimmer.com.vn', 'Nguyen Huyen (Planning)', 'Nguyen Huyen (Planning)', 'SHM'),
(768, 'Linh.Nguyen@shimmer.com.vn', 'Nguyen Linh (EVA)', 'Nguyen Linh (EVA)', 'SHM'),
(769, 'Nam.Nguyen@shimmer.com.vn', 'Nguyen Nam (LAB)', 'Nguyen Nam (LAB)', 'SHM'),
(770, 'Nga.Nguyen@shimmer.com.vn', 'Nguyen Nga (Materials WH)', 'Nguyen Nga (Materials WH)', 'SHM'),
(771, 'Nhung.Nguyen@shimmer.com.vn', 'Nguyen Nhung (QIP)', 'Nguyen Nhung (QIP)', 'SHM'),
(772, 'Oanh.Nguyen@shimmer.com.vn', 'Nguyen Oanh (R&D)', 'Nguyen Oanh (R&D)', 'SHM'),
(773, 'Phong.Nguyen@shimmer.com.vn', 'Nguyen Phong (GA)', 'Nguyen Phong (GA)', 'SHM'),
(774, 'Phuc.Nguyen@shimmer.com.vn', 'Nguyen Phuc (Materials W)', 'Nguyen Phuc (Materials W)', 'SHM'),
(775, 'Phuong.Nguyen@shimmer.com.vn', 'Nguyen Phuong (Business)', 'Nguyen Phuong (Business)', 'SHM'),
(776, 'Tam.Nguyen@shimmer.com.vn', 'Nguyen Tam (Accounting)', 'Nguyen Tam (Accounting)', 'SHM'),
(777, 'Thanh.Nguyen@shimmer.com.vn', 'Nguyen Thanh (Purchase)', 'Nguyen Thanh (Purchase)', 'SHM'),
(778, 'Thuong.Nguyen@shimmer.com.vn', 'Nguyen Thuong (Planning)', 'Nguyen Thuong (Planning)', 'SHM'),
(779, 'DieuThuy.Nguyen@shimmer.com.vn', 'Nguyen Thuy (Accounting)', 'Nguyen Thuy (Accounting)', 'SHM'),
(780, 'CamTien.Nguyen@shimmer.com.vn', 'Nguyen Tien (GA)', 'Nguyen Tien (GA)', 'SHM'),
(781, 'Tien.Nguyen@shimmer.com.vn', 'Nguyen Tien (R&D)', 'Nguyen Tien (R&D)', 'SHM'),
(782, 'Trinh.Nguyen@shimmer.com.vn', 'Nguyen Trinh (IP)', 'Nguyen Trinh (IP)', 'SHM'),
(783, 'Trung.Nguyen@shimmer.com.vn', 'Nguyen Trung (LAB)', 'Nguyen Trung (LAB)', 'SHM'),
(784, 'Vu.Nguyen@shimmer.com.vn', 'Nguyen Vu (IT)', 'Nguyen Vu (IT)', 'SHM'),
(785, 'NhuY.Nguyen@shimmer.com.vn', 'Nguyen Y (EVA)', 'Nguyen Y (EVA)', 'SHM'),
(786, 'DaiTrang.Nguyen@shimmer.com.vn', 'Nguyen DaiTrang (Accounting)', 'Nguyen DaiTrang (Accounting)', 'SHM'),
(787, 'Hieu.Nguyen@shimmer.com.vn', 'Nguyen Hieu (R&D)', 'Nguyen Hieu (R&D)', 'SHM'),
(788, 'Khanh.Nguyen@shimmer.com.vn', 'Nguyen Khanh', 'Nguyen Khanh', 'SHM'),
(789, 'KhanhNgoc.Nguyen@shimmer.com.vn', 'Nguyen KhanhNgoc (R&D)', 'Nguyen KhanhNgoc (R&D)', 'SHM'),
(790, 'KieuTrinh.Nguyen@shimmer.com.vn', 'Nguyen KieuTrinh (Business)', 'Nguyen KieuTrinh (Business)', 'SHM'),
(791, 'Nhi.Nguyen@shimmer.com.vn', 'Nguyen Nhi (Materials WH)', 'Nguyen Nhi (Materials WH)', 'SHM'),
(792, 'ThanhThuy.Nguyen@shimmer.com.vn', 'Nguyen ThanhThuh (Purchase)', 'Nguyen ThanhThuh (Purchase)', 'SHM'),
(793, 'Linh.ThiNguyen@shimmer.com.vn', 'Nguyen Thi Linh (R&D)', 'Nguyen Thi Linh (R&D)', 'SHM'),
(794, 'ThiMy.Nguyen@shimmer.com.vn', 'Nguyen ThiMh (HOP DAN)', 'Nguyen ThiMh (HOP DAN)', 'SHM'),
(795, 'Thu.Nguyen@shimmer.com.vn', 'Nguyen Thu', 'Nguyen Thu', 'SHM'),
(796, 'Tuyet.Nguyen@shimmer.com.vn', 'Nguyen Tuyet (Costing)', 'Nguyen Tuyet (Costing)', 'SHM'),
(797, 'Dieuphoi.Tu@shimmer.com.vn', 'Nguyen Tu (Planning)', 'Nguyen Tu (Planning)', 'SHM'),
(798, 'Quananh.Nguyen@shimmer.com.vn', 'NguyenQuanAnh (IT Team)', 'NguyenQuanAnh (IT Team)', 'SHM'),
(799, 'Jay.Pan@shimmer.com.vn', 'Pan Jay (Senior Manager)', 'Pan Jay (Senior Manager)', 'SHM'),
(800, 'Hien.Pham@shimmer.com.vn', 'Pham Hien (CR)', 'Pham Hien (CR)', 'SHM'),
(801, 'Lan.Pham@shimmer.com.vn', 'Pham Lan (Business)', 'Pham Lan (Business)', 'SHM'),
(802, 'Loan.Pham@shimmer.com.vn', 'Pham Loan (Business)', 'Pham Loan (Business)', 'SHM'),
(803, 'Nguyen.Pham@shimmer.com.vn', 'Pham Nguyen (HR)', 'Pham Nguyen (HR)', 'SHM'),
(804, 'NhuPhuong.Pham@shimmer.com.vn', 'Pham Nhu Phuong (R&D)', 'Pham Nhu Phuong (R&D)', 'SHM'),
(805, 'Phung.Pham@shimmer.com.vn', 'Pham Phung (YTe)', 'Pham Phung (YTe)', 'SHM'),
(806, 'Phuong.Pham@shimmer.com.vn', 'Pham Phuong (R&D)', 'Pham Phuong (R&D)', 'SHM'),
(807, 'Khovatlieu.Thao@shimmer.com.vn', 'Pham Thao (Materials WH)', 'Pham Thao (Materials WH)', 'SHM'),
(808, 'Thuy.Pham@shimmer.com.vn', 'Pham Thuy', 'Pham Thuy', 'SHM'),
(809, 'Tran.Pham@shimmer.com.vn', 'Pham Tran (Business)', 'Pham Tran (Business)', 'SHM'),
(810, 'NhuNgoc.Pham@shimmer.com.vn', 'Pham Ngoc (Shipping)', 'Pham Ngoc (Shipping)', 'SHM'),
(811, 'ThuHien.Pham@shimmer.com.vn', 'Pham ThuHien (Accounting)', 'Pham ThuHien (Accounting)', 'SHM'),
(812, 'Ty.Pham@shimmer.com.vn', 'Pham Ty (R&D)', 'Pham Ty (R&D)', 'SHM'),
(813, 'An.Phan@shimmer.com.vn', 'Phan An (GA)', 'Phan An (GA)', 'SHM'),
(814, 'Cam.Phan@shimmer.com.vn', 'Phan Cam (Accounting)', 'Phan Cam (Accounting)', 'SHM'),
(815, 'Phuong.Tran@shimmer.com.vn', 'Phuong Tran', 'Phuong Tran', 'SHM'),
(816, 'Planning.SMV@shimmer.com.vn', 'Planning', 'Planning', 'SHM'),
(817, 'QIP.SMV@shimmer.com.vn', 'QIP', 'QIP', 'SHM'),
(818, 'QuangHuy.Tran@shimmer.com.vn', 'Quang Huy Tran (R&D)', 'Quang Huy Tran (R&D)', 'SHM'),
(819, 'Quyen.Ngo@shimmer.com.vn', 'Quyen Ngo', 'Quyen Ngo', 'SHM'),
(820, 'R&D.SHM@shimmer.com.vn', 'R&D', 'R&D', 'SHM'),
(821, 'scan.shm@shimmer.com.vn', 'SCAN', 'SCAN', 'SHM'),
(822, 'Business.SHM@shimmer.com.vn', 'SHM Business', 'SHM Business', 'SHM'),
(823, 'Costing.SMV@shimmer.com.vn', 'SMV Costing', 'SMV Costing', 'SHM'),
(824, 'Purchase.SMV@shimmer.com.vn', 'SMV Purchase', 'SMV Purchase', 'SHM'),
(825, 'LiQing.Teng@shimmer.com.vn', 'Teng LiQing (EVA)', 'Teng LiQing (EVA)', 'SHM'),
(826, 'Duc.Thai@shimmer.com.vn', 'Thai Duc (IT)', 'Thai Duc (IT)', 'SHM'),
(827, 'Ting.Ye@shimmer.com.vn', 'Ting Ye (Planning Manager)', 'Ting Ye (Planning Manager)', 'SHM'),
(828, 'Ly.To@shimmer.com.vn', 'To Ly (IP)', 'To Ly (IP)', 'SHM'),
(829, 'Minh.Tra@shimmer.com.vn', 'Tra Minh (GA)', 'Tra Minh (GA)', 'SHM'),
(830, 'Hoa.Tran@shimmer.com.vn', 'Tran Hoa (Assistant)', 'Tran Hoa (Assistant)', 'SHM'),
(831, 'Huy.Tran@shimmer.com.vn', 'Tran Huy (Sercurity)', 'Tran Huy (Sercurity)', 'SHM'),
(832, 'Dieuphoi.Linh@shimmer.com.vn', 'Tran Linh (Planning)', 'Tran Linh (Planning)', 'SHM'),
(833, 'Nga.Tran@shimmer.com.vn', 'Tran Nga (Costing)', 'Tran Nga (Costing)', 'SHM'),
(834, 'Quan.Tran@shimmer.com.vn', 'Tran Quan (EVA)', 'Tran Quan (EVA)', 'SHM'),
(835, 'Thach.Tran@shimmer.com.vn', 'Tran Thach (Planning)', 'Tran Thach (Planning)', 'SHM'),
(836, 'Thao.Tran@shimmer.com.vn', 'Tran Thao', 'Tran Thao', 'SHM'),
(837, 'Nu.Tran@shimmer.com.vn', 'Tran Tuyet Nu (Materials)', 'Tran Tuyet Nu (Materials)', 'SHM'),
(838, 'Vu.Tran@shimmer.com.vn', 'Tran Vu (Codien)', 'Tran Vu (Codien) vu.tran', 'SHM'),
(839, 'An.Tran@shimmer.com.vn', 'Tran An', 'Tran An', 'SHM'),
(840, 'Trang.Phan@shimmer.com.vn', 'Trang Phan', 'Trang Phan', 'SHM'),
(841, 'Han.Trinh@shimmer.com.vn', 'Trinh Han (Purchase)', 'Trinh Han (Purchase)', 'SHM'),
(842, 'Trinh.Pham@shimmer.com.vn', 'Trinh Pham (QIP)', 'Trinh Pham (QIP)', 'SHM'),
(843, 'Hang.Truong@shimmer.com.vn', 'Truong Hang (R&D)', 'Truong Hang (R&D)', 'SHM'),
(844, 'Khanh.Truong@shimmer.com.vn', 'Truong Khanh (Tech)', 'Truong Khanh (Tech)', 'SHM'),
(845, 'Loan.Truong@shimmer.com.vn', 'Truong Loan (Tech)', 'Truong Loan (Tech)', 'SHM'),
(846, 'Ngan.Truong@shimmer.com.vn', 'Truong Ngan (Business)', 'Truong Ngan (Business)', 'SHM'),
(847, 'ToTran.Truong@shimmer.com.vn', 'Truong Tran (Business)', 'Truong Tran (Business)', 'SHM'),
(848, 'ToNhu.Truong@shimmer.com.vn', 'Truong ToNhu (R&D)', 'Truong ToNhu (R&D)', 'SHM'),
(849, 'Vitinh.SMV@shimmer.com.vn', 'vitinh', 'vitinh', 'SHM'),
(850, 'Trang.Vo@shimmer.com.vn', 'Vo Trang (HR)', 'Vo Trang (HR)', 'SHM'),
(851, 'An.Voong@shimmer.com.vn', 'Voong An (CongThuc)', 'Voong An (CongThuc)', 'SHM'),
(852, 'Trang.Vu@shimmer.com.vn', 'Vu Trang (Business)', 'Vu Trang (Business)', 'SHM'),
(853, 'Hua.Wang@shimmer.com.vn', 'Wang Hua (IP)', 'Wang Hua (IP)', 'SHM'),
(854, 'John.Wang@shimmer.com.vn', 'Wang John (GA)', 'Wang John (GA)', 'SHM'),
(855, 'Darren.Wu@shimmer.com.vn', 'Wu Darren (R&D)', 'Wu Darren (R&D)', 'SHM'),
(856, 'ChangMin.Xia@shimmer.com.vn', 'Xia ChangMin', 'Xia ChangMin', 'SHM'),
(857, 'Yu.Xiaobo@shimmer.com.vn', 'Xiaobo Yu (R&D Manage)', 'Xiaobo Yu (R&D Manage)', 'SHM'),
(858, 'Bauwei.Zhang@shimmer.com.vn', 'Zhang Bauwei (IP)', 'Zhang Bauwei (IP)', 'SHM'),
(859, 'Qing.Zhang@shimmer.com.vn', 'Zhang Qing (QIP)', 'Zhang Qing (QIP)', 'SHM'),
(860, 'Yuanhui.Zhang@shimmer.com.vn', 'Zhang Yuanhui (IP)', 'Zhang Yuanhui (IP)', 'SHM'),
(861, 'Zaiyong.Zhang@shimmer.com.vn', 'Zhang Zaiyong (IP)', 'Zhang Zaiyong (IP)', 'SHM'),
(862, 'Xiaobo.Zhang@shimmer.com.vn', 'Zhang Xiaobo (IP)', 'Zhang Xiaobo (IP)', 'SHM'),
(863, 'anhhuy.nguyen@jiahsin.com.vn', 'Nguyễn Huy (HR)', 'Nguyễn Huy (HR)', 'JHV');

-- --------------------------------------------------------

--
-- Table structure for table `health_class`
--

CREATE TABLE `health_class` (
  `id` int(5) NOT NULL,
  `code` varchar(5) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `health_class`
--

INSERT INTO `health_class` (`id`, `code`, `name`) VALUES
(1, '1', 'Bad'),
(2, '2', 'Sick'),
(3, '3', 'Normal'),
(4, '4', 'Good'),
(5, '5', 'Very good');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(5) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `code`, `name`) VALUES
(1, 'vi_VN', 'Tiếng Việt'),
(2, 'en_US', 'English'),
(3, 'zh_CN', '中文');

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
  `manufactory` varchar(250) NOT NULL,
  `min_stock` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_basic`
--

INSERT INTO `medicine_basic` (`id`, `code`, `name`, `unit_code`, `specification`, `approval_no`, `manufactory`, `min_stock`) VALUES
(4, '', 'ALPHA CHOAY', 'PIL', '500mg', '', 'Công ty dược phẩm Long An', 0),
(5, 'AS0026', 'ALAXAN', 'BOX', '125mg*12', '', 'Công ty dược phẩm Long An', 0),
(6, '', '3B', 'BOX', '50mg', '', 'Công ty cổ phần dược phẩm Hậu Giang', 0),
(7, '', 'PANADOLE', 'BOX', '25mg', '', 'CÔNG TY DƯỢC PHẨM HẬU GIANG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_stock`
--

CREATE TABLE `medicine_stock` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `user_code` varchar(11) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name',
  `category` varchar(50) DEFAULT NULL,
  `unit_code` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_change` int(11) DEFAULT '0',
  `price` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `specification` varchar(250) NOT NULL,
  `approval_no` varchar(25) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date NOT NULL,
  `forbidden` varchar(10) DEFAULT 'no',
  `special` varchar(250) DEFAULT NULL,
  `manufactory` varchar(250) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_stock`
--

INSERT INTO `medicine_stock` (`id`, `user_code`, `code`, `name`, `category`, `unit_code`, `quantity`, `quantity_change`, `price`, `amount`, `specification`, `approval_no`, `mfg_date`, `exp_date`, `forbidden`, `special`, `manufactory`, `note`, `date_create`) VALUES
(1, 'I12758', 'AS0026', 'ALAXAN', NULL, 'BOX', 20, 20, 150000, 3000000, '125mg*12', '', '2018-05-02', '2019-05-02', '0', '', 'Công ty dược phẩm Long An', '', '2018-05-23 02:59:37'),
(2, 'I12758', '', 'ALPHA CHOAY', NULL, 'PIL', 50, 50, 25000, 1250000, '500mg', '', '2018-05-03', '2019-05-03', '0', '', 'Công ty dược phẩm Long An', '', '2018-05-23 02:59:37'),
(5, 'I12758', 'AS0026', 'ALAXAN', NULL, 'BOX', 25, 25, 175000, 4375000, '125mg*12', '', '2018-05-03', '2020-06-17', '0', '', 'Công ty dược phẩm Long An', '', '2018-05-23 02:59:37'),
(6, 'I12758', '', '3B', NULL, 'BOX', 15, 15, 85000, 1275000, '50mg', '', '2018-05-03', '2017-08-15', '0', '', 'Công ty cổ phần dược phẩm Hậu Giang', '', '2018-05-23 02:59:37'),
(7, 'I12758', '', 'ALPHA CHOAY', NULL, 'PIL', 30, 0, 150000, 2250000, '500mg', '', '2018-05-04', '2018-05-24', '0', '', 'Công ty dược phẩm Long An', '', '2018-05-23 02:59:37'),
(8, 'I12758', '', 'PANADOLE', NULL, 'BOX', 100, 35, 150000, 15000000, '25mg', '', '2018-05-06', '2018-05-06', '0', '', 'CÔNG TY DƯỢC PHẨM HẬU GIANG', '', '2018-05-23 02:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_stock_change`
--

CREATE TABLE `medicine_stock_change` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `user_code` varchar(11) DEFAULT NULL,
  `patient_code` varchar(11) DEFAULT NULL,
  `medicine_stock_id` int(11) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) NOT NULL COMMENT 'Name',
  `unit_code` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `explanation` varchar(5) NOT NULL DEFAULT 'NO' COMMENT 'NO: undefine; SI: stock in; SO: stock out; OD: out of date; CD: Common diseases; OD: Occupational disease; LA: Labor accidents',
  `status` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_stock_change`
--

INSERT INTO `medicine_stock_change` (`id`, `user_code`, `patient_code`, `medicine_stock_id`, `name`, `unit_code`, `quantity`, `date_create`, `explanation`, `status`) VALUES
(1, 'I12758', NULL, 0, 'ALAXAN', 'BOX', 20, '2018-05-06 18:19:10', '0', 0),
(2, 'I12758', NULL, 0, 'ALPHA CHOAY', 'PIL', 50, '2018-05-06 18:19:10', '0', 0),
(5, 'I12758', NULL, 0, 'ALAXAN', 'BOX', 25, '2018-05-06 18:19:10', '0', 0),
(6, 'I12758', NULL, 0, '3B', 'BOX', 15, '2018-05-06 18:19:10', '0', 0),
(7, 'I12758', NULL, 0, 'ALPHA CHOAY', 'PIL', 0, '2018-05-06 18:19:10', '0', 0),
(8, 'I12758', NULL, 0, 'PANADOLE', 'BOX', 100, '2018-05-06 18:19:10', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `parent` int(10) DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `count_post` int(10) DEFAULT '0',
  `status` tinyint(5) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post Category';

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `parent`, `name`, `slug`, `count_post`, `status`) VALUES
(7, 0, 'Trang chủ', 'trang-chu', 0, 1),
(8, 0, 'Giới thiệu', 'gioi-thieu', 0, 1),
(9, 0, 'Liên hệ', 'lien-he', 0, 1),
(10, 8, 'Công ty Jiahsin', 'jiahsin', 0, 1),
(11, 8, 'Tầm nhìn', 'tam-nhin', 0, 1),
(12, 10, 'CB CNV', 'cb-cnv', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `portal_file`
--

CREATE TABLE `portal_file` (
  `id` int(22) NOT NULL,
  `post_id` int(22) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(64) DEFAULT NULL,
  `file` varchar(1024) DEFAULT NULL,
  `filename` varchar(256) DEFAULT NULL,
  `status` int(5) DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `edited_user_id` int(11) DEFAULT NULL,
  `edited_user_fullname` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_file`
--

INSERT INTO `portal_file` (`id`, `post_id`, `user_id`, `user_fullname`, `file`, `filename`, `status`, `created`, `modified`, `edited_user_id`, `edited_user_fullname`) VALUES
(12, 18, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2019/EHS/luatlaodongvietnamzhongwen.pdf', 'luatlaodongvietnamzhongwen.pdf', 1, '2019-03-27 09:45:14', '2019-03-29 14:51:28', NULL, NULL),
(14, 18, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2019/EHS/cập_nhật_thông_tin_IT.xlsx', 'cập nhật thông tin IT.xlsx', 1, '2019-03-27 09:48:21', '2019-03-29 14:51:28', NULL, NULL),
(21, 18, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2019/EHS/社會保險法—中文版.pdf', '社會保險法—中文版.pdf', 1, '2019-03-27 10:02:23', '2019-03-29 14:51:28', NULL, NULL),
(22, 20, 2, 'Le Duy', '/portal/public/upload/files/4._Thùng_rác_垃圾箱/sample.docx', 'sample.docx', 1, '2019-03-30 10:09:56', NULL, NULL, NULL),
(23, 20, 2, 'Le Duy', '/portal/public/upload/files/4._Thùng_rác_垃圾箱/sample.pdf', 'sample.pdf', 1, '2019-03-30 10:10:04', NULL, NULL, NULL),
(24, 17, 2, 'Le Duy', '/portal/public/upload/files/4._Thùng_rác_垃圾箱/sample.docx', 'sample.docx', 1, '2019-03-30 11:07:57', NULL, NULL, NULL),
(25, 21, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/5._Tạp_chí_công_ty_公司月刊/2019/2019年1月月刊-tap_chi_thang_1_CH.pdf', '2019年1月月刊-tap chi thang 1 CH.pdf', 1, '2019-04-01 10:42:52', NULL, NULL, NULL),
(26, 21, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/5._Tạp_chí_công_ty_公司月刊/2019/tap_chi_thang_1-2019_VN.pdf', 'tap chi thang 1-2019 VN.pdf', 1, '2019-04-01 10:42:56', NULL, NULL, NULL),
(27, 22, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/5._Tạp_chí_công_ty_公司月刊/2019/2019年2月月刊-tap_chi_thang_2_CH.pdf', '2019年2月月刊-tap chi thang 2 CH.pdf', 1, '2019-04-01 10:49:34', NULL, NULL, NULL),
(28, 22, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/5._Tạp_chí_công_ty_公司月刊/2019/tap_chi_thang_2-2019_VN.pdf', 'tap chi thang 2-2019 VN.pdf', 1, '2019-04-01 10:49:38', NULL, NULL, NULL),
(31, 23, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/5._Tạp_chí_công_ty_公司月刊/2019/2019年3月月刊-tap_chi_thang_3_CH.pdf', '2019年3月月刊-tap chi thang 3 CH.pdf', 1, '2019-04-01 10:51:39', NULL, NULL, NULL),
(32, 23, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/5._Tạp_chí_công_ty_公司月刊/2019/tap_chi_thang_3-2019_VN.pdf', 'tap chi thang 3-2019 VN.pdf', 1, '2019-04-01 10:51:43', NULL, NULL, NULL),
(33, 25, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/002_CSHT_LĐ_Chính_sách_Môi_trường_-_An_toàn_-_Sức_khỏe_nghề_nghiệp.pdf', '002 CSHT LĐ Chính sách Môi trường - An toàn - Sức khỏe nghề nghiệp.pdf', 1, '2019-04-01 11:04:03', NULL, NULL, NULL),
(34, 27, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/003_CSHT_LĐ_Chính_sách_Quản_lý_năng_lượng.pdf', '003 CSHT LĐ Chính sách Quản lý năng lượng.pdf', 1, '2019-04-01 13:44:13', NULL, NULL, NULL),
(35, 29, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/303_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_điều_chỉnh_danh_sách_đội_phòng_cháy_chữa_cháy.pdf', '303 QĐ JH HR QUYẾT ĐỊNH vv điều chỉnh danh sách đội phòng cháy chữa cháy.pdf', 1, '2019-04-01 16:44:05', NULL, NULL, NULL),
(36, 30, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/304_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_Phân_định_trách_nhiệm_công_tác_quản_lý_hóa_chất_(_lần_2).pdf', '304 QĐ JH HR QUYẾT ĐỊNH vv Phân định trách nhiệm công tác quản lý hóa chất ( lần 2).pdf', 1, '2019-04-01 16:54:04', NULL, NULL, NULL),
(37, 31, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/303_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_điều_chỉnh_danh_sách_đội_phòng_cháy_chữa_cháy.pdf', '303 QĐ JH HR QUYẾT ĐỊNH vv điều chỉnh danh sách đội phòng cháy chữa cháy.pdf', 1, '2019-04-01 17:00:48', NULL, NULL, NULL),
(38, 32, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/305_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_Thành_lập_đoàn_kiểm_tra_định_kỳ_về_ATVSLĐ_6_tháng_cuối_năm_2018.pdf', '305 QĐ JH HR QUYẾT ĐỊNH vv Thành lập đoàn kiểm tra định kỳ về ATVSLĐ 6 tháng cuối năm 2018.pdf', 1, '2019-04-01 17:14:28', NULL, NULL, NULL),
(41, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/323_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_kho_vật_liệu.pdf', '323 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của kho vật liệu.pdf', 1, '2019-04-01 17:28:31', NULL, NULL, NULL),
(42, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/322_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_điều_phối.pdf', '322 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận điều phối.pdf', 1, '2019-04-01 17:28:40', NULL, NULL, NULL),
(43, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/321_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_R&D.pdf', '321 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận R&D.pdf', 1, '2019-04-01 17:28:46', NULL, NULL, NULL),
(44, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/320_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_QIP.pdf', '320 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận QIP.pdf', 1, '2019-04-01 17:28:56', NULL, NULL, NULL),
(45, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/319_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_ME.pdf', '319 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận ME.pdf', 1, '2019-04-01 17:29:02', NULL, NULL, NULL),
(46, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/318_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_đặt_hàng.pdf', '318 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận đặt hàng.pdf', 1, '2019-04-01 17:29:08', NULL, NULL, NULL),
(47, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/317_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_costing.pdf', '317 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận costing.pdf', 1, '2019-04-01 17:29:15', NULL, NULL, NULL),
(48, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/316_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_phòng_thử_nghiệm.pdf', '316 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của phòng thử nghiệm.pdf', 1, '2019-04-01 17:29:20', NULL, NULL, NULL),
(49, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/315_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_VR.pdf', '315 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận VR.pdf', 1, '2019-04-01 17:29:31', NULL, NULL, NULL),
(50, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/314_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_vi_tính.pdf', '314 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận vi tính.pdf', 1, '2019-04-01 17:29:37', NULL, NULL, NULL),
(51, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/313_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_kế_toán.pdf', '313 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận kế toán.pdf', 1, '2019-04-01 17:29:41', NULL, NULL, NULL),
(52, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/312_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_quy_định_chức_năng_nhiệm_vụ_của_bộ_phận_kiểm_tra.pdf', '312 QĐ JH HR QUYẾT ĐỊNH vv quy định chức năng nhiệm vụ của bộ phận kiểm tra.pdf', 1, '2019-04-01 17:29:48', NULL, NULL, NULL),
(53, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/311_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_qui_định_chức_năng_nhiệm_vụ_của_bộ_phận_sản_xuất.pdf', '311 QĐ JH HR QUYẾT ĐỊNH vv qui định chức năng nhiệm vụ của bộ phận sản xuất.pdf', 1, '2019-04-01 17:29:52', NULL, NULL, NULL),
(54, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/310_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_qui_định_chức_năng_nhiệm_vụ_của_bộ_phận_JSG-_Hải_quan.pdf', '310 QĐ JH HR QUYẾT ĐỊNH vv qui định chức năng nhiệm vụ của bộ phận JSG- Hải quan.pdf', 1, '2019-04-01 17:29:57', NULL, NULL, NULL),
(55, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/309_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_qui_định_chức_năng_nhiệm_vụ_của_bộ_phận_nghiệp_vụ.pdf', '309 QĐ JH HR QUYẾT ĐỊNH vv qui định chức năng nhiệm vụ của bộ phận nghiệp vụ.pdf', 1, '2019-04-01 17:30:02', NULL, NULL, NULL),
(56, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/308_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_qui_định_chức_năng_nhiệm_vụ_của_bộ_phận_bảo_vệ..pdf', '308 QĐ JH HR QUYẾT ĐỊNH vv qui định chức năng nhiệm vụ của bộ phận bảo vệ..pdf', 1, '2019-04-01 17:30:07', NULL, NULL, NULL),
(57, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/307_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_qui_định_chức_năng_nhiệm_vụ_của_bộ_phận_CR.pdf', '307 QĐ JH HR QUYẾT ĐỊNH vv qui định chức năng nhiệm vụ của bộ phận CR.pdf', 1, '2019-04-01 17:30:13', NULL, NULL, NULL),
(58, 33, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/6._QĐ_決定書/2019/306_QĐ_JH_HR_QUYẾT_ĐỊNH_vv_qui_định_chức_năng_nhiệm_vụ_của_bộ_phận_HR.pdf', '306 QĐ JH HR QUYẾT ĐỊNH vv qui định chức năng nhiệm vụ của bộ phận HR.pdf', 1, '2019-04-01 17:30:19', NULL, NULL, NULL),
(59, 34, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/240_TB_JH_HR_Danh_mục_các_chức_danh_công_việc_của_bộ_phận_khối_văn_phòng_cần_có_ngoại_ngữ_tiếng_Anh_hoặc_tiếng_Hoa.pdf', '240 TB JH HR Danh mục các chức danh công việc của bộ phận khối văn phòng cần có ngoại ngữ tiếng Anh hoặc tiếng Hoa.pdf', 1, '2019-04-01 18:17:59', NULL, NULL, NULL),
(60, 34, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/240_TB_JH_HR_Thông_báo_VV_qui_định_cách_xét_phụ_cấp_Ngoại_ngữ_áp_dụng_cho_phần_ngoại_ngữ_Anh_Văn_khối_văn_phòng(hoa).pdf', '240 TB JH HR Thông báo VV qui định cách xét phụ cấp Ngoại ngữ áp dụng cho phần ngoại ngữ Anh Văn khối văn phòng(hoa).pdf', 1, '2019-04-01 18:18:08', NULL, NULL, NULL),
(61, 34, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/240_TB_JH_HR_Thông_báo_VV_qui_định_cách_xét_phụ_cấp_Ngoại_ngữ_áp_dụng_cho_phần_ngoại_ngữ_Anh_Văn_khối_văn_phòng.pdf', '240 TB JH HR Thông báo VV qui định cách xét phụ cấp Ngoại ngữ áp dụng cho phần ngoại ngữ Anh Văn khối văn phòng.pdf', 1, '2019-04-01 18:18:15', NULL, NULL, NULL),
(62, 35, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/248_TB_JH-HR_Thông_báo_VV_qui_định_thời_gian_phát_tiền_thưởng_năng_suất.pdf', '248 TB JH-HR Thông báo VV qui định thời gian phát tiền thưởng năng suất.pdf', 1, '2019-04-01 18:24:19', NULL, NULL, NULL),
(63, 36, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/249_TB_JH-HR_Thông_báo_VV_nghỉ_lễ_Giỗ_Tổ_Hùng_Vương,_Lễ_30_4_và_01_5_2019.pdf', '249 TB JH-HR Thông báo VV nghỉ lễ Giỗ Tổ Hùng Vương, Lễ 30 4 và 01 5 2019.pdf', 1, '2019-04-01 18:36:33', NULL, NULL, NULL),
(64, 37, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/250_TB_JH-HR_Thông_báo_VV_điều_chỉnh_mức_tiền_thưởng_giới_thiệu_công_nhân_mới_(Hoa).pdf', '250 TB JH-HR Thông báo VV điều chỉnh mức tiền thưởng giới thiệu công nhân mới (Hoa).pdf', 1, '2019-04-01 18:53:39', NULL, NULL, NULL),
(65, 37, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/250_TB_JH-HR_Thông_báo_VV_điều_chỉnh_mức_tiền_thưởng_giới_thiệu_công_nhân_mới..pdf', '250 TB JH-HR Thông báo VV điều chỉnh mức tiền thưởng giới thiệu công nhân mới..pdf', 1, '2019-04-01 18:53:47', NULL, NULL, NULL),
(66, 39, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/251_TB_JH-HR_Thông_báo_VV_hỗ_trợ_chỗ_ở_cho_CB-CNV_ngoại_tỉnh_mới_nhận_việc.pdf', '251 TB JH-HR Thông báo VV hỗ trợ chỗ ở cho CB-CNV ngoại tỉnh mới nhận việc.pdf', 1, '2019-04-02 09:26:13', NULL, NULL, NULL),
(67, 40, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/252_TB_JH-HR_Thông_báo_VV_bổ_sung_quy_định_hỗ_trợ_chỗ_ở_cho_CB-CNV_ngoại_tỉnh_mới_nhận_việc.pdf', '252 TB JH-HR Thông báo VV bổ sung quy định hỗ trợ chỗ ở cho CB-CNV ngoại tỉnh mới nhận việc.pdf', 1, '2019-04-02 09:36:04', NULL, NULL, NULL),
(68, 41, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/253_TB_JH-HR_Thông_báo_VV_bổ_sung_quy_định_xét_tiền_thưởng_giới_thiệu_công_nhân_mới(không_áp_dụng_cho_CB-_CNV_cũ)(Hoa).pdf', '253 TB JH-HR Thông báo VV bổ sung quy định xét tiền thưởng giới thiệu công nhân mới(không áp dụng cho CB- CNV cũ)(Hoa).pdf', 1, '2019-04-02 10:09:57', NULL, NULL, NULL),
(69, 41, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/253_TB_JH-HR_Thông_báo_VV_bổ_sung_quy_định_xét_tiền_thưởng_giới_thiệu_công_nhân_mới(không_áp_dụng_cho_CB-_CNV_cũ).pdf', '253 TB JH-HR Thông báo VV bổ sung quy định xét tiền thưởng giới thiệu công nhân mới(không áp dụng cho CB- CNV cũ).pdf', 1, '2019-04-02 10:12:49', NULL, NULL, NULL),
(70, 45, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/004_CSHT_LD_Chính_sách_chống_khủng_bố_C-TPAT.pdf', '004 CSHT LD Chính sách chống khủng bố C-TPAT.pdf', -1, '2019-04-05 14:06:58', '2019-04-05 14:09:17', 4, 'Lâm Quế Bình'),
(71, 45, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/004_CSHT_LĐ_Chính_sách_chống_khủng_bố_C-TPAT.pdf', '004 CSHT LĐ Chính sách chống khủng bố C-TPAT.pdf', 1, '2019-04-05 14:09:11', NULL, NULL, NULL),
(72, 46, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/005_CSHT_LĐ_Chính_sách_bảo_mật_thông_tin.pdf', '005 CSHT LĐ Chính sách bảo mật thông tin.pdf', 1, '2019-04-05 14:18:25', NULL, NULL, NULL),
(73, 47, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/017_CSHT_LĐ_Chính_sách_an_ninh_bảo_mật.pdf', '017 CSHT LĐ Chính sách an ninh bảo mật.pdf', 1, '2019-04-05 16:16:55', NULL, NULL, NULL),
(74, 48, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/006_CSHT_LĐ_繁重毒害勞動政策.pdf', '006 CSHT LĐ 繁重毒害勞動政策.pdf', 1, '2019-04-05 17:02:52', NULL, NULL, NULL),
(75, 48, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/006_CSHT_LĐ_Chính_sách_lao_động_nặng_nhọc-_độc_hại.pdf', '006 CSHT LĐ Chính sách lao động nặng nhọc- độc hại.pdf', 1, '2019-04-05 17:02:59', NULL, NULL, NULL),
(76, 49, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/007_CSHT_LĐ_女員工勞動政策.pdf', '007 CSHT LĐ 女員工勞動政策.pdf', 1, '2019-04-05 17:08:29', NULL, NULL, NULL),
(77, 49, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/007_CSHT_LĐ_Chính_sách_đối_với_lao_động_nữ.pdf', '007 CSHT LĐ Chính sách đối với lao động nữ.pdf', 1, '2019-04-05 17:08:34', NULL, NULL, NULL),
(78, 50, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/008_CSHT_LĐ_培訓政策.pdf', '008 CSHT LĐ 培訓政策.pdf', 1, '2019-04-05 17:20:36', NULL, NULL, NULL),
(79, 50, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/008_CSHT_LĐ_Chính_sách_đào_tạo.pdf', '008 CSHT LĐ Chính sách đào tạo.pdf', 1, '2019-04-05 17:20:41', NULL, NULL, NULL),
(80, 51, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/009_CSHT_LĐ_招募政策.pdf', '009 CSHT LĐ 招募政策.pdf', 1, '2019-04-05 17:24:44', NULL, NULL, NULL),
(81, 51, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/009_CSHT_LĐ_Chính_sách_tuyển_dụng.pdf', '009 CSHT LĐ Chính sách tuyển dụng.pdf', 1, '2019-04-05 17:24:50', NULL, NULL, NULL),
(82, 52, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/010_CSHT_LĐ_薪資及福利政策.pdf', '010 CSHT LĐ 薪資及福利政策.pdf', 1, '2019-04-05 17:27:37', NULL, NULL, NULL),
(83, 52, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/010_CSHT_LĐ_Chính_sách_lương_-_phúc_lợi.pdf', '010 CSHT LĐ Chính sách lương - phúc lợi.pdf', 1, '2019-04-05 17:27:48', NULL, NULL, NULL),
(84, 53, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/011_CSHT_LĐ_資訊傳遞政策.pdf', '011 CSHT LĐ 資訊傳遞政策.pdf', 1, '2019-04-05 17:29:27', NULL, NULL, NULL),
(85, 53, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/011_CSHT_LĐ_Chính_sách_truyền_thông.pdf', '011 CSHT LĐ Chính sách truyền thông.pdf', 1, '2019-04-05 17:29:34', NULL, NULL, NULL),
(86, 54, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/012_CSHT_LĐ_反對強迫勞動政策.pdf', '012 CSHT LĐ 反對強迫勞動政策.pdf', 1, '2019-04-05 17:31:46', NULL, NULL, NULL),
(87, 54, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/012_CSHT_LĐ_Chính_sách_chống_lao_động_cưỡng_bức.pdf', '012 CSHT LĐ Chính sách chống lao động cưỡng bức.pdf', 1, '2019-04-05 17:31:50', NULL, NULL, NULL),
(88, 55, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/013_CSHT_LĐ_反騷擾及侮辱政策.pdf', '013 CSHT LĐ 反騷擾及侮辱政策.pdf', 1, '2019-04-05 17:33:23', NULL, NULL, NULL),
(89, 55, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/013_CSHT_LĐ_Chính_sách_chống_quấy_rối_nhục_mạ.pdf', '013 CSHT LĐ Chính sách chống quấy rối nhục mạ.pdf', 1, '2019-04-05 17:33:27', NULL, NULL, NULL),
(90, 56, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/014_CSHT_LĐ_反報復政策.pdf', '014 CSHT LĐ 反報復政策.pdf', 1, '2019-04-05 17:34:42', NULL, NULL, NULL),
(91, 56, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/014_CSHT_LĐ_Chính_sách_chống_trả_thù.pdf', '014 CSHT LĐ Chính sách chống trả thù.pdf', 1, '2019-04-05 17:34:48', NULL, NULL, NULL),
(92, 57, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/015_CSHT_LĐ_公平待遇政策.pdf', '015 CSHT LĐ 公平待遇政策.pdf', 1, '2019-04-05 17:38:07', NULL, NULL, NULL),
(93, 57, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/015_CSHT_LĐ_Chính_sách_đối_xử_công_bằng.pdf', '015 CSHT LĐ Chính sách đối xử công bằng.pdf', 1, '2019-04-05 17:38:14', NULL, NULL, NULL),
(94, 58, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/016_CSHT_LĐ_自由團隊-宗教自由政策.pdf', '016 CSHT LĐ 自由團隊-宗教自由政策.pdf', 1, '2019-04-05 17:39:52', NULL, NULL, NULL),
(95, 58, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/016_CSHT_LĐ_Chính_sách_tự_do_đoàn_thể-_tự_do_tôn_giáo.pdf', '016 CSHT LĐ Chính sách tự do đoàn thể- tự do tôn giáo.pdf', 1, '2019-04-05 17:39:58', NULL, NULL, NULL),
(96, 59, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/002_QTHT_HR_Quy_trình_thôi_việc.pdf', '002 QTHT HR Quy trình thôi việc.pdf', -1, '2019-04-05 18:05:04', '2019-04-06 08:30:10', 4, 'Lâm Quế Bình'),
(97, 60, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HD01-002_QTHT_HR_Hướng_dẫn_chi_trả_trợ_cấp_thôi_việc.pdf', 'HD01-002 QTHT HR Hướng dẫn chi trả trợ cấp thôi việc.pdf', -1, '2019-04-05 18:08:22', '2019-04-05 18:29:52', 4, 'Lâm Quế Bình'),
(98, 61, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/2019/HD02_003_QTHT_HR_Hướng_dẫn_QL_hồ_sơ_cá_nhân_CB_CNV.pdf', 'HD02 003 QTHT HR Hướng dẫn QL hồ sơ cá nhân CB CNV.pdf', -1, '2019-04-05 18:29:18', '2019-04-05 18:50:24', 4, 'Lâm Quế Bình'),
(99, 60, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/2019/HD01-002_QTHT_HR_Hướng_dẫn_chi_trả_trợ_cấp_thôi_việc.pdf', 'HD01-002 QTHT HR Hướng dẫn chi trả trợ cấp thôi việc.pdf', -1, '2019-04-05 18:29:59', '2019-04-06 10:58:15', 4, 'Lâm Quế Bình'),
(100, 62, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/2019/HD09_003_QTHT_HR_Hướng_dẫn_công_việc_quản_lý_lao_động_nữ_mang_thai.pdf', 'HD09 003 QTHT HR Hướng dẫn công việc quản lý lao động nữ mang thai.pdf', -1, '2019-04-05 18:43:51', '2019-04-06 10:55:13', 4, 'Lâm Quế Bình'),
(101, 61, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/2019/HD02_003_QTHT_HR_Hướng_dẫn_quản_lý_hồ_sơ_cá_nhân_CB_CNV.pdf', 'HD02 003 QTHT HR Hướng dẫn quản lý hồ sơ cá nhân CB CNV.pdf', -1, '2019-04-05 18:50:32', '2019-04-06 10:57:47', 4, 'Lâm Quế Bình'),
(102, 63, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/2019/HD05_003_QTHT_HR_Hướng_dẫn_công_việc_ban_hành_các_quyết_định.pdf', 'HD05 003 QTHT HR Hướng dẫn công việc ban hành các quyết định.pdf', -1, '2019-04-05 18:52:49', '2019-04-06 10:57:18', 4, 'Lâm Quế Bình'),
(103, 64, 4, 'Lâm Quế Bình', '/portal/public/upload/files/2._BTGĐ_總經理部/1._Chính_sách_công_ty_公司政策/001_CSHT_LĐ_Chính_sách_trách_nhiệm_xã_hội.pdf', '001 CSHT LĐ Chính sách trách nhiệm xã hội.pdf', 1, '2019-04-06 10:53:14', NULL, NULL, NULL),
(104, 59, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/LTQT/002_QTHT_HR_Quy_trình_thôi_việc.pdf', '002 QTHT HR Quy trình thôi việc.pdf', 1, '2019-04-06 10:54:52', NULL, NULL, NULL),
(105, 62, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD09_003_QTHT_HR_Hướng_dẫn_công_việc_quản_lý_lao_động_nữ_mang_thai.pdf', 'HD09 003 QTHT HR Hướng dẫn công việc quản lý lao động nữ mang thai.pdf', 1, '2019-04-06 10:56:06', NULL, NULL, NULL),
(106, 63, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD05_003_QTHT_HR_Hướng_dẫn_công_việc_ban_hành_các_quyết_định.pdf', 'HD05 003 QTHT HR Hướng dẫn công việc ban hành các quyết định.pdf', 1, '2019-04-06 10:57:33', NULL, NULL, NULL),
(107, 61, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD02_003_QTHT_HR_Hướng_dẫn_quản_lý_hồ_sơ_cá_nhân_CB_CNV.pdf', 'HD02 003 QTHT HR Hướng dẫn quản lý hồ sơ cá nhân CB CNV.pdf', 1, '2019-04-06 10:57:54', NULL, NULL, NULL),
(108, 60, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD01-002_QTHT_HR_Hướng_dẫn_chi_trả_trợ_cấp_thôi_việc.pdf', 'HD01-002 QTHT HR Hướng dẫn chi trả trợ cấp thôi việc.pdf', 1, '2019-04-06 10:58:25', NULL, NULL, NULL),
(109, 65, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD06_003_QTHT_HR_Hướng_dẫn_công_việc_quản_lý_lao_động_chưa_thành_niên.pdf', 'HD06 003 QTHT HR Hướng dẫn công việc quản lý lao động chưa thành niên.pdf', 1, '2019-04-06 11:02:33', NULL, NULL, NULL),
(110, 66, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD07_003_QTHT_HR_Hướng_dẫn_công_việc_quản_lý_lao_động_khuyết_tật.pdf', 'HD07 003 QTHT HR Hướng dẫn công việc quản lý lao động khuyết tật.pdf', 1, '2019-04-06 11:45:49', NULL, NULL, NULL),
(111, 67, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD08_003_QTHT_HR_Hướng_dẫn_công_việc_quản_lý_lao_động_cao_tuổi.pdf', 'HD08 003 QTHT HR Hướng dẫn công việc quản lý lao động cao tuổi.pdf', 1, '2019-04-06 13:15:56', NULL, NULL, NULL),
(112, 68, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD11_003_QTHT_HR_Hướng_dẫn_công_việc_quản_lý_BHXH,_BHYT,_BHTN.pdf', 'HD11 003 QTHT HR Hướng dẫn công việc quản lý BHXH, BHYT, BHTN.pdf', 1, '2019-04-06 13:19:37', NULL, NULL, NULL),
(113, 69, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/HDCV/HD11_003_QTHT_HR_Hướng_dẫn_công_việc_quản_lý_BHXH,_BHYT,_BHTN.pdf', 'HD11 003 QTHT HR Hướng dẫn công việc quản lý BHXH, BHYT, BHTN.pdf', 1, '2019-04-06 13:22:39', NULL, NULL, NULL),
(114, 70, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/LTQT/004_QTHT_HR_Quy_trình_đào_tạo.pdf', '004 QTHT HR Quy trình đào tạo.pdf', 1, '2019-04-06 14:04:29', NULL, NULL, NULL),
(115, 71, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/LTQT/005_QTHT_HR_Quy_trình_quản_lý_giải_quyết_góp_ý,_thắc_mắc,_khiếu_nại.pdf', '005 QTHT HR Quy trình quản lý giải quyết góp ý, thắc mắc, khiếu nại.pdf', 1, '2019-04-06 14:07:48', NULL, NULL, NULL),
(116, 73, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/LTQT/049_QTKK_HR_Quy_trình_đánh_giá_xếp_loại_ABC.pdf', '049 QTKK HR Quy trình đánh giá xếp loại ABC.pdf', 1, '2019-04-08 11:07:28', NULL, NULL, NULL),
(117, 74, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/LTQT/001_QĐKK_HR_Quy_định_thực_hiện_quy_chế_dân_chủ.pdf', '001 QĐKK HR Quy định thực hiện quy chế dân chủ.pdf', 1, '2019-04-08 11:17:56', NULL, NULL, NULL),
(118, 75, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01-001_QĐKK_HR_Hướng_dẫn_công_việc_tổ_chức_họp_định_kỳ_3_bên.pdf', 'HD01-001 QĐKK HR Hướng dẫn công việc tổ chức họp định kỳ 3 bên.pdf', -1, '2019-04-08 11:47:29', '2019-04-08 14:09:17', 4, 'Lâm Quế Bình'),
(119, 76, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02-001_QĐKK_HR_Hướng_dẫn_công_việc_tổ_chức_hội_nghị_người_lao_động.pdf', 'HD02-001 QĐKK HR Hướng dẫn công việc tổ chức hội nghị người lao động.pdf', -1, '2019-04-08 11:49:17', '2019-04-08 14:11:29', 4, 'Lâm Quế Bình'),
(120, 77, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/LTQT/003_QTKK_HR_Quy_trình_quản_lý_thời_gian_làm_việc.pdf', '003 QTKK HR Quy trình quản lý thời gian làm việc.pdf', 1, '2019-04-08 11:51:16', NULL, NULL, NULL),
(121, 78, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01-003_QTKK_HR_Hướng_dẫn_công_việc_quản_lý_việc_nghỉ_phép.pdf', 'HD01-003 QTKK HR Hướng dẫn công việc quản lý việc nghỉ phép.pdf', -1, '2019-04-08 11:53:16', '2019-04-08 14:10:58', 4, 'Lâm Quế Bình'),
(122, 79, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02-003_QTKK_HR_Hướng_dẫn_công_việc_quản_lý_thời_gian_tăng_ca.pdf', 'HD02-003 QTKK HR Hướng dẫn công việc quản lý thời gian tăng ca.pdf', -1, '2019-04-08 11:54:52', '2019-04-08 14:10:43', 4, 'Lâm Quế Bình'),
(123, 80, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD03-003_QTKK_HR_Hướng_dẫn_công_việc_cách_tính_ngày_nghỉ_phép_năm_cho_trường_hợp_thôi_việc,_không_nghỉ_hết_phép_trong_năm.pdf', 'HD03-003 QTKK HR Hướng dẫn công việc cách tính ngày nghỉ phép năm cho trường hợp thôi việc, không nghỉ hết phép trong năm.pdf', -1, '2019-04-08 11:57:11', '2019-04-08 14:10:27', 4, 'Lâm Quế Bình'),
(124, 81, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD04-003_QTKK_HR_Hướng_dẫn_công_việc_chuyển_đổi_ngày_làm_việc.pdf', 'HD04-003 QTKK HR Hướng dẫn công việc chuyển đổi ngày làm việc.pdf', -1, '2019-04-08 11:58:57', '2019-04-08 14:10:09', 4, 'Lâm Quế Bình'),
(125, 82, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/LTQT/004_QTKK_HR_Quy_trình_xử_lý_kỷ_luật.pdf', '004 QTKK HR Quy trình xử lý kỷ luật.pdf', 1, '2019-04-08 13:02:55', NULL, NULL, NULL),
(126, 83, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/LTQT/005_QTKK_HR_Quy_trình_tính_lương_phát_lương_các_loại_phụ_cấp_và_trợ_cấp.pdf', '005 QTKK HR Quy trình tính lương phát lương các loại phụ cấp và trợ cấp.pdf', 1, '2019-04-08 13:07:48', NULL, NULL, NULL),
(127, 84, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01_005_QTKK_HR_Hướng_dẫn_cập_nhật_các_hạng_mục_trong_phần_mềm_tính_lương.pdf', 'HD01 005 QTKK HR Hướng dẫn cập nhật các hạng mục trong phần mềm tính lương.pdf', 1, '2019-04-08 13:10:04', NULL, NULL, NULL),
(128, 85, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/LTQT/006_QTKK_HR_Quy_trình_quản_lý_phần_mềm_nhân_sự.pdf', '006 QTKK HR Quy trình quản lý phần mềm nhân sự.pdf', 1, '2019-04-08 13:44:49', NULL, NULL, NULL),
(129, 86, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01_006_QTKK_HR_Hướng_dẫn_công_việc_trách_nhiệm_cập_nhật_các_hạng_mục_trong_phần_mềm_nhân_sự.pdf', 'HD01 006 QTKK HR Hướng dẫn công việc trách nhiệm cập nhật các hạng mục trong phần mềm nhân sự.pdf', 1, '2019-04-08 13:47:41', NULL, NULL, NULL),
(130, 87, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02_006_QTKK_HR_Hướng_dẫn_công_việc_quản_lý_danh_sách_thôi_việc_cần_lưu_ý.pdf', 'HD02 006 QTKK HR Hướng dẫn công việc quản lý danh sách thôi việc cần lưu ý.pdf', 1, '2019-04-08 13:49:33', NULL, NULL, NULL),
(131, 88, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01-007_QTKK_Hướng_dân_công_việc_thăng_chức.pdf', 'HD01-007 QTKK Hướng dân công việc thăng chức.pdf', -1, '2019-04-08 13:51:54', '2019-04-08 14:12:23', 4, 'Lâm Quế Bình'),
(132, 89, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/LTQT/048_QTKK_HR_Quy_trình_giải_quyết_tranh_chấp_lao_động_đình_công_lãn_công.pdf', '048 QTKK HR Quy trình giải quyết tranh chấp lao động đình công lãn công.pdf', 1, '2019-04-08 13:56:30', NULL, NULL, NULL),
(133, 90, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01_048_QTKK_HR_Hướng_dẫn_công_việc_xử_lý_khi_có_sự_cố_lao_động_bất_thường.pdf', 'HD01 048 QTKK HR Hướng dẫn công việc xử lý khi có sự cố lao động bất thường.pdf', 1, '2019-04-08 14:04:05', NULL, NULL, NULL),
(134, 75, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01_001_QĐKK_HR_Hướng_dẫn_công_việc_tổ_chức_họp_định_kỳ_3_bên.pdf', 'HD01 001 QĐKK HR Hướng dẫn công việc tổ chức họp định kỳ 3 bên.pdf', 1, '2019-04-08 14:09:23', NULL, NULL, NULL),
(135, 81, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD04_003_QTKK_HR_Hướng_dẫn_công_việc_chuyển_đổi_ngày_làm_việc.pdf', 'HD04 003 QTKK HR Hướng dẫn công việc chuyển đổi ngày làm việc.pdf', 1, '2019-04-08 14:10:14', NULL, NULL, NULL),
(136, 80, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD03_003_QTKK_HR_Hướng_dẫn_công_việc_cách_tính_ngày_nghỉ_phép_năm_cho_trường_hợp_thôi_việc,_không_nghỉ_hết_phép_trong_năm.pdf', 'HD03 003 QTKK HR Hướng dẫn công việc cách tính ngày nghỉ phép năm cho trường hợp thôi việc, không nghỉ hết phép trong năm.pdf', 1, '2019-04-08 14:10:33', NULL, NULL, NULL),
(137, 79, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02_003_QTKK_HR_Hướng_dẫn_công_việc_quản_lý_thời_gian_tăng_ca.pdf', 'HD02 003 QTKK HR Hướng dẫn công việc quản lý thời gian tăng ca.pdf', 1, '2019-04-08 14:10:49', NULL, NULL, NULL),
(138, 78, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01_003_QTKK_HR_Hướng_dẫn_công_việc_quản_lý_việc_nghỉ_phép.pdf', 'HD01 003 QTKK HR Hướng dẫn công việc quản lý việc nghỉ phép.pdf', 1, '2019-04-08 14:11:16', NULL, NULL, NULL),
(139, 76, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02_001_QĐKK_HR_Hướng_dẫn_công_việc_tổ_chức_hội_nghị_người_lao_động.pdf', 'HD02 001 QĐKK HR Hướng dẫn công việc tổ chức hội nghị người lao động.pdf', 1, '2019-04-08 14:11:37', NULL, NULL, NULL),
(140, 88, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD01_007_QTKK_Hướng_dân_công_việc_thăng_chức.pdf', 'HD01 007 QTKK Hướng dân công việc thăng chức.pdf', 1, '2019-04-08 14:12:29', NULL, NULL, NULL),
(141, 91, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02_048_QTKK_HR_Hướng_dẫn_công_việc_xử_lý_khi_có_sự_cố_lao_động_bất_thường_dành_cho_lao_động_nước_ngoài.pdf', 'HD02 048 QTKK HR Hướng dẫn công việc xử lý khi có sự cố lao động bất thường dành cho lao động nước ngoài.pdf', 1, '2019-04-08 14:16:17', NULL, NULL, NULL),
(142, 98, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/7._TB_通知/2019/254_TB_JH-HR_Thông_báo_VV_điều_chỉnh_quy_định_tính_công_tác_phí.pdf', '254 TB JH-HR Thông báo VV điều chỉnh quy định tính công tác phí.pdf', 1, '2019-04-11 18:13:03', NULL, NULL, NULL),
(143, 99, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02_005_QTKK_HR_HD_các_quy_định_và_công_thức_tính_lương,_phụ_cấp,_các_khoản_thưởng_hay_hỗ_trợ_khác_1_4_2019_(hoa)..pdf', 'HD02 005 QTKK HR HD các quy định và công thức tính lương, phụ cấp, các khoản thưởng hay hỗ trợ khác 1 4 2019 (hoa)..pdf', 1, '2019-04-13 15:06:00', NULL, NULL, NULL),
(144, 99, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTKK/HDCV/HD02_005_QTKK_HR_HD_các_quy_định_và_công_thức_tính_lương,_phụ_cấp,_các_khoản_thưởng_hay_hỗ_trợ_khác_1_4_2019.pdf', 'HD02 005 QTKK HR HD các quy định và công thức tính lương, phụ cấp, các khoản thưởng hay hỗ trợ khác 1 4 2019.pdf', 1, '2019-04-13 15:06:12', NULL, NULL, NULL),
(145, 100, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/LTQT/001_QTHT_HR_Quy_trình_truyển_dụng_招募流程.pdf', '001 QTHT HR Quy trình truyển dụng 招募流程.pdf', 1, '2019-04-16 09:19:58', NULL, NULL, NULL),
(146, 100, 4, 'Lâm Quế Bình', '/portal/public/upload/files/3._HR/1._LT_QT_VN_文件程序（越籍）/QTHT/LTQT/001_QTHT_HR_Quy_trình_truyển_dụng.pdf', '001 QTHT HR Quy trình truyển dụng.pdf', 1, '2019-04-16 09:20:04', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_post`
--

CREATE TABLE `portal_post` (
  `id` int(22) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(64) DEFAULT NULL,
  `user_dept` varchar(5) DEFAULT NULL,
  `post_group` int(5) DEFAULT '1',
  `title` varchar(256) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `picture` varchar(512) DEFAULT NULL,
  `content` text,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `news` tinyint(5) NOT NULL DEFAULT '0' COMMENT 'Tin Mới 最新消息',
  `status` int(5) DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edited_user_id` int(11) DEFAULT NULL,
  `edited_user_fullname` varchar(64) DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  `deleted_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_post`
--

INSERT INTO `portal_post` (`id`, `user_id`, `user_fullname`, `user_dept`, `post_group`, `title`, `description`, `picture`, `content`, `date_start`, `date_end`, `news`, `status`, `created`, `modified`, `edited_user_id`, `edited_user_fullname`, `deleted`, `deleted_user_id`) VALUES
(1, 1, 'John Nguyen', NULL, 0, '16/04/2019 Đội PCCC thử chuông báo cháy, CB-CNV vẫn làm việc bình thường - 今日16/04/2019 消防警報系統測試，請勿慌張', '', '', '', NULL, NULL, 0, 0, '2019-04-01 10:57:34', '2019-09-04 14:32:25', 2, 'Le Duy', NULL, NULL),
(2, 1, 'John Nguyen', NULL, 0, 'Hướng dẫn sử dụng 用戶指南', '', '/portal/public/img/user-guide.jpg', '<p>Để chỉnh sửa hoặc th&ecirc;m mới th&ocirc;ng tin th&igrave;&nbsp; bấm v&agrave;o n&uacute;t chỉnh sửa c&oacute; biểu tượng như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Khi bấm v&agrave;o (1) để cập nhật tin n&oacute;ng</p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_edithot(1).jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Khi bấm v&agrave;o (2) hoặc (3)</p>\r\n\r\n<ul>\r\n	<li>Để chỉnh sửa th&ocirc;ng tin</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_edit.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_edit1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_edit2.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>k&eacute;o xuống dưới để upload tập tin nếu c&oacute;</p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_edit3.jpg\" style=\"width:100%\" /></p>\r\n\r\n<ul>\r\n	<li>Để tạo b&agrave;i mới</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_create.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_create1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Hộp thư g&oacute;p &yacute;&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_mess.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Khi người d&ugrave;ng muốn đổi mật khẩu</p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_changepwd.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_changepwd1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Khi muốn tho&aacute;t ra</p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_logout.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Sử dụng chức năng t&igrave;m kiếm&nbsp; b&agrave;i viết hay tập tin</p>\r\n\r\n<p><img alt=\"\" src=\"/portal/public/upload/images/system/user_guide_search.jpg\" style=\"width:100%\" /></p>\r\n', NULL, NULL, 0, NULL, '2019-03-20 10:53:00', '2019-03-30 11:58:58', 2, 'Le Duy', NULL, NULL),
(21, 4, 'Lâm Quế Bình', NULL, 7, 'Tạp chí công ty tháng 01/2019 - 2019年1月公司月刊', '', '', '<p>Tạp ch&iacute; c&ocirc;ng ty th&aacute;ng 01/2019&nbsp;</p>\r\n\r\n<p>2019年1月公司月刊</p>\r\n', NULL, NULL, 1, 1, '2019-04-01 10:34:30', '2019-04-01 10:43:20', 4, 'Lâm Quế Bình', NULL, NULL),
(22, 4, 'Lâm Quế Bình', NULL, 7, 'Tạp chí công ty tháng 02/2019 - 2019年2月公司月刊', '', '', '<p>Tạp ch&iacute; c&ocirc;ng ty th&aacute;ng 02/2019</p>\r\n\r\n<p>2019年2月公司月刊</p>\r\n', NULL, NULL, 1, 1, '2019-04-01 10:48:51', '2019-04-01 10:52:22', 4, 'Lâm Quế Bình', NULL, NULL),
(23, 4, 'Lâm Quế Bình', NULL, 7, 'Tạp chí công ty tháng 03/2019 - 2019年3月公司月刊', '', '', '<p>Tạp ch&iacute; c&ocirc;ng ty th&aacute;ng 03/2019</p>\r\n\r\n<p>2019年3月公司月刊</p>\r\n', NULL, NULL, 1, 1, '2019-04-01 10:49:51', '2019-04-01 10:53:22', 4, 'Lâm Quế Bình', NULL, NULL),
(25, 4, 'Lâm Quế Bình', NULL, 2, '002/CSHT/LĐ CHÍNH SÁCH MÔI TRƯỜNG - AN TOÀN - SỨC KHỎE NGHỀ NGHIỆP', 'Ban hành lần 03 ngày 01/08/2015', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-01 11:00:30', '2019-04-05 17:41:56', 4, 'Lâm Quế Bình', NULL, NULL),
(27, 4, 'Lâm Quế Bình', NULL, 2, '003/CSHT/LĐ CHÍNH SÁCH QUẢN LÝ NĂNG LƯỢNG', 'Ban hành lần 02 ngày 27/09/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-01 11:56:13', '2019-04-05 17:42:45', 4, 'Lâm Quế Bình', NULL, NULL),
(30, 4, 'Lâm Quế Bình', NULL, 9, '304/QĐ/JH-HR QUYẾT ĐỊNH VỀ VIỆC PHÂN ĐỊNH TRÁCH NHIỆM CÔNG TÁC QUẢN LÝ HÓA CHẤT - 決定書關於化學品管理責任', 'Có hiệu lực từ ngày 21/01/2019 - 自21/01/2019起生效', '', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>QUYẾT ĐỊNH 決定書</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Về việc PH&Acirc;N ĐỊNH TRÁCH NHI&Ecirc;̣M C&Ocirc;NG TÁC QUẢN L&Yacute; H&Oacute;A CHẤT (lần 2 )</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>關於分配管理化學品的責任（第二次） &nbsp;</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>-------------------------------------------</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>BAN TỔNG GI&Aacute;M ĐỐC C&Ocirc;NG TY JIA HSIN:</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>佳新責任有限公司總經理部：</strong></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ v&agrave;o Bộ luật lao động được Quốc hội ban h&agrave;nh theo Luật số10/2012/QH13, th&ocirc;ng qua ng&agrave;y 18/6/2012 v&agrave; &aacute;p dụng ch&iacute;nh thức từ 01/5/2013; 根據勞動法律 10/2012/QH13，通過在 18/6/2012和 在01/5/2013正式適用。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ Luật h&oacute;a chất số 06/2007/QH12根據第06/2007/QH12號化學品法</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ Nghị định 108/2008/ NĐ- CP, Nghị định số 26/2011/ NĐ-CP v&agrave; th&ocirc;ng tư <span style=\"background-color:white\"><span style=\"color:black\">36/2014/TT-BCT Quy định về huấn luyện kỹ thuật an to&agrave;n h&oacute;a chất v&agrave; cấp giấy chứng nhận huấn luyện kỹ thuật an to&agrave;n h&oacute;a chất. 根據第</span></span>108/2008/ NĐ- CP號議定、第26/2011/ NĐ-CP號議定與第<span style=\"background-color:white\"><span style=\"color:black\">36/2014/TT-BCT通知，規定於化學品安全技術培訓，及化學品安全技術培訓認證。</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ vào quy&ecirc;̀n hạn BTGĐ.根據總經理部的權限。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:76px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>QUY&Ecirc;́T ĐỊNH: 決定</strong></span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐI&Ecirc;̀U 1:</strong> Nay ph&acirc;n định trách nhi&ecirc;̣m c&ocirc;ng tác Quản l&yacute; h&oacute;a chất tại c&ocirc;ng ty cho </span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第一條：</strong>目前向如下的人員分配管理公司化學品</span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Ocirc;ng </strong>Th&aacute;i Nhựt Phong, MS: A0205 - Chủ nhiệm Kho vật liệu BU1</span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>BU1資材倉主任Th&aacute;i Nhựt Phong先生，工號：A0205 </span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>B&agrave; </strong>Trần Thị Thắm, MS: A0720 &ndash; Trưởng khối Kho vật liệu BU2</span></span></p>\r\n\r\n<p style=\"margin-left:80px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BU2 資材倉課長Trần Thị Thắm小姐，工號：A0720</span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐI&Ecirc;̀U 2:</strong> Nhiệm vụ v&agrave; tr&aacute;ch nhiệm </span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第二條：</strong>任務和責任</span></span></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"color:black\">Quản l&yacute; c&aacute;c hoạt động tại kho h&oacute;a chất c&ocirc;ng ty theo đ&uacute;ng c&aacute;c y&ecirc;u cầu của ph&aacute;p luật, y&ecirc;u cầu của c&aacute;c b&ecirc;n li&ecirc;n quan v&agrave; theo quy định của c&ocirc;ng ty.</span></span></span></span> <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"color:black\">根據法律的要求、相關部門的要求與公司的規定，管理公司化學品倉的工作。</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"color:black\">Đảm bảo cơ sở vật chất, việc ph&acirc;n loại, lưu trữ h&oacute;a chất, lưu trữ th&ocirc;ng tin, quản l&yacute; xuất nhập tại kho h&oacute;a chất theo đ&uacute;ng quy định</span></span></span></span> <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"color:black\">依規定確保倉庫的設施，分類、保存化學品，保留資訊，進出庫管理。</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"color:black\">Diễn tập v&agrave; triển khai c&aacute;c phương &aacute;n, biện ph&aacute;p khi c&oacute; sự cố h&oacute;a chất tại kho theo đ&uacute;ng quy định.</span></span></span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"color:black\">依規定演習，當在倉庫發生事故時進行實行克服方案、方法。</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">Thực hiện mọi nhiệm vụ được giao trong việc triển khai v&agrave; &aacute;p dụng 3 hệ thống tại c&ocirc;ng ty: ISO 14001; OHSAS 18001; ISO 50001.</span></span></span> <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"color:black\">公司實行，及應用ISO 14001、OHSAS 18001、ISO 50001的3個系統時執行所有分配的任務。</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐI&Ecirc;̀U 3: </strong>Các nh&acirc;n sự có t&ecirc;n ở đi&ecirc;̀u 1 và các B&ocirc;̣ ph&acirc;̣n li&ecirc;n quan có trách nhi&ecirc;̣m thi hành quy&ecirc;́t định này<strong>.</strong></span></span></p>\r\n\r\n<p style=\"margin-left:72px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第3</strong><strong>條：</strong>在上述第一條的人員與相關的各部門有責任實行此決定。</span></span></p>\r\n\r\n<p style=\"margin-left:60px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>&nbsp;</strong><em>Quyết định n&agrave;y được phổ biến to&agrave;n C&ocirc;ng ty v&agrave; c&oacute; hiệu lực kể từ ng&agrave;y</em> ký.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>為全公司遍佈此決定並生效於簽署日期起。</em></span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-01 16:53:53', '2019-04-02 10:54:49', 4, 'Lâm Quế Bình', NULL, NULL),
(31, 4, 'Lâm Quế Bình', NULL, 9, '303/QĐ/JH-HR QUYẾT ĐỊNH VỀ VIỆC ĐIỀU CHỈNH DANH SÁCH ĐỘI PHÒNG CHÁY CHỮA CHÁY - 決定書關於調整消防隊名單事宜', 'Có hiệu lực từ ngày 01/01/2019 - 自01/01/2019起生效', '', '<h5 style=\"text-align:center\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">QUYẾT ĐỊNH &nbsp;</span></span></strong></h5>\r\n\r\n<h6 style=\"text-align:center\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>ĐIỀU CHỈNH DANH S&Aacute;CH ĐỘI PH&Ograve;NG CH&Aacute;Y CHỮA CH&Aacute;Y </em></span></span></strong></h6>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>決定: 調整消防隊名單</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>***************************</strong></span></span></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>Căn cứ Luật ph&ograve;ng ch&aacute;y chữa ch&aacute;y ng&agrave;y 29 th&aacute;ng 6 năm 2001 </em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em><span style=\"color:black\">Căn cứ Nghị Định số 79/2014/NĐ-CP ng&agrave;y 31/07/2014 của Ch&iacute;nh phủ quy định chi tiết thi h&agrave;nh một số điều của Luật ph&ograve;ng ch&aacute;y v&agrave; chữa ch&aacute;y v&agrave; Luật sửa đổi, bổ sung một số diều của Luật PCCC</span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>Căn cứ th&ocirc;ng tư 66/ 2014/ TT-BCA ng&agrave;y 16/ 12/ 2014 của Bộ c&ocirc;ng an quy định chi tiết 1 số điều Nghị định 79/2014/ NĐ-CP.</em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>Căn cứ quyền hạn của ban Tổng Gi&aacute;m Đốc&nbsp; </em></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>BAN TỔNG GI&Aacute;M ĐỐC QUYẾT ĐỊNH&nbsp; 總經理部決定</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><u>ĐIẾU 1</u>: Nay </strong><strong>đi&ecirc;̀u chỉnh</strong><strong> danh S&aacute;ch đội vi&ecirc;n đội ph&ograve;ng ch&aacute;y chữa ch&aacute;y C</strong><strong>&ocirc;</strong><strong>ng Ty TNHH JIA HSIN nhằm thay thế cho một số đội vi&ecirc;n PCCC đ&atilde; th&ocirc;i việc theo danh s&aacute;ch đ&iacute;nh k&egrave;m </strong><strong>.</strong></span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp; 今日調整消防隊名單 ， 替代已離職的消防成員（附上名單）。</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><u>ĐIỀU 2</u>: Nhiệm vụ đội PCCC</strong><strong>: </strong>消防隊任務：</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2.1 Đề xuất việc ban h&agrave;nh quy định, nội quy an t&ograve;an về ph&ograve;ng ch&aacute;y v&agrave; chữa ch&aacute;y; 提出頒行消防規定, 安全內規</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2.2 Tổ chức tuy&ecirc;n truyền, phổ biến ph&aacute;p luật v&agrave; kiến thức PCCC, x&acirc;y dựng phong tr&agrave;o quần ch&uacute;ng tham gia ph&ograve;ng ch&aacute;y chữa ch&aacute;y; 進行宣傳, 宣導消防規定與知識, 建立團體參加消防活動</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2.3 Kiểm tra, đ&ocirc;n đốc việc chấp h&agrave;nh c&aacute;c quy định, nội quy an t&ograve;an về PCCC; 檢查, 督促消防內規, 消防安全規定之執行 </span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2.4 Tố chức huấn luyện, bồi dưỡng nghiệp vụ PCCC cho CB-CNV trong c&ocirc;ng ty. Tham gia huấn luyện, bồi dưỡng nghiệp vụ PCCC theo quy định; 為公司同仁組織消防訓練, 依規定參加消防訓練</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2.5 Thường xuy&ecirc;n, định kỳ kiểm tra ph&aacute;t hiện c&aacute;c sơ hở, thiếu s&oacute;t về PCCC v&agrave; c&oacute; biện ph&aacute;p khắc phục kịp thời; 定期檢查, 發現各項消防漏洞並提出克服措施</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2.6 X&acirc;y dựng phương &aacute;n, chuẩn bị lực lượng, phương tiện v&agrave; thực hiện nhiệm vụ chữa ch&aacute;y khi c&oacute; ch&aacute;y xảy ra. Tham gia chữa ch&aacute;y ở địa phương, cơ sở kh&aacute;c khi c&oacute; y&ecirc;u cầu.建立消防方案, 準備消防人力, 設備並當遇到火災時須執行救火作業。如當地民居或其他公司發生火災時須進行協助。</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><u>ĐIỀU 3</u></strong><strong>: </strong>Ban chỉ huy đội PCCC v&agrave; c&aacute;c đội vi&ecirc;n c&oacute; t&ecirc;n trong danh s&aacute;ch chịu tr&aacute;ch nhiệm thi h&agrave;nh quyết định n&agrave;y.消防名單中的消防隊長和成員須依照此規定執行 。</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><u>ĐIỀU 4:</u></strong> <strong>C&aacute;c chế độ ch&iacute;nh s&aacute;ch cho đội PCCC được thực hiện theo quy chế bồi dưỡng đ&iacute;nh k&egrave;m</strong> 對於消防隊政策、制度，依照消防隊津貼制度執行。</span></span></p>\r\n\r\n<p style=\"margin-left:96px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Quyết định n&agrave;y được phổ biến đến to&agrave;n thể CBCNV v&agrave; c&aacute;c BP/PX biết để thực hiện v&agrave; c&oacute; hiệu lực từ ng&agrave;y k&yacute;.</span></span></p>\r\n\r\n<p style=\"margin-left:96px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">此規定自簽署日正式生效並宣導給全體同仁知悉並執行</span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-01 17:00:40', '2019-04-02 10:54:39', 4, 'Lâm Quế Bình', NULL, NULL),
(32, 4, 'Lâm Quế Bình', NULL, 9, '305/QĐ/JH-HR QUYẾT ĐỊNH VỀ VIỆC THÀNH LẬP ĐOÀN KIỂM TRA ĐỊNH KỲ VỀ ATVSLĐ 6 THÁNG CUỐI NĂM 2018 - 決定書 關於成立2018年下半年勞動衛生安全定期檢查小組', 'Có hiệu lực từ ngày 22/01/2019 - 自22/01/2019起生效', '', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\">QUYẾT ĐỊNH 決定書 </span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Về việc TH&Agrave;NH LẬP ĐO&Agrave;N KIỂM TRA ĐỊNH KỲ VỀ ATVSLĐ 6 th&aacute;ng cuối năm 2018</span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\">關於成立2018年下半年勞動衛生安全定期檢查小組</span></strong></span></p>\r\n\r\n<table align=\"left\" style=\"border:undefined\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">**************************************</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>BAN TỔNG GI&Aacute;M ĐỐC C&Ocirc;NG TY JIA HSIN</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>佳新總經理部</strong></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Căn cứ theo quy định tại th&ocirc;ng tư số 07/2016/TT-BLĐTBXH ng&agrave;y 15/05/2016 quy định một số nội dung tổ chức thực hiện c&ocirc;ng t&aacute;c an to&agrave;n, vệ sinh lao động tại cơ sở sản xuất, kinh doanh;根據15/05/2016第07/2016/TT-BLĐTBXH號通知，關於規定在生產、經營機構舉辦實行勞動衛生安全工作。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Căn cứ y&ecirc;u cầu nhiệm vụ của Hội Đồng ATVSLĐ c&ocirc;ng ty TNHH Jia Hsin;根據佳新勞動衛生安全委員會的職能要求。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Căn cứ theo quyền hạn của BTGĐ. 根據總經理部的權限。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>QUYẾT ĐỊNH: </strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>決定：</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>ĐIỀU 1: </strong>Th&agrave;nh lập Đo&agrave;n kiểm tra c&ocirc;ng t&aacute;c an to&agrave;n, vệ sinh lao động bao gồm c&aacute;c nh&acirc;n sự trong danh s&aacute;ch đ&iacute;nh k&egrave;m của &ldquo;Kế hoạch kiểm tra định kỳ về ATVSLĐ cấp c&ocirc;ng ty 6 th&aacute;ng cuối năm 2018&rdquo; ban h&agrave;nh ng&agrave;y 19/01/2019.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>第一條：</strong>成立勞動衛生安全檢查小組，包含19/01/2019頒行「2018年下半年勞動衛生安全定期檢查計劃」的附加人事名單。</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>ĐIỀU 2: </strong>Nhiệm vụ v&agrave; Quyền hạn: </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>第二條：</strong>任務與權限：</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Đo&agrave;n kiểm tra c&oacute; tr&aacute;ch nhiệm thực hiện nghi&ecirc;m t&uacute;c theo nội dung &ldquo;Kế hoạch kiểm tra định kỳ về ATVSLĐ cấp c&ocirc;ng ty&rdquo; của HĐATVSLĐ ra ng&agrave;y 19/01/2019;</span></span><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">檢查小組有責任執行19/01/2019勞動衛生安全委員會所發佈的「公司下半年勞動衛生安全定期檢查計劃」內容。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Trong qu&aacute; tr&igrave;nh kiểm tra Đo&agrave;n c&oacute; tr&aacute;ch nhiệm lập bi&ecirc;n bản ghi nhận x&eacute;t v&agrave; kiến nghị đối với đơn vị được kiểm tra v&agrave; ghi nhận c&aacute;c kiến nghị của đơn vị được kiểm tra;</span></span><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">檢查過程中，檢查小組負責做檢查記錄，向被檢查的單位寫下評語與建議，及記錄被檢查單位的意見。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Đo&agrave;n kiểm tra phải c&oacute; kế hoạch kiểm tra việc thực hiện c&aacute;c kiến nghị của đơn vị được kiểm tra, xem x&eacute;t thực hiện hoặc giao cho c&aacute;c Bộ phận c&oacute; tr&aacute;ch nhiệm thực hiện c&aacute;c nội dung thuộc tr&aacute;ch nhiệm giải quyết hoặc c&aacute;c kiến nghị của đơn vị được kiểm tra.</span></span><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">檢查小組需制定被檢查單位實行計劃，可適時分配問題之權責部門，依計劃追蹤被檢查單位進度。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>ĐIỀU 3: </strong>Thực hiện</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>第三條：</strong>實行</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">C&aacute;c đơn vị được kiểm tra c&oacute; tr&aacute;ch nhiệm cử người đứng đầu đơn vị b&aacute;o c&aacute;o t&oacute;m tắt t&igrave;nh h&igrave;nh thực hiện c&ocirc;ng t&aacute;c ATVSLĐ với Đo&agrave;n kiểm tra v&agrave; đề xuất c&aacute;c kiến nghị, biện ph&aacute;p khắc phục c&aacute;c thiếu s&oacute;t, tồn tại ngo&agrave;i khả năng giải quyết của đơn vị m&igrave;nh. Hướng dẫn đo&agrave;n kiểm tra đi xem x&eacute;t thực tế v&agrave; trả lời c&aacute;c c&acirc;u hỏi, tiếp thu c&aacute;c chỉ dẫn của Đo&agrave;n kiểm tra;</span></span><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">被檢查單位負責指派單位最高主管說明實行狀況，及提出意見、缺失克服措施、超出部門權責而無法解決之問題。指引檢查小組實施檢查，及回答問題、接收檢查小組的指導。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Đơn vị được kiểm tra phải tổ chức khắc phục c&aacute;c thiếu s&oacute;t m&agrave; Đo&agrave;n kiểm tra kiến nghị, đồng thời b&aacute;o c&aacute;o Cấp tr&ecirc;n kiểm tra để theo d&otilde;i.</span></span><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">被檢查單位克服檢查小組建議的缺失，同時報告上級主管檢查、追蹤。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>ĐIỀU 3: </strong>C&aacute;c th&agrave;nh vi&ecirc;n c&oacute; t&ecirc;n trong Điều 1 v&agrave; c&aacute;c BP &ndash; PX li&ecirc;n quan c&oacute; tr&aacute;ch nhiệm thi h&agrave;nh Quyết định n&agrave;y.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>第3條：</strong>上述第一條人員與相關各部門有責任實行此決定。</span></span></p>\r\n\r\n<p style=\"margin-left:72px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Quyết định n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV trong C&ocirc;ng ty biết để thực hiện v&agrave; c&oacute; hiệu lực kể từ ng&agrave;y k&yacute;.</em></span></span></p>\r\n\r\n<p style=\"margin-left:72px; text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>向全公司通報此決定並於簽署日期起生效</em></span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-01 17:14:05', '2019-04-02 10:55:03', 4, 'Lâm Quế Bình', NULL, NULL),
(33, 4, 'Lâm Quế Bình', NULL, 9, '306/QĐ/JH-HR ~ 323/QĐ/JH-HR QUYẾT ĐỊNH CHỨC NĂNG NHIỆM VỤ CỦA CÁC BỘ PHẬN -決定書關於各部門職務說明書', 'Có hiệu lực từ ngày 01/03/2019 - 自01/03/2019起生效', '', '<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;306/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c bộ phận HR</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第306/QĐ/JH-HR號決定書，關於規定人資部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;307/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c bộ phận CR</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第307/QĐ/JH-HR號決定書，關於規定CR部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;308/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c bộ phận Bảo vệ</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第308/QĐ/JH-HR號決定書，關於規定保衛部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;309/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c bộ phận Nghiệp vụ</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第309/QĐ/JH-HR號決定書，關於規定業務部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;310/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c bộ phận JSG- Hải quan</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第310/QĐ/JH-HR號決定書，關於規定JSG關務部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;311/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c bộ phận Sản xuất</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第311/QĐ/JH-HR號決定書，關於規定現場部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;312/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận Kiểm tra</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第312/QĐ/JH-HR號決定書，關於規定稽核部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;313/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận Kế to&aacute;n</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第313/QĐ/JH-HR號決定書，關於規定財會部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;314/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận Vi t&iacute;nh</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第314/QĐ/JH-HR號決定書，關於規定電腦部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;315/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c bộ phận VR</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第315/QĐ/JH-HR號決定書，關於規定VR部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;316/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của c&aacute;c Ph&ograve;ng thử nghiệm</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第316/QĐ/JH-HR號決定書，關於規定實驗室職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;317/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận Costing</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第317/QĐ/JH-HR號決定書，關於規定成本報價部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;318/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận Đặt h&agrave;ng</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第318/QĐ/JH-HR號決定書，關於規定採購部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;319/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận ME</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第319/QĐ/JH-HR號決定書，關於規定優化部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;320/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận QIP</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第320/QĐ/JH-HR號決定書，關於規定品管部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;321/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận R&amp;D</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第321/QĐ/JH-HR號決定書，關於規定開發部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;322/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của bộ phận Điều phối</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第322/QĐ/JH-HR號決定書，關於規定生管部門職能說明書</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;323/QĐ/JH-HR quyết định về việc quy định chức năng nhiệm vụ của Kho vật liệu</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第323/QĐ/JH-HR號決定書，關於規定資材倉職能說明書</span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-01 17:27:08', '2019-04-02 10:55:14', 4, 'Lâm Quế Bình', NULL, NULL);
INSERT INTO `portal_post` (`id`, `user_id`, `user_fullname`, `user_dept`, `post_group`, `title`, `description`, `picture`, `content`, `date_start`, `date_end`, `news`, `status`, `created`, `modified`, `edited_user_id`, `edited_user_fullname`, `deleted`, `deleted_user_id`) VALUES
(34, 4, 'Lâm Quế Bình', NULL, 10, '240/TB/JH-HR THÔNG BÁO VỀ VIỆC QUY ĐỊNH CÁCH XÉT PHỤ CẤP NGOẠI NGỮ ÁP DỤNG CHO PHẦN NGOẠI NGỮ ANH VĂN KHỐI VĂN PHÒNG - 通知關於規定申請外語津貼的方法（適用於文員的英文外語津貼）', 'Có hiệu lực từ ngày 01/11/2018 - 自01/11/2018起生效', '', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\">TH&Ocirc;NG B&Aacute;O 通知</span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\">V&ecirc;̀ vi&ecirc;̣c Qui định c&aacute;ch x&eacute;t &ldquo;Phụ cấp Ngoại ngữ&rdquo;&nbsp; (&Aacute;p dụng cho phần ngoại ngữ Anh Văn khối văn ph&ograve;ng)</span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\">關於規定申請外語津貼的方法 （適用於文員的英文外語津貼）</span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">-----------------------------------------</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nhằm đ&ocirc;̣ng vi&ecirc;n khuy&ecirc;́n khích CB-CNV n&acirc;ng cao trình đ&ocirc;̣, góp ph&acirc;̀n x&acirc;y dựng C&ocirc;ng ty ngày m&ocirc;̣t phát tri&ecirc;̉n; 以激勵幹部人員提高程度，助於公司日益發展。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nhằm có cơ sở chính xác, r&otilde; r&agrave;ng v&agrave; kh&aacute;ch quan đ&ecirc;̉ xét &ldquo;Phụ c&acirc;́p Ngoại ngữ&rdquo; cho CB-CNV trong C&ocirc;ng ty. 以具有明確與客觀的基礎來申請公司幹部人員的外語津貼。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px; text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">BAN TỔNG GI&Aacute;M ĐỐC TH&Ocirc;NG B&Aacute;O:</span></span></strong></p>\r\n\r\n<p style=\"margin-left:48px; text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">總經理部通知：</span></span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 1: </strong>Kể từ 01/11/2018, qui định c&aacute;ch x&eacute;t &ldquo;Phụ cấp ngoại ngữ&rdquo; sẽ như sau:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第一條：</strong>從01/11/2018起，申請外語津貼的方法如下：</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1</span></span></strong><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">. Đối với CB-CNV mới nhận việc:</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">對於新報到的幹部人員：</span></span></strong></p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">1.1 <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Chủ quản c&aacute;c bộ phận thuộc khối Văn ph&ograve;ng sẽ x&aacute;c nhận c&aacute;c chức danh c&ocirc;ng việc c&oacute; y&ecirc;u cầu sử dụng ngoại ngữ trong c&ocirc;ng việc cho đơn vị m&igrave;nh. Dựa v&agrave;o danh mục n&agrave;y, BP HR sẽ l&agrave;m căn cứ để x&eacute;t phụ cấp ngoại ngữ cho CB-CNV.</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">文房的部門主管會確認工作中需使用外語的工作職稱 。根據此名目，人資部門將作依據以申請外語津貼給幹部人員。</span></span></li>\r\n	<li style=\"list-style-type:none\">1.2 <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">CB-CNV khi nhận việc nếu thuộc danh mục c&oacute; y&ecirc;u cầu sử dụng ngoại ngữ sẽ nộp bằng TOEIC (bảng photo c&oacute; c&ocirc;ng chứng &ndash; nộp lưu hồ sơ v&agrave; bằng gốc để đối chiếu trong ng&agrave;y) cho BP HR. Căn cứ v&agrave;o điểm số TOEIC, CB- CNV sẽ được nhận &ldquo;phụ cấp ngoại ngữ&rdquo; tương ứng ngay tại thời điểm thử việc.</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">幹部人員報到時，若工作職稱屬於需使用外語的名目必要繳交TOEIC證書（副本具有公證&mdash;存檔，與正本 &mdash;當天對照）給人資部門。根據考試的分數，幹部人員在試用期內將受到相當的外語津貼。</span></span></li>\r\n	<li style=\"list-style-type:none\">1.3 <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Quy định về tiền phụ cấp ngoại ngữ theo bằng TOEIC:</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">根據TOEIC證書規定外語津貼：</span></span></li>\r\n</ol>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1pt solid windowtext; height:254px; margin-left:49px; width:685px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:81.0pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">PCNN</span></span></p>\r\n\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">外語津貼</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:81.0pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Bậc 1</span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第一等</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:85.5pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Bậc 2</span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第二等</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.0in\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Bậc 3</span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第三等</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.25in\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Bậc 4</span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第四等</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.25in\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Bậc 5</span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第五等</span></span></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:81.0pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Điểm TOEIC</span></span></p>\r\n\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">TOEIC分數</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:81.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">600 - 695 </span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:85.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">700 - 795</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.0in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">800 - 895</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.25in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">900 - 945</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.25in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">950 - 990</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:81.0pt\">\r\n			<p><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Số tiền - vnd </span></span></strong></p>\r\n\r\n			<p><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">金額&mdash;VND</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:81.0pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">300.000 </span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:85.5pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">500.000 </span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.0in\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">800.000 </span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.25in\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">1.200.000 </span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:1.25in\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">1.800.000</span></span></strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">1.4 <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Việc l&agrave;m b&agrave;i kiểm tra ngoại ngữ đầu v&agrave;o sẽ được hủy bỏ khi &aacute;p dụng quy định n&agrave;y.</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">當適用此規定時初期外語能力考試將取消。</span></span></li>\r\n</ol>\r\n\r\n<p><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Đối với CB-CNV đang l&agrave;m việc tại C&ocirc;ng ty:</span></span></strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">對於在公司工作的幹部人員：</span></span></p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">2.1 <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">CB-CNV đang được hưởng phụ cấp c&ocirc;ng việc th&igrave; vẫn được hưởng theo mức phụ cấp hiện c&oacute;, kh&ocirc;ng thay đổi.Trừ trường hợp CB-CNV muốn n&acirc;ng cao th&igrave; c&oacute; thể &aacute;p dụng theo mục 2.2. </span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">正在領取工作津貼的幹部人員就根據目前的津貼領取而不變。除了幹部人員想申請提高外語津貼就按第2.2項目申請。</span></span></li>\r\n	<li style=\"list-style-type:none\">2.2 <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Đối với CB-CNV c&oacute; chức danh c&ocirc;ng việc trong danh mục c&oacute; y&ecirc;u cầu sử dụng ngoại ngữ:</span></span> <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">對於幹部人員具有屬於需使用外語名目的工作職稱：</span></span></li>\r\n</ol>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nếu CB-CNV đ&atilde; c&oacute; bằng TOEIC m&agrave; x&eacute;t theo quy định tiền phụ cấp ngoại ngữ mới sẽ cao hơn mức phụ cấp ngoại ngữ hiện c&oacute; th&igrave; CB-CNV c&oacute; thể nộp bằng TOEIC (bảng photo c&oacute; c&ocirc;ng chứng &ndash; nộp lưu hồ sơ v&agrave; bằng gốc để đối chiếu trong ng&agrave;y) để được hưởng theo mức phụ cấp ngoại ngữ mới.</span></span> <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">如果幹部人員已有TOEIC證書，根據新的規定申請的外語津貼高於目前的外語津貼，幹部人員能繳交TOEIC證書（副本具有公證&mdash;存檔，與正本 &mdash;當天對照），以領取新的外語津貼。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Hoặc nếu CB-CNV muốn được hưởng mức phụ cấp ngoại ngữ theo bằng TOEIC (bảng photo c&oacute; c&ocirc;ng chứng &ndash; nộp lưu hồ sơ v&agrave; bằng gốc để đối chiếu trong ng&agrave;y) hay CB-CNV chưa được hưởng tiền phụ cấp ngoại ngữ th&igrave; c&oacute; thể tự t&uacute;c đi thi. Sau khi thi nếu kết quả đạt từ 600 điểm trở l&ecirc;n th&igrave; sẽ được c&ocirc;ng ty hỗ trợ chi ph&iacute; thi căn cứ theo h&oacute;a đơn cung cấp; 1 người chỉ được hỗ trợ chi ph&iacute; thi 1 lần. Nếu kết quả thấp hơn 600 điểm th&igrave; c&ocirc;ng ty kh&ocirc;ng hỗ trợ chi ph&iacute; thi n&agrave;y. Sau đ&oacute; mức phụ cấp ngoại ngữ sẽ được hưởng theo quy định mới.&nbsp;</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">或者如果幹部人員想要按照TOEIC證書領取外語津貼或者未領取外語津貼的幹部人員可以自行參加考試。如果考試成績超過600分，公司根據幹部人員提供的收據協助支付考試費用；協助支付考試費用，一人僅限一次。如果成績低於600分，公司無協助支付考試費用。然後，外語津貼按照新的規定領取。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Thời gian / lưu tr&igrave;nh x&eacute;t hưởng tiền phụ cấp ngoại ngữ cho mục 2:&nbsp;</span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第二項目之申請外語津貼時間/流程：</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">C&ocirc;ng ty chỉ x&eacute;t thay đổi phụ cấp ngoại ngữ v&agrave;o 2 kỳ: v&agrave;o th&aacute;ng 1 v&agrave; th&aacute;ng 7 h&agrave;ng năm</span></span> <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">公司僅有兩次申請更改外語津貼：每年1月與7月。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">BP-PX viết phiếu tr&igrave;nh đ&iacute;nh k&egrave;m c&aacute;c hồ sơ li&ecirc;n quan như h&oacute;a đơn đi thi, bằng TOEIC (bảng photo c&oacute; c&ocirc;ng chứng &ndash; nộp lưu hồ sơ v&agrave; bằng gốc để đối chiếu trong ng&agrave;y) v&agrave; chuyển về cho BP HR trước ng&agrave;y 25/12 v&agrave; 25/6&nbsp; </span></span><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">部門現場寫簽呈，附加相關的文件，如報名收據、TOEIC證書（副本具有公證&mdash;存檔，與正本 &mdash;當天對照），並於12月25日與6月25日之前轉給人資部門。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Việc l&agrave;m b&agrave;i kiểm tra ngoại ngữ để xin ph&ecirc; duyệt n&acirc;ng tiền phụ cấp ngoại ngữ sẽ được hủy bỏ khi &aacute;p dụng quy định n&agrave;y.</span></span> <span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">適用於此規定，申請外語津貼的能力考試將取消。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 2:</strong> Ri&ecirc;ng phụ cấp ngoại ngữ Hoa văn vẫn được &aacute;p dụng theo quy định cũ </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第二條：</strong>中文外語津貼根據之前的規定實行。</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 3</strong>: BP HR v&agrave; c&aacute;c BP li&ecirc;n quan c&oacute; tr&aacute;ch nhiệm thi h&agrave;nh th&ocirc;ng b&aacute;o n&agrave;y.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第三條：</strong>人資部門與相關部門負責實行本通知。</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV trong C&ocirc;ng ty biết v&agrave; thực hiện kể từ ng&agrave;y 01/11/2018.</span></span></p>\r\n\r\n<p style=\"margin-left:148px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">此通告會發行給全體幹部、員工知道，自 01/11/2018生效。</span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-01 18:14:41', '2019-04-01 18:14:42', 4, 'Lâm Quế Bình', NULL, NULL),
(35, 4, 'Lâm Quế Bình', NULL, 10, '248/TB/JH-HR THÔNG BÁO VỀ VIỆC QUY ĐỊNH THỜI GIAN PHÁT \"TIỀN THƯỞNG NĂNG SUẤT\" - 通知關於規定發「效率獎金」時間', 'Có hiệu lực từ ngày 05/01/2019 - 自05/01/2019起生效', '', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>TH&Ocirc;NG B&Aacute;O 通知</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Về việc qui định thời gian ph&aacute;t &ldquo;Tiền thưởng năng suất&rdquo;</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>關於規定發「效率獎金」時間</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>****************</strong></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ v&agrave;o Bộ luật lao động số 10/2012/QH13; 根據10/2012/QH13號勞動法；</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nhằm khuyến kh&iacute;ch tinh thần CB-CNV trực tiếp sản xuất ra sản phẩm, g&oacute;p phần n&acirc;ng cao năng suất h&agrave;ng ng&agrave;y; 以激勵直接幹部人員生產的精神，助於提高每天的生產率。</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Sau khi đ&atilde; thỏa thuận v&agrave; thống nhất với đại diện C&ocirc;ng đo&agrave;n, Tổ đối thoại định kỳ v&agrave; CBQL c&aacute;c BP-PX; 已與工團、定期對話組和部門現場的幹部管理協商和統一之後</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ v&agrave;o quyền hạn BTGĐ. 根據總經理部的權限</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>BAN T&Ocirc;̉NG GIÁM Đ&Ocirc;́C TH&Ocirc;NG BÁO:</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>總經理部通知：</strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Kể từ th&aacute;ng 01/2019 C&ocirc;ng ty sẽ ph&aacute;t <strong>&ldquo;Tiền thưởng năng suất&rdquo; </strong>v&agrave;o ng&agrave;y 8 t&acirc;y h&agrave;ng th&aacute;ng - c&ugrave;ng với kỳ ph&aacute;t lương định kỳ, thay cho ng&agrave;y ph&aacute;t thưởng trước đ&acirc;y l&agrave; 20 t&acirc;y h&agrave;ng th&aacute;ng.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">自01/2019起，公司於每月8日發「效率獎金」與月薪資，代替之前每月20日發效率獎金。</span></span></p>\r\n\r\n<ol start=\"2\">\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">C&aacute;c BP-PX c&oacute; li&ecirc;n quan c&oacute; tr&aacute;ch nhiệm cung cấp số liệu cho BP HR đ&uacute;ng theo quy định nhằm đảm bảo thời gian ph&aacute;t thưởng năng suất của c&ocirc;ng ty đ&uacute;ng theo quy định.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">相關的部門現場有責任提供資料給人資部門, 依照規定以準時發「效率獎金」。</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV trong C&ocirc;ng ty biết v&agrave; thực hiện kể từ ng&agrave;y k&yacute;</em></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>為全公司遍佈此通知並生效於簽署日期起。</em></span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-01 18:23:08', '2019-04-01 18:28:01', 4, 'Lâm Quế Bình', NULL, NULL),
(36, 4, 'Lâm Quế Bình', NULL, 10, '249/TB/JH-HR THÔNG BÁO VV NGHỈ LỄ GIỖ TỔ HÙNG VƯƠNG, LỄ 30/4 VÀ 01/05 NĂM 2019 - 通知關於2019年雄王節、30/4 、 1/5/休假', 'Ban hành ngày 01/03/2019 - 於01/03/2019頒行', '', '<p style=\"margin-left:42px; text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>TH&Ocirc;NG B&Aacute;O 通知</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Về việc Nghỉ lễ Giỗ Tổ H&ugrave;ng Vương, Lễ 30/4 v&agrave; 01/5 năm 2019</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>通告: 關於2019年雄王節、30/4 、 1/5/休假</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>**********************</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ v&agrave;o Bộ luật lao động được Quốc hội ban h&agrave;nh theo Luật số 10/2012/QH13, th&ocirc;ng qua ng&agrave;y 18/6/2012 v&agrave; &aacute;p dụng ch&iacute;nh thức từ 01/5/2013; 根據勞動法律 10/2012/QH13，通過在 18/6/2012和 在01/5/2013正式適用.</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:left\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nhằm quản l&yacute; tốt t&igrave;nh h&igrave;nh an ninh trật tự, ph&ograve;ng chống ch&aacute;y nổ v&agrave; quản l&yacute; tốt t&agrave;i sản C&ocirc;ng ty trong ng&agrave;y nghỉ Lễ.爲了確保管理節日的秩序安寧，消防和公司財產情況。</span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ v&agrave;o quyền hạn Ban Tổng Gi&aacute;m đốc.根據總經理部的權利。 </span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:30px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>BAN TỔNG GI&Aacute;M ĐỐC TH&Ocirc;NG B&Aacute;O:</strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">To&agrave;n thể CB-CNV trong C&ocirc;ng ty được nghỉ Lễ Giỗ Tổ H&ugrave;ng Vương, Lễ 30/4 v&agrave; 01/5 năm 2019 theo lịch sau 公司的全體幹部、人員可休2019 年雄王節 、30/4 、 1/5 的節日如下：</span></span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid windowtext 1.0pt; margin-left:103px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:35.3pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>STT</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:142.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Thời gian<strong> </strong>日期</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:318.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Lịch của c&ocirc;ng ty &nbsp;公司的日程表</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\" style=\"vertical-align:top; width:35.3pt\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">1</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:142.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Ng&agrave;y 14/4/2019</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:318.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Chủ nhật &ndash; ng&agrave;y lễ giỗ tổ H&ugrave;ng Vương 禮拜日-雄王節</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:142.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Ng&agrave;y 15/4/2019</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:318.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Thứ hai nghỉ b&ugrave; ng&agrave;y lễ giỗ tổ H&ugrave;ng Vương theo Luật quy định 依法於星期一補假一天</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\" style=\"vertical-align:top; width:35.3pt\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">2</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:142.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Ng&agrave;y 29/4/2019</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:318.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Nghỉ 1 ng&agrave;y ph&eacute;p năm 2019全廠休假一天(扣年假一天</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:142.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Ng&agrave;y 30/4/2019</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:318.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Nghỉ Lễ 30/4/2019 theo Luật quy định</span>&nbsp; <span style=\"color:black\">南方解放日依法休 30/4</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:142.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Ng&agrave;y 01/5/2019</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:318.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:black\">Nghỉ Lễ 01/5/2019 theo Luật quy định</span>&nbsp; <span style=\"color:black\">勞動節依法休 1/5</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol start=\"2\">\r\n		<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">V&agrave;o ng&agrave;y cuối c&ugrave;ng trước c&aacute;c ng&agrave;y nghỉ Lễ, cuối giờ về c&aacute;c bộ phận như Bảo vệ, Cơ điện, Đội PCCC c&oacute; tr&aacute;ch nhiệm phối hợp với CBQL c&aacute;c ph&acirc;n xưởng kiểm tra cầu dao điện nước, cầu dao m&aacute;y m&oacute;c thiết bị, dụng cụ PCCC, vệ sinh m&aacute;y m&oacute;c nh&agrave; xưởng, h&agrave;ng h&oacute;a trước khi tiến h&agrave;nh c&ocirc;ng t&aacute;c ni&ecirc;m phong v&agrave; b&agrave;n giao ch&igrave;a kh&oacute;a nh&agrave; xưởng theo quy định.放假前一天下班前,管理幹部, 保衛,機工, 行政部和消防隊要檢查水、電開關、機器設備等, 消防安全, 設備必須要覆蓋和整理整齊, 檢查後貼上封條再將鑰匙交給保衛保管。</span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"list-style-type:none\">\r\n	<ol start=\"3\">\r\n		<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">C&aacute;c nh&acirc;n vi&ecirc;n Bảo vệ c&oacute; t&ecirc;n trong danh s&aacute;ch trực phải thực hiện nhiệm vụ trong ca trực nghi&ecirc;m t&uacute;c theo quy định: 值班人員需嚴格執行所分配任務。</span></span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:none\">\r\n	<ul style=\"list-style-type:circle; margin-left:40px\">\r\n		<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Tuần tra gi&aacute;m s&aacute;t to&agrave;n C&ocirc;ng ty theo lịch được ph&acirc;n c&ocirc;ng. Ch&uacute; &yacute; đảm bảo c&ocirc;ng t&aacute;c an to&agrave;n PCCC v&agrave; An ninh trật tự trong C&ocirc;ng ty trong ca trực; 依照規定巡查, 確保公司安全秩序和消災救災工作。</span></span></li>\r\n		<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nghi&ecirc;m cấm: tụ tập uống rượu bia, chơi cờ đ&aacute;nh bạc v&agrave; cho người kh&ocirc;ng phận sự v&agrave;o C&ocirc;ng ty. 嚴禁打牌, 喝酒及非任務的人員進入公司。</span></span></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol start=\"4\">\r\n		<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">C&aacute;c CB-CNV được ph&acirc;n c&ocirc;ng trực trong c&aacute;c ng&agrave;y Lễ sẽ được t&iacute;nh lương theo Luật quy định.值班人員依勞動法計算薪資。</span></span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:66px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp; Hệ số trả lương ng&agrave;y Lễ Tết:節日付薪之系數</span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1pt solid windowtext; height:175px; margin-left:108px; width:703px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:166.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">l&agrave;m việc ng&agrave;y lễ tết &ndash; ca ng&agrave;y</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">節 日上班-白班</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:2.25in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">300%&nbsp; </span></span></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"vertical-align:top; width:166.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">chưa kể tiền lương ng&agrave;y lễ tết c&oacute; hưởng lương </span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">未包含原本節日所得的薪水</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:166.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">L&agrave;m việc ng&agrave;y lễ tết &ndash; ca đ&ecirc;m</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">節 日上班-夜班</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:2.25in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">300%+ 30%+ 300%* 20% = 390%</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:30px; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:30px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV biết để thực hiện v&agrave; c&oacute; hiệu lực từ ng&agrave;y k&yacute;.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">此通告發佈給全體幹部工作人員實施, 由簽訂日生效。</span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-01 18:33:38', '2019-04-08 09:26:47', 4, 'Lâm Quế Bình', NULL, NULL),
(37, 4, 'Lâm Quế Bình', NULL, 10, '250/TB/JH-HR THÔNG BÁO VỀ VIỆC ĐIỀU CHỈNH MỨC TIỀN THƯỞNG GIỚI THIỆU CÔNG NHÂN MỚI - 通告 關於新進員工介紹奬金調整', 'Có hiệu lực từ ngày 06/03/2019 - 自06/03/2019起生效', '', '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:18.0pt\">TH&Ocirc;NG B&Aacute;O </span></strong></span></span><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:18.0pt\">通告</span></strong><strong> </strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:16.0pt\">Về việc ĐIỀU CHỈNH MỨC TIỀN THƯỞNGGIỚI THIỆU C&Ocirc;NG NH&Acirc;N MỚI </span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:16.0pt\">關於新進員工介紹奬金調整</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong>****************************</strong></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:10.0pt\">Căn cứ v&agrave;o nhu cầu tuyển dụng của m&ugrave;a h&agrave;ng 2019. </span>根據2019年招聘需求.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:10.0pt\">Căn cứ v&agrave;o quyền hạn của BTGĐ.</span>根據總經理部權力.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><em>NAY BAN TỔNG GI&Aacute;M ĐỐC TH&Ocirc;NG B&Aacute;O:</em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><em><span style=\"font-size:14.0pt\">總 經 理 部 通 告</span></em></strong><strong><em><span style=\"font-size:14.0pt\">:</span></em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">ĐIỀU 1: &nbsp;&nbsp;&nbsp;</span>第一條</strong><strong>:</strong></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Tất cả CB-CNV trong <strong>c&ocirc;ng ty TNHH JIA HSIN</strong> khi giới thiệu C&ocirc;ng nh&acirc;n khối sản xuất mới v&agrave;o l&agrave;m cho c&ocirc;ng ty sẽ được nhận <strong>&ldquo;Tiền thưởng giới thiệu</strong>&rdquo;, &aacute;p dụng cho cả việc giới thiệu qua lại giữa 2 c&ocirc;ng ty TNHH Jia Hsin v&agrave; c&ocirc;ng ty cổ phần SX &amp; TM Shimmer. </span>佳新有限公司所有幹部-員工若有介紹生產線之新員工，可領取 「介紹奬金」包含佳新與新禾兩家公司之間的轉介。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Th&ocirc;ng b&aacute;o n&agrave;y kh&ocirc;ng &aacute;p dụng cho bộ phận HR v&agrave; bộ phận Bảo vệ v&agrave; c&aacute;c CB-CNV chi viện cho 2 bộ phận n&agrave;y. Nghi&ecirc;m cấm c&aacute;c đơn vị hoặc c&aacute; nh&acirc;n n&agrave;y lạm dụng c&ocirc;ng việc tiếp cận hồ sơ để trực lợi c&aacute; nh&acirc;n, nếu vi phạm sẽ xử l&yacute; theo nội quy c&ocirc;ng ty</span> 此通知不適用於人力資源部門、保衛部門和幹部員工支援此兩個部門工作。嚴格禁止各單位或個人濫用行為取得履歷表以獲得個人利益, 如違犯依公司內規處理。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">ĐIỀU 2:</span></strong><span style=\"font-size:11.0pt\"> &nbsp;&nbsp;&nbsp;Điều kiện để được nhận <strong>&ldquo;Tiền thưởng giới thiệu&rdquo;</strong>:.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong>第二條</strong><strong>:</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;領取<strong>&ldquo;介紹奬金&rdquo;</strong> 條件:</span></span></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">C&ocirc;ng nh&acirc;n được giới thiệu: l&agrave; lao động nam hoặc nữ nhận c&ocirc;ng việc c&ocirc;ng nh&acirc;n khối sản xuất</span> 被介紹員工: 在生產工作之新員工, 無論女工或男工。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">C&ocirc;ng nh&acirc;n giới thiệu được nhận tiền thưởng: l&agrave; CB-CNV của c&ocirc;ng ty, kể cả c&ocirc;ng nh&acirc;n thử việc, </span>介紹員工: 含公司幹部員工, 包含試用期員工。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Thời hạn &aacute;p dụng tiến thưởng: Hồ sơ nộp kể từ 06/3/2019 cho đến khi c&oacute; th&ocirc;ng b&aacute;o mới.</span>適用期間：至06/3/2019起，直至另行通知。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Thời gian nhận tiền thưởng: trong v&ograve;ng 6 th&aacute;ng, được chia l&agrave;m 3 đợt. T&iacute;nh đến thời điểm theo quy định nhận thưởng nếu c&ocirc;ng nh&acirc;n giới thiệu v&agrave; c&ocirc;ng nh&acirc;n được giới thiệu vẫn c&ograve;n l&agrave;m việc tại c&ocirc;ng ty th&igrave; sẽ được nhận tiền thưởng n&agrave;y.</span> 領取方式：6個月內，分成三階段。結算介紹獎金時，如果介紹者與被介紹的員工都還在公司工作則可領此獎金。</span></span></li>\r\n</ul>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1pt solid windowtext; height:503px; margin-left:37px; width:688px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">Giai đoạn</span></strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\">階段</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">Số tiền thưởng (vnd) </span></strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\">介紹獎金(VND)</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">Điều kiện thời gian</span></strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\">時間條件</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Đợt 1</span></span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\">第一階段</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">&nbsp;&nbsp; 500.000 </span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">L&agrave;m đủ 2 th&aacute;ng t&iacute;nh từ ng&agrave;y nhận việc </span></span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\">從進廠日期算起，工作滿兩個月</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Đợt 2</span></span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\">第二階段</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">&nbsp;&nbsp; 500.000 </span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">L&agrave;m tiếp 2 th&aacute;ng sau đ&oacute;, tức l&agrave; l&agrave;m tr&ograve;n 4 th&aacute;ng kể từ ng&agrave;y nhận việc.</span>繼續工作滿兩個月，從進廠日期算起，總共工作滿四個月</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Đợt 3</span></span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\">第三階段</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">&nbsp;&nbsp; 500.000</span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">L&agrave;m tiếp 2 th&aacute;ng sau đ&oacute;, tức l&agrave; l&agrave;m tr&ograve;n 6 th&aacute;ng kể từ ng&agrave;y nhận việc.</span>繼續工作滿兩個月，從進廠日期算起，總共工作滿六個月</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Tổng cộng </span></span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong>總共</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:16.0pt\">1.500.000</span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">ĐIỀU 3:</span></strong><span style=\"font-size:11.0pt\">&nbsp; &nbsp;Lưu tr&igrave;nh thực hiện: </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong>第三條</strong><strong>:</strong>&nbsp; &nbsp;實施流程: </span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">CB-CNV trong c&ocirc;ng ty khi nộp hồ sơ cho c&ocirc;ng nh&acirc;n mới sẽ điền v&agrave;o &ldquo;Phiếu giới thiệu&rdquo; v&agrave; nộp k&egrave;m v&agrave;o hồ sơ của c&ocirc;ng nh&acirc;n mới cho ph&ograve;ng HR. Phiếu n&agrave;y c&oacute; thể nhận tại trợ l&yacute; c&aacute;c BP-PX.</span>公司幹部-員工如提交新員工的履歷表給公司，需填寫「介紹單」，此單放在各分廠助理處。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">V&agrave;o ng&agrave;y 5 t&acirc;y h&agrave;ng th&aacute;ng, BP HR c&oacute; tr&aacute;ch nhiệm lập phiếu tr&igrave;nh, danh s&aacute;ch nhận tiền thưởng c&oacute; đầy đủ chữ k&yacute; x&aacute;c nhận của chủ quản đơn vị c&ocirc;ng nh&acirc;n mới đang l&agrave;m việc, đ&iacute;nh k&egrave;m &ldquo;phiếu giới thiệu&rdquo; v&agrave; tr&igrave;nh k&yacute; BTGĐ.</span>每個月5號，人資部門負責寫簽呈；領取奬金名單要有部門主管簽署，確認此名新員工還在公司上班，附上「介紹單」和呈總經理部簽核 。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">Sau khi BTGĐ k&yacute; duyệt, BP HR chuyển BP Kế to&aacute;n. BP Kế to&aacute;n sẽ chi trả tiền thưởng n&agrave;y theo quy định ph&aacute;t lương của c&ocirc;ng ty cho người giới thiệu v&agrave;o ng&agrave;y 20 t&acirc;y h&agrave;ng th&aacute;ng.</span>總經理部簽核後，人資部門轉交財會部，每月的20號，財會部門依照公司規定支付此奬金給介紹者。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">Lưu &yacute;: ng&agrave;y 5 t&acirc;y h&agrave;ng th&aacute;ng BP HR sẽ chốt danh s&aacute;ch cho c&aacute;c hồ sơ đ&atilde; nhận kể từ trước 4 t&acirc;y th&aacute;ng đ&oacute;. Sau thời hạn n&agrave;y hồ sơ sẽ được chốt v&agrave;o 5 t&acirc;y th&aacute;ng kế tiếp.</span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong>注意：每月</strong><strong>5號，人資</strong><strong>部門</strong><strong>統計</strong><strong>該月</strong><strong>4號之前提交</strong><strong>的</strong><strong>名單。超過此期限，於下個月</strong><strong>5號統計</strong><strong>資料</strong><strong>。</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><span style=\"font-size:11.0pt\">ĐIỀU 4:&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><span style=\"font-size:11.0pt\">Người giới thiệu phải c&oacute; tr&aacute;ch nhiệm hỗ trợ, hướng dẫn th&ecirc;m c&ocirc;ng nh&acirc;n mới trong việc thực hiện nội quy c&ocirc;ng ty.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong>第四條</strong><strong>:&nbsp;&nbsp; </strong>介紹者有責任協助和引導新進員工執行公司內規。</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><strong><em><span style=\"font-size:11.0pt\">Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV biết để thực hiện v&agrave; c&oacute; hiệu lực kể từ ng&agrave;y k&yacute;.</span></em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:VNI-Times\"><span style=\"font-size:11.0pt\">此通知將通知到全體幹部員工知道實施</span>，<span style=\"font-size:11.0pt\">和由簽署之日起生效</span><span style=\"font-size:11.0pt\">.</span></span></span></p>\r\n\r\n<ul>\r\n</ul>\r\n', NULL, NULL, 1, 1, '2019-04-01 18:53:13', '2019-04-01 18:53:49', 4, 'Lâm Quế Bình', NULL, NULL);
INSERT INTO `portal_post` (`id`, `user_id`, `user_fullname`, `user_dept`, `post_group`, `title`, `description`, `picture`, `content`, `date_start`, `date_end`, `news`, `status`, `created`, `modified`, `edited_user_id`, `edited_user_fullname`, `deleted`, `deleted_user_id`) VALUES
(39, 4, 'Lâm Quế Bình', NULL, 10, '251/TB/JH-HR THÔNG BÁO VỀ VIỆC HỖ TRỢ CHỔ Ở CHO CB-CNV NGOẠI TỈNH MỚI NHẬN VIỆC - 通知關於協助南部地區新進幹部人員生活租屋', 'Có hiệu lực từ ngày 23/02/2019 - 自23/02/2019起生效', '', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>TH&Ocirc;NG B&Aacute;O 通知</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Về việc HỖ TRỢ CHỔ Ở CHO CB-CNV NGOẠI TỈNH MỚI NHẬN VIỆC</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>關於協助南部地區新進幹部人員生活租屋</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>*****************************</strong></span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp; &nbsp;&nbsp;Căn cứ v&agrave;o nhu cầu tuyển dụng năm 2019. 根據2019年之招募需求；</span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">- &nbsp;&nbsp;&nbsp; Căn cứ v&agrave;o quyền hạn của BTGĐ. 根據總經理部的權限。</span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>NAY BAN TỔNG GI&Aacute;M ĐỐC TH&Ocirc;NG B&Aacute;O:</em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>總經理部通知：</em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 1</strong>: Nhằm tạo điều kiện ổn định cuộc sống cho CB-CNV ngoại tỉnh mới đến c&ocirc;ng ty nhận việc, nay BTGĐ quyết định &aacute;p dụng ch&iacute;nh s&aacute;ch hỗ trợ chổ ở miễn ph&iacute; trong v&ograve;ng 3 th&aacute;ng, t&iacute;nh từ ng&agrave;y nhận việc cho CB-CNV c&aacute;c tỉnh sau:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第一條</strong>：為創造<strong>南部地區新進幹部人員</strong>穩定的生活條件，總經理部決定提供免費3個月租屋費用之協助政策；適用來自以下省份的新進幹部人員，由報到日起算。</span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1pt solid windowtext; height:611px; margin-left:133px; width:255px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>STT</strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>次序</strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>TỈNH</strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>省別</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">1</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Ki&ecirc;n Giang堅江</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2 </span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;An Giang 安江</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">3</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;C&agrave; Mau金甌</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">4</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Bạc Li&ecirc;u薄遼</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">5</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Tr&agrave; Vinh 茶榮</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">6</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Vĩnh Long 永隆</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">7</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Hậu Giang 後江</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">8</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Cần Thơ芹苴</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">9</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;S&oacute;c Trăng朔莊</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:45.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">10</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Bến Tre檳椥</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>Thời gian &aacute;p dụng: cho CB-CNV mới nhận việc từ 06/3/2019 đến 30/6/2019, ri&ecirc;ng tỉnh Tr&agrave; vinh được &aacute;p dụng từ 23/2/2019 đến 30/6/2019</em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>適用時間：新幹部-</em></strong><strong><em>員工起報到從</em></strong><strong><em>06/03/2019</em></strong><strong><em>至</em></strong><strong><em>30/6/2019, </em></strong><strong><em>除了茶榮幹部</em></strong><strong><em>-</em></strong><strong><em>員工起報到從</em></strong><strong><em>23/02/2019</em></strong><strong><em>至30/6/2019.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 2: 第二條： &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp;&nbsp;&nbsp;&nbsp; Căn cứ theo hộ khẩu thường tr&uacute; trong hồ sơ CB-CNV, BP HR sẽ sắp xếp cho CB-CNV đến nh&agrave; trọ nhận chổ ở ngay ng&agrave;y đầu nhận việc. Chi ph&iacute; thu&ecirc; mướn nh&agrave; trọ sẽ do c&ocirc;ng ty k&yacute; hợp đồng chi trả, bao gồm lu&ocirc;n chi ph&iacute; điện nước. 根據幹部-員工的常住戶口資料，人資部門安排幹部-員工在第一天報到入住租屋。公司支付租屋費，包含電費、水費。</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp;&nbsp;&nbsp;&nbsp; Hết thời gian n&agrave;y, CB<strong>-</strong>CNV nếu muốn tiếp tục ở lại nh&agrave; trọ n&agrave;y sẽ tự k&yacute; HĐ với nh&agrave; trọ v&agrave; tự trả chi ph&iacute;. Nếu kh&ocirc;ng muốn tiếp tục CB-CNV sẽ tự t&igrave;m kiếm nơi ở mới theo nhu cầu c&aacute; nh&acirc;n. 三個月到期時，若幹部-員工需繼續居住，由個人與房東簽署合約、自付費用。若不續住，幹部人員需自行尋找符合個人要求的租屋。</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>LƯU &Yacute;</strong>: c&ocirc;ng ty chỉ hỗ trợ chổ ở theo danh s&aacute;ch c&aacute;c nh&agrave; trọ c&ocirc;ng ty đ&atilde; k&yacute; hợp đồng, kh&ocirc;ng quy đổi ph&uacute;c lợi n&agrave;y th&agrave;nh tiền mặt hay hỗ trợ chổ ở theo y&ecirc;u cầu c&aacute; nh&acirc;n của CB-CNV. </span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>注意：</strong>限提供與公司簽約之房東租屋, 此協助不能轉換為現金或未與公司簽約之房東租屋。</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV biết để thực hiện v&agrave; c&oacute; hiệu lực kể từ k&yacute;.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>向全公司通報此決定並於簽署日期起生效</em></span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-02 09:25:59', '2019-04-02 09:26:15', 4, 'Lâm Quế Bình', NULL, NULL),
(40, 4, 'Lâm Quế Bình', NULL, 10, '252/TB/JH-HR THÔNG BÁO VỀ VIỆC BỔ SUNG QUY ĐỊNH HỖ TRỢ CHỔ Ở CHO CB-CNV NGOẠI TỈNH MỚI NHẬN VIỆC - 通知關於補充規定協助南部地區新進幹部人員生活租屋', 'Ban hành ngày 12/03/2019 - 於12/03/2019頒行', '', '<p style=\"text-align:center\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">TH&Ocirc;NG B&Aacute;O 通知</span></span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Về việc <span style=\"color:red\">BỔ SUNG QUY ĐỊNH</span> HỖ TRỢ CHỔ Ở CHO CB-CNV NGOẠI TỈNH MỚI NHẬN VIỆC</span></span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">關於<span style=\"color:red\">補充規定</span>協助南部地區新進幹部人員生活租屋</span></span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>*****************************************</strong></span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp; &nbsp;&nbsp;Căn cứ v&agrave;o nhu cầu tuyển dụng năm 2019.根據2019年之招募需求；</span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">- &nbsp;&nbsp;&nbsp; Căn cứ v&agrave;o quyền hạn của BTGĐ. 根據總經理部的權限。</span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>NAY BAN TỔNG GI&Aacute;M ĐỐC TH&Ocirc;NG B&Aacute;O:</em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>總經理部通知：</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 1</strong>: Nhằm tạo điều kiện ổn định cuộc sống cho CB-CNV ngoại tỉnh mới đến c&ocirc;ng ty nhận việc, nay BTGĐ quyết định &aacute;p dụng ch&iacute;nh s&aacute;ch hỗ trợ chổ ở miễn ph&iacute; trong v&ograve;ng 3 th&aacute;ng, t&iacute;nh từ ng&agrave;y nhận việc cho CB-CNV c&aacute;c tỉnh sau:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第一條</strong>：為創造<strong>南部地區新進幹部人員</strong>穩定的生活條件，總經理部決定提供免費3個月租屋費用之協助政策；適用來自以下省份的新進幹部人員，由報到日起算。</span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid windowtext 1.0pt; margin-left:133px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ST次序</strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>TỈNH省別</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>THỜI GIAN &Aacute;P DỤNG適用時間</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">1</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Tr&agrave; Vinh 茶榮</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>từ 從</em><em>23/2/2019 đến </em><em>到30/6/2019</em></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">2</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Ki&ecirc;n Giang堅江</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>từ從</em><em> 06/3/2019 đến </em><em>到30/6/2019</em></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">3</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;An Giang 安江</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">4</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;C&agrave; Mau金甌</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">5</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Bạc Li&ecirc;u薄遼</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">6</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;Vĩnh Long 永隆</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">7</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Hậu Giang 後江</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">8</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Cần Thơ芹苴</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">9</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">S&oacute;c Trăng朔莊</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">10</span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Bến Tre檳椥</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&ldquo;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:.75in\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:red\">11</span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:103.5pt\">\r\n			<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:red\">Đồng Th&aacute;p<strong> </strong>同塔</span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em><span style=\"color:red\">Từ從</span></em></strong><strong><em><span style=\"color:red\"> 13/3/2019</span></em></strong><strong><em><span style=\"color:red\"> đến </span></em></strong><strong><em><span style=\"color:red\">到30/6/2019</span></em></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 2: 第二條： &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp;&nbsp;&nbsp;&nbsp; Căn cứ theo hộ khẩu thường tr&uacute; trong hồ sơ CB-CNV, BP HR sẽ sắp xếp cho CB-CNV đến nh&agrave; trọ nhận chổ ở ngay ng&agrave;y đầu nhận việc. Chi ph&iacute; thu&ecirc; mướn nh&agrave; trọ sẽ do c&ocirc;ng ty k&yacute; hợp đồng chi trả, bao gồm lu&ocirc;n chi ph&iacute; điện nước. 根據幹部-員工的常住戶口資料，人資部門安排幹部-員工在第一天報到入住租屋。公司支付租屋費，包含電費、水費。</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp;&nbsp;&nbsp;&nbsp; Hết thời gian n&agrave;y, CB<strong>-</strong>CNV nếu muốn tiếp tục ở lại nh&agrave; trọ n&agrave;y sẽ tự k&yacute; HĐ với nh&agrave; trọ v&agrave; tự trả chi ph&iacute;. Nếu kh&ocirc;ng muốn tiếp tục CB-CNV sẽ tự t&igrave;m kiếm nơi ở mới theo nhu cầu c&aacute; nh&acirc;n. 三個月到期時，若幹部-員工需繼續居住，由個人與房東簽署合約、自付費用。若不續住，幹部人員需自行尋找符合個人要求的租屋。</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>LƯU &Yacute;</strong>: c&ocirc;ng ty chỉ hỗ trợ chổ ở theo danh s&aacute;ch c&aacute;c nh&agrave; trọ c&ocirc;ng ty đ&atilde; k&yacute; hợp đồng, kh&ocirc;ng quy đổi ph&uacute;c lợi n&agrave;y th&agrave;nh tiền mặt hay hỗ trợ chổ ở theo y&ecirc;u cầu c&aacute; nh&acirc;n của CB-CNV. </span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>注意：</strong>限提供與公司簽約之房東租屋, 此協助不能轉換為現金或未與公司簽約之房東租屋。</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV biết để thực hiện v&agrave; c&oacute; hiệu lực kể từ k&yacute;.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>向全公司通報此決定並於簽署日期起生效</em></span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-02 09:35:53', '2019-04-02 10:09:26', 4, 'Lâm Quế Bình', NULL, NULL),
(41, 4, 'Lâm Quế Bình', NULL, 10, '253/TB/JH-HR THÔNG BÁO VỀ VIỆC BỔ SUNG QUI ĐỊNH XÉT TIỀN THƯỞNG GIỚI THIỆU CÔNG NHÂN MỚI (không áp dụng cho CB-CNV cũ) - 通告關於補充申請新進員工介紹奬金規定（不適用於曾在公司任職之員工）', 'Ban hành ngày 15/03/2019 - 於15/03/2019頒行', '', '<p style=\"text-align:center\">&nbsp;<span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>TH&Ocirc;NG B&Aacute;O 通告</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Về việc BỔ SUNG QUI ĐỊNH X&Eacute;T TIỀN THƯỞNG GIỚI THIỆU C&Ocirc;NG NH&Acirc;N MỚI </strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>關於<span style=\"color:red\">補充</span>申請新進員工介紹奬金規定</strong></span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong><span style=\"color:red\">(kh&ocirc;ng &aacute;p dụng cho CB-CNV cũ 不適用於曾在公司任職之員工)</span></strong></span>&nbsp;</span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">- Căn cứ v&agrave;o nhu cầu tuyển dụng của m&ugrave;a h&agrave;ng 2019.根據2019年旺季招聘需求。</span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">- Căn cứ v&agrave;o quyền hạn của BTGĐ.根據總經理部的權力。</span></span></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>NAY BAN TỔNG GI&Aacute;M ĐỐC TH&Ocirc;NG B&Aacute;O:</em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:12px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>總<strong> </strong>經</strong><strong> </strong><strong>理</strong><strong> </strong><strong>部</strong><strong> </strong><strong>通</strong><strong> </strong><strong>告:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 1: 第一條：</strong></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Tất cả CB-CNV trong c&ocirc;ng ty TNHH JIA HSIN khi giới thiệu C&ocirc;ng nh&acirc;n khối sản xuất mới v&agrave;o l&agrave;m cho c&ocirc;ng ty sẽ được nhận &ldquo;Tiền thưởng giới thiệu&rdquo;, &aacute;p dụng cho cả việc giới thiệu qua lại giữa 2 c&ocirc;ng ty TNHH Jia Hsin v&agrave; c&ocirc;ng ty cổ phần SX &amp; TM Shimmer. 佳新有限公司所有幹部-員工若有介紹生產線之新員工，可領取 「介紹奬金」包含佳新與新禾兩家公司之間的轉介。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Th&ocirc;ng b&aacute;o n&agrave;y kh&ocirc;ng &aacute;p dụng cho bộ phận HR v&agrave; bộ phận Bảo vệ v&agrave; c&aacute;c CB-CNV chi viện cho 2 bộ phận n&agrave;y. Nghi&ecirc;m cấm c&aacute;c đơn vị hoặc c&aacute; nh&acirc;n n&agrave;y lạm dụng c&ocirc;ng việc tiếp cận hồ sơ để trực lợi c&aacute; nh&acirc;n, nếu vi phạm sẽ xử l&yacute; theo nội quy c&ocirc;ng ty. 此通知不適用於人力資源部門、保衛部門和幹部員工支援此兩個部門工作。嚴格禁止各單位或個人濫用行為取得履歷表以獲得個人利益, 如違犯依公司內規處理。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:red\">Th&ocirc;ng b&aacute;o n&agrave;y kh&ocirc;ng &aacute;p dụng cho CB-CNV cũ của c&ocirc;ng ty TNHH JIA HSIN v&agrave; C&ocirc;ng ty cổ phần SX &amp; TM Shimmer đ&atilde; th&ocirc;i việc v&agrave; quay v&agrave;o l&agrave;m việc lại, bất kể thời gian th&ocirc;i việc đ&atilde; l&acirc;u hay mới th&ocirc;i việc. 此通知不適用於曾經在佳新和新禾任職又返任之員工，無論前次離職日期何時</span></strong><span style=\"color:red\">。</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 2:</strong> &nbsp;&nbsp;&nbsp;Điều kiện để được nhận <strong>&ldquo;Tiền thưởng giới thiệu&rdquo;</strong>:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第二條:</strong>：領取<strong>&ldquo;</strong><strong>介紹奬金</strong><strong>&rdquo;</strong> 條件:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">C&ocirc;ng nh&acirc;n được giới thiệu: l&agrave; lao động nam hoặc nữ nhận c&ocirc;ng việc c&ocirc;ng nh&acirc;n khối sản xuất 被介紹員工: 在生產工作之新員工, 無論女工或男工。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">C&ocirc;ng nh&acirc;n giới thiệu được nhận tiền thưởng: l&agrave; CB-CNV của c&ocirc;ng ty, kể cả c&ocirc;ng nh&acirc;n thử việc, 介紹員工: 含公司幹部員工, 包含試用期員工。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Thời hạn &aacute;p dụng tiến thưởng: Hồ sơ nộp kể từ 06/3/2019 cho đến khi c&oacute; th&ocirc;ng b&aacute;o mới.適用期間：至06/3/2019起，直至另行通知。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Thời gian nhận tiền thưởng: trong v&ograve;ng 6 th&aacute;ng, được chia l&agrave;m 3 đợt. T&iacute;nh đến thời điểm theo quy định nhận thưởng nếu c&ocirc;ng nh&acirc;n giới thiệu v&agrave; c&ocirc;ng nh&acirc;n được giới thiệu vẫn c&ograve;n l&agrave;m việc tại c&ocirc;ng ty th&igrave; sẽ được nhận tiền thưởng n&agrave;y. 領取方式：6個月內，分成三階段。結算介紹獎金時，如果介紹者與被介紹的員工都還在公司工作則可領此獎金。</span></span></li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid windowtext 1.0pt; margin-left:37px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Giai đoạn</span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">階段</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Số tiền thưởng (vnd) </span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">介紹獎金(VND)</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Điều kiện thời gian</span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">時間條件</span></span></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Đợt 1</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第一階段</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp; 500.000 </span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">L&agrave;m đủ 2 th&aacute;ng t&iacute;nh từ ng&agrave;y nhận việc </span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">從進廠日期算起，工作滿兩個月</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Đợt 2</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第二階段</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp; 500.000 </span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">L&agrave;m tiếp 2 th&aacute;ng sau đ&oacute;, tức l&agrave; l&agrave;m tr&ograve;n 4 th&aacute;ng kể từ ng&agrave;y nhận việc.</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">繼續工作滿兩個月，從進廠日期算起，總共工作滿四個月</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Đợt 3</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">第三階段</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp; 500.000</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">L&agrave;m tiếp 2 th&aacute;ng sau đ&oacute;, tức l&agrave; l&agrave;m tr&ograve;n 6 th&aacute;ng kể từ ng&agrave;y nhận việc.</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">繼續工作滿兩個月，從進廠日期算起，總共工作滿六個月</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:79.7pt\">\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Tổng cộng </span></span></strong></p>\r\n\r\n			<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">總共</span></span></strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:136.3pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>1.500.000</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:292.5pt\">\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 3:</strong>&nbsp; &nbsp;Lưu tr&igrave;nh thực hiện: </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第三條：</strong> 實施流程: </span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">CB-CNV trong c&ocirc;ng ty khi nộp hồ sơ cho c&ocirc;ng nh&acirc;n mới sẽ điền v&agrave;o &ldquo;Phiếu giới thiệu&rdquo; v&agrave; nộp k&egrave;m v&agrave;o hồ sơ của c&ocirc;ng nh&acirc;n mới cho ph&ograve;ng HR. Phiếu n&agrave;y c&oacute; thể nhận tại trợ l&yacute; c&aacute;c BP-PX. 公司幹部-員工如提交新員工的履歷表給公司，需填寫「介紹單」，此單放在各分廠助理處。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">V&agrave;o ng&agrave;y 5 t&acirc;y h&agrave;ng th&aacute;ng, BP HR c&oacute; tr&aacute;ch nhiệm lập phiếu tr&igrave;nh, danh s&aacute;ch nhận tiền thưởng c&oacute; đầy đủ chữ k&yacute; x&aacute;c nhận của chủ quản đơn vị c&ocirc;ng nh&acirc;n mới đang l&agrave;m việc, đ&iacute;nh k&egrave;m &ldquo;phiếu giới thiệu&rdquo; v&agrave; tr&igrave;nh k&yacute; BTGĐ. 每個月5號，人資部門負責寫簽呈；領取奬金名單要有部門主管簽署，確認此名新員工還在公司上班，附上「介紹單」和呈總經理部簽核 。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Sau khi BTGĐ k&yacute; duyệt, BP HR chuyển BP Kế to&aacute;n. BP Kế to&aacute;n sẽ chi trả tiền thưởng n&agrave;y theo quy định ph&aacute;t lương của c&ocirc;ng ty cho người giới thiệu v&agrave;o ng&agrave;y 20 t&acirc;y h&agrave;ng th&aacute;ng. 總經理部簽核後，人資部門轉交財會部，每月的20號，財會部門依照公司規定支付此奬金給介紹者。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Lưu &yacute;: ng&agrave;y 5 t&acirc;y h&agrave;ng th&aacute;ng BP HR sẽ chốt danh s&aacute;ch cho c&aacute;c hồ sơ đ&atilde; nhận kể từ trước 4 t&acirc;y th&aacute;ng đ&oacute;. Sau thời hạn n&agrave;y hồ sơ sẽ được chốt v&agrave;o 5 t&acirc;y th&aacute;ng kế tiếp.</strong></span></span></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>注意：每月5</strong><strong>號，人資</strong><strong>部門</strong><strong>統計</strong><strong>該月</strong><strong>4</strong><strong>號之前提交</strong><strong>的</strong><strong>名單。超過此期限，於下個月</strong><strong>5</strong><strong>號統計</strong><strong>資料。</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>ĐIỀU 4:&nbsp;&nbsp;&nbsp; </strong>Người giới thiệu phải c&oacute; tr&aacute;ch nhiệm hỗ trợ, hướng dẫn th&ecirc;m c&ocirc;ng nh&acirc;n mới trong việc thực hiện nội quy c&ocirc;ng ty.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第四條：</strong><strong> </strong>介紹者有責任協助和引導新進員工執行公司內規。</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><em>Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV biết để thực hiện v&agrave; c&oacute; hiệu lực kể từ ng&agrave;y k&yacute;.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>向全公司通報此通告並於簽署日期起生效。</em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, NULL, 1, 1, '2019-04-02 10:09:42', '2019-04-02 10:28:38', 4, 'Lâm Quế Bình', NULL, NULL),
(42, 4, 'Lâm Quế Bình', NULL, 1, 'CHƯƠNG TRÌNH PHÚC LỢI ĐOÀN VIÊN NĂM 2019', 'Tổ chức vào ngày 12~13/04/2019 tại cổng Công ty TNHH Jia Hsin', '/portal/public/upload/images/1_Trang_chủ_首頁/1.1_Sự_kiện_活動訊息/2019/IMG_9731.JPG', '<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nhằm chăm lo đời sống vật chất, tinh thần cho đo&agrave;n vi&ecirc;n, c&ocirc;ng nh&acirc;n, lao động ng&agrave;y một tốt hơn, tạo điều kiện để tất cả NLĐ đều được phục vụ c&aacute;c nhu cầu thiết yếu cho đời sống một c&aacute;ch tốt nhất, đồng thời n&acirc;ng cao nhận thức cho đo&agrave;n vi&ecirc;n v&agrave; NLĐ về kiến thức ph&aacute;p luật, C&ocirc;ng đo&agrave;n c&aacute;c khu c&ocirc;ng nghiệp phối hợp với CĐCS v&agrave; Ban Gi&aacute;m đốc c&ocirc;ng ty TNHH JiaHsin, Ban quản l&yacute; khu C&ocirc;ng nghiệp Cầu Tr&agrave;m tổ chức thực hiện th&iacute; điểm chương tr&igrave;nh <strong>&ldquo;B&aacute;n h&agrave;ng gi&aacute; tốt v&agrave; tư vấn ph&aacute;p luật miễn ph&iacute; cho NLĐ&rdquo;</strong> định kỳ mỗi th&aacute;ng một lần từ ng&agrave;y 10 đến 15 h&agrave;ng th&aacute;ng, thời gian thực hiện hoạt động l&agrave; 2 ng&agrave;y/th&aacute;ng, địa điểm tại Khu c&ocirc;ng nghiệp Cầu Tr&agrave;m, x&atilde; Long Trạch, huyện Cần Đước, tỉnh Long An</span></span></p>\r\n\r\n<p style=\"margin-right:-2px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Chương tr&igrave;nh dự kiến được bố tr&iacute; từ 10 đến 20 gian h&agrave;ng b&aacute;n c&aacute;c mặt h&agrave;ng thiết yếu phục vụ cho nhu cầu đời sống của NLĐ trong khu c&ocirc;ng nghiệp với gi&aacute; ưu đ&atilde;i thấp hơn gi&aacute; b&aacute;n ra thị trường từ 5% đến 10% v&agrave; đảm bảo chất lượng h&agrave;ng h&oacute;a đạt chuẩn quy định đồng thời chức tư vấn ph&aacute;p luật v&agrave; sức khỏe sinh sản miễn ph&iacute; cho NLĐ trong suốt thời gian diễn ra chương tr&igrave;nh.</span></span></p>\r\n\r\n<p style=\"margin-right:-2px; text-align:center\"><img alt=\"\" src=\"/portal/public/upload/images/1_Trang_ch%E1%BB%A7_%E9%A6%96%E9%A0%81/1.1_S%E1%BB%B1_ki%E1%BB%87n_%E6%B4%BB%E5%8B%95%E8%A8%8A%E6%81%AF/2019/IMG_9459.JPG\" style=\"width:70%\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Chương tr&igrave;nh <strong>&ldquo;B&aacute;n h&agrave;ng gi&aacute; tốt v&agrave; tư vấn ph&aacute;p luật miễn ph&iacute; cho NLĐ&rdquo; </strong>sẽ bắt đầu thực hiện từ th&aacute;ng 4/2019, thời gian v&agrave; địa điểm cụ thể như sau:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Thời gian:<strong> 12 v&agrave; 13/04/2019</strong></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Địa điểm<strong>: tại cổng C&ocirc;ng ty TNHH Jia Hsin </strong>(Khu c&ocirc;ng nghiệp Cầu Tr&agrave;m, x&atilde; Long Trạch, huyện Cần Đước, tỉnh Long An)</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">B&ecirc;n cạnh đ&oacute;, CĐCS C&ocirc;ng ty TNHH Jia Hsin k&ecirc;u gọi to&agrave;n thể CB-CNV chung tay quy&ecirc;n g&oacute;p những vật dụng gia đ&igrave;nh c&ograve;n sử dụng được như &nbsp;để tặng lại cho những CB-CNV kh&oacute; khăn chưa c&oacute; điều kiện mua sắm cho cuộc sống hằng ng&agrave;y đặt biệt l&agrave; những CB-CNV đang thu&ecirc; trọ.</span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-04 11:46:54', '2019-04-04 13:02:09', NULL, NULL, NULL, NULL);
INSERT INTO `portal_post` (`id`, `user_id`, `user_fullname`, `user_dept`, `post_group`, `title`, `description`, `picture`, `content`, `date_start`, `date_end`, `news`, `status`, `created`, `modified`, `edited_user_id`, `edited_user_fullname`, `deleted`, `deleted_user_id`) VALUES
(44, 4, 'Lâm Quế Bình', NULL, 11, 'ĐAU LƯNG, ĐAU CỖ, MỎI MẮT KHI NGỒI LÀM VIỆC TẠI VĂN PHÒNG. TẠI SAO?', '', '/portal/public/upload/images/1_Trang_chủ_首頁/1.2_Chuyên_Mục_HSE_專欄/2019/2.jpg', '<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"background-color:white\">Nh&acirc;n vi&ecirc;n văn ph&ograve;ng l&agrave; nghề nghiệp phải ngồi l&agrave;m việc nhiều nhất trong ng&agrave;y. Ch&iacute;nh việc thường xuy&ecirc;n ngồi cố định một chỗ đ&atilde; khiến c&aacute;c cơ bắp v&agrave; d&acirc;y chằng trở n&ecirc;n căng cứng kết hợp một số h&agrave;nh vi, tư thế ngồi &ldquo;<strong><em>độc đ&aacute;o</em></strong>&rdquo; đ&atilde; dẫn đến nhiều hội chứng như đau lưng, đau v&ugrave;ng quanh cổ v&agrave; vay g&aacute;y, mỏi mắt,&hellip; Bạn đ&atilde; c&oacute; bao giờ rơi v&agrave;o t&igrave;nh trạng n&agrave;y? Những lưu &yacute; dưới đ&acirc;y sẽ gi&uacute;p bạn nhận ra nguy&ecirc;n nh&acirc;n cũng những cơn đau đ&atilde; v&agrave; đang mắc phải từ đ&oacute; h&atilde;y thay đổi h&agrave;nh vi đ&uacute;ng g&oacute;p đẩy l&ugrave;i những t&aacute;c động kh&ocirc;ng tốt cho sức khỏe:</span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:white\">Lựa chọn b&agrave;n ghế văn ph&ograve;ng, m&aacute;y t&iacute;nh th&iacute;ch hợp v&agrave; dễ d&agrave;ng điều chỉnh sao cho m&agrave;n h&igrave;nh bằng hoặc thấp hơn tầm mắt của bạn 1 ch&uacute;t gi&uacute;p cổ v&agrave; g&aacute;y thoải m&aacute;i hơn.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/portal/public/upload/images/1_Trang_ch%E1%BB%A7_%E9%A6%96%E9%A0%81/1.2_Chuy%C3%AAn_M%E1%BB%A5c_HSE_%E5%B0%88%E6%AC%84/2019/3.jpg\" style=\"height:255px; width:300px\" /></p>\r\n\r\n<ul>\r\n	<li><span style=\"background-color:white\">H&atilde;y duy tr&igrave; khoảng c&aacute;ch &iacute;t nhất 50 cm từ m&agrave;n h&igrave;nh đến mắt của bạn, tr&aacute;nh để gần mắt rất dễ g&acirc;y cận thị khi l&agrave;m việc trong thời gian d&agrave;i. </span></li>\r\n	<li><span style=\"background-color:white\">Khi ngồi cột sống v&agrave; cổ của bạn phải lu&ocirc;n được giữ thẳng v&agrave; xương chậu nghi&ecirc;ng nhẹ về ph&iacute;a trước. </span><span style=\"background-color:white\">Thả lỏng hai ch&acirc;n dưới mặt đất, giữ bắp đ&ugrave;i vu&ocirc;ng g&oacute;c với cẳng ch&acirc;n, nếu ch&acirc;n ngắn hơn ghế, h&atilde;y điều chỉnh chiều cao của ghế cho ph&ugrave; hợp v&agrave; lựa chọn mặt b&agrave;n&nbsp;ngang tầm ngực để kh&ocirc;ng phải với&nbsp;tay l&ecirc;n qu&aacute; cao.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"background-color:white\"><img alt=\"\" src=\"/portal/public/upload/images/1_Trang_ch%E1%BB%A7_%E9%A6%96%E9%A0%81/1.2_Chuy%C3%AAn_M%E1%BB%A5c_HSE_%E5%B0%88%E6%AC%84/2019/4.png\" style=\"height:269px; width:300px\" />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"/portal/public/upload/images/1_Trang_ch%E1%BB%A7_%E9%A6%96%E9%A0%81/1.2_Chuy%C3%AAn_M%E1%BB%A5c_HSE_%E5%B0%88%E6%AC%84/2019/5.png\" style=\"height:254px; width:270px\" /></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"background-color:white\">Giữ c&aacute;nh tay ở vị tr&iacute; đ&uacute;ng để tr&aacute;nh mỏi v&agrave; đau nhức bằng c&aacute;ch lu&ocirc;n tạo một g&oacute;c 90 độ ở khuỷu tay khi g&otilde; b&agrave;n ph&iacute;m hay sử dụng chuột.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"background-color:white\"><img alt=\"\" src=\"/portal/public/upload/images/1_Trang_ch%E1%BB%A7_%E9%A6%96%E9%A0%81/1.2_Chuy%C3%AAn_M%E1%BB%A5c_HSE_%E5%B0%88%E6%AC%84/2019/6.png\" style=\"height:353px; width:400px\" /></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"background-color:white\">Khi g&otilde; b&agrave;n ph&iacute;m, kh&ocirc;ng n&ecirc;n để l&ograve;ng b&agrave;n tay chạm v&agrave;o b&agrave;n ph&iacute;m m&agrave; h&atilde;y giữ ở ph&iacute;a tr&ecirc;n, nhẹ nh&agrave;ng d&ugrave;ng c&aacute;c ng&oacute;n tay ấn xuống b&agrave;n ph&iacute;m. Điều n&agrave;y sẽ gi&uacute;p b&agrave;n tay v&agrave; ng&oacute;n tay của bạn kh&ocirc;ng bị mỏi kể cả khi đ&aacute;nh m&aacute;y li&ecirc;n tục trong một thời gian d&agrave;i.</span></li>\r\n	<li>Khi d&ugrave;ng chuột m&aacute;y t&iacute;nh, h&atilde;y lựa chọn chuột c&oacute; k&iacute;ch thước sao cho nằm trọn vẹn trong b&agrave;n tay bạn, việc sử dụng chuột sẽ dễ d&agrave;ng hơn v&agrave; tốn &iacute;t lực hơn.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/portal/public/upload/images/1_Trang_ch%E1%BB%A7_%E9%A6%96%E9%A0%81/1.2_Chuy%C3%AAn_M%E1%BB%A5c_HSE_%E5%B0%88%E6%AC%84/2019/7.jpg\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<ul>\r\n	<li><span style=\"background-color:white\">Với c&ocirc;ng nghệ ti&ecirc;n tiến hiện nay, thường th&igrave; c&aacute;c m&agrave;n h&igrave;nh đều được thiết kế tương phản tốt kh&ocirc;ng g&acirc;y ảnh hưởng nhiều đến mắt, tuy vậy bạn vẫn n&ecirc;n ch&uacute; &yacute; điều chỉnh yếu tố n&agrave;y kết hợp với &aacute;nh s&aacute;ng sao cho th&iacute;ch hợp với &aacute;nh s&aacute;ng trong văn ph&ograve;ng để tr&aacute;nh bị mỏi mắt.</span></li>\r\n	<li><span style=\"background-color:white\">Vệ sinh m&agrave;n h&igrave;nh thường xuy&ecirc;n, đặc biệt l&agrave; c&aacute;c vết bụi bẩn, v&acirc;n tay, dầu mỡ ph&aacute;t sinh trong qu&aacute; tr&igrave;nh l&agrave;m việc để tr&aacute;nh căng thẳng cho mắt.</span></li>\r\n	<li><span style=\"background-color:white\">Sau một thời gian l&agrave;m việc li&ecirc;n tục, h&atilde;y d&agrave;nh một ch&uacute;t &iacute;t thời gian để thư gi&atilde;n g&acirc;n cốt, mắt, tay cũng như c&aacute;c bộ phận kh&aacute;c nghỉ ngơi. Một b&agrave;i tập đơn giản c&oacute; thể dễ d&agrave;ng &aacute;p dụng để thư gi&atilde;n bạn chỉ cần rời khỏi m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh v&agrave; nh&igrave;n ra nơi kh&aacute;c, tr&aacute;nh &aacute;nh s&aacute;ng ch&oacute;i trong khoảng 20 gi&acirc;y&nbsp;l&agrave; đủ. Ngo&agrave;i ra, bạn cũng c&oacute; thể đứng l&ecirc;n uống ch&uacute;t g&igrave; đ&oacute; hoặc tr&ograve; chuyện với đồng nghiệp để giảm bớt căng thẳng.</span></li>\r\n	<li><span style=\"background-color:white\">Đối với những người đeo k&iacute;nh, bạn cũng n&ecirc;n lựa chọn k&iacute;nh ph&ugrave; hợp, vệ sinh mắt k&iacute;nh hoặc d&ugrave;ng k&iacute;nh chống ch&oacute;i để hạn chế phản chiếu &aacute;nh s&aacute;ng v&agrave; nh&igrave;n c&aacute;c đối tượng tươi s&aacute;ng, sắc n&eacute;t hơn.</span></li>\r\n</ul>\r\n\r\n<p>Trong khi tập trung l&agrave;m việc hay xử l&yacute; vấn đề bạn c&oacute; thể sẽ v&ocirc; t&igrave;nh l&agrave;m việc sai tư thế v&igrave; vậy h&atilde;y thường xuy&ecirc;n kiểm tra lại tư thế ngồi khi đang l&agrave;m việc để chắc chắn m&igrave;nh l&agrave;m việc đ&uacute;ng tư thế. Như thế sẽ g&oacute;p phần n&acirc;ng cao hiệu quả l&agrave;m việc v&agrave; duy tr&igrave; sức khỏe l&agrave;m việc.</p>\r\n', NULL, NULL, 1, 1, '2019-04-04 16:32:17', '2019-04-05 15:43:29', 4, 'Lâm Quế Bình', NULL, NULL),
(45, 4, 'Lâm Quế Bình', NULL, 2, '004/CSHT/LĐ CHÍNH SÁCH CHỐNG KHỦNG BỐ C-TPAT', 'Ban hành lần 02 ngày 01/06/2018', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 14:03:53', '2019-04-05 17:43:04', 4, 'Lâm Quế Bình', NULL, NULL),
(46, 4, 'Lâm Quế Bình', NULL, 2, '005/CSHT/LĐ CHÍNH SÁCH BẢO MẬT THÔNG TIN', 'Ban hành lần 03 ngày 05/05/2016', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 14:17:59', '2019-04-05 17:43:24', 4, 'Lâm Quế Bình', NULL, NULL),
(47, 4, 'Lâm Quế Bình', NULL, 2, '017/CSHT/LĐ CHÍNH SÁCH AN NINH BẢO MẬT', 'Ban hành lần 02 ngày 01/06/2018', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 15:55:32', '2019-04-05 17:21:37', 4, 'Lâm Quế Bình', NULL, NULL),
(48, 4, 'Lâm Quế Bình', NULL, 2, '006/CSHT/LĐ CHÍNH SÁCH LAO ĐỘNG NẶNG NHỌC - ĐỘC HẠI - 繁重毒害勞動政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:01:40', '2019-04-05 17:03:25', 4, 'Lâm Quế Bình', NULL, NULL),
(49, 4, 'Lâm Quế Bình', NULL, 2, '007/CSHT/LĐ CHÍNH SÁCH ĐỐI VỚI LAO ĐỘNG NỮ - 女員工勞動政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:06:37', '2019-04-05 17:08:36', 4, 'Lâm Quế Bình', NULL, NULL),
(50, 4, 'Lâm Quế Bình', NULL, 2, '008/CSHT/LĐ CHÍNH SÁCH ĐÀO TẠO - 培訓政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:20:24', '2019-04-05 17:20:43', 4, 'Lâm Quế Bình', NULL, NULL),
(51, 4, 'Lâm Quế Bình', NULL, 2, '009/CSHT/LĐ CHÍNH SÁCH TUYỂN DỤNG - 招募政策', 'Ban hành lần 04 ngày 20/02/2019 - 於20/02/2019 第4次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:24:28', '2019-04-05 17:24:52', 4, 'Lâm Quế Bình', NULL, NULL),
(52, 4, 'Lâm Quế Bình', NULL, 2, '010/CSHT/LĐ CHÍNH SÁCH LƯƠNG VÀ PHÚC LỢI - 薪資及福利政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:27:28', '2019-04-05 17:27:52', 4, 'Lâm Quế Bình', NULL, NULL),
(53, 4, 'Lâm Quế Bình', NULL, 2, '011/CSHT/LĐ CHÍNH SÁCH TRUYỀN THÔNG - 資訊傳遞政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:29:21', '2019-04-05 17:29:45', 4, 'Lâm Quế Bình', NULL, NULL),
(54, 4, 'Lâm Quế Bình', NULL, 2, '012/CSHT/LĐ CHÍNH SÁCH CHỐNG LAO ĐỘNG CƯỠNG BỨC - 反對強迫勞動政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:31:08', '2019-04-05 17:31:52', 4, 'Lâm Quế Bình', NULL, NULL),
(55, 4, 'Lâm Quế Bình', NULL, 2, '013/CSHT/LĐ CHÍNH SÁCH CHỐNG QUẤY RỐI NHỤC MẠ - 反騷擾及侮辱政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:33:11', '2019-04-05 17:33:30', 4, 'Lâm Quế Bình', NULL, NULL),
(56, 4, 'Lâm Quế Bình', NULL, 2, '014/CSHT/LĐ CHÍNH SÁCH CHỐNG TRẢ THÙ - 反報復政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:34:33', '2019-04-05 17:34:50', 4, 'Lâm Quế Bình', NULL, NULL),
(57, 4, 'Lâm Quế Bình', NULL, 2, '015/CSHT/LĐ CHÍNH SÁCH ĐỐI XỬ CÔNG BẰNG - 公平待遇政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:37:58', '2019-04-05 17:38:16', 4, 'Lâm Quế Bình', NULL, NULL),
(58, 4, 'Lâm Quế Bình', NULL, 2, '016/CSHT/LĐ CHÍNH SÁCH TỰ DO ĐOÀN THỂ - TỰ DO TÔN GIÁO - 自由團隊-宗教自由政策', 'Ban hành lần 03 ngày 20/02/2019 - 於20/02/2019 第3次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 17:39:45', '2019-04-05 17:40:06', 4, 'Lâm Quế Bình', NULL, NULL),
(59, 4, 'Lâm Quế Bình', NULL, 3, '002/QTHT/HR QUY TRÌNH THÔI VIỆC', 'Ban hành lần 03 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 18:01:24', '2019-04-06 10:54:53', 4, 'Lâm Quế Bình', NULL, NULL),
(60, 4, 'Lâm Quế Bình', NULL, 3, 'HD01-002/QTHT/HR HƯỚNG DẪN CHI TRẢ TRỢ CẤP THÔI VIỆC', 'Ban hành lần 01 ngày 01/10/2015', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 18:08:14', '2019-04-06 10:58:28', 4, 'Lâm Quế Bình', NULL, NULL),
(61, 4, 'Lâm Quế Bình', NULL, 3, 'HD02-003/QTHT/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ HỒ SƠ CÁ NHÂN CB-CNV', 'Ban hành lần 01 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 18:12:50', '2019-04-06 10:57:55', 4, 'Lâm Quế Bình', NULL, NULL),
(62, 4, 'Lâm Quế Bình', NULL, 3, 'HD09-003/QTHT/HR HƯỚNG DẪN LAO ĐỘNG NỮ MANG THAI/ SINH CON/ LAO ĐỘNG NUÔI CON DƯỚI 12 THÁNG TUỔI', 'Ban hành lần 02 ngày 01/10/2018', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 18:43:19', '2019-04-06 10:56:08', 4, 'Lâm Quế Bình', NULL, NULL),
(63, 4, 'Lâm Quế Bình', NULL, 3, 'HD05-003/QIHT/HR HƯỚNG DẪN CÔNG VIỆC BAN HÀNH CÁC QUYẾT ĐỊNH', 'Ban hành lần 01 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-05 18:52:42', '2019-04-06 10:57:34', 4, 'Lâm Quế Bình', NULL, NULL),
(64, 4, 'Lâm Quế Bình', NULL, 2, '001/CSHT/LĐ CHÍNH SÁCH TRÁCH NHIỆM XÃ HỘI', 'Ban hành lần 04 ngày 27/09/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-06 10:53:00', '2019-04-06 10:53:17', 4, 'Lâm Quế Bình', NULL, NULL),
(65, 4, 'Lâm Quế Bình', NULL, 3, 'HD06-003/QTHT/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ LAO ĐỘNG CHƯA THÀNH NIÊN', 'Ban hành lần 03 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-06 11:02:12', '2019-04-06 11:02:40', 4, 'Lâm Quế Bình', NULL, NULL),
(66, 4, 'Lâm Quế Bình', NULL, 3, 'HD07-003/QTHT/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ LAO ĐỘNG KHUYẾT TẬT', 'Ban hành lần 01 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-06 11:45:19', '2019-04-06 11:47:10', 4, 'Lâm Quế Bình', NULL, NULL),
(67, 4, 'Lâm Quế Bình', NULL, 3, 'HD08-003/QTHT/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ LAO ĐỘNG CAO TUỔI', 'Ban hành lần 01 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-06 13:15:32', '2019-04-06 13:16:02', 4, 'Lâm Quế Bình', NULL, NULL),
(68, 4, 'Lâm Quế Bình', NULL, 1, 'HD11-003/QTHT/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ BẢO HIỂM XÃ HỘI, BẢO HIỂM Y TẾ, BẢO HIỂM THẤT NGHIỆP', 'Ban hành lần 01 ngày 20/06/2014', '', '<p><span style=\"font-size:14px\">Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</span></p>\r\n\r\n<p><span style=\"font-size:14px\">請查閱附檔內容</span></p>\r\n', NULL, NULL, 1, -1, '2019-04-06 13:19:30', '2019-04-06 13:19:48', 4, 'Lâm Quế Bình', '2019-04-06 13:22:49', 4),
(69, 4, 'Lâm Quế Bình', NULL, 3, 'HD11-003/QTHT/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ BẢO HIỂM XÃ HỘI, BẢO HIỂM Y TẾ, BẢO HIỂM THẤT NGHIỆP', 'Ban hành lần 01 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-06 13:22:33', '2019-04-06 13:22:40', 4, 'Lâm Quế Bình', NULL, NULL),
(70, 4, 'Lâm Quế Bình', NULL, 3, '004/QTHT/HR QUY TRÌNH ĐÀO TẠO', 'Ban hành lần 06 ngày 01/08/2018', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-06 14:04:23', '2019-04-06 14:04:43', 4, 'Lâm Quế Bình', NULL, NULL),
(71, 4, 'Lâm Quế Bình', NULL, 3, '005/QTHT/HR QUY TRÌNH QUẢN LÝ GIẢI QUYẾT GÓP Ý, THẮC MẮC, KHIẾU NẠI', 'Ban hành lần 05 ngày 15/08/2018 ', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-06 14:07:34', '2019-04-06 14:08:02', 4, 'Lâm Quế Bình', NULL, NULL),
(72, 1, 'John Nguyen', NULL, 8, 'Nghỉ Giỗ tổ  Hùng Vương và nghỉ bù 雄王節休假和補休', '', '', '', '2019-04-14 00:00:00', '2019-04-15 01:00:00', 0, 1, '2019-04-06 18:25:30', '2019-04-09 15:59:00', 4, 'Lâm Quế Bình', NULL, NULL),
(73, 4, 'Lâm Quế Bình', NULL, 3, '049/QTKK/HR QUY TRÌNH ĐÁNH GIÁ XẾP LOẠI ABC', 'Ban hành lần 03 ngày 01/08/2018', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:06:40', '2019-04-08 11:07:58', 4, 'Lâm Quế Bình', NULL, NULL),
(74, 4, 'Lâm Quế Bình', NULL, 3, '001/QĐKK/HR QUY ĐỊNH THỰC HIỆN QUY CHẾ DÂN CHỦ', 'Ban hành lần 01 ngày 01/04/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:16:23', '2019-04-08 11:17:59', 4, 'Lâm Quế Bình', NULL, NULL),
(75, 4, 'Lâm Quế Bình', NULL, 3, 'HD01-001/QĐKK/HR HƯỚNG DẪN CÔNG VIỆC TỔ CHỨC HỌP ĐỊNH KỲ 3 BÊN', 'Ban hành lần 01 ngày 01/04/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:47:11', '2019-04-08 14:09:24', 4, 'Lâm Quế Bình', NULL, NULL),
(76, 4, 'Lâm Quế Bình', NULL, 3, 'HD02-001/QĐKK/HR HƯỚNG DẪN CÔNG VIỆC TỔ CHỨC HỘI NGHỊ NGƯỜI LAO ĐỘNG', 'Ban hành lần 01 ngày 01/04/2014 ', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:49:08', '2019-04-08 14:11:39', 4, 'Lâm Quế Bình', NULL, NULL),
(77, 4, 'Lâm Quế Bình', NULL, 3, '003/QTKK/HR QUY TRÌNH QUẢN LÝ THỜI GIAN LÀM VIỆC', 'Ban hành lần 03 ngày 06/07/2017', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:51:03', '2019-04-08 11:51:25', 4, 'Lâm Quế Bình', NULL, NULL),
(78, 4, 'Lâm Quế Bình', NULL, 3, 'HD01-003/QTKK/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ VIỆC NGHỈ PHÉP', 'Ban hành lần 03 ngày 30/06/2015', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:52:59', '2019-04-08 14:11:18', 4, 'Lâm Quế Bình', NULL, NULL),
(79, 4, 'Lâm Quế Bình', NULL, 3, 'HD02-003/QTKK/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ THỜI GIAN TĂNG CA', 'Ban hành lần 03 ngày 11/07/2017', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:54:44', '2019-04-08 14:10:50', 4, 'Lâm Quế Bình', NULL, NULL),
(80, 4, 'Lâm Quế Bình', NULL, 3, 'HD03-003/QTKK/HR HƯỚNG DẪN CÔNG VIỆC CÁCH TÍNH NGÀY NGHỈ PHÉP NĂM CHO TRƯỜNG HỢP THÔI VIỆC, KHÔNG NGHỈ HẾT PHÉP TRONG NĂM', 'Ban hành lần 02 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:55:35', '2019-04-08 14:10:34', 4, 'Lâm Quế Bình', NULL, NULL),
(81, 4, 'Lâm Quế Bình', NULL, 3, 'HD04-003/QTKK/HR HƯỚNG DẪN CÔNG VIỆC CHUYỂN ĐỔI NGÀY LÀM VIỆC', 'Ban hành lần 02 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 11:58:50', '2019-04-08 14:10:15', 4, 'Lâm Quế Bình', NULL, NULL),
(82, 4, 'Lâm Quế Bình', NULL, 3, '004/QTKK/HR QUY TRÌNH XỬ LÝ KỶ LUẬT', 'Ban hành lần 07 ngày 01/01/2019', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:02:28', '2019-04-08 13:02:57', 4, 'Lâm Quế Bình', NULL, NULL),
(83, 4, 'Lâm Quế Bình', NULL, 3, '005/QTKK/HR QUY TRÌNH TÍNH/ PHÁT LƯƠNG - CÁC LOẠI PHỤ CẤP VÀ TRỢ CẤP', 'Ban hành lần 04 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:07:36', '2019-04-08 13:07:58', 4, 'Lâm Quế Bình', NULL, NULL),
(84, 4, 'Lâm Quế Bình', NULL, 3, 'HD01-005/QTKK/HR HƯỚNG DẪN CÔNG VIỆC CẬP NHẬT CÁC HẠNG MỤC TRONG PHẦN MỀM TÍNH LƯƠNG', 'Ban hành lần 03 ngày 30/06/2015', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:09:48', '2019-04-08 13:10:15', 4, 'Lâm Quế Bình', NULL, NULL),
(85, 4, 'Lâm Quế Bình', NULL, 3, '006/QTKK/HR QUY TRÌNH QUẢN LÝ PHẦN MỀM NHÂN SỰ', 'Ban hành lần 03 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:44:22', '2019-04-08 13:44:52', 4, 'Lâm Quế Bình', NULL, NULL),
(86, 4, 'Lâm Quế Bình', NULL, 3, 'HD01-006/QTKK/HR HƯỚNG DẪN CÔNG VIỆC TRÁCH NHIỆM CẬP NHẬT CÁC HẠNG MỤC TRONG PHẦN MỀM NHÂN SỰ', 'Ban hành lần 03 ngày 30/06/2015', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:46:53', '2019-04-08 13:47:46', 4, 'Lâm Quế Bình', NULL, NULL),
(87, 4, 'Lâm Quế Bình', NULL, 3, 'HD02-006/QTKK/HR HƯỚNG DẪN CÔNG VIỆC QUẢN LÝ \"DANH SÁCH CB-CNV THÔI VIỆC CẦN CHÚ Ý\"', 'Ban hành lần 02 ngày 20/06/2014', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:49:26', '2019-04-08 13:49:36', 4, 'Lâm Quế Bình', NULL, NULL),
(88, 4, 'Lâm Quế Bình', NULL, 3, 'HD01-007/QTKK/HR HƯỚNG DẪN CÔNG VIỆC THĂNG CHỨC', 'Ban hành lần 04 ngày 02/01/2019', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:51:13', '2019-04-08 14:12:30', 4, 'Lâm Quế Bình', NULL, NULL),
(89, 4, 'Lâm Quế Bình', NULL, 3, '048/QTKK/HR QUY TRÌNH GIẢI QUYẾT TRANH CHẤP LAO ĐỘNG ĐÌNH CÔNG, LÃN CÔNG', 'Ban hành lần 03 ngày 01/08/2018', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 13:56:14', '2019-04-08 13:56:39', 4, 'Lâm Quế Bình', NULL, NULL),
(90, 4, 'Lâm Quế Bình', NULL, 3, 'HD01-048/QTKK/HR HƯỚNG DẪN CÔNG VIỆC XỬ LÝ KHI CÓ SỰ CỐ LAO ĐỘNG BẤT THƯỜNG', 'Ban hành lần 01 ngày 01/08/2016', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 14:03:55', '2019-04-08 14:04:08', 4, 'Lâm Quế Bình', NULL, NULL),
(91, 4, 'Lâm Quế Bình', NULL, 3, 'HD02-048/QTKK/HR HƯỚNG DẪN CÔNG VIỆC XỬ LÝ KHI CÓ SỰ CỐ BẤT THƯỜNG DÀNH CHO LAO ĐỘNG NƯỚC NGOÀI', 'Ban hành lần 01 ngày 01/08/2016', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-08 14:16:08', '2019-04-08 14:16:35', 4, 'Lâm Quế Bình', NULL, NULL),
(92, 4, 'Lâm Quế Bình', NULL, 8, 'Cắt tóc, làm móng miễn phí 免費剪頭髮、做指甲', '', '', '', '2019-04-21 15:56:00', '2019-04-21 15:57:00', 0, 1, '2019-04-09 15:55:24', '2019-04-09 15:57:36', 4, 'Lâm Quế Bình', NULL, NULL),
(93, 4, 'Lâm Quế Bình', NULL, 8, 'Nghỉ 1 ngày phép năm công ty 休一天年假（年假）', '', '', '', '2019-04-29 16:00:00', '2019-04-29 16:01:00', 0, 1, '2019-04-09 16:00:23', '2019-04-09 16:00:23', 4, 'Lâm Quế Bình', NULL, NULL),
(94, 4, 'Lâm Quế Bình', NULL, 8, 'Nghỉ Lễ 30/4 và 1/5 解放節和五一休假', '', '', '', '2019-04-30 00:00:00', '2019-05-01 23:59:00', 0, 1, '2019-04-09 16:01:46', '2019-04-09 16:02:37', 4, 'Lâm Quế Bình', NULL, NULL),
(95, 4, 'Lâm Quế Bình', NULL, 8, 'Chương trình bán hàng và tư vấn pháp luật 特賣會和法律咨詢', '', '', '', '2019-04-12 00:01:00', '2019-04-13 16:08:00', 0, 1, '2019-04-09 16:28:56', '2019-04-09 16:28:56', 4, 'Lâm Quế Bình', NULL, NULL),
(96, 4, 'Lâm Quế Bình', NULL, 1, 'hihii', '', '', '', NULL, NULL, 1, -1, '2019-04-10 08:46:06', '2019-04-10 08:46:06', 4, 'Lâm Quế Bình', '2019-04-10 08:51:14', 4),
(97, 4, 'Lâm Quế Bình', NULL, 11, 'DỊCH TẢ HEO CHÂU PHI KHÔNG LÂY CHO NGƯỜI', '', '/portal/public/upload/images/1_Trang_chủ_首頁/1.2_Chuyên_Mục_HSE_專欄/2019/2018-03-18-06-1521336747.png', '<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><em><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Bệnh dịch tả heo Ch&acirc;u Phi</span></span></em></strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"> l&agrave; bệnh truyền nhiễm tr&ecirc;n heo do ADN virus c&oacute; vỏ bọc (ASF virus) g&acirc;y ra, với c&aacute;c biểu hiện tr&ecirc;n heo như sốt cao, xuất huyết, ti&ecirc;u chảy v&agrave; l&agrave;m heo chết. Dịch tả được ph&aacute;t hiện lần đầu tr&ecirc;n lợn l&ograve;i Ch&acirc;u phi (Montgomery, 1921). Virus dịch tả kh&ocirc;ng l&acirc;y sang người d&ugrave; c&oacute; tiếp x&uacute;c với heo bệnh hoặc ăn phải thịt heo bị bệnh.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Trước nhiều kh&ocirc;ng tin kh&ocirc;ng đ&uacute;ng sự thật được ph&aacute;t t&aacute;n c&aacute;c phương tiện th&ocirc;n&nbsp;tin truyền th&ocirc;ng người ti&ecirc;u d&ugrave;ng ti&ecirc;u thụ thịt heo v&ocirc; c&ugrave;ng hoang mang v&agrave; lo lắng khi lựa chọn sử dụng thịt heo tại nh&agrave; v&agrave; tại c&aacute;c bếp ăn. Nhiều c&acirc;u hỏi được đặt ra như: <strong><em>&ldquo;</em></strong></span></span><strong><em><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><a href=\"http://www.greenfeed.com.vn/vi/dich-ta-heo-chau-phi/#collapse13\">Con người nếu ăn phải thịt heo bị nhiễm bệnh dịch tả heo Ch&acirc;u Phi, c&oacute; g&acirc;y ảnh hưởng đến sức khỏe?</a><span style=\"color:black\">&rdquo;</span></span></em></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">V&agrave; c&acirc;u trả lời được x&aacute;c nhận từ c&aacute;c nh&agrave; khoa học v&agrave; giới cơ quan chức năng l&agrave; <strong>KH&Ocirc;NG L&Acirc;Y CHO NGƯỜI</strong>.&nbsp;Nếu bạn l&agrave; người ti&ecirc;u d&ugrave;ng th&ocirc;ng minh n&ecirc;n nắm r&otilde; những vấn đề n&agrave;y, tuy&ecirc;n truy&ecirc;n cho mọi người xung quanh v&agrave; g&oacute;p phần thực hiện cuộc chiến ph&ograve;ng chống ảnh hưởng của dịch tả heo Ch&acirc;u Phi. B&ecirc;n cạnh đ&oacute;, việc mua b&aacute;n, vận chuyển, giết mổ heo bệnh bị nghi&ecirc;m cấm v&agrave; được xử l&yacute; nghi&ecirc;m minh nếu ph&aacute;t hiện vi phạm. Sự v&agrave;o cuộc mạnh mẽ của cơ quan chức năng để kiểm so&aacute;t dịch th&igrave; khả năng thịt heo bị nhiễm bệnh đến bếp ăn l&agrave;&nbsp;<strong>RẤT THẤP</strong>.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"><img alt=\"\" src=\"/portal/public/upload/images/1_Trang_ch%E1%BB%A7_%E9%A6%96%E9%A0%81/1.2_Chuy%C3%AAn_M%E1%BB%A5c_HSE_%E5%B0%88%E6%AC%84/2019/5348_vissan-gia-si_poux.jpg\" style=\"width:500px\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;<span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Tại c&ocirc;ng ty TNHH Jia Hsin, to&agrave;n bộ thực phẩm cho bếp ăn đều được nhập v&agrave;o từ những đơn vị cung cấp lớn v&agrave; c&oacute; uy t&iacute;n tr&ecirc;n thị trường, thực phẩm nguồn gốc r&otilde; r&agrave;ng v&agrave; độ an to&agrave;n đảm bảo. Ch&iacute;nh v&igrave; thế, h&atilde;y an t&acirc;m sử dụng thịt heo sạch - loại thực phẩm th&ocirc;ng dụng của mọi người d&acirc;n. H&atilde;y thể hiện m&igrave;nh l&agrave; người ti&ecirc;u d&ugrave;ng th&ocirc;ng minh./.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-size:14px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><em><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">(Nguồn tổng hợp)</span></span></em></strong> </span></span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-10 09:48:49', '2019-04-10 09:48:49', 4, 'Lâm Quế Bình', NULL, NULL),
(98, 4, 'Lâm Quế Bình', NULL, 10, '254/TB/JH-HR THÔNG BÁO VỀ VIỆC ĐIỀU CHỈNH QUY ĐỊNH TÍNH CÔNG TÁC PHÍ - 通知關於調整旅費補助規定', 'Ban hành ngày 10/04/2019 於10/04/2019頒行', '', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>TH&Ocirc;NG B&Aacute;O&nbsp;</strong></span></span><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>通知</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"color:black\">Về việc ĐIỀU CHỈNH QUY ĐỊNH T&Iacute;NH C&Ocirc;NG T&Aacute;C PH&Iacute;</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>關於調整旅費補助規定</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>*************</strong></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Nhằm đảm bảo c&aacute;c nhu cầu sinh hoạt cho CB-CNV đi c&ocirc;ng t&aacute;c theo y&ecirc;u cầu c&ocirc;ng ty.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">確保公司指派出差人員之生活需求</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Căn cứ v&agrave;o quyền hạn BTGĐ</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">依照總經理部指示</span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>BAN TỔNG GI&Aacute;M ĐỐC TH&Ocirc;NG B&Aacute;O</strong></span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>總經理部通知</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Điều 1: </strong>&nbsp;&nbsp;<span style=\"color:red\">Kể từ 1/5/2019</span> C&ocirc;ng ty sẽ &aacute;p dụng việc t&iacute;nh tiền c&ocirc;ng t&aacute;c ph&iacute; cho c&aacute;c trường hợp CB-CNV được ph&acirc;n c&ocirc;ng đi c&ocirc;ng t&aacute;c <span style=\"color:red\">bao gồm việc c&ocirc;ng t&aacute;c tại c&aacute;c nh&agrave; thầu phụ, họp h&agrave;nh hay c&aacute;c c&ocirc;ng t&aacute;c kh&aacute;c </span>theo theo c&aacute;c quy định sau:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第一條:</strong> 此通知自<span style=\"color:red\">2019年5月1日生效</span>, 適用於公司指派派駐外包廠<span style=\"color:red\">及</span>出差人員。</span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid windowtext 1.0pt; margin-left:55px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:85.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Dạng c&ocirc;ng t&aacute;c</strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>出差種類</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Ph&iacute; xe cộ</strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>交通費</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:103.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Ph&iacute; cơm nước</strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>膳食費</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Ph&iacute; sinh hoạt</strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>生活費</strong></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:94.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Ph&iacute; nh&agrave; ở</strong></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>住宿費</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:85.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Trong ng&agrave;y</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">非跨日</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">40km/l&iacute;t xăng</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">40公里/1升汽油</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:103.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">40.000 vnd/ suất</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">40.000 VND/份</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Kh&ocirc;ng c&oacute;</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">沒有</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:94.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Kh&ocirc;ng c&oacute;</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">沒有</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:85.5pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Qua đ&ecirc;m</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">跨日</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Kh&ocirc;ng c&oacute;</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">沒有</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:103.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">100.000 vnđ/ ng&agrave;y</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">100.000 VND/天</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">50.000 vnđ/ đ&ecirc;m</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">50.000 VND/晚</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:94.5pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Theo h&oacute;a đơn</span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">依收據</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Lưu &yacute;: </strong>c&aacute;c loại ph&iacute; n&agrave;y chỉ được thanh to&aacute;n khi:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>注意：</strong>這些費用僅在以下情況支付：</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Ph&iacute; xe cộ: đối với c&aacute;c trường hợp c&ocirc;ng t&aacute;c trong ng&agrave;y chỉ thanh to&aacute;n khi sử dụng xe c&aacute; nh&acirc;n, kh&ocirc;ng thanh to&aacute;n nếu sử dụng xe c&ocirc;ng ty hoặc sử dụng taxi do c&ocirc;ng ty chi trả. Ph&iacute; giữ xe thanh to&aacute;n theo phiếu tr&igrave;nh. 交通費：對於非跨天出差人員，若出差人員使用個人交通工具，公司依上表支付交通費，對於使用公司車或公司支付的計程車不予以補貼。停車費依收據報銷。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Ph&iacute; cơm nước: đối với c&aacute;c trường hợp c&ocirc;ng t&aacute;c trong ng&agrave;y sẽ được &aacute;p dụng tương đương như c&aacute;c trường hợp l&agrave;m việc tại c&ocirc;ng ty, nếu tăng ca tr&ecirc;n 2 giờ sẽ được t&iacute;nh th&ecirc;m 1 suất ăn v&agrave; c&ocirc;ng ty chỉ thanh to&aacute;n nếu tại nơi đến c&ocirc;ng t&aacute;c kh&ocirc;ng hỗ trợ suất ăn.膳食費：對於非跨天出差人員，若加班2個小時以上，加1份膳食，若出差地方有提供膳食，公司不另補膳食費。</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Điều 2: Lưu tr&igrave;nh thực hiện</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>第二條: 實施流程</strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Chủ quản BP-PX lập phiếu tr&igrave;nh tạm ứng số tiền dự kiến cho thời gian CB-CNV đi c&ocirc;ng t&aacute;c theo lịch ph&acirc;n c&ocirc;ng đối với c&aacute;c trường hợp c&ocirc;ng t&aacute;c d&agrave;i ng&agrave;y部門主管依公司規定，可用簽呈提出申請預支出差費給出差人員。</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Khi kết th&uacute;c thời gian đi c&ocirc;ng t&aacute;c hoặc theo thời gian từng th&aacute;ng, chủ quản BP-PX lập thủ tục thanh to&aacute;n bao gồm phiếu tr&igrave;nh, h&oacute;a đơn, phiếu chấm c&ocirc;ng&hellip;v.v. cho BP <span style=\"color:red\">HR</span> kiểm tra, k&yacute; x&aacute;c nhận trước khi tr&igrave;nh BTGĐ k&yacute; duyệt.&nbsp;結束出差後或每個月, 部門主管提出相關文件如簽呈, 發票, 考勤表等&hellip;匯整轉<span style=\"color:red\">人資</span>部門檢查, 再轉呈總經理部申請核銷。</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:72px; text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><em>Th&ocirc;ng b&aacute;o n&agrave;y được phổ biến đến to&agrave;n thể CB-CNV trong C&ocirc;ng ty biết v&agrave; thực hiện kể từ <span style=\"color:red\">ng&agrave;y 1 th&aacute;ng 5 năm 2019.</span></em></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:red\">此通告自2019 年05月1日生效</span><span style=\"color:black\">, 宣導給全體人員知悉並執行。</span></span></span></p>\r\n', NULL, NULL, 1, 1, '2019-04-11 18:11:18', '2019-04-11 18:17:56', 4, 'Lâm Quế Bình', NULL, NULL),
(99, 4, 'Lâm Quế Bình', NULL, 3, 'HD02-005/QTKK/HR HƯỚNG DẪN CÁC QUY ĐỊNH VÀ CÔNG THỨC TÍNH LƯƠNG, PHỤ CẤP, CÁC KHOẢN THƯỞNG HAY HỖ TRỢ KHÁC - 工作指引，關於指導計算薪資、津貼、其他獎金和補貼的公式', 'Ban hành lần 09 ngày 01/04/2019 - 於01/04/2019 第9次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-13 15:04:31', '2019-04-13 15:07:42', 4, 'Lâm Quế Bình', NULL, NULL),
(100, 4, 'Lâm Quế Bình', NULL, 3, '001/QTHT/HR QUY TRÌNH TUYỂN DỤNG - 招募流程', 'Ban hành lần 06 ngày 01/04/2019 - 於01/04/2019 第6次頒行', '', '<p>Nội dung chi tiết xem file đ&iacute;nh k&egrave;m</p>\r\n\r\n<p>請查閱附檔內容</p>\r\n', NULL, NULL, 1, 1, '2019-04-16 09:10:19', '2019-04-16 09:20:10', 4, 'Lâm Quế Bình', NULL, NULL),
(101, 2, 'Le Duy', NULL, 7, 'test', 'test', '', '<div class=\"row\">&nbsp;\r\n<ul><br />\r\n	<li><a href=\"http://www.adidas-group.com\" rel=\"noopener\" target=\"_blank\"><img class=\"grayscale\" src=\"http://www.jiahsin.com.vn/wp-content/uploads/2015/07/adidas-logo.png\" /></a></li>\r\n	<br />\r\n	<li><a href=\"https://about.puma.com/en\" rel=\"noopener\" target=\"_blank\"><img class=\"grayscale\" src=\"http://www.jiahsin.com.vn/wp-content/uploads/2015/07/puma-logo.png\" /></a></li>\r\n	<br />\r\n	<li><a href=\"http://www.vfc.com\" rel=\"noopener\" target=\"_blank\"><img class=\"grayscale\" src=\"http://www.jiahsin.com.vn/wp-content/uploads/2015/07/vfc-logo.png\" /></a></li>\r\n</ul>\r\n</div>\r\n', NULL, NULL, 0, 1, '2019-08-31 16:19:48', '2019-09-03 14:08:26', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_post_group`
--

CREATE TABLE `portal_post_group` (
  `id` int(5) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_post_group`
--

INSERT INTO `portal_post_group` (`id`, `name`) VALUES
(1, 'Sự Kiện 活動訊息'),
(2, 'Chính Sách Công Ty 公司政策'),
(3, 'Tài Liệu Lưu Trình, Quy Trình(áp dụng cho người Việt Nam) VN HR程序文件'),
(4, 'Tài Liệu Lưu Trình, Quy Trình(áp dụng cho người nước ngoài) Int. HR程序文件'),
(5, 'Tài Liệu Quy Trình EHS程序文件'),
(6, 'Biểu Mẫu Thường Dùng 常用表單'),
(7, 'Tạp Chí Công Ty 公司月刊'),
(8, 'Lịch Công Tác 公司行事曆'),
(9, 'Quyết định 決定書'),
(10, 'Thông báo 通報'),
(11, 'Chuyên Mục HSE 專欄'),
(0, 'Lỗi 錯誤');

-- --------------------------------------------------------

--
-- Table structure for table `portal_suggestion`
--

CREATE TABLE `portal_suggestion` (
  `id` int(22) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `email` varchar(64) DEFAULT NULL,
  `fullname` varchar(128) DEFAULT NULL,
  `department` varchar(128) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `status` int(5) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_suggestion`
--

INSERT INTO `portal_suggestion` (`id`, `user_id`, `email`, `fullname`, `department`, `title`, `message`, `status`, `created`, `modified`) VALUES
(49, 0, 'justin.hsu@jiahsin.com.vn', 'Justin', 'Sustainability', 'TEST', 'TEST', 1, '2019-03-18 08:53:43', '2019-03-18 08:53:43'),
(50, 0, 'thao.dang@jiahsin.com.vn', 'dang thi thanh thao', 'KVL BU2', 'THAM NIEN CHO CONG NHAN LAM LAU NAM', 'Dear BTGD cty TNHH Jiahsin,\r\ntheo mọi người được biết, công ty mình áp dụng thưởng lương cho toàn thể CBCNV nhân dịp cuối năm là lương tháng thứ 13(1 tháng lương căn bản hiện tại).ngoài ra công ty mình còn khuyến khích bằng việc thưởng chuyên cần cho mọi người không nghĩ việc riêng(chỉ được phép nghĩ năm theo đúng quy định) là 1.000.000đ- hiện tại mọi người đang nghe thông tin là sẽ cắt giảm đi tiền khuyến khích chuyên cần này???k biết có đúng vậy k?mong BTGD phản hồi.\r\nviệc tiếp nữa là vấn đề thưởng lương tháng 13,cty mình hình như chưa có ưu đãi đối với nhân viên làm việc lâu năm ,cống hiến sức mình cho cty?vì sao cty mình k thưởng lương tháng 13 cho mọi người theo hình thức theo thâm niên theo chấm(vd:như cty POUYUENG), để mình khuyến khích họ gắn bó lâu dài cùng cty...\r\nmong đợi sự phản hồi của BTGD, cảm ơn đã đọc tin.', 1, '2019-04-20 16:11:52', '2019-04-20 16:11:52'),
(51, 0, 'jsvendor@jiahsin.com.vn', 'test', 'test', 'abc', '19.03.2020', 1, '2020-03-19 08:56:06', '2020-03-19 08:56:06');

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
(1, 'EMP', 'Nhân viên 雇员 Employee'),
(2, 'TLD', 'Trưởng nhóm 队长 Team Leader'),
(3, 'MNG', 'Quản lý 经理 Manager'),
(4, 'DGM', 'Phó Tổng Giám Đốc 副总经理 Deputy General Manager'),
(5, 'CEO', 'Tổng Giám Đốc 总经理 Chief Executive Officer');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `content`) VALUES
(1, '2019-11-20 17:00:00', '2019-12-18 19:47:52', 'testsss123789', 'noi dung chỉ testss123'),
(3, '2019-12-03 01:55:32', '2019-12-03 02:07:55', 'test123456', '<p>noi dung123</p><ul><li>test</li></ul>'),
(4, '2019-12-05 19:36:38', '2020-02-20 20:49:44', 'test1', 'asds21022020'),
(7, '2019-12-10 20:38:42', '2019-12-10 20:38:42', 'test_1112', 'asd'),
(8, '2020-02-20 21:22:02', '2020-02-20 21:22:02', 'test_2102', '<p>Aenean eaque ducimus cillum ab delectus. Augue neque ipsam. Fugiat, incididunt ipsam voluptatibus labore. Saepe sagittis vitae consequat sit inventore mus rutrum, anim ullam incidunt aute, scelerisque dictumst. .<p>'),
(9, '2020-02-22 02:06:23', '2020-02-22 02:06:23', 'test_1111', 'asasd');

-- --------------------------------------------------------

--
-- Table structure for table `qrcode`
--

CREATE TABLE `qrcode` (
  `id` int(21) NOT NULL,
  `user_code` varchar(11) DEFAULT NULL,
  `content` text NOT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qrcode`
--

INSERT INTO `qrcode` (`id`, `user_code`, `content`, `date_create`) VALUES
(17, 'I12758', '<p>sdfsdfsdgdfg dfg dfg dfg df gf d<br></p>', '2018-05-22 04:36:32'),
(18, 'I12758', '<p>hgfhfgh</p><p>hfhfgh<br></p>', '2018-05-22 09:17:49'),
(10, 'I12758', 'Cộng hòa xã hội chủ nghĩa VN\r\nĐộc lập tự do hạnh phúc', '2018-05-15 03:07:02'),
(9, 'I12758', 'AB005X227344BN\r\nMáy ép đế VW254\r\nPressure machine\r\n压力机', '2018-05-15 03:01:04'),
(16, 'I12758', '<p>fdsf<br></p>', '2018-05-22 03:51:52'),
(14, 'I12758', 'https://www.jiahsin.com.vn', '2018-05-16 01:23:28'),
(15, 'I12758', 'BÀN LÀM VIỆC - VI TÍNH - ITBANLV003', '2018-05-19 03:01:20'),
(13, 'I12758', 'AB005X227344BN\r\nMáy ép đế cao áp\r\nPressure machine\r\n高压油压机\r\nModel: VW254', '2018-05-15 03:23:08'),
(19, 'I12758', '<p>aaaaaa</p><p>bbbbbb<br></p>', '2018-05-22 09:29:37'),
(20, 'I12758', '<p>aaa</p><p>bbbb<br></p>', '2018-05-22 09:31:02'),
(21, 'I12758', 'TIPTOP\r\nMS:A27', '2018-05-23 01:00:17');

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
(2, 'SO2', 'SO2'),
(3, 'SO3', 'SO3'),
(4, 'SO4', 'SO4'),
(5, 'SO5', 'SO5');

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
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `language` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `key_name` varchar(48) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `language`, `key_name`, `value`) VALUES
(1, 'en_US', 'hi', 'Hello'),
(2, 'vi_VN', 'hi', 'Xin chào'),
(3, 'zh_CN', 'hi', '你好'),
(4, 'zh_CN', 'edit', '改'),
(5, 'vi_VN', 'edit', 'Sửa'),
(6, 'en_US', 'edit', 'Edit'),
(7, 'vi_VN', 'delete', 'Xóa'),
(8, 'en_US', 'delete', 'Delete'),
(10, 'en_US', 'login', 'Login'),
(9, 'zh_CN', 'delete', '删'),
(11, 'en_US', 'logout', 'Logout'),
(12, 'zh_CN', 'login', '登录'),
(13, 'zh_CN', 'logout', '登出'),
(14, 'vi_VN', 'login', 'Đăng nhập'),
(15, 'vi_VN', 'logout', 'Thoát'),
(16, 'vi_VN', 'first', 'Đầu tiên'),
(17, 'en_US', 'first', 'First'),
(18, 'zh_CN', 'first', '第一页'),
(19, 'vi_VN', 'previous', 'Trước'),
(20, 'en_US', 'previous', 'Previous'),
(21, 'zh_CN', 'previous', '上一页'),
(22, 'vi_VN', 'next', 'Kế tiếp'),
(23, 'en_US', 'next', 'Next'),
(24, 'zh_CN', 'next', '下一页'),
(25, 'vi_VN', 'last', 'Cuối cùng'),
(26, 'en_US', 'last', 'Last'),
(27, 'zh_CN', 'last', '最后一页'),
(28, 'vi_VN', 'booking', 'Đặt trước'),
(29, 'en_US', 'booking', 'Booking'),
(30, 'zh_CN', 'booking', '预订'),
(31, 'vi_VN', 'meetingRoom', 'Phòng họp'),
(32, 'en_US', 'meetingRoom', 'Meeting room'),
(33, 'zh_CN', 'meetingRoom', '会议室'),
(34, 'vi_VN', 'search', 'Tìm kiếm'),
(35, 'en_US', 'search', 'Search'),
(36, 'zh_CN', 'search', '搜索'),
(37, 'vi_VN', 'meal', 'Phần ăn'),
(38, 'en_US', 'meal', 'Meal'),
(39, 'zh_CN', 'meal', '膳食'),
(40, 'vi_VN', 'transport', 'Vận chuyển'),
(41, 'en_US', 'transport', 'Transport'),
(42, 'zh_CN', 'transport', '运输'),
(43, 'vi_VN', 'add', 'Tạo mới'),
(44, 'en_US', 'add', 'Add'),
(45, 'zh_CN', 'add', '新增'),
(46, 'vi_VN', 'calendar', 'Lịch'),
(47, 'en_US', 'calendar', 'Calendar'),
(48, 'zh_CN', 'calendar', '日历'),
(49, 'vi_VN', 'discovery', 'Khám phá'),
(50, 'en_US', 'discovery', 'Discovery'),
(51, 'zh_CN', 'discovery', '发现'),
(52, 'vi_VN', 'help', 'Trợ giúp'),
(53, 'en_US', 'help', 'Help'),
(54, 'zh_CN', 'help', '帮'),
(55, 'vi_VN', 'home', 'Trang chủ'),
(56, 'en_US', 'home', 'Home'),
(57, 'zh_CN', 'home', '首页'),
(58, 'vi_VN', 'listAll', 'Tất cả'),
(59, 'en_US', 'listAll', 'List all'),
(60, 'zh_CN', 'listAll', '列出所有'),
(61, 'vi_VN', 'advanced', 'Nâng cao'),
(62, 'en_US', 'advanced', 'Advanced'),
(63, 'zh_CN', 'advanced', '高级'),
(64, 'vi_VN', 'titleSearch', 'Tìm tiêu đề'),
(65, 'en_US', 'titleSearch', 'Title Search'),
(66, 'zh_CN', 'titleSearch', '标题搜索'),
(67, 'vi_VN', 'createBy', 'Tạo bởi'),
(68, 'en_US', 'createBy', 'Create by'),
(69, 'zh_CN', 'createBy', '创建者'),
(70, 'vi_VN', 'start', 'Bắt đầu'),
(71, 'en_US', 'start', 'Start'),
(72, 'zh_CN', 'start', '开始'),
(73, 'vi_VN', 'end', 'Kết thúc'),
(74, 'en_US', 'end', 'End'),
(75, 'zh_CN', 'end', '结束'),
(76, 'vi_VN', 'title', 'Tiêu đề'),
(77, 'en_US', 'title', 'Title'),
(78, 'zh_CN', 'title', '标题'),
(79, 'vi_VN', 'presiding', 'Chủ trì'),
(80, 'en_US', 'presiding', 'Presiding'),
(81, 'zh_CN', 'presiding', '主持者'),
(82, 'vi_VN', 'dept', 'Bộ phận'),
(83, 'en_US', 'dept', 'Dept.'),
(84, 'zh_CN', 'dept', '部门'),
(85, 'vi_VN', 'room', 'Phòng'),
(86, 'en_US', 'room', 'Room'),
(87, 'zh_CN', 'room', '房间'),
(88, 'vi_VN', 'developedBy', 'Phát triển bởi'),
(89, 'en_US', 'developedBy', 'Developed by'),
(90, 'zh_CN', 'developedBy', '由开发'),
(91, 'vi_VN', 'version', 'Phiên bản'),
(92, 'en_US', 'version', 'Version'),
(93, 'zh_CN', 'version', '版'),
(94, 'vi_VN', 'by', 'bởi'),
(95, 'en_US', 'by', 'by'),
(96, 'zh_CN', 'by', '通过'),
(97, 'vi_VN', 'content', 'Nội dung'),
(98, 'en_US', 'content', 'Content'),
(99, 'zh_CN', 'content', '内容'),
(100, 'vi_VN', 'receiver', 'Người nhận'),
(101, 'en_US', 'receiver', 'Receiver'),
(102, 'zh_CN', 'receiver', '接收器'),
(103, 'vi_VN', 'save', 'Lưu'),
(104, 'en_US', 'save', 'Save'),
(105, 'zh_CN', 'save', '保存'),
(106, 'vi_VN', 'new', 'Mới'),
(107, 'en_US', 'new', 'New'),
(108, 'zh_CN', 'new', '新'),
(109, 'vi_VN', 'detail', 'Chi tiết'),
(110, 'en_US', 'detail', 'Detail'),
(111, 'zh_CN', 'detail', '详情'),
(112, 'vi_VN', 'areYouSureToDeleteThis', 'Bạn có chắc XÓA dữ liệu này không'),
(113, 'en_US', 'areYouSureToDeleteThis', 'Are you sure to DELETE this'),
(114, 'zh_CN', 'areYouSureToDeleteThis', '你确定要删除它'),
(115, 'vi_VN', 'userManual', 'Hướng dẫn sử dụng'),
(116, 'en_US', 'userManual', 'User manual'),
(117, 'zh_CN', 'userManual', '用户手册'),
(118, 'vi_VN', 'meeting', 'Họp'),
(119, 'en_US', 'meeting', 'Meeting'),
(120, 'zh_CN', 'meeting', '会议'),
(121, 'vi_VN', 'picture', 'Hình ảnh'),
(122, 'en_US', 'picture', 'Picture'),
(123, 'zh_CN', 'picture', '图片'),
(124, 'vi_VN', 'location', 'Vị trí'),
(125, 'en_US', 'location', 'Location'),
(126, 'zh_CN', 'location', '位置'),
(127, 'vi_VN', 'projector', 'Máy chiếu'),
(128, 'en_US', 'projector', 'Projector'),
(129, 'zh_CN', 'projector', '放映机'),
(130, 'vi_VN', 'speaker', 'Loa'),
(131, 'en_US', 'speaker', 'Speaker'),
(132, 'zh_CN', 'speaker', '扬声器'),
(133, 'vi_VN', 'microphone', 'Micrô'),
(134, 'en_US', 'microphone', 'Microphone'),
(135, 'zh_CN', 'microphone', '麦克风'),
(136, 'vi_VN', 'capacity', 'Sức chứa'),
(137, 'en_US', 'capacity', 'Capacity'),
(138, 'zh_CN', 'capacity', '容量'),
(139, 'vi_VN', 'person', 'Người'),
(140, 'en_US', 'person', 'Persons'),
(141, 'zh_CN', 'person', '人'),
(142, 'vi_VN', 'myProfile', 'Thông tin của tôi'),
(143, 'en_US', 'myProfile', 'My Profile'),
(144, 'zh_CN', 'myProfile', '我的简历'),
(145, 'vi_VN', 'position', 'Chức vụ'),
(146, 'en_US', 'position', 'Position'),
(147, 'zh_CN', 'position', '职位'),
(148, 'vi_VN', 'userID', 'MS người dùng'),
(149, 'en_US', 'userID', 'User ID'),
(150, 'zh_CN', 'userID', '用户名'),
(151, 'vi_VN', 'password', 'Mật khẩu'),
(152, 'en_US', 'password', 'Password'),
(153, 'zh_CN', 'password', '密码'),
(154, 'vi_VN', 'fullname', 'Họ và tên'),
(155, 'en_US', 'fullname', 'Full name'),
(156, 'zh_CN', 'fullname', '全名'),
(157, 'vi_VN', 'email', 'Email'),
(158, 'en_US', 'email', 'Email'),
(159, 'zh_CN', 'email', '电子邮件'),
(160, 'vi_VN', 'role', 'Vai trò'),
(161, 'en_US', 'role', 'Role'),
(162, 'zh_CN', 'role', '角色'),
(163, 'vi_VN', 'phoneExtend', 'ĐT nội bộ'),
(164, 'en_US', 'phoneExtend', 'Phone Extend'),
(165, 'zh_CN', 'phoneExtend', '电话延长'),
(166, 'vi_VN', 'update', 'Cập nhật'),
(167, 'en_US', 'update', 'Update'),
(168, 'zh_CN', 'update', '更新'),
(169, 'vi_VN', 'about', 'Giới thiệu'),
(170, 'en_US', 'about', 'About'),
(171, 'zh_CN', 'about', '关于'),
(172, 'vi_VN', 'loggedInSuccessfully', 'Đăng nhập thành công'),
(173, 'en_US', 'loggedInSuccessfully', 'Logged in successfully'),
(174, 'zh_CN', 'loggedInSuccessfully', '已成功登录'),
(175, 'vi_VN', 'comApp', 'Ứng dụng công ty'),
(176, 'en_US', 'comApp', 'Company Application'),
(177, 'zh_CN', 'comApp', '公司应用'),
(178, 'vi_VN', 'searchResult', 'Kết quả tìm kiếm'),
(179, 'en_US', 'searchResult', 'Search result'),
(180, 'zh_CN', 'searchResult', '搜索结果'),
(181, 'vi_VN', 'advancedSearch', 'Tìm kiếm nâng cao'),
(182, 'en_US', 'advancedSearch', 'Advanced search'),
(183, 'zh_CN', 'advancedSearch', '高级搜索'),
(184, 'vi_VN', 'JB', 'JIAHSIN'),
(185, 'en_US', 'JB', 'JIAHSIN'),
(186, 'zh_CN', 'JB', '佳新'),
(187, 'vi_VN', 'HR', 'Nhân Sự'),
(188, 'en_US', 'HR', 'Human Resources'),
(189, 'zh_CN', 'HR', '人力资源'),
(190, 'vi_VN', 'RD', 'R&D'),
(191, 'en_US', 'RD', 'Research & Development'),
(192, 'zh_CN', 'RD', '研究与开发'),
(247, 'vi_VN', 'PWP', 'Điều Phối-KVL-Đặt Hàng'),
(193, 'vi_VN', 'AC', 'Kế Toán'),
(194, 'en_US', 'AC', 'Accounting'),
(195, 'zh_CN', 'AC', '会计'),
(196, 'vi_VN', 'GA', 'Tổng Vụ'),
(197, 'en_US', 'GA', 'General Affair'),
(198, 'zh_CN', 'GA', '一般事情'),
(199, 'vi_VN', 'IT', 'CNTT'),
(200, 'en_US', 'IT', 'IT'),
(201, 'zh_CN', 'IT', '信息技术'),
(202, 'vi_VN', 'WH', 'Kho'),
(203, 'en_US', 'WH', 'Warehouse'),
(204, 'zh_CN', 'WH', '仓库'),
(205, 'vi_VN', 'AD', 'Hành Chánh'),
(206, 'en_US', 'AD', 'Administration'),
(207, 'zh_CN', 'AD', '管理员'),
(208, 'vi_VN', 'BS', 'Nghiệp Vụ'),
(209, 'en_US', 'BS', 'Business'),
(210, 'zh_CN', 'BS', '商业'),
(211, 'vi_VN', 'FO', 'Công Thức'),
(212, 'en_US', 'FO', 'Formula'),
(213, 'zh_CN', 'FO', '式'),
(214, 'vi_VN', 'CT', 'Chế Tạo'),
(215, 'en_US', 'CT', 'Manufacturing'),
(216, 'zh_CN', 'CT', '制造业'),
(217, 'vi_VN', 'CP', 'Chi Phí'),
(218, 'en_US', 'CP', 'Costing'),
(219, 'zh_CN', 'CP', '成本核算'),
(220, 'vi_VN', 'DP', 'Điều Phối'),
(221, 'en_US', 'DP', 'Coordinator'),
(222, 'zh_CN', 'DP', '协调'),
(223, 'vi_VN', 'TH', 'Thành Hình'),
(224, 'en_US', 'TH', 'Shape'),
(225, 'zh_CN', 'TH', '形状'),
(226, 'vi_VN', 'IP', 'Đế IP'),
(227, 'en_US', 'IP', 'IP Insole'),
(228, 'zh_CN', 'IP', '鞋垫'),
(229, 'vi_VN', 'CD', 'Cơ Điện'),
(230, 'en_US', 'CD', 'Electrical Engineering'),
(231, 'zh_CN', 'CD', '电气工程'),
(232, 'vi_VN', 'LA', 'Thí Nghiệm'),
(233, 'en_US', 'LA', 'LAB'),
(234, 'zh_CN', 'LA', '实验室'),
(235, 'vi_VN', 'QI', 'QIP'),
(236, 'en_US', 'QI', 'QIP'),
(237, 'zh_CN', 'QI', 'QIP'),
(238, 'vi_VN', 'IF', 'Y Tế'),
(239, 'en_US', 'IF', 'Infirmary'),
(240, 'zh_CN', 'IF', '医务室'),
(241, 'vi_VN', 'SE', 'Bảo Vệ'),
(242, 'en_US', 'SE', 'Security'),
(243, 'zh_CN', 'SE', '安全'),
(244, 'vi_VN', 'GM', 'Giám Đốc'),
(245, 'en_US', 'GM', 'Directors'),
(246, 'zh_CN', 'GM', '董事'),
(248, 'en_US', 'PWP', 'Planning-Warehouse-Purchasing'),
(249, 'zh_CN', 'PWP', '规划-仓库-购买'),
(250, 'vi_VN', 'department', 'Phòng ban'),
(251, 'en_US', 'department', 'Department'),
(252, 'zh_CN', 'department', '部门'),
(253, 'vi_VN', 'shmReceiver', 'Người nhận SHM'),
(254, 'en_US', 'shmReceiver', 'SHM Receiver'),
(255, 'zh_CN', 'shmReceiver', 'SHM接收器'),
(256, 'vi_VN', 'jhvReceiver', 'Người nhận JHV'),
(257, 'en_US', 'jhvReceiver', 'JHV Receiver'),
(258, 'zh_CN', 'jhvReceiver', 'JHV接收器'),
(259, 'vi_VN', 'otherReceiver', 'Người nhận khác'),
(260, 'en_US', 'otherReceiver', 'Other Receiver'),
(261, 'zh_CN', 'otherReceiver', '其他接收器'),
(262, 'vi_VN', 'other', 'Khác'),
(263, 'en_US', 'other', 'Other'),
(264, 'zh_CN', 'other', '其他'),
(265, 'vi_VN', 'saveAndEmail', 'Lưu và Gửi Email'),
(266, 'en_US', 'saveAndEmail', 'Save and Send Email'),
(267, 'zh_CN', 'saveAndEmail', '保存和发送邮件'),
(268, 'vi_VN', 'deleteAndEmail', 'Xóa và Gửi Email'),
(269, 'en_US', 'deleteAndEmail', 'Delete and Send Email'),
(270, 'zh_CN', 'deleteAndEmail', '删除和发送邮件'),
(271, 'vi_VN', 'date', 'Ngày'),
(272, 'en_US', 'date', 'Date'),
(273, 'zh_CN', 'date', '日期'),
(274, 'vi_VN', 'addMore', 'Thêm'),
(275, 'en_US', 'addMore', 'Add More'),
(276, 'zh_CN', 'addMore', '添加更多');

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
  `user` varchar(11) NOT NULL COMMENT 'User',
  `pass` varchar(128) NOT NULL COMMENT 'Password',
  `fullname` varchar(64) NOT NULL COMMENT 'Fullname',
  `com_code` varchar(5) DEFAULT 'SHM',
  `role_code` varchar(5) DEFAULT NULL COMMENT 'Role',
  `dept_code` varchar(5) DEFAULT NULL COMMENT 'Department',
  `posi_code` varchar(5) DEFAULT NULL COMMENT 'Position',
  `email` varchar(64) NOT NULL COMMENT 'Email',
  `phone_extend` varchar(16) DEFAULT NULL COMMENT 'Phone extend',
  `about` text COMMENT 'About',
  `common_disease` int(11) NOT NULL DEFAULT '0',
  `occupational_disease` int(11) NOT NULL DEFAULT '0',
  `labor_accident` int(11) NOT NULL DEFAULT '0',
  `poison_area` int(11) NOT NULL DEFAULT '0',
  `health_class_code` varchar(5) NOT NULL DEFAULT '5',
  `expiry_health_check` date DEFAULT NULL,
  `status` int(5) DEFAULT NULL COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `fullname`, `com_code`, `role_code`, `dept_code`, `posi_code`, `email`, `phone_extend`, `about`, `common_disease`, `occupational_disease`, `labor_accident`, `poison_area`, `health_class_code`, `expiry_health_check`, `status`) VALUES
(1, 'I12758', '$2y$08$ZGdqNjZVajE0Z1JyOW44ce9p3lfEVgVtqIoTjHjbqhgInsG8aYuZS', 'John Nguyen', 'JHV', 'ADM', 'IT', 'EMP', 'PhucNguyen.Pham@jiahsin.com.vn', '1159', '', 0, 0, 0, 0, '5', NULL, 1),
(2, 'I13042', '$2y$08$ZloxZHRKK25kaFVtcHljQOdShuhf1jITguxOP0NG05gP/W6MGyxsa', 'Le Duy', 'JHV', 'ADM', 'IT', 'EMP', 'Duy.Le@jiahsin.com.vn', '1159', '', 0, 0, 0, 0, '5', NULL, 1),
(3, 'STEVEN', '$2y$08$UTkyTERmT0lWNndoQWN0WOE6KPGkQxoILFq4hzVCmk9mtr/8mB8QK', 'steven', 'JHV', 'ADM', 'IT', 'EMP', 'steven.chang@jiahsin.com.vn', '1159', '', 0, 0, 0, 0, '5', NULL, 1),
(4, 'J15157', '$2y$08$Yld1U2NMb24zcGtDeDJIO.oagYrEL3eWrzzfkZsK46DHdi.de8jUe', 'Lâm Quế Bình', 'JHV', 'USR', 'HR', 'EMP', 'Binh.Lam@jiahsin.com.vn', '', '0938.279.105', 0, 0, 0, 0, '5', NULL, 1),
(5, 'A0069', '$2y$08$NzQwZ0dNRnN4L08xcWdQc.b2HZw6l08oYy9IDEV3MaAdwVFF4P6A.', 'Viên Y Mi', 'JHV', 'USR', 'HR', 'MNG', 'Ymi.Vien@jiahsin.com.vn', '', '0908.355.677', 0, 0, 0, 0, '5', NULL, 1),
(6, 'HN0045', '$2y$08$cTJYMnNxbTRZTi81bFc5Ve1f2lRpxJsQtGiGea.P/FUJQtyYEYoAm', 'Chen Shih Ting', 'JHV', 'USR', 'HR', 'MNG', 'Tina.Chen@jiahsin.com.vn', '', '0909.217.758', 0, 0, 0, 0, '5', NULL, 1),
(7, 'IN0063', '$2y$08$bG40R0Z2WFFJU2hzUUxvTub/jfowNUle0ovO43AUFD1AI06t2L0aS', 'Hsu Chia Yuan', 'JHV', 'USR', 'CR', 'MNG', 'justin.hsu@jiahsin.com.vn', '', '0902.704.583', 0, 0, 0, 0, '5', NULL, 1),
(9, 'I11223', '123456', 'test', 'SHM', 'USR', NULL, NULL, 'duy.le1@jiahsin.com.vn', NULL, NULL, 0, 0, 0, 0, '5', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmeal`
--
ALTER TABLE `bookmeal`
  ADD PRIMARY KEY (`bm_id`),
  ADD KEY `Id_dept` (`dept_code`);

--
-- Indexes for table `bookmeal_dept`
--
ALTER TABLE `bookmeal_dept`
  ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `book_room`
--
ALTER TABLE `book_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_code` (`dept_code`),
  ADD KEY `room_code` (`room_code`),
  ADD KEY `user_code` (`user_code`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `email` ADD FULLTEXT KEY `keyword` (`keyword`);

--
-- Indexes for table `health_class`
--
ALTER TABLE `health_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`code`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

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
  ADD KEY `unit_code` (`unit_code`);

--
-- Indexes for table `medicine_stock_change`
--
ALTER TABLE `medicine_stock_change`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_code` (`unit_code`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portal_file`
--
ALTER TABLE `portal_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_code` (`user_id`);

--
-- Indexes for table `portal_post`
--
ALTER TABLE `portal_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_code` (`user_id`);

--
-- Indexes for table `portal_post_group`
--
ALTER TABLE `portal_post_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portal_suggestion`
--
ALTER TABLE `portal_suggestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_code` (`user_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`code`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_language_key_name_unique_index` (`language`,`key_name`);

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
  ADD UNIQUE KEY `code` (`user`),
  ADD KEY `role_code` (`role_code`),
  ADD KEY `dept_code` (`dept_code`),
  ADD KEY `position` (`posi_code`),
  ADD KEY `health_class` (`health_class_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmeal`
--
ALTER TABLE `bookmeal`
  MODIFY `bm_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bookmeal_dept`
--
ALTER TABLE `bookmeal_dept`
  MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `book_room`
--
ALTER TABLE `book_room`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `health_class`
--
ALTER TABLE `health_class`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicine_stock`
--
ALTER TABLE `medicine_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine_stock_change`
--
ALTER TABLE `medicine_stock_change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `portal_file`
--
ALTER TABLE `portal_file`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `portal_post`
--
ALTER TABLE `portal_post`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `portal_post_group`
--
ALTER TABLE `portal_post_group`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `portal_suggestion`
--
ALTER TABLE `portal_suggestion`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
