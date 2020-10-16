-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 16 2020 г., 14:23
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL DEFAULT 'test.jpg',
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `images`, `title`, `text`) VALUES
(1, 'test.jpg', 'Статья 1', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptates odio nam assumenda unde perspiciatis, recusandae id, aspernatur laboriosam officia dolorem obcaecati dignissimos asperiores a doloremque nostrum blanditiis sed nulla excepturi'),
(2, 'test.jpg', 'Статья 2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptates odio nam assumenda unde perspiciatis, recusandae id, aspernatur laboriosam officia dolorem obcaecati dignissimos asperiores a doloremque nostrum blanditiis sed nulla excepturi.'),
(3, 'DSC0468.jpg', 'Школа будущего студента', 'Сахалинский государственный университет совместно с Министерством образования Сахалинской области запускает профориентационный проект «Школа будущего студента». Принять участие в проекте могут ученики10–11 классов.'),
(4, 'DSC05708.jpg', 'Классные встречи с СахГУ', 'В рамках проекта дети встречаются и беседуют с интересными людьми, работающими в самых разных сферах.\r\n\r\nВстречи проходили на базе Сахалинской областной научной библиотеки с одновременной трансляцией в интернете: десятки учебных учреждений, родители и педагоги со всей Сахалинской области подключались к беседе в онлайн-режиме. Организатором выступил Областной центр внешкольной воспитательной работы.\r\n\r\nПовышенный интерес у школьников вызвала «Классная встреча» с проректором СахГУ, доцентом, кандидатом филологических наук Светланой Барышниковой. Разговор шёл как о студенческой жизни, так и о программах для учащихся школ.'),
(5, '12752.jpg', 'Сахалин. Летопись Победы', 'В 25-минутной картине мы рассказываем о Советско-японской войне, освобождении Южного Сахалина от японской оккупации.\r\n\r\nДокументальный фильм «Сахалин. Летопись Победы» – это соместная работа студентов из Московского госуниверситета им. Ломоноса и Сахалинского государственного университета.');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Иванов Иван Иванович',
  `about` text DEFAULT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'photoTeacher.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `about`, `photo`) VALUES
(1, 'Иванов Иван Иванович', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации.', 'photoTeacher.jpg'),
(2, 'Владимир Владимирович Путин', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации.', 'photoTeacher.jpg'),
(3, 'Иванова Анастасия Сергеевна', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации.', 'photoTeacher.jpg'),
(4, 'Петров Петр Олегович', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации.', 'photoTeacher.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
