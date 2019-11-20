-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 20 2019 г., 19:32
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shot-1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `signup`
--

CREATE TABLE `signup` (
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `signup`
--

INSERT INTO `signup` (`user_id`, `username`, `password`) VALUES
(NULL, 'homich_a', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(NULL, 'homich_a', 'fb644351560d8296fe6da332236b1f8d61b2828a'),
(NULL, 'homich_a1', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(NULL, 'homich_a', '011c945f30ce2cbafc452f39840f025693339c42'),
(NULL, 'homich_a', '011c945f30ce2cbafc452f39840f025693339c42'),
(NULL, 'homich_a', '011c945f30ce2cbafc452f39840f025693339c42'),
(NULL, 'homich_a147', 'b3c0730cf3f50613e40561e67c871fdb92820cf9'),
(NULL, 'homich_a', 'a938dfdfbaa1f25ccbc39e16060f73c44e5ef0dd'),
(NULL, 'homich_a', 'a938dfdfbaa1f25ccbc39e16060f73c44e5ef0dd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
