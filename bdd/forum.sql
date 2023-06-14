-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 15 juin 2023 à 00:45
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
-- Structure de la table `contains`
--

CREATE TABLE `contains` (
  `id_topic` int(11) NOT NULL,
  `id_mess` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

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
(3, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(4, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(5, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(6, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(7, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(8, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(9, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(10, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(11, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(12, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(13, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(14, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(15, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(16, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(17, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(18, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(19, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(20, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(21, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(22, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(23, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(24, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(25, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(26, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(27, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 11),
(28, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(29, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(30, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(31, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(32, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(33, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(34, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(35, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(36, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(37, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(38, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(39, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(40, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(41, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(42, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(43, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(44, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(45, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(46, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(47, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(48, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(49, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(50, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(51, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(52, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 12),
(53, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(54, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(55, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(56, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(57, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(58, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(59, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(60, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(61, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(62, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(63, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(64, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(65, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(66, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(67, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(68, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(69, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(70, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(71, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(72, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(73, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(74, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(75, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(76, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(77, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 13),
(78, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(79, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(80, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(81, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(82, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(83, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(84, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(85, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(86, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(87, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(88, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(89, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(90, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(91, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(92, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(93, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(94, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(95, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(96, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(97, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(98, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(99, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(100, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(101, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(102, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 14),
(103, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(104, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(105, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(106, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(107, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(108, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(109, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(110, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(111, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(112, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(113, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(114, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(115, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(116, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(117, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(118, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(119, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(120, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(121, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(122, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(123, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(124, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(125, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(126, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(127, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 15),
(128, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(129, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(130, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(131, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(132, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(133, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(134, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(135, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(136, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(137, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(138, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(139, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(140, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(141, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(142, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(143, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(144, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(145, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(146, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(147, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(148, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(149, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(150, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(151, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(152, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 16),
(153, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(154, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(155, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(156, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(157, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(158, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(159, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(160, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(161, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(162, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(163, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(164, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(165, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(166, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(167, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(168, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(169, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(170, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(171, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(172, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(173, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(174, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(175, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(176, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(177, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 17),
(178, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(179, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(180, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(181, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(182, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(183, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(184, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(185, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(186, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(187, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(188, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(189, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(190, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(191, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(192, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(193, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(194, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(195, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(196, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(197, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(198, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(199, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(200, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(201, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(202, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 18),
(203, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(204, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(205, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(206, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(207, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(208, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(209, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(210, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(211, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(212, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(213, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(214, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(215, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(216, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(217, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(218, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(219, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(220, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(221, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(222, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(223, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(224, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(225, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(226, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(227, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 19),
(228, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(229, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(230, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(231, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(232, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(233, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(234, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(235, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(236, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(237, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(238, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(239, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(240, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(241, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(242, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(243, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(244, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(245, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(246, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(247, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(248, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(249, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(250, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(251, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20),
(252, 'j\'adore le sport ', NULL, NULL, '2023-06-15 00:44:03', 20);

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
-- Index pour la table `contains`
--
ALTER TABLE `contains`
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
  MODIFY `id_mess` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

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
-- Contraintes pour la table `contains`
--
ALTER TABLE `contains`
  ADD CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_topic`),
  ADD CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`id_mess`) REFERENCES `message` (`id_mess`);

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
