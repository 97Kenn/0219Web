-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-23 17:46:08
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
-- 資料表結構 `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `inventory`
--

INSERT INTO `inventory` (`id`, `name`, `price`, `count`) VALUES
(0, 'null', 0, 0),
(1, '三人座沙發', 600, 20),
(2, '一體式廚房', 1000, 20),
(3, '餐桌與餐椅', 700, 20),
(4, '高密度防震舒眠床墊/雙人', 700, 20),
(5, '床架', 400, 20),
(6, '實木茶几', 500, 20),
(7, '橡木影音收納櫃', 500, 20),
(8, '組合型衣櫃', 500, 20),
(9, '化妝台', 500, 20);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
