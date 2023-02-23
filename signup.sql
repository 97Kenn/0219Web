-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-23 17:46:39
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `maxim1`
--

-- --------------------------------------------------------

--
-- 資料表結構 `signup`
--

CREATE TABLE `signup` (
  `userset` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '使用者名稱',
  `passwordset` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '使用者密碼',
  `emailset` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '電子信箱',
  `usernameset` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `phoneset` int(15) NOT NULL COMMENT '手機號碼',
  `addressset` varchar(50) NOT NULL COMMENT '運送地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='會員註冊資料';

--
-- 傾印資料表的資料 `signup`
--

INSERT INTO `signup` (`userset`, `passwordset`, `emailset`, `usernameset`, `phoneset`, `addressset`) VALUES
('123456', '123456', '1234567@gmail.com', '謝凱123456', 988888888, '柬埔寨'),
('444444', '444444', '123456@gmil.com', '陳冠希', 988888888, '柬埔寨'),
('555555', '555555', '123456@gmil.com', '金城武', 958123123, '韓國'),
('666666', '666666', '666@gmail.com', '金城武', 966666666, '北極'),
('777777', '777777', '123456@gmil.com', '謝凱2', 958123123, '柬埔寨'),
('878787', '878787', '123456@gmil.com', '楊坤汗', 987888888, '台南市'),
('888888', '888888', '123456@gmil.com', '謝凱1456465', 958123123, '柬埔寨'),
('a', 'aaaaaa', 'c@gmail.com', 'boot', 900000000, 'a');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`userset`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
