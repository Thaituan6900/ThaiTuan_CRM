-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2021 lúc 05:25 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlkhachhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang1`
--

CREATE TABLE `khachhang1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `trangthai` smallint(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang1`
--

INSERT INTO `khachhang1` (`id`, `name`, `phone`, `accountId`, `diachi`, `trangthai`, `created_at`) VALUES
(1, 'NTT2', '0987654322', 21, 'Hanoi1', 0, '2021-11-30 09:43:58'),
(2, 'abc2', '0987654321', 6, 'HCM', 0, '2021-11-30 04:29:26'),
(3, 'ABC', '0989765431', 5, 'Hanoi', 1, '2021-11-30 06:21:56'),
(4, 'Thai Tuan1', '1234567890', 4, 'Thanh Xuan', 1, '2021-11-30 09:26:53'),
(5, 'messi', '123456789', 7, 'Argentina', 0, '2021-11-30 09:34:08'),
(6, 'Toni Kroos', '0987865432', 9, 'Germany', 1, '2021-11-30 12:29:18'),
(7, 'Kante', '0898765431', 10, 'Phu Quoc', 1, '2021-11-30 12:35:42'),
(9, 'Kai Havertz', '0234569871', 11, 'Da Nang', 0, '2021-11-30 12:38:30'),
(11, 'ABC', '0989765431', 5, 'Hanoi', 1, '2021-11-30 13:52:48'),
(12, 'Kai Havertz', '0989765431', 5, 'Hanoi', 1, '2021-11-30 13:53:03'),
(14, 'Ibrahimovic', '1234567890', 14, 'Gia Lai', 1, '2021-11-30 16:51:00'),
(15, 'Harry Maguire', '0249996612', 15, 'Láº¡ng SÆ¡n', 0, '2021-11-30 16:56:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien1`
--

CREATE TABLE `nhanvien1` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `accountId` int(10) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `trangthai` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien1`
--

INSERT INTO `nhanvien1` (`id`, `name`, `phone`, `accountId`, `diachi`, `trangthai`, `created_at`) VALUES
(1, 'Angela Phuong Trinh', '0987654321', 1, 'HCM', 1, '2021-11-30 19:40:17'),
(2, 'Thieu Bao Tram', '0241357983', 2, 'Thanh Hoa', 0, '2021-12-01 08:26:39'),
(3, 'Lionel Messi', '0929292929', 3, 'Dong Nai', 1, '2021-12-01 08:51:20'),
(4, 'Johnny Dang', '0637281945', 4, 'United States of America', 0, '2021-12-01 08:52:38'),
(5, 'Khoa Pug', '0241357983', 5, 'Ca Mau', 1, '2021-12-01 08:53:02'),
(6, 'Ninh Duong Lan Ngoc', '0246669934', 6, 'Thai Binh', 1, '2021-12-01 08:53:53'),
(7, 'Mike Thi Hoc Ky', '0473559628', 7, 'Binh Dinh', 0, '2021-12-01 08:55:46'),
(8, 'MLee', '0888667345', 8, 'Hoa Binh', 1, '2021-12-01 08:56:22'),
(9, 'Cristiano Oh Yeah', '0874567333', 9, 'Hai Phong', 0, '2021-12-01 08:58:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancong1`
--

CREATE TABLE `phancong1` (
  `id` int(10) NOT NULL,
  `nhanvien` varchar(100) NOT NULL,
  `khachhang` varchar(100) NOT NULL,
  `histories` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phancong1`
--

INSERT INTO `phancong1` (`id`, `nhanvien`, `khachhang`, `histories`, `created_at`) VALUES
(1, 'Angela Phuong Trinh', 'Thai Tuan1', 'ÄÃ m Äáº¡o sá»± Äá»i', '2021-12-01 07:41:36'),
(2, 'Thieu Bao Tram', 'NTT2', 'Di uong cafe', '2021-12-01 11:51:16'),
(3, 'Johnny Dang', 'messi', 'Trao doi ve bitcoins va nhieu thu khac', '2021-12-01 11:51:47'),
(4, 'Ninh Duong Lan Ngoc', 'Toni Kroos', 'Day tieng Viet cho thanh nien quoc te', '2021-12-01 11:52:14'),
(5, 'Khoa Pug', 'Ibrahimovic', 'Khoac vai nhau di hong chuyen showbiz', '2021-12-01 11:52:54'),
(6, 'Cristiano Oh Yeah', 'Harry Maguire', 'Tau hai cho khan gia xem', '2021-12-01 11:53:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(100) NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `role` varchar(2) NOT NULL,
  `ngaydangky` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `ten`, `email`, `matkhau`, `role`, `ngaydangky`) VALUES
(6, 'Khach hang 1', 'guess@gmail.com', '123', '2', '2021-12-21'),
(7, 'Duan', 'duan2k@gmail.com', '123', '0', '2021-12-15'),
(8, 'Tuan', 'tuan@gmail.com', '123', '0', '2021-12-22'),
(9, 'Dang', 'bedang2k@gmail.com', '123', '0', '2021-12-21'),
(11, 'admin', 'admin@gmail.com', 'admin', '0', '0000-00-00'),
(12, 'Kien', 'nkien2000@gmail.com', '123', '0', '2021-12-15'),
(13, 'Nhan vien 1', 'nv@gmail.com', '123456', '1', '2021-12-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` smallint(6) NOT NULL,
  `trangthai` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user1`
--

INSERT INTO `user1` (`id`, `name`, `email`, `password`, `role`, `trangthai`, `created_at`) VALUES
(1, 'Nguyen Thai Tuan', 'tuanok@gmail.com', 'doaibietduoc', 0, 1, '2021-12-01 08:07:35'),
(2, 'Dang Hai Dang', 'phutho_no1@gmail.com', '123456', 0, 1, '2021-12-01 08:15:15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khachhang1`
--
ALTER TABLE `khachhang1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien1`
--
ALTER TABLE `nhanvien1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phancong1`
--
ALTER TABLE `phancong1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `khachhang1`
--
ALTER TABLE `khachhang1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `nhanvien1`
--
ALTER TABLE `nhanvien1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phancong1`
--
ALTER TABLE `phancong1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
