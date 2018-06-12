-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 08 Juin 2018 à 16:55
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL COMMENT 'id article',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `credat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upddat` datetime NOT NULL,
  `authorid` int(11) NOT NULL,
  `idcateg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `credat`, `upddat`, `authorid`, `idcateg`) VALUES
(1, 'title', 'ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-06-08 00:00:00', '2018-06-08 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL COMMENT 'id auteur',
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`id`, `firstname`, `lastname`) VALUES
(1, 'firstname', 'lastname');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL COMMENT 'id catégorie',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(1, 'name');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `comment` int(11) NOT NULL,
  `content` text NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `credat` datetime NOT NULL,
  `upddat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`comment`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id article', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id auteur', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id catégorie', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `comment` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
