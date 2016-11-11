-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 11 2016 г., 03:32
-- Версия сервера: 5.5.48
-- Версия PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `onlineshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Category1', 1, 1),
(2, 'Category2', 2, 1),
(3, 'Category3', 3, 1),
(4, 'Category4', 4, 1),
(5, 'Category5', 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(1, 'Iphone 5s', 1, 12345, 250, 1, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 0, 1, 1),
(2, 'Iphone 6', 1, 12346, 500, 1, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 0, 1, 1),
(3, 'Iphone 6+', 2, 12347, 600, 1, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 0, 1, 1),
(4, 'Iphone 7', 2, 12355, 800, 1, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 1, 1, 1),
(5, 'MacBook', 3, 54321, 1500, 1, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 1, 1, 1),
(6, 'Macbook Air', 3, 54325, 1500, 1, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 0, 1, 1),
(8, 'Notebook', 4, 12455, 1000, 1, 'Xiaomi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 1, 1, 1),
(9, 'Phone', 4, 12456, 500, 1, 'Samsung', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 0, 1, 1),
(10, 'Notebook', 5, 85812, 1350, 1, '', '', 1, 1, 1),
(11, 'Notebook', 5, 12567, 1350, 1, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat convallis felis et finibus. Donec massa metus, vehicula in tincidunt non, semper nec est. Nam interdum, tellus at interdum sollicitudin, nibh neque mollis enim, eu sollicitudin est purus eget est. Aenean condimentum lacus sed consectetur varius. Phasellus vehicula viverra congue. Nam laoreet malesuada velit, eu viverra ex pretium eget. Donec risus nisi, sagittis in iaculis sit amet, tempor sed risus. Quisque condimentum tempus est id scelerisque. Ut turpis dolor, tincidunt a rhoncus ac, ullamcorper faucibus libero. Quisque molestie faucibus tortor eget facilisis. Cras pretium ante justo, ut ornare elit iaculis placerat. ', 0, 0, 1),
(12, 'Phone', 5, 21356, 535, 1, 'Apple', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE IF NOT EXISTS `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(1, 'Petya', '1234566789', 'Thanks', 2, '2016-11-11 00:22:46', '{"2":1,"4":1,"6":1}', 1),
(2, 'test', '123123123123', '', 3, '2016-11-11 00:24:27', '{"10":1,"6":1,"5":4,"3":1,"4":1,"12":1}', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@store.com', '111111', 'admin'),
(2, 'Petya', 'petya@mail.com', '123456', ''),
(3, 'test', 'test@mail.com', '123123', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
