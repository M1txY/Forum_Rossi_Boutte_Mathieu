-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 13 juin 2023 à 15:50
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
(7, 'tennis', '../../assets/img/tennis.jpg'),
(8, 'badminton', '../../assets/img/badminton.jpg'),
(9, 'Sport Auto', '../../assets/img/Sport-auto.png');

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
(6, 1);

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
(1, 'play off', '2023-06-09 00:00:00', 6),
(2, 'l\'airsoft c\'es bien', '2023-06-09 00:00:00', 7),
(3, 'fin de saison', '2023-06-09 00:00:00', 8),
(4, 'messi au US', '2023-06-09 00:00:00', 9),
(5, 'comment débuté', '2023-06-09 00:00:00', 9),
(6, 'les lakers pas en final', '2023-06-09 00:00:00', 9);

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
(6, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a8', 'admin@forum.com'),
(7, 'mathiue', 'b82d4337f2e80e7bd8890423bf0bcb24c6e75c85672a82a724', 'mathiue@forum.com'),
(8, 'pseudo', '8fd7d7a07d194f752bf368d2066758d5d2fedeb346b2330fa1', 'ici@ici2.com'),
(9, 'phillipe', '5be8ba83ba981a8652a858abceef3a4a4ce5724fa95349f6bda59d5345e0f726', 'phillipe@phillipe.com');

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
  MODIFY `id_mess` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `topic`
--
ALTER TABLE `topic`
  MODIFY `id_topic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
