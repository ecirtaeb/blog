-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 11 juin 2018 à 19:20
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id article',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `authorid` int(11) NOT NULL,
  `idcateg` int(11) NOT NULL,
  `credat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upddat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `authorid`, `idcateg`, `credat`, `upddat`) VALUES
(1, 'title', 'ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n', 1, 1, '2018-06-08 00:00:00', '2018-06-10 00:00:00'),
(2, 'le chien fou', 'Un chien traverse la route et paf le chien chien', 1, 1, '2018-06-09 09:08:24', '2018-06-10 00:00:00'),
(3, 'Souris souris', 'Souris souris dit le photographe à son mulet MULO', 1, 1, '2018-06-09 09:15:30', '2018-06-10 00:00:00'),
(8, 'controle', 'date', 2, 3, '2018-06-10 16:22:58', NULL),
(11, 'Lorem ipsum', 'ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n', 2, 2, '2018-06-10 22:33:07', NULL),
(12, 'Dolor sit amet', 'ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n', 4, 4, '2018-06-10 22:36:29', NULL),
(13, 'sed do eiusmod', 'ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n', 7, 2, '2018-06-10 22:37:23', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
