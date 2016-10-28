-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 28 2016 г., 15:42
-- Версия сервера: 10.1.16-MariaDB
-- Версия PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `date`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac metus convallis, tempus massa sed, tempus ligula.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac metus convallis, tempus massa sed, tempus ligula. Integer ut dolor consequat, semper sem at, placerat arcu. Aliquam ante dui, tempor et fermentum nec, pulvinar vel urna. Curabitur quis semper dolor. Pellentesque a accumsan augue. In elementum est ultricies, venenatis risus vitae, bibendum risus. Duis ut dolor interdum, euismod ex eget, sollicitudin orci. Sed porttitor eros lectus, id malesuada ipsum molestie quis. Cras quis viverra elit. Nunc nulla quam, commodo ut lacus quis, fringilla accumsan nibh. Ut sem nunc, luctus volutpat sem at, pharetra tristique magna.\r\n\r\nNullam tincidunt, felis in volutpat accumsan, turpis ex placerat purus, vel accumsan orci enim quis eros. Proin eget volutpat libero, vel viverra tortor. Suspendisse lobortis lacinia tortor. Vivamus nec diam nec mauris imperdiet faucibus. Maecenas efficitur vitae ex vitae pharetra. Etiam ac ex tincidunt, suscipit sem quis, laoreet elit. Sed scelerisque lectus ac euismod ultricies. Donec vel ipsum vitae nisl fermentum faucibus. Sed id velit lorem. Sed vulputate gravida dui, sed interdum felis commodo dictum. Duis interdum nulla quis urna auctor, eget aliquet nunc fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas quis nunc eleifend, imperdiet lorem ut, consequat turpis. Donec cursus interdum ante at maximus. Phasellus varius suscipit odio, in malesuada sapien pulvinar eget. Phasellus id placerat nunc.\r\n\r\nNullam auctor tincidunt ligula, a placerat orci consequat sit amet. Integer facilisis mauris in ex luctus congue. Fusce vitae eros ex. Vivamus a nibh lobortis, mollis lacus mattis, congue quam. Nullam gravida suscipit mi, eu viverra lacus faucibus eget. Fusce eu tellus at ex eleifend suscipit. Duis commodo ante ut purus hendrerit ultrices. Nulla eget feugiat dui, eget sollicitudin sapien. Aliquam mollis sagittis convallis. Vivamus pellentesque tempus tortor, id mollis neque porttitor nec. Nunc elementum scelerisque nunc id iaculis. Vivamus viverra dolor in tellus sagittis mollis.\r\n\r\nProin vitae consequat dui. Donec orci nunc, vestibulum id neque sit amet, convallis sodales augue. Curabitur ac nulla mattis, fermentum sem in, cursus turpis. Etiam non felis id turpis lobortis finibus. Etiam malesuada velit nec justo efficitur, quis aliquam quam mattis. Proin fermentum, enim quis blandit lacinia, augue risus mollis turpis, sit amet ultricies nunc eros quis mauris. Morbi aliquet pretium efficitur. Aliquam erat volutpat. Quisque ut odio dictum mauris dictum efficitur in at leo. Ut sed justo cursus, pretium tortor nec, aliquam eros. Etiam commodo lorem laoreet libero pretium, in mollis augue viverra. Fusce fringilla porttitor nunc vitae feugiat.', '2016-10-16'),
(2, 'Nullam tincidunt, felis in volutpat accumsan, turpis ex placerat purus, vel accumsan orci enim quis eros.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac metus convallis, tempus massa sed, tempus ligula. Integer ut dolor consequat, semper sem at, placerat arcu. Aliquam ante dui, tempor et fermentum nec, pulvinar vel urna. Curabitur quis semper dolor. Pellentesque a accumsan augue. In elementum est ultricies, venenatis risus vitae, bibendum risus. Duis ut dolor interdum, euismod ex eget, sollicitudin orci. Sed porttitor eros lectus, id malesuada ipsum molestie quis. Cras quis viverra elit. Nunc nulla quam, commodo ut lacus quis, fringilla accumsan nibh. Ut sem nunc, luctus volutpat sem at, pharetra tristique magna.\r\n\r\nNullam tincidunt, felis in volutpat accumsan, turpis ex placerat purus, vel accumsan orci enim quis eros. Proin eget volutpat libero, vel viverra tortor. Suspendisse lobortis lacinia tortor. Vivamus nec diam nec mauris imperdiet faucibus. Maecenas efficitur vitae ex vitae pharetra. Etiam ac ex tincidunt, suscipit sem quis, laoreet elit. Sed scelerisque lectus ac euismod ultricies. Donec vel ipsum vitae nisl fermentum faucibus. Sed id velit lorem. Sed vulputate gravida dui, sed interdum felis commodo dictum. Duis interdum nulla quis urna auctor, eget aliquet nunc fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas quis nunc eleifend, imperdiet lorem ut, consequat turpis. Donec cursus interdum ante at maximus. Phasellus varius suscipit odio, in malesuada sapien pulvinar eget. Phasellus id placerat nunc.\r\n\r\nNullam auctor tincidunt ligula, a placerat orci consequat sit amet. Integer facilisis mauris in ex luctus congue. Fusce vitae eros ex. Vivamus a nibh lobortis, mollis lacus mattis, congue quam. Nullam gravida suscipit mi, eu viverra lacus faucibus eget. Fusce eu tellus at ex eleifend suscipit. Duis commodo ante ut purus hendrerit ultrices. Nulla eget feugiat dui, eget sollicitudin sapien. Aliquam mollis sagittis convallis. Vivamus pellentesque tempus tortor, id mollis neque porttitor nec. Nunc elementum scelerisque nunc id iaculis. Vivamus viverra dolor in tellus sagittis mollis.\r\n\r\nProin vitae consequat dui. Donec orci nunc, vestibulum id neque sit amet, convallis sodales augue. Curabitur ac nulla mattis, fermentum sem in, cursus turpis. Etiam non felis id turpis lobortis finibus. Etiam malesuada velit nec justo efficitur, quis aliquam quam mattis. Proin fermentum, enim quis blandit lacinia, augue risus mollis turpis, sit amet ultricies nunc eros quis mauris. Morbi aliquet pretium efficitur. Aliquam erat volutpat. Quisque ut odio dictum mauris dictum efficitur in at leo. Ut sed justo cursus, pretium tortor nec, aliquam eros. Etiam commodo lorem laoreet libero pretium, in mollis augue viverra. Fusce fringilla porttitor nunc vitae feugiat.\r\n\r\nMaecenas ullamcorper metus eu eros dignissim pretium at et libero. Cras hendrerit semper lacus eget feugiat. Phasellus sed auctor lorem. Ut congue tellus eu ipsum suscipit consectetur. Maecenas eget lacus lectus. Proin congue non ex sed interdum. Fusce id urna in tortor finibus viverra at et turpis. Nulla porta enim dui, ut imperdiet nisi sagittis sit amet. Morbi mollis lorem mauris, sit amet facilisis metus blandit vitae. Ut vulputate tellus placerat tortor dictum, quis lacinia erat viverra.', '2016-10-16'),
(3, 'test', 'test', '2016-10-21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
