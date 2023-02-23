-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-23 17:46:29
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
-- 資料表結構 `ordermodel`
--

CREATE TABLE `ordermodel` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemidno1` int(11) NOT NULL,
  `i1count` int(11) NOT NULL,
  `itemidno2` int(11) NOT NULL,
  `i2count` int(11) NOT NULL,
  `itemidno3` int(11) NOT NULL,
  `i3count` int(11) NOT NULL,
  `itemidno4` int(11) NOT NULL,
  `i4count` int(11) NOT NULL,
  `itemidno5` int(11) NOT NULL,
  `i5count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `ordermodel`
--

INSERT INTO `ordermodel` (`id`, `name`, `itemidno1`, `i1count`, `itemidno2`, `i2count`, `itemidno3`, `i3count`, `itemidno4`, `i4count`, `itemidno5`, `i5count`) VALUES
(25, 'a', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 'a', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 'a', 3, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 'a', 2, 1, 6, 1, 8, 2, 0, 0, 0, 0),
(29, 'a', 2, 5, 5, 1, 6, 1, 0, 0, 0, 0),
(30, '888888', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '888888', 1, 3, 2, 2, 0, 0, 0, 0, 0, 0),
(32, '888888', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(33, '888888', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(34, '888888', 2, 1, 8, 1, 0, 0, 0, 0, 0, 0),
(35, '888888', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(36, '888888', 5, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(37, '888888', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(38, '777777', 8, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(39, '878787', 2, 1, 5, 1, 6, 1, 0, 0, 0, 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `ordermodel`
--
ALTER TABLE `ordermodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `itemidno1` (`itemidno1`),
  ADD KEY `itemidno2` (`itemidno2`),
  ADD KEY `itemidno3` (`itemidno3`),
  ADD KEY `itemidno4` (`itemidno4`),
  ADD KEY `itemidno5` (`itemidno5`),
  ADD KEY `name` (`name`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `ordermodel`
--
ALTER TABLE `ordermodel`
  ADD CONSTRAINT `iaa` FOREIGN KEY (`itemidno1`) REFERENCES `inventory` (`id`),
  ADD CONSTRAINT `ibb` FOREIGN KEY (`itemidno2`) REFERENCES `inventory` (`id`),
  ADD CONSTRAINT `icc` FOREIGN KEY (`itemidno3`) REFERENCES `inventory` (`id`),
  ADD CONSTRAINT `idd` FOREIGN KEY (`itemidno4`) REFERENCES `inventory` (`id`),
  ADD CONSTRAINT `iee` FOREIGN KEY (`itemidno5`) REFERENCES `inventory` (`id`),
  ADD CONSTRAINT `orderid` FOREIGN KEY (`id`) REFERENCES `orderlist` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
