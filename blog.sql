-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 28 2023 г., 17:54
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Спорт', '1.png'),
(2, 'Образование', '2.png'),
(3, 'Политика', '3.png'),
(4, 'Наука', '4.png');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1695322166),
('m230921_184139_create_user_table', 1695322169),
('m230921_184151_create_category_table', 1695322169),
('m230921_184200_create_post_table', 1695322589),
('m230921_200735_create_user_table', 1695326905);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `image`, `category_id`) VALUES
(1, 'Скрывать бесполезно. У звезды сборной США расстройство психики', 'Лучшая лыжница планеты 2021 года Джессика Диггинс вот уже больше десяти лет выступает в элите. Но до недавнего времени лишь самой спортсменке была известна истинная цена её успехов. На фоне постоянных стрессов американка проиграла очередную битву тяжелому психологическому расстройству.\r\n\r\nСпортсменке пришлось признаваться во всём семье, фанатам и докторам. Теперь лыжная карьера под угрозой.', '1.jpg', 1),
(2, 'Минпросвещения рассказало об отношении учителей к новому учебнику истории', 'Учителя хорошо отзываются о новом едином учебнике по истории, сообщает Минпросвещения. На сайте ведомства приводятся цитаты педагогов, которые хвалят издание за понятное изложение, дополнительные материалы и воспитательный аспект.\r\nСреди достоинств нового учебника педагоги отмечают то, что он дает возможность стандартизировать преподавание истории по всех школах и во всех регионах: при переходе в другую школу у ребенка не будет проблем с освоением программы. \r\n\r\nВ сентябре новыми учебниками по истории были обеспечены все российские одиннадцатиклассники. К следующему году пособие получат также все 10-е классы.', '2.jpg', 2),
(3, 'Норвежские лыжи — на грани краха. Убытки скоро превысят 100 миллионов', 'Норвежские лыжники оказались в крайне тяжёлом положении перед зимним сезоном. Огромные финансовые дыры в бюджете федерации рискуют обернуться для членов сборных серьезными проблемами.\r\n\r\nПоведение главной звезды Йоханнеса Клебо только усугубляет ситуацию.', '3.jpg', 1),
(4, 'Российские ученые разработали новые высокотемпературные покрытия', 'Новый процесс производства покрытий для авиационного, энергетического и химического машиностроения предложили ученые ВолгГТУ. По их словам, применение метода сварки взрывом в сочетании с технологией погружения в расплав позволяет создавать покрытия большой площади с многослойной структурой, которые защищают поверхность металлических сплавов от воздействия высоких температур и значительно продлевают срок службы техники. Результаты исследования опубликованы в Materials and Manufacturing Processes.\r\nФункционально-градиентное покрытие защищает детали, изготовленные, например, из титановых сплавов, от воздействия агрессивной среды в процессе длительной эксплуатации при повышенных температурах. Наружный слой покрытия состоит из алюминидов никеля и хрома, обеспечивающих высокую жаростойкость. Барьерный подслой (хромоникелевый сплав) препятствует взаимному проникновению материалов наружного слоя и защищаемого титанового сплава, а также способствует их прочному соединению между собой.', '4.jpg', 4),
(5, 'В России усовершенствовали важнейший элемент радиотехники', ' Ученые ОмГТУ предложили изменения конструкции генератора для радиосвязи. По словам авторов, предложенные трансформации позволят повысить срок службы и период безошибочной работы проектируемых устройств в четыре раза. Результаты представлены в \"Омском научном вестнике\".\r\nНа стабильность частоты радиосигналов, по словам специалистов, влияют температура, вибрации и множество других факторов среды. Вносимые ими искажения могут сделать невозможной связь между приемником и передатчиком. Особенно актуальна эта проблема для навигационных и радиолокационных систем.', '5.jpg', 4),
(6, 'Путин заявил об успешном завершении выборов в России', 'Выборы в России в единый день голосования в большинстве регионов проходили три дня и начались 8 сентября. Как заявила глава Центральной избирательной комиссии России Элла Памфилова, в в осенних выборах 2023 года приняли участие более 45 миллионов избирателей.\r\nОказанный уровень доверия избранным главам регионов означает еще большую ответственность, необходимо максимально оправдать выбор избирателей, надежды жителей регионов на позитивные перемены, заявил президент России Владимир Путин.', '6.jpg', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `surname`, `patronymic`, `email`, `password`) VALUES
(2, 'admin', 'Иван', 'Иванов', 'Иванович', 'admin@mail.ru', 'admin11'),
(3, 'Petr', 'Петр', 'Петров', 'Петрович', 'petrov@mail.ru', '$2y$13$sOCGBza0C/bnbc4rstv9huRhUBZdSM59vMx1Xg3iuDdwOCF/Hakwu');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-post-category_id` (`category_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk-post-category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
