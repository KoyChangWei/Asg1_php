-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2024-11-10 16:51:56
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mymemberlink_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE `member` (
  `member_id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNo` int(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `timeLog` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`member_id`, `email`, `phoneNo`, `password`, `username`, `timeLog`) VALUES
(1, 'kkk@gmail.com', 124255452, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'kccw', '2024-11-06 14:56:06.767341'),
(2, 'kcwei08312002@gmail.com', 124277572, 'a8bda940667855d613b2fe54d23e1dae5f7b21a1', 'koy', '2024-11-10 10:42:39.441201'),
(5, 'koychangwei02@gmail.com', 123255452, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 04:49:56.406188'),
(7, 'koy@gmail.com', 124277572, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 09:45:00.444543'),
(8, 'koy123@gmail.com', 124277572, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 10:28:36.730675'),
(9, 'koy888@gmail.com', 124277572, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 10:40:38.896968');

--
-- 转储表的索引
--

--
-- 表的索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
