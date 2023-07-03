-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 31 2023 г., 09:22
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `image`) VALUES
(1, '/image/0.jpg'),
(2, '/image/1.jpg'),
(3, '/image/2.jpg'),
(4, '/image/3.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `onliner_categories`
--

CREATE TABLE `onliner_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `onliner_categories`
--

INSERT INTO `onliner_categories` (`id`, `name`) VALUES
(1, 'Автохимия и автокосметика для кузова'),
(2, 'Автомобильные коврики'),
(3, 'Автохимия и автокосметика для салона');

-- --------------------------------------------------------

--
-- Структура таблицы `onliner_producers`
--

CREATE TABLE `onliner_producers` (
  `id` int UNSIGNED NOT NULL,
  `producer` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `onliner_producers`
--

INSERT INTO `onliner_producers` (`id`, `producer`) VALUES
(1, '3TON'),
(2, 'Frogum'),
(3, 'Stingray');

-- --------------------------------------------------------

--
-- Структура таблицы `onliner_products`
--

CREATE TABLE `onliner_products` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `images_id` int UNSIGNED DEFAULT NULL,
  `delivery` tinyint UNSIGNED NOT NULL DEFAULT '7',
  `onliner_producers_id` int UNSIGNED DEFAULT NULL,
  `onliner_categories_id` int UNSIGNED DEFAULT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `min_price` float DEFAULT NULL,
  `max_price` float DEFAULT NULL,
  `av_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `onliner_products`
--

INSERT INTO `onliner_products` (`id`, `name`, `images_id`, `delivery`, `onliner_producers_id`, `onliner_categories_id`, `link`, `min_price`, `max_price`, `av_price`) VALUES
(1862979, 'Очиститель масляных и битумных пятен 520 мл TC-505', NULL, 1, 1, 1, 'http://catalog.onliner.by/exterior_carcare/3ton/3tontc505', 7.13, 13.13, 9.13),
(1862988, 'Размораживатель стекол 520 мл TC-521', 1, 1, 1, 3, 'http://catalog.onliner.by/interior_carcare/3ton/3tontc521', 5.63, 7.5, 6.57),
(1863015, 'Очиститель ковров и велюра 550 мл TH-501', 1, 1, 1, 3, 'http://catalog.onliner.by/interior_carcare/3ton/3tonth501', 6.91, 12.91, 8.91),
(1863429, 'Очиститель винила и пластика 550 мл TH-503', 1, 1, 1, 3, 'http://catalog.onliner.by/interior_carcare/3ton/3tonth503', 5.63, 11.63, 8.11),
(1863437, 'Химчистка салона 550 мл TH-541', 1, 1, 1, 3, 'http://catalog.onliner.by/interior_carcare/3ton/3tonth541', 6.41, 12.41, 8.41),
(1863464, 'Шампунь и полироль 550 мл ТK-7', NULL, 1, 1, 1, 'http://catalog.onliner.by/exterior_carcare/3ton/3tontk7', 3.13, 3.13, 3.13),
(1863465, 'Автошампунь с воском TK-9 550 мл', NULL, 1, 1, 1, 'http://catalog.onliner.by/exterior_carcare/3ton/3tontk9', 3.66, 9.66, 5.81),
(2525359, 'для Seat Leon I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fseat1', 67.5, 67.5, 67.5),
(2525360, 'для Seat Toledo II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftoledo1', 69.02, 69.02, 69.02),
(2525361, 'для Skoda Octavia I 1997 - 2000 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foctavia1', 69.02, 69.02, 69.02),
(2525363, 'для Skoda Octavia I 2000 - 2003 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foctavia03', 69.02, 69.02, 69.02),
(2525364, 'для VW Bora 10.98 - 05.05 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbora1', 67.5, 67.5, 67.5),
(2525365, 'для VW Golf IV 1997 - 2006 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgolf4', 69.02, 69.02, 69.02),
(2525366, 'для Seat Cordoba II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcordoba2', 68, 68, 68),
(2525368, 'для Seat Ibiza II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fibiza2', 60, 60, 60),
(2525369, 'для Skoda Fabia I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffabia1', 68, 68, 68),
(2525370, 'для VW Polo IV(4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpolo4', 68, 68, 68),
(2525372, 'для Seat Cordoba III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcordoba3', 66.5, 66.5, 66.5),
(2525373, 'для VW Polo VI (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpolo6', 68, 68, 68),
(2525374, 'для Skoda Fabia II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffabia2', 66.5, 66.5, 66.5),
(2525376, 'для Ford Focus II 2008 - 2010 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffocus2', 69.5, 69.5, 69.5),
(2525377, 'для Ford Focus II 2004 - 2008 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffocus08', 69.5, 69.5, 69.5),
(2525379, 'для Ford Galaxy II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgalaxy2', 72.5, 72.5, 72.5),
(2525381, 'для Ford S-max (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsmax', 72.5, 72.5, 72.5),
(2525382, 'для Ford C-max I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcmax1', 69.5, 69.5, 69.5),
(2525383, 'для Ford Fiesta Mk VII (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffiestamk7', 69.5, 69.5, 69.5),
(2525384, 'для Ford Focus III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffocus3', 69.5, 69.5, 69.5),
(2525386, 'для Ford Focus III 2014-04.2018 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffocus18', 69.5, 69.5, 69.5),
(2525387, 'для Ford Focus I 1998 - 2005 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffocus1', 70, 70, 70),
(2525388, 'для Ford Galaxy I 10.95 - 04.00 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgalaxy1', 63.5, 63.5, 63.5),
(2525389, 'для Ford Galaxy I 2000 - 2006 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgalaxy06', 63.5, 63.5, 63.5),
(2525390, 'для Seat Alhambra I 1995 - 2000 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/falhambrai', 86, 86, 86),
(2525391, 'для Seat Alhambra I 2000 - 2010 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/falhambra10', 63.5, 63.5, 63.5),
(2525392, 'для VW Sharan I 1995 - 2000 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsharan1', 86, 86, 86),
(2525393, 'для VW Sharan I 2000 - 2010 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsharan10', 63.5, 63.5, 63.5),
(2525581, 'для Ford Fiesta Mk VI (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffiestamk4', 72.5, 72.5, 72.5),
(2525583, 'для Ford Fusion (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffusion', 72.5, 72.5, 72.5),
(2525601, 'для Seat Alhambra I 1995 - 2000 (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/falhambra95', 63.5, 63.5, 63.5),
(2525608, 'для VW Sharan I 2000 - 2010 (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsharan2p', 86, 86, 86),
(2525614, 'для Renault Sandero I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsandero1', 68.5, 68.5, 68.5),
(2525625, 'для Renault Logan I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/flogan1', 68.5, 68.5, 68.5),
(2525627, 'для Dacia Logan I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fdacia1', 68.5, 68.5, 68.5),
(2525629, 'для Renault Duster I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fduster1', 68.5, 68.5, 68.5),
(2525633, 'для Dacia Duster I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fdaciaduster1', 68.5, 68.5, 68.5),
(2525636, 'для Dacia Sandero I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fdaciasandero1', 68.5, 68.5, 68.5),
(2525641, 'для Seat Leon II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fleon2', 67.5, 67.5, 67.5),
(2525645, 'для VW Golf VI (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgolf6', 67.5, 67.5, 67.5),
(2525646, 'для Skoda Octavia II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foctavia2', 67.5, 67.5, 67.5),
(2525648, 'для VW Golf V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgolf5', 67.5, 67.5, 67.5),
(2525650, 'для VW Jetta V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjetta5', 67.5, 67.5, 67.5),
(2525653, 'для Seat Toledo III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftoledo3', 67.5, 67.5, 67.5),
(2525654, 'для Skoda Superb II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsuperb2', 69.5, 69.5, 69.5),
(2536235, 'Антидождь 200 мл TB-700', NULL, 1, 1, 1, 'http://catalog.onliner.by/exterior_carcare/3ton/tb700', 6, 6, 6),
(2537088, 'Очиститель колёсных дисков 550 мл TH-535', NULL, 1, 1, 1, 'http://catalog.onliner.by/exterior_carcare/3ton/3tonth535', 6.5, 6.5, 6.5),
(2537091, 'Чернитель покрышек 520 мл TC-534', NULL, 1, 1, 1, 'http://catalog.onliner.by/exterior_carcare/3ton/tc534', 10, 10, 10),
(2537094, 'Антизапотеватель 200 мл TB-707', 1, 1, 1, 3, 'http://catalog.onliner.by/interior_carcare/3ton/tb707', 6.5, 6.5, 6.5),
(2537097, 'Салфетки для зеркал и стекол 15 шт TX-201', 1, 1, 1, 3, 'http://catalog.onliner.by/interior_carcare/3ton/3tonhx201', 3, 3, 3),
(2537099, 'Химчистка салона 520 мл TC-541', 1, 1, 1, 3, 'http://catalog.onliner.by/interior_carcare/3ton/tc541', 8.5, 8.5, 8.5),
(2537218, 'для Skoda Rapid I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/frapid1', 69.5, 69.5, 69.5),
(2537220, 'для Seat Toledo IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftoledo4', 69.5, 69.5, 69.5),
(2537221, 'для Skoda Octavia III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foctavia3', 69.5, 69.5, 69.5),
(2537222, 'для VW Touran I рестайлинг (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftouran1', 63, 63, 63),
(2537223, 'для VW Caddy III (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcaddy3', 63, 63, 63),
(2537226, 'для VW Touran I (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/frtouran1', 63, 63, 63),
(2537228, 'для VW Passat CC I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpassatcc1', 75.5, 75.5, 75.5),
(2537231, 'для VW Passat B6 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpassatb6', 75.5, 75.5, 75.5),
(2537233, 'для VW Passat B7 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpassatb7', 75.5, 75.5, 75.5),
(2537235, 'для VW Polo V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpolo5', 72, 72, 72),
(2537237, 'для VW Touran I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftourani', 76, 76, 76),
(2537239, 'для VW Touran I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftouran4', 76, 76, 76),
(2537240, 'для VW Passat B5 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpassatb5', 72.5, 72.5, 72.5),
(2537241, 'для VW Passat B5 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpassatb5r', 72.5, 72.5, 72.5),
(2537248, 'для Skoda Roomster I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/froomster1', 64.5, 64.5, 64.5),
(2547632, 'для VW Tiguan I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftiguan1', 72, 72, 72),
(2547633, 'для VW Tiguan I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftiguan1r', 72, 72, 72),
(2547636, 'для VW Amarok I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/famarok1', 86, 86, 86),
(2547670, 'для Skoda Fabia III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffabia3', 60, 60, 60),
(2549004, 'для Seat Alhambra II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/falhambra2', 69.5, 69.5, 69.5),
(2550041, 'для VW Touareg II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftouareg2', 86, 86, 86),
(2551727, 'для VW Sharan II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsharan2', 69.5, 69.5, 69.5),
(2563610, 'для Porsche Cayenne II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcayenne2', 86, 86, 86),
(2563612, 'для Hyundai ix20 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhix20', 72, 72, 72),
(2563614, 'для Kia Ceed I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fceed1', 72, 72, 72),
(2563615, 'для Hyundai ix35 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhix35', 69.5, 69.5, 69.5),
(2563616, 'для Hyundai Tucson II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftucson2', 69.5, 69.5, 69.5),
(2563618, 'для Kia Sportage III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsportage3', 69.5, 69.5, 69.5),
(2563619, 'для Hyundai i30 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhi30', 68.5, 68.5, 68.5),
(2563620, 'для Kia Rio III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/frio3', 68.5, 68.5, 68.5),
(2563621, 'для Kia Soul I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsoul', 72, 72, 72),
(2563623, 'для Hyundai i30 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhi302', 68.5, 68.5, 68.5),
(2563624, 'для Kia Ceed II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fceed2', 72, 72, 72),
(2563626, 'для Hyundai i40 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhi40', 75.5, 75.5, 75.5),
(2563629, 'для Kia Sorento II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsorento2', 86, 86, 86),
(2563631, 'для Kia Sorento II lift 2012 - (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsorento2l', 72, 72, 72),
(2563634, 'для Kia Sorento II lift 2014 - (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsorento2r', 72, 72, 72),
(2563636, 'для Kia Carens IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcarens4', 76, 76, 76),
(2563642, 'для Kia Soul II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsoul2', 72, 72, 72),
(2563644, 'для Nissan Qashqai I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fqashqai1', 72, 72, 72),
(2563645, 'для Nissan Qashqai I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fqashqai1r', 72, 72, 72),
(2563646, 'для Nissan Juke I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjuke1', 75.5, 75.5, 75.5),
(2563647, 'для Nissan Note I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fnote1', 75.5, 75.5, 75.5),
(2563648, 'для Nissan Note I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fnote1r', 75.5, 75.5, 75.5),
(2563655, 'для Nissan Pathfinder III рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpathfinder3', 86, 86, 86),
(2563656, 'для Nissan Navara III рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fnavara3r', 86, 86, 86),
(2563657, 'для Nissan X-Trail II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fxtrail2', 72, 72, 72),
(2563658, 'для Nissan Note II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fnote2', 68.5, 68.5, 68.5),
(2563660, 'для Nissan X-Trail III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fxtrail3', 86, 86, 86),
(2563663, 'для Mitsubishi ASX I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fasx1', 68.5, 68.5, 68.5),
(2563665, 'для Peugeot 4008 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpeug4008', 68.5, 68.5, 68.5),
(2563666, 'для Citroen C4 AirCross I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fc4aircross', 68.5, 68.5, 68.5),
(2563669, 'для Mitsubishi Lancer VIII (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/flancer8', 68.5, 68.5, 68.5),
(2563671, 'для Mitsubishi Outlander II рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foutlander2', 72, 72, 72),
(2563672, 'для Mitsubishi Outlander II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foutlander', 72, 72, 72),
(2563674, 'для Peugeot 4007 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpeugeot4007', 72, 72, 72),
(2563675, 'для Citroen C-Crosser I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fccrosser1', 72, 72, 72),
(2563676, 'для Mitsubishi L200 IV 2010 - (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fml2004', 72.5, 72.5, 72.5),
(2563678, 'для Mitsubishi L200 IV 2007 - 2010 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fml200410', 72.5, 72.5, 72.5),
(2563679, 'для Mitsubishi Outlander III рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foutlander3', 68.5, 68.5, 68.5),
(2563680, 'для Suzuki SX4 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsx41', 69.5, 69.5, 69.5),
(2563681, 'для Suzuki Swift III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fswift3', 69.5, 69.5, 69.5),
(2563682, 'для Fiat Sedici (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsedici', 69.5, 69.5, 69.5),
(2563683, 'для Suzuki Grand Vitara II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgrandvitara2', 75.5, 75.5, 75.5),
(2563685, 'для Suzuki SX4 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsx42', 72, 72, 72),
(2563686, 'для Peugeot 207 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpeugeot207', 72.5, 72.5, 72.5),
(2563688, 'для Peugeot 307 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpeugeot307', 72.5, 72.5, 72.5),
(2563729, 'для Citroen C4 I рейстайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcc41r', 72, 72, 72),
(2563730, 'для Citroen C4 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcc42', 72, 72, 72),
(2563733, 'для Citroen Berlingo II рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fberlingo2r', 76.5, 76.5, 76.5),
(2563734, 'для Peugeot Partner II рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpartner2r', 76.5, 76.5, 76.5),
(2563742, 'для Citroen C3 Picasso I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcc3pic', 72, 72, 72),
(2563743, 'для Citroen C4 Picasso I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcc4pic', 75.5, 75.5, 75.5),
(2563744, 'для Citroen Nemo I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fnemo1', 76, 76, 76),
(2563745, 'для Fiat Fiorino III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffiorino3', 76, 76, 76),
(2563747, 'для Peugeot Bipper I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbipper', 76, 76, 76),
(2563751, 'для Peugeot 3008 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fp30081', 75.5, 75.5, 75.5),
(2563752, 'для Peugeot 208 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fp2081', 68.5, 68.5, 68.5),
(2563753, 'для Peugeot 2008 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fp20081', 68.5, 68.5, 68.5),
(2563754, 'для Peugeot 5008 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fp50081', 76, 76, 76),
(2563803, 'для Citroen C3 II 2009 - 2010 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitrc32', 75.5, 75.5, 75.5),
(2563804, 'для Citroen C3 II 2010 - (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitrc3210', 75.5, 75.5, 75.5),
(2563805, 'для Citroen C3 II 2012 - (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitrc3212', 75.5, 75.5, 75.5),
(2563806, 'для Citroen C-Elysee I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcelyse1', 68.5, 68.5, 68.5),
(2563807, 'для Peugeot 301 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fp301', 68.5, 68.5, 68.5),
(2563809, 'для Citroen C5 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitrc52', 72, 72, 72),
(2563811, 'для Citroen Berlingo I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fberlingo1', 76.5, 76.5, 76.5),
(2563814, 'для Peugeot Partner I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpartner1r', 86, 86, 86),
(2563815, 'для Peugeot Partner I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpartne1', 76.5, 76.5, 76.5),
(2563817, 'для Citroen Berlingo I (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fberlingo12p', 62.5, 62.5, 62.5),
(2563821, 'для Citroen Berlingo I Van (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fberlingo1van', 62.5, 62.5, 62.5),
(2563824, 'для Peugeot Partner I (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fberlingo2p', 62.5, 62.5, 62.5),
(2563826, 'для Peugeot 308 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fp3082', 72.5, 72.5, 72.5),
(2563827, 'для Citroen Jumpy II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjumpy2', 63, 63, 63),
(2563830, 'для Fiat Scudo II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fscudo2', 72.5, 72.5, 72.5),
(2563831, 'для Peugeot Expert II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fexpert2', 72.5, 72.5, 72.5),
(2563832, 'для Citroen C4 Picasso II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fc4picasso2', 75.5, 75.5, 75.5),
(2563833, 'для Renault Kangoo I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fkangoo1', 86, 86, 86),
(2563834, 'для Renault Kangoo I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fkangoo1r', 63, 63, 63),
(2563836, 'для Renault Kangoo I (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fkangoo12p', 63, 63, 63),
(2564815, 'для Citroen Jumpy I (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjumpy1', 72.5, 72.5, 72.5),
(2564817, 'для Fiat Scudo I (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fscudo1', 72, 72, 72),
(2564819, 'для Peugeot Expert I (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fexpert1', 72.5, 72.5, 72.5),
(2564821, 'для Citroen Xsara Picasso I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpicasso1', 76, 76, 76),
(2564831, 'для BMW 3 серия IV E46 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe46', 72, 72.75, 72.38),
(2564833, 'для BMW 3 серия IV E46 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe46r', 72, 72, 72),
(2564854, 'для BMW 3 серия V E90-E93 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe90r', 75.5, 75.5, 75.5),
(2564857, 'для BMW 3 серия V E90-E93 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe90', 75.5, 75.5, 75.5),
(2564863, 'для BMW X1 I E84 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe84', 75.5, 75.5, 75.5),
(2564866, 'для BMW 1 серия I E8x (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe81', 75.5, 75.5, 75.5),
(2564871, 'для BMW 5 серия V E60 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe60', 76, 76, 76),
(2564875, 'для BMW 5 серия V E61 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe61', 76, 76, 76),
(2564883, 'для BMW X5 I E53 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe53', 89, 89, 89),
(2564885, 'для BMW X5 I E53 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe53r', 89, 89, 89),
(2564893, 'для BMW X3 II F25 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwf25', 75.5, 75.5, 75.5),
(2564900, 'для BMW X3 I E83 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe83', 75.5, 75.5, 75.5),
(2564910, 'для BMW 5 серия IV E39 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe39', 75.5, 76.35, 75.93),
(2564920, 'для BMW 5 серия VI F10/F11 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwf10', 75.5, 75.5, 75.5),
(2564928, 'для BMW 7 серия IV E65/E66 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe65', 75.5, 75.5, 75.5),
(2564951, 'для Opel Insignia A (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/finsignia', 72, 72, 72),
(2564954, 'для Opel Astra J (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fastraj', 72, 72, 72),
(2564957, 'для Chevrolet Cruze I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcruze1', 72, 72, 72),
(2564960, 'для Chevrolet Orlando I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/forlando1', 72, 72, 72),
(2565048, 'для Opel Corsa D (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcorsad', 72, 72, 72),
(2565051, 'для Opel Corsa D рестайлинг 2 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcorsadr2', 72, 72, 72),
(2565054, 'для Opel Adam I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fadam1', 72, 72, 72),
(2565055, 'для Opel Zafira B (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fzafirab', 72, 72, 72),
(2565057, 'для Opel Astra H (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fastrah', 72.5, 72.5, 72.5),
(2565062, 'для Opel Astra G (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fastrag', 69.5, 69.5, 69.5),
(2565067, 'для Opel Zafira C Tourer (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fzafiractourer', 72, 72, 72),
(2565069, 'для Opel Vectra C (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvectrac', 72.5, 72.5, 72.5),
(2565075, 'для Opel Signum C (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsignumc', 76, 76, 76),
(2565081, 'для Opel Corsa C (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcorsac', 72, 72, 72),
(2565084, 'для Opel Corsa C рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcorsacr', 72, 72, 72),
(2565087, 'для Opel Vectra B (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvectrab', 72.5, 72.5, 72.5),
(2565178, 'для Opel Mokka I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmokka1', 72, 72, 72),
(2565181, 'для Chevrolet Trax I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftrax', 72, 72, 72),
(2567229, 'для Audi A3 II 8P (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa328p', 72, 72, 72),
(2567230, 'для Audi A4 B5 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa4b5', 76, 76.35, 76.18),
(2567232, 'для Audi A5 I 8T (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa518t', 86, 86, 86),
(2567233, 'для Audi A6 C5 (4 шт)', NULL, 7, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa6c5', 76.35, 76.35, 76.35),
(2567237, 'для Audi Q5 I 8R (4 шт)', NULL, 7, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fq518r', 85.86, 85.86, 85.86),
(2569242, 'для Audi A6 C6 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa6c6', 76, 76, 76),
(2569243, 'для Audi A6 C6 lift рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa6c6r', 76, 76, 76),
(2569244, 'для Audi A6 C6 lift (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa6c6l', 76, 76, 76),
(2569245, 'для Audi A4 B8 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa4b8', 76, 76, 76),
(2569246, 'для Audi A4 B8 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa4b8r', 76, 76, 76),
(2569248, 'для Audi A4 B6 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa4b6', 75.5, 76.35, 75.93),
(2569249, 'для Audi A4 B7 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa4b7', 75.5, 76.35, 75.93),
(2569253, 'для Audi A7 I 4G (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa714g', 90, 90, 90),
(2569254, 'для Audi A6 C7 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa6c7', 90.5, 90.5, 90.5),
(2569258, 'для Audi 100 C4 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/f100c4', 76, 76, 76),
(2569260, 'для Audi A6 C4 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa6c4', 76, 76, 76),
(2569265, 'для Audi Q3 I 8U (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fq318u', 75.5, 76.35, 75.93),
(2569266, 'для Renault Megane II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmegane2', 75.5, 75.5, 75.5),
(2569267, 'для Renault Laguna III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/flaguna3', 87, 87, 87),
(2569269, 'для Renault Clio III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fclio3', 76, 76, 76),
(2569270, 'для Renault Clio III рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fclio3r', 76, 76, 76),
(2569276, 'для Renault Clio IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fclio4', 76, 76, 76),
(2569280, 'для Renault Scenic III (5 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fscenic3', 86, 86, 86),
(2569281, 'для Renault Scenic II (5 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fscenic2', 86, 86, 86),
(2569283, 'для Renault Fluence I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffluence1', 85, 85, 85),
(2569284, 'для Renault Laguna II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/flaguna2', 75.5, 75.5, 75.5),
(2569286, 'для Renault Clio II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fclio2', 72, 72, 72),
(2569287, 'для Renault Clio II рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fclio2r', 72, 72, 72),
(2570990, 'CHEVROLET Cruze 2009 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1002022', 47.5, 47.5, 47.5),
(2570991, 'CITROEN C3 I 2005-2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1003022', 45.5, 45.5, 45.5),
(2570993, 'CITROEN C3, 16 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1003042', 47.5, 47.5, 47.5),
(2570996, 'CITROEN C3 Picasso 2009-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1003072', 45.5, 45.5, 45.5),
(2570997, 'CITROEN C5 2008 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1003082', 48, 48, 48),
(2570998, 'DACIA DOKKER, 13 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1004034', 70.5, 70.5, 70.5),
(2570999, 'RENAULT DUSTER, 14-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1004042', 78.5, 78.5, 78.5),
(2571000, 'DAEWOO MATIZ, 98 - 00', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1005074', 68, 68, 68),
(2571001, 'FIAT 500L 2012 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1006052', 44.5, 44.5, 44.5),
(2571007, 'FORD Kuga 2008-2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1007042', 45.5, 45.5, 45.5),
(2571009, 'FORD Focus II 2008-2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1007112', 46, 46, 46),
(2571010, 'FORD KUGA, 13 -10.2016', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1007122', 45, 45, 45),
(2571011, 'FORD TRANSIT, 14 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1007133', 54, 54, 54),
(2571012, 'FORD TRANSIT CONNECT, 2014-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1007142', 45, 45, 45),
(2571013, 'FORD TRANSIT, 00 - 06', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1007173', 62.5, 62.5, 62.5),
(2571014, 'FORD FIESTA, 17-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1007182', 47, 47, 47),
(2571015, 'HONDA ACCORD, 2008 - 2013', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1008012', 50.5, 50.5, 50.5),
(2571016, 'HONDA CR-V 2012 - 2016', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1008022', 47.5, 47.5, 47.5),
(2571017, 'HONDA Accord 2013 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1008032', 47.5, 47.5, 47.5),
(2571022, 'HONDA PILOT, 08 -15', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1008082', 77, 77, 77),
(2571023, 'HONDA PILOT, 16-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1008094', 89.5, 89.5, 89.5),
(2571024, 'HONDA Civic Hatchback 2006-2011', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1008112', 44.5, 44.5, 44.5),
(2571025, 'HONDA CR-V 2017-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1008122', 48.5, 48.5, 48.5),
(2571027, 'KIA CEE\'D, 12 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1009052', 48, 48, 48),
(2571028, 'HYUNDAI IX35, 10 -03.15', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1009062', 46.5, 46.5, 46.5),
(2571029, 'HYUNDAI Santa Fe 2013-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1009072', 46.5, 46.5, 46.5),
(2571030, 'HYUNDAI SANTAFE, 10 - 12', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1009102', 46, 46, 46),
(2571031, 'HYUNDAI SANTAFE, 07 - 09', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1009104', 46, 46, 46),
(2571032, 'HYUNDAI Tucson 2015-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1009122', 46.5, 46.5, 46.5),
(2571033, 'KIA Optima 2015-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1009162', 47.5, 47.5, 47.5),
(2571037, 'KIA Sorento 2009-2014', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1010032', 46, 46, 46),
(2571038, 'KIA Sorento 2014-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1010052', 44.5, 44.5, 44.5),
(2571039, 'KIA SORENTO, 2002 - 2009', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1010062', 45.5, 45.5, 45.5),
(2571040, 'MAZDA 6 2008 -2013', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1011012', 49.5, 49.5, 49.5),
(2571044, 'MAZDA CX-7 2010-2012', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1011052', 45.5, 45.5, 45.5),
(2571045, 'MAZDA 3 2009-2013', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1011062', 45.5, 45.5, 45.5),
(2571046, 'MAZDA 2(DJ) 2014-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1011082', 48.5, 48.5, 48.5),
(2571047, 'MAZDA CX-5 2017-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1011092', 46, 46, 46),
(2571048, 'MAZDA 6 2002-2007', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1011132', 50.5, 50.5, 50.5),
(2571049, 'MAZDA 5 2005 - 2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1011142', 46, 46, 46),
(2571050, 'MERCEDES BENZ X164 GL 2006-2018', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012062', 46.5, 46.5, 46.5),
(2571051, 'MERCEDES BENZ W124 1985-1995', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012092', 49, 49, 49),
(2571052, 'MERCEDES BENZ W212 E 2009-2016', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012122', 47, 47, 47),
(2571054, 'MERCEDES BENZ W204 C 2007-2011', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012142', 48, 48, 48),
(2571055, 'MERCEDES BENZ (C-kl W204), 01.07 -11', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012144', 72.5, 72.5, 72.5),
(2571057, 'MERCEDES BENZ W163 M-kl 1998-2005', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012182', 46, 46, 46),
(2571059, 'MERCEDES BENZ W213 E 2016 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012212', 47.5, 47.5, 47.5),
(2571060, 'MERCEDES-BENZ W176 A 2012-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012232', 51.5, 51.5, 51.5),
(2571061, 'MERCEDES-BENZ W205 C 2014-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012242', 48.5, 48.5, 48.5),
(2571062, 'MERCEDES BENZ W210 E 1995-1999', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012252', 51, 51, 51),
(2571063, 'MERCEDES BENZ W211 E 2002-2009', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012262', 49, 49, 49),
(2571064, 'VOLKSWAGEN LT-2 1996-2006', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012274', 72, 72, 72),
(2571065, 'VOLKSWAGEN Crafter 2006-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1012314', 79, 79, 79),
(2571066, 'MITSUBISHI L200 2010-2015', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1013012', 44, 44, 44),
(2571067, 'MITSUBISHI Lancer X 2007-2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1013032', 49, 49, 49),
(2571068, 'MITSUBISHI L200 1996-2005', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1013062', 45.5, 45.5, 45.5),
(2571069, 'MITSUBISHI L200 2015-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1013072', 45.5, 45.5, 45.5),
(2571071, 'MITSUBISHI Outlander XL 2007-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1013132', 48, 48, 48),
(2571074, 'MITSUBISHI Outlander 2015 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1013162', 46.5, 46.5, 46.5),
(2571075, 'MITSUBISHI Eclipse Cross 2017-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1013164', 46.5, 46.5, 46.5),
(2571077, 'NISSAN X-Trail 2007-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014022', 47.5, 47.5, 47.5),
(2571078, 'NISSAN QASHQAI 2007- 2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014042', 47.5, 47.5, 47.5),
(2571079, 'NISSAN QASHQAI 2014-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014072', 47.5, 47.5, 47.5),
(2571081, 'NISSAN Micra 2003 - 2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014122', 46, 46, 46),
(2571082, 'NISSAN Note 2005-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014172', 48.5, 48.5, 48.5),
(2571083, 'NISSAN Patrol (Y61) 1997-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014182', 48, 48, 48),
(2571084, 'NISSAN Patrol (Y62) 2010-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014192', 47.5, 47.5, 47.5),
(2571085, 'NISSAN Murano (Z51) 2008-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014232', 51.5, 51.5, 51.5),
(2571086, 'NISSAN Pathfinder III (R51) 2010-2015', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1014242', 48.5, 48.5, 48.5),
(2571089, 'OPEL OMEGA (B), 10.99 - 07.03', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015054', 48.5, 48.5, 48.5),
(2571092, 'OPEL Corsa E 2014-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015112', 48, 48, 48),
(2571093, 'OPEL Astra K 2015-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015122', 47.5, 47.5, 47.5),
(2571094, 'OPEL Astra J 2009-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015132', 46.5, 46.5, 46.5),
(2571095, 'OPEL Zafira B 2005-2011', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015142', 47.5, 47.5, 47.5),
(2571096, 'OPEL Zafira Tourer С 2012-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015152', 47, 47, 47),
(2571098, 'OPEL Astra H 2004-2009', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015172', 46, 46, 46),
(2571099, 'OPEL Meriva B 2010-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1015182', 48.5, 48.5, 48.5),
(2571100, 'PEUGEOT 208, 12 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1016012', 46.5, 46.5, 46.5),
(2571103, 'CITROEN C4, 08 - 10', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1016052', 47, 47, 47),
(2571105, 'CITROEN C4, 10 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1016082', 47, 47, 47),
(2571106, 'PEUGEOT 3008, 16-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1016144', 69, 69, 69),
(2571116, 'RENAULT SCENIC, 06.03 - 09', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1018192', 48, 48, 48),
(2571119, 'RENAULT KANGOO, 09.97 - 04.03', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1018252', 46.5, 46.5, 46.5),
(2571120, 'RENAULT KOLEOS, 08 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1018262', 47, 47, 47),
(2571124, 'SEAT LEON, 05 -12', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1020142', 45.5, 45.5, 45.5),
(2571126, 'SKODA FABIA, 2014 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1020172', 47.5, 47.5, 47.5),
(2571127, 'SKODA OCTAVIA, 13 - 17', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1020194', 48.5, 48.5, 48.5),
(2571129, 'SUZUKI GRAND VITARA, 05 - 08', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1021022', 46.5, 46.5, 46.5),
(2571130, 'SUZUKI SX4, 14 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1021042', 46, 46, 46),
(2571131, 'TOYOTA RAV 4 II, 06.00 - 11.05', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022112', 47, 47, 47),
(2571132, 'CHERY TIGGO 06-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022114', 47, 47, 47),
(2571134, 'TOYOTA HILUX, 05 - 12', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022182', 44, 44, 44),
(2571135, 'TOYOTA VENZA, 08 - 2шт', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022192', 45, 45, 45),
(2571136, 'TOYOTA RAV 4 III, 09 - 12', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022222', 45, 45, 45),
(2571137, 'TOYOTA RAV 4 III, 06 - 08', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022224', 45, 45, 45),
(2571138, 'TOYOTA RAV 4, 13 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022232', 45, 45, 45),
(2571142, 'TOYOTA YARIS HB, 12 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022272', 46.5, 46.5, 46.5),
(2571147, 'TOYOTA COROLLA, 14 -09.2018', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022332', 48.5, 48.5, 48.5),
(2571148, 'TOYOTA LAND CRUISER 200, 08 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022342', 47.5, 47.5, 47.5),
(2571150, 'TOYOTA AURIS (E180), 13 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022362', 48.5, 48.5, 48.5),
(2571151, 'TOYOTA CAMRY (V70), 17 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1022392', 51.5, 51.5, 51.5),
(2571154, 'VW TIGUAN, 07 - 11', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024102', 45.5, 45.5, 45.5),
(2571155, 'VW PASSAT (B3), 88 - 93', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024112', 46, 46, 46),
(2571156, 'VW PASSAT (B4), 93 - 96', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024114', 46, 46, 46),
(2571157, 'VW AMAROK, 10 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024122', 47, 47, 47),
(2571158, 'VW JETTA, 11 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024142', 45.5, 45.5, 45.5),
(2571159, 'VW PASSAT (B7, EURO TYPE), 11 - 14', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024162', 46.5, 46.5, 46.5),
(2571160, 'SKODA SUPERB, 15 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024172', 44.5, 44.5, 44.5),
(2571162, 'VW TOUAREG, 10 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024192', 45.5, 45.5, 45.5),
(2571163, 'VW PASSAT (B6), 06 - 10', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024222', 45.5, 45.5, 45.5),
(2571170, 'VW POLO ,17 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024332', 45, 45, 45),
(2571171, 'SKODA SUPERB, 02 - 08', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1024372', 47.5, 47.5, 47.5),
(2571175, 'BMW X5 (E53) 1999-2003', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1027032', 46, 46, 46),
(2571177, 'BMW X3 (E83) 2004-2010', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1027062', 45.5, 45.5, 45.5),
(2571179, 'BMW X3 (F25) 2010-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1027112', 44, 44, 44),
(2571180, 'BMW X5 (F15) 2013 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1027122', 47, 47, 47),
(2571183, 'BMW X1 (F48) 2015 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1027172', 46.5, 46.5, 46.5),
(2571186, 'BMW 7 (E65) 2001-2008', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1027212', 48.5, 48.5, 48.5),
(2571188, 'BMW X3 (G01) 17-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1027252', 72, 72, 72),
(2571191, 'LEXUS RX 2015 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1028062', 47.5, 47.5, 47.5),
(2571197, 'AUDI (A6), 97 - 01', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030022', 46.5, 46.5, 46.5),
(2571200, 'AUDI (A4), 2001 - 2004', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030062', 46, 46, 46),
(2571201, 'AUDI 100 (C4), 91 - 94', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030072', 46, 46, 46),
(2571202, 'AUDI Q7 2015-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030082', 46.5, 46.5, 46.5),
(2571203, 'AUDI A4 (B8) 2007-2011', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030092', 46.5, 46.5, 46.5),
(2571204, 'AUDI A4 (B9) 2015-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030102', 46.5, 46.5, 46.5),
(2571205, 'AUDI A4 (B5) 1995 - 1999', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030112', 47.5, 47.5, 47.5),
(2571207, 'Audi 80 (B3) 1986 - 1991 2шт', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030132', 46.5, 46.5, 46.5),
(2571210, 'AUDI Q5 2017-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030172', 45, 45, 45),
(2571211, 'AUDI A8 (D4) 2010-2013', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030182', 45.5, 45.5, 45.5),
(2571212, 'AUDI A8 (D3) 2002-2005', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1030212', 47.5, 47.5, 47.5),
(2571215, 'ACURA MDX, 13-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1034024', 73.5, 73.5, 73.5),
(2571218, 'VOLVO XC60, 08-15', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1037012', 43.5, 43.5, 43.5),
(2571219, 'VOLVO XC90, 02 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1037022', 43, 43, 43),
(2571220, 'VOLVO XC90, 14 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1037032', 46.5, 46.5, 46.5),
(2571221, 'VOLVO V70, 07 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1037042', 45.5, 45.5, 45.5),
(2571222, 'VOLVO S90V90, 16 -', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1037052', 46.5, 46.5, 46.5),
(2571223, 'VOLVO XC60, 17-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1037062', 47.5, 47.5, 47.5),
(2571224, 'LAND ROVER Discovery III-IV 2004-2009', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1047012', 104, 104, 104),
(2571225, 'LAND ROVER RANGE ROVER Evoque 2011-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1047032', 69.5, 69.5, 69.5),
(2571226, 'LAND ROVER RANGE ROVER SPORT I 05-13', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1047042', 71.5, 71.5, 71.5),
(2571227, 'LAND ROVER RANGE ROVER III (L322) 2002-2012', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1047052', 72.5, 72.5, 72.5),
(2571229, 'LAND ROVER Freelander II 2006- 2012-', NULL, 1, 3, 2, 'http://catalog.onliner.by/car_mat/stingrayua/stin1047092', 70, 70, 70),
(2574982, 'для Mercedes-Benz E-klasse W212 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmw212', 86, 86, 86),
(2574984, 'для Mercedes-Benz CLS C218 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmc218', 86, 86, 86),
(2574985, 'для Renault Kangoo II (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fkangoo2', 60, 60, 60),
(2574986, 'для Mercedes-Benz Citan (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitan', 60, 60, 60),
(2574987, 'для Renault Kangoo II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fkangoo24', 89, 89, 89),
(2574990, 'для Mercedes-Benz W124 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw124', 86, 86, 86),
(2574991, 'для Mercedes-Benz C-класс II W203 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw203', 76, 76, 76),
(2574992, 'для Mercedes-Benz E-класс II W210 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw210', 86, 86, 86),
(2574993, 'для Mercedes-Benz E-класс II W210 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw210r', 86, 86, 86),
(2574994, 'для Toyota Avensis II рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/favensis2r', 75.5, 75.5, 75.5),
(2574995, 'для Toyota Avensis II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/favensis2', 75.5, 75.5, 75.5),
(2575004, 'для Toyota RAV4 III рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/frav43r', 86, 86, 86),
(2575028, 'для Toyota Land Cruiser J100 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcruiserj100', 86, 86, 86),
(2575031, 'для Toyota Land Cruiser Prado J150 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcruiserj150', 86, 86, 86),
(2575032, 'для Toyota Land Cruiser Prado J120 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcruiserj120', 86, 86, 86),
(2575034, 'для Toyota Auris II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fauris2', 86, 86, 86),
(2575035, 'для Toyota Yaris III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fyaris3', 86, 86, 86),
(2575036, 'для Honda Civic VIII (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcivic8', 85.5, 85.5, 85.5),
(2575038, 'для Honda CR-V III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcrv3', 89, 89, 89),
(2575039, 'для Honda CR-V III рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcrv3r', 89, 89, 89),
(2575042, 'для Honda Civic IX хэтчбек (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcivic9', 85.5, 85.5, 85.5),
(2575043, 'для Honda Civic IX седан (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcivic9s', 89, 89, 89),
(2575053, 'для Honda Jazz III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjazz3', 89, 89, 89),
(2575054, 'для Honda Accord VII (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/faccord7', 86, 86, 86),
(2575055, 'для Acura TSX I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftsx1', 87, 87, 87),
(2575056, 'для Honda Jazz II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjazz2', 86, 86, 86),
(2575058, 'для Honda City IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcity4', 86, 86, 86),
(2575059, 'для Honda CR-V II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcrv2', 89, 89, 89),
(2575060, 'для Honda CR-V II рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcrv2r', 89, 89, 89),
(2575061, 'для Mazda 6 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmazda62', 75.5, 75.5, 75.5),
(2575064, 'для Mazda 6 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmazda61', 75.5, 75.5, 75.5),
(2575066, 'для Mazda 3 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmazda32', 72.5, 72.5, 72.5);
INSERT INTO `onliner_products` (`id`, `name`, `images_id`, `delivery`, `onliner_producers_id`, `onliner_categories_id`, `link`, `min_price`, `max_price`, `av_price`) VALUES
(2575070, 'для Mazda 2 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmazda22', 72.5, 72.5, 72.5),
(2575071, 'для Subaru Forester III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fforester3', 76, 76, 76),
(2575072, 'для Subaru Impreza III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fimpreza3', 76, 76, 76),
(2575073, 'для Subaru Legacy IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/flegacy4', 75.5, 75.5, 75.5),
(2575074, 'для Subaru Levorg (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/flevorg', 72, 72, 72),
(2575075, 'для Subaru Forester IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fforester4', 75.5, 75.5, 75.5),
(2575076, 'для Subaru Outback IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/foutback4', 75.5, 75.5, 75.5),
(2575077, 'для Fiat Doblo II (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fdoblo2', 63, 63, 63),
(2575078, 'для Opel Combo D (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcombod', 63, 63, 63),
(2575106, 'для Fiat Doblo I (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fdoblo1', 62.5, 62.5, 62.5),
(2575107, 'для Fiat Grande Punto I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgpunto1', 72, 72, 72),
(2575109, 'для Fiat Bravo II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbravo2', 72, 72, 72),
(2575110, 'для Volvo C30 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvoc30', 72.5, 72.5, 72.5),
(2575111, 'для Volvo S40 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvos402', 72.5, 72.5, 72.5),
(2575112, 'для Volvo V50 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvov501', 72.5, 72.5, 72.5),
(2575115, 'для Volvo XC60 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvoxc60', 72, 72, 72),
(2575116, 'для Volvo S60 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvos601', 72, 72, 72),
(2575117, 'для Volvo S80 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvos801', 72, 72, 72),
(2575118, 'для Volvo V70 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvov702', 72, 72, 72),
(2575119, 'для Volvo XC90 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvolvoxc901', 72, 72, 72),
(2575120, 'для Land Rover Freelander I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffreelander1', 86, 86, 86),
(2575124, 'для VW Crafter II задний ряд (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcrafter2', 54.5, 54.5, 54.5),
(2575125, 'для Mazda CX-5 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcx52', 72, 72, 72),
(2575126, 'для Peugeot 5008 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fp50082', 87, 87, 87),
(2575130, 'для Audi Q5 II (4 шт)', NULL, 7, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fq52', 85.86, 89, 87.43),
(2575293, 'для Mercedes-Benz E-klasse W213 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw213', 86, 86, 86),
(2575295, 'для Skoda Superb I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsuperb1', 69.5, 69.5, 69.5),
(2575297, 'для Toyota C-HR I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fchr1', 86, 86, 86),
(2575300, 'для Volvo XC60 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fxc602', 72, 72, 72),
(2575303, 'для Ford EcoSport I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fecosport2', 87, 87, 87),
(2575307, 'для Suzuki Swift V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fswift5', 72, 72, 72),
(2575313, 'для VW Golf III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fgolf3', 72.5, 72.5, 72.5),
(2575320, 'для VW Vento (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvento', 72.5, 72.5, 72.5),
(2575326, 'для Opel Astra F (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fastraf', 72, 72, 72),
(2575499, 'для Ford Mondeo I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmondeo1', 72.5, 72.5, 72.5),
(2575503, 'для Ford Mondeo II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmondeo2', 72.5, 72.5, 72.5),
(2575505, 'для Opel Omega B (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fomegab', 76, 76, 76),
(2575508, 'для Opel Omega B рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fomegabr', 76, 76, 76),
(2575511, 'для Volvo S70 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fs701', 72, 72, 72),
(2575512, 'для Volvo V70 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fv701', 72, 72, 72),
(2575543, 'для Ford Kuga II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fkuga2', 72.5, 72.5, 72.5),
(2575547, 'для BMW 3 серия VII G20 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwg20', 76, 76, 76),
(2575559, 'для Mini Cooper S III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcooper3s', 76, 76, 76),
(2575562, 'для Nissan Qashqai+2 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fqashqai21', 76, 76, 76),
(2575566, 'для Mercedes-Benz S-klasse AMG II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw221', 87, 87, 87),
(2575570, 'для Dacia Logan II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fdlogan2', 72, 72, 72),
(2575575, 'для Citroen C4 Cactus I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcactus1', 75.5, 75.5, 75.5),
(2575716, 'для Peugeot 206 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpeug2062', 72, 72, 72),
(2575717, 'для Peugeot 206 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpeug2061', 72, 72, 72),
(2575719, 'для VW Passat B8 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpassatb8', 75.5, 75.5, 75.5),
(2575723, 'для Opel Zafira A (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fzafiraa', 72, 72, 72),
(2575726, 'для Toyota Corolla X (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcorollax', 86, 86, 86),
(2575730, 'для Toyota Auris I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/faurisi', 86, 86, 86),
(2576820, 'для Mazda 6 III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmazda63', 75.5, 75.5, 75.5),
(2576825, 'для Nissan X-Trail I T30 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fxtrailt30', 76, 76, 76),
(2576827, 'для Mercedes-Benz C-класс I W202 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw202', 76, 76, 76),
(2579845, 'для Volvo S60 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fs602', 76, 76, 76),
(2579847, 'для Volvo V60 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fv602', 72, 72, 72),
(2579852, 'для Volvo S80 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fs802', 72, 72, 72),
(2579858, 'для Fiat Punto III рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpunto3r', 72, 72, 72),
(2579862, 'для Fiat Punto III рестайлинг 2 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpunto3r2', 72, 72, 72),
(2581031, 'для Opel Corsa E (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcorsae', 68.5, 68.5, 68.5),
(2581033, 'для Toyota Prius V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fprius5', 72, 72, 72),
(2581037, 'для Ford Mondeo V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmondeo5', 72, 72, 72),
(2581039, 'для Opel Meriva A (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmerivaa', 72, 72, 72),
(2581041, 'для Mercedes-Benz M-класс III W166 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw166', 75.5, 75.5, 75.5),
(2581045, 'для Mercedes-Benz GL-класс II X166 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fx166', 75.5, 75.5, 75.5),
(2581050, 'для Citroen C2 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitrc2', 72, 72, 72),
(2581051, 'для Citroen C3 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitrc3', 72, 72, 72),
(2581052, 'для Citroen C3 I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcitrc3r', 72, 72, 72),
(2581054, 'для Mazda 3 I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmazda31r', 72.5, 72.5, 72.5),
(2581057, 'для Mercedes-Benz C-класс III W204 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw204r', 85, 85, 85),
(2581140, 'для Opel Meriva B (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmerivab', 72, 72, 72),
(2581141, 'для Nissan Primastar второй ряд (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fprimastar1', 48.5, 48.5, 48.5),
(2581144, 'для Alfa Romeo 147 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/far147', 72, 72, 72),
(2581145, 'для Alfa Romeo 156 I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/far1561', 72, 72, 72),
(2581147, 'для Alfa Romeo 156 I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/far1561r', 72, 72, 72),
(2581151, 'для Toyota Corolla Verso I рестайлинг 2 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcverso1r2', 76, 76, 76),
(2581162, 'для BMW X5 II E70 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe70', 76, 76.35, 76.18),
(2581163, 'для BMW 3 серия III E36 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe36', 72, 72.75, 72.38),
(2581166, 'для Mercedes-Benz A-класс II W169 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw169', 87, 87, 87),
(2581191, 'для Mini Cooper I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcooper1', 72.5, 72.5, 72.5),
(2581194, 'для Mercedes-Benz B-класс I W245 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw245', 86, 86, 86),
(2581197, 'для Suzuki Vitara II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvitara2', 69.5, 69.5, 69.5),
(2581198, 'для Mercedes-Benz M-класс I рестайлинг W163 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw163r', 86, 86, 86),
(2581199, 'для Skoda Superb III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsuperb3', 69.5, 69.5, 69.5),
(2581200, 'для Hyundai Tucson III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftucson3', 72, 72, 72),
(2581202, 'для Kia Sportage IV (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftucson4', 72, 72, 72),
(2584491, 'для Renault Scenic I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fscenic1', 86, 86, 86),
(2584492, 'для Renault Scenic I рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fscenic1r', 86, 86, 86),
(2584495, 'для Honda Fit III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ffit3', 89, 89, 89),
(2584525, 'для Opel Astra K (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fastrak', 72, 72, 72),
(2584527, 'для Renault Espace IV рестайлинг 2 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fespace4r2', 89, 89, 89),
(2584528, 'для Renault Espace V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fespace5', 89, 89, 89),
(2584530, 'для Audi Q7 II (4 шт)', NULL, 7, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fq72', 85.86, 89, 87.43),
(2584533, 'для Renault Espace IV третий ряд (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fespace43r', 35.5, 35.5, 35.5),
(2584539, 'для Audi A8 D4 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa8d4', 89, 89, 89),
(2584541, 'для VW Touran III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftouran2', 86, 86, 86),
(2584543, 'для Ford S-Max II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsmax2', 72.5, 72.5, 72.5),
(2584634, 'для Volvo V40 II (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fv402', 68.5, 68.5, 68.5),
(2584639, 'для Toyota Hilux VII (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhilux7', 86, 86, 86),
(2584640, 'для Toyota Hilux VII рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhilux7r', 86, 86, 86),
(2584644, 'для Mercedes-Benz GLK-класс I X204 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fx2041', 86, 86, 86),
(2584648, 'для Audi A4 B9 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa4b9', 76, 76, 76),
(2584654, 'для Mazda 2 III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fmazda23', 72, 72, 72),
(2584662, 'для Honda Civic VII (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcivic7', 86, 86, 86),
(2584664, 'для Nissan Almera II N16 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/falmera2n16', 72, 72, 72),
(2584666, 'для Nissan Almera II N16 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/falmera2n16r', 72, 72, 72),
(2584671, 'для Iveco Daily (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fpdaily', 101, 101, 101),
(2584673, 'для Honda HR-V I 3 двери (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhrv1', 86, 86, 86),
(2584675, 'для Honda HR-V I 5 дверей (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fhrv15', 86, 86, 86),
(2584737, 'для Land Rover Range Rover Evoque I (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fevoque1', 72, 72, 72),
(2584742, 'для Mercedes-Benz 190 W201 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fw201', 86, 86, 86),
(2584745, 'для BMW 5 серия III E34 (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fbmwe34', 72.5, 72.75, 72.63),
(2584748, 'для Citroen C3 III (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fc33', 95, 95, 95),
(2584749, 'для Mitsubishi L200 V (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fl2005', 72.5, 72.5, 72.5),
(2584864, 'для Audi A8 D3 (4 шт)', NULL, 7, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa8d3', 85.86, 89, 87.43),
(2584868, 'для Audi A8 D3 рестайлинг (4 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fa8d3r', 89, 89, 89),
(2584876, 'для VW Crafter II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcrafter23', 72, 72, 72),
(2584878, 'для Man TGE I (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftge1', 54.5, 54.5, 54.5),
(2584900, 'для Nissan Primastar первый ряд (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fprimastar', 48.5, 48.5, 48.5),
(2584905, 'для Opel Vivavro A рестайлинг (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvivaroar', 72.5, 72.5, 72.5),
(2584906, 'для Opel Vivavro A (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fvivaroa', 72.5, 72.5, 72.5),
(2584908, 'для Renault Trafic II (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftrafic2', 72.5, 72.5, 72.5),
(2585081, 'для Ford Transit VI (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftransit6', 72.5, 72.5, 72.5),
(2585089, 'для Ford Transit VII (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/ftransit7', 72, 72, 72),
(2585097, 'для VW LT II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/flt2', 72.5, 72.5, 72.5),
(2585098, 'для Mercedes-Benz Sprinter I (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsprinter1', 72.5, 72.5, 72.5),
(2585101, 'для Mercedes-Benz Sprinter II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fsprinter2', 72, 72, 72),
(2585102, 'для VW Crafter I (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcrafter1', 86, 86, 86),
(2585105, 'для VW Caravelle T4 (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fcaravellet4', 72.5, 72.5, 72.5),
(2585226, 'для Citroen Jumper II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjumper2', 72.5, 72.5, 72.5),
(2585228, 'для Fiat Ducato 250 (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fdukato250', 72.5, 72.5, 72.5),
(2585230, 'для Peugeot Boxer II (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fboxer2', 72, 72, 72),
(2585233, 'для Citroen Jumper I (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fjumper1', 72, 72, 72),
(2585235, 'для Fiat Ducato 230/244 (3 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/fducato230', 72, 72, 72),
(2585265, 'универсальные второй ряд (2 шт)', NULL, 1, 2, 2, 'http://catalog.onliner.by/car_mat/frogum/funiv2r', 92.5, 92.5, 92.5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `onliner_categories`
--
ALTER TABLE `onliner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `onliner_producers`
--
ALTER TABLE `onliner_producers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `onliner_products`
--
ALTER TABLE `onliner_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `onliner_categories_id` (`onliner_categories_id`),
  ADD KEY `onliner_producers_id` (`onliner_producers_id`),
  ADD KEY `images_id` (`images_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `onliner_categories`
--
ALTER TABLE `onliner_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `onliner_producers`
--
ALTER TABLE `onliner_producers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `onliner_products`
--
ALTER TABLE `onliner_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2585268;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `onliner_products`
--
ALTER TABLE `onliner_products`
  ADD CONSTRAINT `onliner_products_ibfk_1` FOREIGN KEY (`onliner_categories_id`) REFERENCES `onliner_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `onliner_products_ibfk_2` FOREIGN KEY (`onliner_producers_id`) REFERENCES `onliner_producers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `onliner_products_ibfk_3` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
