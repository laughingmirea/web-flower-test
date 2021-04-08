-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 07, 2021 lúc 09:24 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping_user`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '123456789', '2021-02-24 19:22:15', '03-03-2021 12:39:51 AM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-02 19:26:06', '03-03-2021 01:21:27 AM', 1),
(25, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-02 19:52:18', NULL, 0),
(26, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-02 19:52:24', NULL, 1),
(27, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-04 08:33:14', NULL, 1),
(28, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-05 09:24:38', NULL, 1),
(29, 'gubgbg@bggjb.com', 0x3a3a3100000000000000000000000000, '2021-03-19 11:00:23', '19-03-2021 05:03:40 PM', 1),
(30, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-25 11:28:08', NULL, 0),
(31, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-25 11:29:10', NULL, 0),
(32, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-25 11:30:59', NULL, 0),
(33, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-25 11:31:19', NULL, 0),
(34, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-25 11:32:04', NULL, 1),
(35, 'a@me.com', 0x3a3a3100000000000000000000000000, '2021-03-25 11:38:08', '25-03-2021 05:08:42 PM', 1),
(36, 'anna@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-25 11:38:55', '25-03-2021 05:09:29 PM', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Anna', 'anna@gmail.com', 1234578, '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 19:25:48', NULL),
(5, 'v?vyfrt', 'gubgbg@bggjb.com', 0, 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-19 10:59:26', NULL),
(6, 'A', 'a@me.com', 1234578, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-25 11:37:54', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
