-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 18 juin 2023 à 16:59
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `forum`
--
CREATE DATABASE IF NOT EXISTS `forum` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `forum`;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_cat` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id_cat`, `titre`, `url`) VALUES
(1, 'basketball', '../../assets/img/basket.png'),
(2, 'tir sportif', '../../assets/img/logo-tir-sportif.png'),
(3, 'football', '../../assets/img/foot.png'),
(4, 'handball', '../../assets/img/handball.jpg'),
(5, 'rugby', '../../assets/img/rugby.jpg'),
(6, 'volley', '../../assets/img/volley.jpg'),
(7, 'tennis', '../../assets/img/tennis.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `contain`
--

CREATE TABLE `contain` (
  `id_topic` int(11) NOT NULL,
  `id_mess` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Déchargement des données de la table `contain`
--

INSERT INTO `contain` (`id_topic`, `id_mess`) VALUES
(1, 1),
(1, 26),
(1, 51),
(1, 76),
(1, 101),
(1, 126),
(1, 151),
(1, 176),
(1, 201),
(1, 226),
(2, 2),
(2, 27),
(2, 52),
(2, 77),
(2, 102),
(2, 127),
(2, 152),
(2, 177),
(2, 202),
(2, 227),
(3, 3),
(3, 28),
(3, 53),
(3, 78),
(3, 103),
(3, 128),
(3, 153),
(3, 178),
(3, 203),
(3, 228),
(4, 4),
(4, 29),
(4, 54),
(4, 79),
(4, 104),
(4, 129),
(4, 154),
(4, 179),
(4, 204),
(4, 229),
(5, 5),
(5, 30),
(5, 55),
(5, 80),
(5, 105),
(5, 130),
(5, 155),
(5, 180),
(5, 205),
(5, 230),
(6, 6),
(6, 31),
(6, 56),
(6, 81),
(6, 106),
(6, 131),
(6, 156),
(6, 181),
(6, 206),
(6, 231),
(7, 7),
(7, 32),
(7, 57),
(7, 82),
(7, 107),
(7, 132),
(7, 157),
(7, 182),
(7, 207),
(7, 232),
(8, 8),
(8, 33),
(8, 58),
(8, 83),
(8, 108),
(8, 133),
(8, 158),
(8, 183),
(8, 208),
(8, 233),
(9, 9),
(9, 34),
(9, 59),
(9, 84),
(9, 109),
(9, 134),
(9, 159),
(9, 184),
(9, 209),
(9, 234),
(10, 10),
(10, 35),
(10, 60),
(10, 85),
(10, 110),
(10, 135),
(10, 160),
(10, 185),
(10, 210),
(10, 235),
(11, 11),
(11, 36),
(11, 61),
(11, 86),
(11, 111),
(11, 136),
(11, 161),
(11, 186),
(11, 211),
(11, 236),
(12, 12),
(12, 37),
(12, 62),
(12, 87),
(12, 112),
(12, 137),
(12, 162),
(12, 187),
(12, 212),
(12, 237),
(13, 13),
(13, 38),
(13, 63),
(13, 88),
(13, 113),
(13, 138),
(13, 163),
(13, 188),
(13, 213),
(13, 238),
(14, 14),
(14, 39),
(14, 64),
(14, 89),
(14, 114),
(14, 139),
(14, 164),
(14, 189),
(14, 214),
(14, 239),
(15, 15),
(15, 40),
(15, 65),
(15, 90),
(15, 115),
(15, 140),
(15, 165),
(15, 190),
(15, 215),
(15, 240),
(16, 16),
(16, 41),
(16, 66),
(16, 91),
(16, 116),
(16, 141),
(16, 166),
(16, 191),
(16, 216),
(16, 241),
(17, 17),
(17, 42),
(17, 67),
(17, 92),
(17, 117),
(17, 142),
(17, 167),
(17, 192),
(17, 217),
(17, 242),
(18, 18),
(18, 43),
(18, 68),
(18, 93),
(18, 118),
(18, 143),
(18, 168),
(18, 193),
(18, 218),
(18, 243),
(19, 19),
(19, 44),
(19, 69),
(19, 94),
(19, 119),
(19, 144),
(19, 169),
(19, 194),
(19, 219),
(19, 244),
(20, 20),
(20, 45),
(20, 70),
(20, 95),
(20, 120),
(20, 145),
(20, 170),
(20, 195),
(20, 220),
(20, 245),
(21, 21),
(21, 46),
(21, 71),
(21, 96),
(21, 121),
(21, 146),
(21, 171),
(21, 196),
(21, 221),
(21, 246),
(22, 22),
(22, 47),
(22, 72),
(22, 97),
(22, 122),
(22, 147),
(22, 172),
(22, 197),
(22, 222),
(22, 247),
(23, 23),
(23, 48),
(23, 73),
(23, 98),
(23, 123),
(23, 148),
(23, 173),
(23, 198),
(23, 223),
(23, 248),
(24, 24),
(24, 49),
(24, 74),
(24, 99),
(24, 124),
(24, 149),
(24, 174),
(24, 199),
(24, 224),
(24, 249),
(25, 25),
(25, 50),
(25, 75),
(25, 100),
(25, 125),
(25, 150),
(25, 175),
(25, 200),
(25, 225),
(25, 250);

-- --------------------------------------------------------

--
-- Structure de la table `liker`
--

CREATE TABLE `liker` (
  `id_user` int(11) NOT NULL,
  `id_mess` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_mess` int(11) NOT NULL,
  `Contenu` varchar(200) DEFAULT NULL,
  `Update_` datetime DEFAULT NULL,
  `nombre_like` int(11) DEFAULT NULL,
  `Date_creation` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id_mess`, `Contenu`, `Update_`, `nombre_like`, `Date_creation`, `id_user`) VALUES
(1, 'basket', NULL, NULL, '2023-06-18 16:56:53', 11),
(2, 'basket', NULL, NULL, '2023-06-18 16:56:53', 11),
(3, 'basket', NULL, NULL, '2023-06-18 16:56:53', 11),
(4, 'football', NULL, NULL, '2023-06-18 16:56:53', 11),
(5, 'handball', NULL, NULL, '2023-06-18 16:56:53', 11),
(6, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 11),
(7, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 11),
(8, 'handball', NULL, NULL, '2023-06-18 16:56:53', 11),
(9, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 11),
(10, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 11),
(11, 'football', NULL, NULL, '2023-06-18 16:56:53', 11),
(12, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 11),
(13, 'basket', NULL, NULL, '2023-06-18 16:56:53', 11),
(14, 'football', NULL, NULL, '2023-06-18 16:56:53', 11),
(15, 'football', NULL, NULL, '2023-06-18 16:56:53', 11),
(16, 'basket', NULL, NULL, '2023-06-18 16:56:53', 11),
(17, 'handball', NULL, NULL, '2023-06-18 16:56:53', 11),
(18, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 11),
(19, 'football', NULL, NULL, '2023-06-18 16:56:53', 11),
(20, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 11),
(21, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 11),
(22, 'handball', NULL, NULL, '2023-06-18 16:56:53', 11),
(23, 'football', NULL, NULL, '2023-06-18 16:56:53', 11),
(24, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 11),
(25, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 11),
(26, 'football', NULL, NULL, '2023-06-18 16:56:53', 12),
(27, 'basket', NULL, NULL, '2023-06-18 16:56:53', 12),
(28, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 12),
(29, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 12),
(30, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 12),
(31, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 12),
(32, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 12),
(33, 'football', NULL, NULL, '2023-06-18 16:56:53', 12),
(34, 'football', NULL, NULL, '2023-06-18 16:56:53', 12),
(35, 'football', NULL, NULL, '2023-06-18 16:56:53', 12),
(36, 'football', NULL, NULL, '2023-06-18 16:56:53', 12),
(37, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 12),
(38, 'basket', NULL, NULL, '2023-06-18 16:56:53', 12),
(39, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 12),
(40, 'volley', NULL, NULL, '2023-06-18 16:56:53', 12),
(41, 'basket', NULL, NULL, '2023-06-18 16:56:53', 12),
(42, 'football', NULL, NULL, '2023-06-18 16:56:53', 12),
(43, 'volley', NULL, NULL, '2023-06-18 16:56:53', 12),
(44, 'handball', NULL, NULL, '2023-06-18 16:56:53', 12),
(45, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 12),
(46, 'basket', NULL, NULL, '2023-06-18 16:56:53', 12),
(47, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 12),
(48, 'handball', NULL, NULL, '2023-06-18 16:56:53', 12),
(49, 'basket', NULL, NULL, '2023-06-18 16:56:53', 12),
(50, 'volley', NULL, NULL, '2023-06-18 16:56:53', 12),
(51, 'volley', NULL, NULL, '2023-06-18 16:56:53', 13),
(52, 'volley', NULL, NULL, '2023-06-18 16:56:53', 13),
(53, 'handball', NULL, NULL, '2023-06-18 16:56:53', 13),
(54, 'volley', NULL, NULL, '2023-06-18 16:56:53', 13),
(55, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 13),
(56, 'basket', NULL, NULL, '2023-06-18 16:56:53', 13),
(57, 'football', NULL, NULL, '2023-06-18 16:56:53', 13),
(58, 'handball', NULL, NULL, '2023-06-18 16:56:53', 13),
(59, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 13),
(60, 'volley', NULL, NULL, '2023-06-18 16:56:53', 13),
(61, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 13),
(62, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 13),
(63, 'basket', NULL, NULL, '2023-06-18 16:56:53', 13),
(64, 'football', NULL, NULL, '2023-06-18 16:56:53', 13),
(65, 'tir sportif', NULL, NULL, '2023-06-18 16:56:53', 13),
(66, 'tennis', NULL, NULL, '2023-06-18 16:56:53', 13),
(67, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 13),
(68, 'rugby', NULL, NULL, '2023-06-18 16:56:53', 13),
(69, 'basket', NULL, NULL, '2023-06-18 16:56:53', 13),
(70, 'football', NULL, NULL, '2023-06-18 16:56:53', 13),
(71, 'handball', NULL, NULL, '2023-06-18 16:56:53', 13),
(72, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 13),
(73, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 13),
(74, 'basket', NULL, NULL, '2023-06-18 16:56:54', 13),
(75, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 13),
(76, 'volley', NULL, NULL, '2023-06-18 16:56:54', 14),
(77, 'volley', NULL, NULL, '2023-06-18 16:56:54', 14),
(78, 'football', NULL, NULL, '2023-06-18 16:56:54', 14),
(79, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 14),
(80, 'basket', NULL, NULL, '2023-06-18 16:56:54', 14),
(81, 'handball', NULL, NULL, '2023-06-18 16:56:54', 14),
(82, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 14),
(83, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 14),
(84, 'handball', NULL, NULL, '2023-06-18 16:56:54', 14),
(85, 'football', NULL, NULL, '2023-06-18 16:56:54', 14),
(86, 'handball', NULL, NULL, '2023-06-18 16:56:54', 14),
(87, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 14),
(88, 'basket', NULL, NULL, '2023-06-18 16:56:54', 14),
(89, 'rugby', NULL, NULL, '2023-06-18 16:56:54', 14),
(90, 'football', NULL, NULL, '2023-06-18 16:56:54', 14),
(91, 'basket', NULL, NULL, '2023-06-18 16:56:54', 14),
(92, 'football', NULL, NULL, '2023-06-18 16:56:54', 14),
(93, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 14),
(94, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 14),
(95, 'handball', NULL, NULL, '2023-06-18 16:56:54', 14),
(96, 'basket', NULL, NULL, '2023-06-18 16:56:54', 14),
(97, 'handball', NULL, NULL, '2023-06-18 16:56:54', 14),
(98, 'rugby', NULL, NULL, '2023-06-18 16:56:54', 14),
(99, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 14),
(100, 'volley', NULL, NULL, '2023-06-18 16:56:54', 14),
(101, 'handball', NULL, NULL, '2023-06-18 16:56:54', 15),
(102, 'rugby', NULL, NULL, '2023-06-18 16:56:54', 15),
(103, 'handball', NULL, NULL, '2023-06-18 16:56:54', 15),
(104, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 15),
(105, 'volley', NULL, NULL, '2023-06-18 16:56:54', 15),
(106, 'football', NULL, NULL, '2023-06-18 16:56:54', 15),
(107, 'handball', NULL, NULL, '2023-06-18 16:56:54', 15),
(108, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 15),
(109, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 15),
(110, 'rugby', NULL, NULL, '2023-06-18 16:56:54', 15),
(111, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 15),
(112, 'football', NULL, NULL, '2023-06-18 16:56:54', 15),
(113, 'basket', NULL, NULL, '2023-06-18 16:56:54', 15),
(114, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 15),
(115, 'volley', NULL, NULL, '2023-06-18 16:56:54', 15),
(116, 'rugby', NULL, NULL, '2023-06-18 16:56:54', 15),
(117, 'basket', NULL, NULL, '2023-06-18 16:56:54', 15),
(118, 'handball', NULL, NULL, '2023-06-18 16:56:54', 15),
(119, 'football', NULL, NULL, '2023-06-18 16:56:54', 15),
(120, 'football', NULL, NULL, '2023-06-18 16:56:54', 15),
(121, 'basket', NULL, NULL, '2023-06-18 16:56:54', 15),
(122, 'handball', NULL, NULL, '2023-06-18 16:56:54', 15),
(123, 'volley', NULL, NULL, '2023-06-18 16:56:54', 15),
(124, 'basket', NULL, NULL, '2023-06-18 16:56:54', 15),
(125, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 15),
(126, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 16),
(127, 'basket', NULL, NULL, '2023-06-18 16:56:54', 16),
(128, 'football', NULL, NULL, '2023-06-18 16:56:54', 16),
(129, 'basket', NULL, NULL, '2023-06-18 16:56:54', 16),
(130, 'football', NULL, NULL, '2023-06-18 16:56:54', 16),
(131, 'volley', NULL, NULL, '2023-06-18 16:56:54', 16),
(132, 'rugby', NULL, NULL, '2023-06-18 16:56:54', 16),
(133, 'handball', NULL, NULL, '2023-06-18 16:56:54', 16),
(134, 'handball', NULL, NULL, '2023-06-18 16:56:54', 16),
(135, 'rugby', NULL, NULL, '2023-06-18 16:56:54', 16),
(136, 'football', NULL, NULL, '2023-06-18 16:56:54', 16),
(137, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 16),
(138, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 16),
(139, 'handball', NULL, NULL, '2023-06-18 16:56:54', 16),
(140, 'football', NULL, NULL, '2023-06-18 16:56:54', 16),
(141, 'football', NULL, NULL, '2023-06-18 16:56:54', 16),
(142, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 16),
(143, 'handball', NULL, NULL, '2023-06-18 16:56:54', 16),
(144, 'basket', NULL, NULL, '2023-06-18 16:56:54', 16),
(145, 'volley', NULL, NULL, '2023-06-18 16:56:54', 16),
(146, 'handball', NULL, NULL, '2023-06-18 16:56:54', 16),
(147, 'basket', NULL, NULL, '2023-06-18 16:56:54', 16),
(148, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 16),
(149, 'volley', NULL, NULL, '2023-06-18 16:56:54', 16),
(150, 'tir sportif', NULL, NULL, '2023-06-18 16:56:54', 16),
(151, 'volley', NULL, NULL, '2023-06-18 16:56:54', 17),
(152, 'basket', NULL, NULL, '2023-06-18 16:56:54', 17),
(153, 'football', NULL, NULL, '2023-06-18 16:56:54', 17),
(154, 'tennis', NULL, NULL, '2023-06-18 16:56:54', 17),
(155, 'basket', NULL, NULL, '2023-06-18 16:56:55', 17),
(156, 'football', NULL, NULL, '2023-06-18 16:56:55', 17),
(157, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 17),
(158, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 17),
(159, 'football', NULL, NULL, '2023-06-18 16:56:55', 17),
(160, 'volley', NULL, NULL, '2023-06-18 16:56:55', 17),
(161, 'handball', NULL, NULL, '2023-06-18 16:56:55', 17),
(162, 'football', NULL, NULL, '2023-06-18 16:56:55', 17),
(163, 'tir sportif', NULL, NULL, '2023-06-18 16:56:55', 17),
(164, 'volley', NULL, NULL, '2023-06-18 16:56:55', 17),
(165, 'volley', NULL, NULL, '2023-06-18 16:56:55', 17),
(166, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 17),
(167, 'volley', NULL, NULL, '2023-06-18 16:56:55', 17),
(168, 'football', NULL, NULL, '2023-06-18 16:56:55', 17),
(169, 'football', NULL, NULL, '2023-06-18 16:56:55', 17),
(170, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 17),
(171, 'football', NULL, NULL, '2023-06-18 16:56:55', 17),
(172, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 17),
(173, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 17),
(174, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 17),
(175, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 17),
(176, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 18),
(177, 'tir sportif', NULL, NULL, '2023-06-18 16:56:55', 18),
(178, 'football', NULL, NULL, '2023-06-18 16:56:55', 18),
(179, 'volley', NULL, NULL, '2023-06-18 16:56:55', 18),
(180, 'basket', NULL, NULL, '2023-06-18 16:56:55', 18),
(181, 'basket', NULL, NULL, '2023-06-18 16:56:55', 18),
(182, 'tir sportif', NULL, NULL, '2023-06-18 16:56:55', 18),
(183, 'volley', NULL, NULL, '2023-06-18 16:56:55', 18),
(184, 'football', NULL, NULL, '2023-06-18 16:56:55', 18),
(185, 'tir sportif', NULL, NULL, '2023-06-18 16:56:55', 18),
(186, 'football', NULL, NULL, '2023-06-18 16:56:55', 18),
(187, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 18),
(188, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 18),
(189, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 18),
(190, 'handball', NULL, NULL, '2023-06-18 16:56:55', 18),
(191, 'volley', NULL, NULL, '2023-06-18 16:56:55', 18),
(192, 'handball', NULL, NULL, '2023-06-18 16:56:55', 18),
(193, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 18),
(194, 'football', NULL, NULL, '2023-06-18 16:56:55', 18),
(195, 'tir sportif', NULL, NULL, '2023-06-18 16:56:55', 18),
(196, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 18),
(197, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 18),
(198, 'volley', NULL, NULL, '2023-06-18 16:56:55', 18),
(199, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 18),
(200, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 18),
(201, 'volley', NULL, NULL, '2023-06-18 16:56:55', 19),
(202, 'football', NULL, NULL, '2023-06-18 16:56:55', 19),
(203, 'football', NULL, NULL, '2023-06-18 16:56:55', 19),
(204, 'football', NULL, NULL, '2023-06-18 16:56:55', 19),
(205, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 19),
(206, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 19),
(207, 'football', NULL, NULL, '2023-06-18 16:56:55', 19),
(208, 'volley', NULL, NULL, '2023-06-18 16:56:55', 19),
(209, 'basket', NULL, NULL, '2023-06-18 16:56:55', 19),
(210, 'volley', NULL, NULL, '2023-06-18 16:56:55', 19),
(211, 'basket', NULL, NULL, '2023-06-18 16:56:55', 19),
(212, 'football', NULL, NULL, '2023-06-18 16:56:55', 19),
(213, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 19),
(214, 'handball', NULL, NULL, '2023-06-18 16:56:55', 19),
(215, 'volley', NULL, NULL, '2023-06-18 16:56:55', 19),
(216, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 19),
(217, 'handball', NULL, NULL, '2023-06-18 16:56:55', 19),
(218, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 19),
(219, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 19),
(220, 'volley', NULL, NULL, '2023-06-18 16:56:55', 19),
(221, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 19),
(222, 'tir sportif', NULL, NULL, '2023-06-18 16:56:55', 19),
(223, 'basket', NULL, NULL, '2023-06-18 16:56:55', 19),
(224, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 19),
(225, 'volley', NULL, NULL, '2023-06-18 16:56:55', 19),
(226, 'football', NULL, NULL, '2023-06-18 16:56:55', 20),
(227, 'tennis', NULL, NULL, '2023-06-18 16:56:55', 20),
(228, 'volley', NULL, NULL, '2023-06-18 16:56:55', 20),
(229, 'basket', NULL, NULL, '2023-06-18 16:56:55', 20),
(230, 'basket', NULL, NULL, '2023-06-18 16:56:55', 20),
(231, 'football', NULL, NULL, '2023-06-18 16:56:55', 20),
(232, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 20),
(233, 'rugby', NULL, NULL, '2023-06-18 16:56:55', 20),
(234, 'handball', NULL, NULL, '2023-06-18 16:56:55', 20),
(235, 'basket', NULL, NULL, '2023-06-18 16:56:55', 20),
(236, 'tennis', NULL, NULL, '2023-06-18 16:56:56', 20),
(237, 'basket', NULL, NULL, '2023-06-18 16:56:56', 20),
(238, 'tennis', NULL, NULL, '2023-06-18 16:56:56', 20),
(239, 'rugby', NULL, NULL, '2023-06-18 16:56:56', 20),
(240, 'volley', NULL, NULL, '2023-06-18 16:56:56', 20),
(241, 'football', NULL, NULL, '2023-06-18 16:56:56', 20),
(242, 'rugby', NULL, NULL, '2023-06-18 16:56:56', 20),
(243, 'volley', NULL, NULL, '2023-06-18 16:56:56', 20),
(244, 'handball', NULL, NULL, '2023-06-18 16:56:56', 20),
(245, 'football', NULL, NULL, '2023-06-18 16:56:56', 20),
(246, 'volley', NULL, NULL, '2023-06-18 16:56:56', 20),
(247, 'rugby', NULL, NULL, '2023-06-18 16:56:56', 20),
(248, 'rugby', NULL, NULL, '2023-06-18 16:56:56', 20),
(249, 'volley', NULL, NULL, '2023-06-18 16:56:56', 20),
(250, 'volley', NULL, NULL, '2023-06-18 16:56:56', 20);

-- --------------------------------------------------------

--
-- Structure de la table `own`
--

CREATE TABLE `own` (
  `id_topic` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Déchargement des données de la table `own`
--

INSERT INTO `own` (`id_topic`, `id_cat`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 4),
(18, 4),
(19, 4),
(20, 5),
(21, 5),
(22, 5),
(23, 6),
(24, 6),
(25, 6),
(26, 7),
(27, 7),
(28, 7),
(29, 2),
(30, 2),
(31, 2),
(32, 3),
(33, 3),
(34, 3);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id_mess` int(11) NOT NULL,
  `id_mess_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Structure de la table `topic`
--

CREATE TABLE `topic` (
  `id_topic` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `Date_creation` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Déchargement des données de la table `topic`
--

INSERT INTO `topic` (`id_topic`, `titre`, `Date_creation`, `id_user`) VALUES
(1, 'play off', '2023-06-09 00:00:00', 1),
(2, 'l\'airsoft c\'es bien', '2023-06-09 00:00:00', 1),
(3, 'fin de saison', '2023-06-09 00:00:00', 1),
(4, 'messi au US', '2023-06-09 00:00:00', 1),
(5, 'comment débuté', '2023-06-09 00:00:00', 1),
(6, 'les lakers pas en final', '2023-06-09 00:00:00', 1),
(7, 'Les règles du basket', '2023-06-15 00:31:36', 11),
(8, 'Les techniques de dribble', '2023-06-15 00:31:36', 12),
(9, 'Les meilleurs joueurs de basket', '2023-06-15 00:31:36', 13),
(10, 'Les stratégies de jeu', '2023-06-15 00:31:36', 14),
(11, 'Les exercices d\'entraînement au basket', '2023-06-15 00:31:36', 15),
(12, 'Les différentes positions sur le terrain', '2023-06-15 00:31:36', 16),
(13, 'Les tournois de basket célèbres', '2023-06-15 00:31:36', 17),
(14, 'Les équipes de basket légendaires', '2023-06-15 00:31:36', 18),
(15, 'Les astuces pour améliorer son shoot', '2023-06-15 00:31:36', 19),
(16, 'Les fondamentaux du basket', '2023-06-15 00:31:36', 20),
(17, 'Les règles du handball', '2023-06-15 00:38:20', 11),
(18, 'Les techniques de tir en handball', '2023-06-15 00:38:20', 12),
(19, 'Les meilleurs joueurs de handball', '2023-06-15 00:38:20', 13),
(20, 'Les règles du rugby', '2023-06-15 00:38:20', 14),
(21, 'Les techniques de plaquage en rugby', '2023-06-15 00:38:20', 15),
(22, 'Les meilleurs joueurs de rugby', '2023-06-15 00:38:20', 16),
(23, 'Les règles du volleyball', '2023-06-15 00:38:20', 17),
(24, 'Les techniques de service en volleyball', '2023-06-15 00:38:20', 18),
(25, 'Les meilleures équipes de volleyball', '2023-06-15 00:38:20', 19),
(26, 'Les règles du tennis', '2023-06-15 00:38:20', 20),
(27, 'Les techniques de service au tennis', '2023-06-15 00:38:20', 20),
(28, 'Les meilleurs joueurs de tennis', '2023-06-15 00:38:20', 20),
(29, 'Les règles du tir sportif', '2023-06-15 00:38:20', 11),
(30, 'Les techniques de visée en tir sportif', '2023-06-15 00:38:20', 12),
(31, 'Les meilleurs tireurs sportifs', '2023-06-15 00:38:20', 13),
(32, 'Les règles du football', '2023-06-15 00:38:20', 20),
(33, 'Les techniques de dribble en football', '2023-06-15 00:38:20', 12),
(34, 'Les meilleurs joueurs de football', '2023-06-15 00:38:20', 14);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `Pseudo` varchar(50) DEFAULT NULL,
  `passwd` varchar(70) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `Pseudo`, `passwd`, `mail`) VALUES
(1, 'enzo', '605306b83fe54de0ab9373e98b9fd30d0a44da6e57487f19621d9275cff74b2f', 'enzo@enzo.com'),
(2, 'phillipe', '5be8ba83ba981a8652a858abceef3a4a4ce5724fa95349f6bda59d5345e0f726', 'phillipe@phillipe.com'),
(11, 'Jean1', 'ea474f7dcafda10146f1b82b1900cd4c544d3fb97a8c55e129a27faa1f2889f9', 'jean1@example.com'),
(12, 'Emma2', '044e84410d94b9bdd856cfe01da6a7834b95a860792c84513c64dcf12066cfb5', 'emma2@example.com'),
(13, 'Lucas3', '054f16c7365e91509d242374660fe4fc12016ced1e82fe9078fb43cc8ba41020', 'lucas3@example.com'),
(14, 'Louise4', '78965d853ab10797185a084a133da63bce7d5febe7d79710aef1597a0233312b', 'louise4@example.com'),
(15, 'Hugo5', '66033b5759b9be7110dff139ea89b1235300e5363d5ac6adf6c696407c28747e', 'hugo5@example.com'),
(16, 'Alice6', '41eea29f92b4d39b39d9d5716911b8b1e575df3ea44ef800b0792e43a842c40c', 'alice6@example.com'),
(17, 'Gabriel7', '403508b11fc810087460491aa2321591eb044653c3533006cb6e7dd7053e82a9', 'gabriel7@example.com'),
(18, 'Chloé8', '2def3fb494a0ea4649713186dfc3fddc95d8c328ddbb0c55ded235b7dc9d0a8e', 'chloe8@example.com'),
(19, 'Louis9', '1624160888203e00404fc33d0d49a741a9db60a4ae48ed2e3d03d766cea49799', 'louis9@example.com'),
(20, 'Léa10', 'dcaa170a0609ec6e8e213102236ba93e2c71dc5aae42e2ca79688e062e99a2f4', 'lea10@example.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`id_topic`,`id_mess`),
  ADD KEY `id_mess` (`id_mess`);

--
-- Index pour la table `liker`
--
ALTER TABLE `liker`
  ADD PRIMARY KEY (`id_user`,`id_mess`),
  ADD KEY `id_mess` (`id_mess`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_mess`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `own`
--
ALTER TABLE `own`
  ADD PRIMARY KEY (`id_topic`,`id_cat`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_mess`,`id_mess_1`),
  ADD KEY `id_mess_1` (`id_mess_1`);

--
-- Index pour la table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id_topic`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_mess` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT pour la table `topic`
--
ALTER TABLE `topic`
  MODIFY `id_topic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `contain_ibfk_1` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_topic`),
  ADD CONSTRAINT `contain_ibfk_2` FOREIGN KEY (`id_mess`) REFERENCES `message` (`id_mess`);

--
-- Contraintes pour la table `liker`
--
ALTER TABLE `liker`
  ADD CONSTRAINT `liker_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `liker_ibfk_2` FOREIGN KEY (`id_mess`) REFERENCES `message` (`id_mess`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `own`
--
ALTER TABLE `own`
  ADD CONSTRAINT `own_ibfk_1` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_topic`),
  ADD CONSTRAINT `own_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `category` (`id_cat`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`id_mess`) REFERENCES `message` (`id_mess`),
  ADD CONSTRAINT `reponse_ibfk_2` FOREIGN KEY (`id_mess_1`) REFERENCES `message` (`id_mess`);

--
-- Contraintes pour la table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
