-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-23 17:46:18
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
-- 資料表結構 `orderlist`
--

CREATE TABLE `orderlist` (
  `OrderID` int(11) NOT NULL,
  `OrderUser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OrderCreatTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `OrderPaied` enum('Y','N') NOT NULL,
  `Orderduedate` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderlist`
--

INSERT INTO `orderlist` (`OrderID`, `OrderUser`, `OrderCreatTime`, `OrderPaied`, `Orderduedate`, `price`) VALUES
(23, 'a', '2023-02-06 00:15:28', 'N', '2023-03-06', 0),
(24, 'a', '2023-02-06 00:16:34', 'N', '2023-03-06', 0),
(25, 'a', '2023-02-06 00:18:01', 'N', '2023-03-06', 0),
(26, 'a', '2023-02-06 00:41:51', 'N', '2023-03-06', 0),
(27, 'a', '2023-02-06 00:43:55', 'N', '2023-03-06', 2100),
(28, 'a', '2023-02-06 01:24:05', 'N', '2023-03-06', 2500),
(29, 'a', '2023-02-06 02:20:31', 'N', '2023-03-06', 5900),
(30, '888888', '2023-02-06 04:01:35', 'N', '2023-03-06', 3000),
(31, '888888', '2023-02-06 04:13:43', 'N', '2023-03-06', 3800),
(32, '888888', '2023-02-06 05:25:35', 'N', '2023-03-06', 600),
(33, '888888', '2023-02-06 05:47:51', 'N', '2023-03-06', 1800),
(34, '888888', '2023-02-06 07:05:07', 'N', '2023-03-06', 1500),
(35, '888888', '2023-02-06 07:10:59', 'N', '2023-03-06', 1000),
(36, '888888', '2023-02-06 07:20:52', 'N', '2023-03-06', 400),
(37, '888888', '2023-02-06 08:02:42', 'N', '2023-03-06', 1000),
(38, '777777', '2023-02-07 03:27:32', 'N', '2023-03-07', 500),
(39, '878787', '2023-02-23 16:08:46', 'N', '2023-03-24', 1900);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `usernameset` (`OrderUser`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
