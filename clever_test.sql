-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Окт 05 2021 г., 21:37
-- Версия сервера: 5.7.34
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `clever_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `description` varchar(256) NOT NULL,
  `product_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `barcodes`
--

INSERT INTO `barcodes` (`id`, `code`, `description`, `product_id`) VALUES
(1, 7501370, 'Ау @у @у, я тебя все р@вно н@йдуууу | Date: 05.10.2021', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(6) NOT NULL,
  `name` varchar(256) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'Товар 1', 100.21),
(3, 'Товар 1', 100.21),
(4, 'Товар 2766', 100.21),
(5, 'Товар 1614', 100.21),
(6, 'Товар 4764', 100.21),
(7, 'Товар 8133', 100.21),
(8, 'Товар 9273', 100.21),
(9, 'Товар 6152', 100.21),
(10, 'Товар 8391', 100.21),
(11, 'Товар 5917', 100.21),
(12, 'Товар 6725', 100.21),
(13, 'Товар 9575', 100.21),
(14, 'Товар 9388', 100.21),
(15, 'Товар 485', 100.21),
(16, 'Товар 1241', 100.21),
(17, 'Товар 654', 100.21),
(18, 'Товар 2832', 100.21),
(19, 'Товар 1596', 100.21),
(20, 'Товар 8830', 100.21);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `barcodes`
--
ALTER TABLE `barcodes`
  ADD CONSTRAINT `barcodes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
