-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 21 2020 г., 17:36
-- Версия сервера: 5.6.43
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `olympdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `checker`
--

CREATE TABLE `checker` (
  `id` bigint(20) NOT NULL,
  `timeoff` datetime DEFAULT NULL,
  `timeon` datetime DEFAULT NULL,
  `cardid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `checker`
--

INSERT INTO `checker` (`id`, `timeoff`, `timeon`, `cardid`) VALUES
(3, NULL, '2020-07-20 15:11:27', '4856'),
(4, NULL, '2020-07-20 15:11:39', '4856'),
(5, NULL, '2020-07-20 15:13:48', NULL),
(6, NULL, NULL, NULL),
(7, NULL, '2020-07-20 15:16:33', NULL),
(8, NULL, '2020-07-20 15:46:17', NULL),
(9, NULL, '2020-07-20 16:07:54', '4856'),
(10, NULL, '2020-07-20 16:34:31', '4857'),
(11, NULL, '2020-07-20 16:34:39', '4857'),
(12, NULL, '2020-07-20 16:46:37', '4856'),
(13, '2020-07-20 16:46:42', NULL, NULL),
(14, NULL, '2020-07-20 16:48:36', '4856'),
(15, '2020-07-20 16:48:49', NULL, NULL),
(16, NULL, '2020-07-20 16:50:32', '4856'),
(17, NULL, '2020-07-20 16:51:56', '4856'),
(18, NULL, '2020-07-20 16:52:51', '4856'),
(19, NULL, '2020-07-20 16:53:51', '4856'),
(20, NULL, '2020-07-20 16:54:45', '4856'),
(21, NULL, '2020-07-20 16:55:23', '4856'),
(22, NULL, '2020-07-20 16:57:38', '4856'),
(23, NULL, '2020-07-20 17:00:27', '4856'),
(24, NULL, '2020-07-20 17:01:43', '4856'),
(25, NULL, '2020-07-20 17:09:28', '4856'),
(26, '2020-07-20 17:09:32', NULL, '4856'),
(27, NULL, '2020-07-20 17:09:36', '4856'),
(28, '2020-07-20 17:09:48', NULL, '4856'),
(29, '2020-07-20 17:12:57', '2020-07-20 17:10:58', '4856'),
(30, '2020-07-20 17:11:03', NULL, NULL),
(31, NULL, '2020-07-20 17:12:51', '4856'),
(32, NULL, '2020-07-20 18:15:54', '4856'),
(33, NULL, '2020-07-20 18:17:42', '4856'),
(34, NULL, '2020-07-20 18:20:29', '4856'),
(35, NULL, '2020-07-20 18:22:09', '4856'),
(36, NULL, '2020-07-20 18:23:55', '4856'),
(37, NULL, '2020-07-20 18:25:36', '4856'),
(38, NULL, '2020-07-20 18:27:17', '4856'),
(39, NULL, '2020-07-20 18:28:24', '4856'),
(40, NULL, '2020-07-20 18:29:08', '4856'),
(41, NULL, '2020-07-20 18:29:53', '4856'),
(42, '2020-07-20 18:31:42', '2020-07-20 18:31:37', '4856'),
(43, '2020-07-20 18:32:57', '2020-07-20 18:32:45', '4856'),
(44, '2020-07-20 18:34:43', '2020-07-20 18:34:24', '4856'),
(45, '2020-07-20 18:35:42', '2020-07-20 18:34:30', '4857'),
(46, '2020-07-20 18:35:51', '2020-07-20 18:35:06', '4856'),
(47, '2020-07-20 18:36:10', '2020-07-20 18:36:04', '4857'),
(48, '2020-07-20 18:52:44', '2020-07-20 18:52:38', '4856'),
(49, NULL, '2020-07-20 19:01:26', '4856'),
(50, NULL, '2020-07-20 19:03:35', '4856'),
(51, NULL, '2020-07-20 19:04:51', '4856'),
(52, '2020-07-20 19:06:28', '2020-07-20 19:06:12', '4856'),
(53, '2020-07-20 19:06:49', '2020-07-20 19:06:42', '4857'),
(54, NULL, '2020-07-20 19:10:48', '4856'),
(55, NULL, '2020-07-20 19:11:31', '4856'),
(56, NULL, '2020-07-20 19:13:10', '4856'),
(57, '2020-07-20 19:54:04', '2020-07-20 19:53:58', '4856'),
(58, '2020-07-20 19:55:13', '2020-07-20 19:55:08', '4856'),
(59, '2020-07-20 19:57:57', '2020-07-20 19:57:52', '4856'),
(60, '2020-07-20 20:08:34', '2020-07-20 20:08:30', '4856'),
(61, '2020-07-20 20:10:59', '2020-07-20 20:10:26', '4856'),
(62, '2020-07-21 10:39:46', '2020-07-21 10:39:38', '4857'),
(63, '2020-07-21 11:23:00', '2020-07-21 11:22:51', '4856'),
(64, '2020-07-21 11:23:12', '2020-07-21 11:23:07', '4857'),
(65, '2020-07-21 11:27:20', '2020-07-21 11:27:15', '4856'),
(66, '2020-07-21 11:38:40', '2020-07-21 11:37:56', '4856'),
(67, '2020-07-21 11:38:44', '2020-07-21 11:38:21', '4857'),
(68, '2020-07-21 12:12:44', '2020-07-21 11:48:32', '4856'),
(69, NULL, '2020-07-21 11:48:36', '4857'),
(70, NULL, '2020-07-21 12:45:35', '4858');

-- --------------------------------------------------------

--
-- Структура таблицы `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(71);

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `person`
--

INSERT INTO `person` (`id`, `name`, `status`) VALUES
(4856, 'Драгокупел Станислав Олегович', b'0'),
(4857, 'Таскина Ангелина Анатольевна', b'1'),
(4858, 'Петров Семён Сергеевич', b'1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `checker`
--
ALTER TABLE `checker`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
