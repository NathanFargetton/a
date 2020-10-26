-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 26 oct. 2020 à 23:54
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `my_shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `images` varchar(255) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `images`, `category_id`) VALUES
(2, 'Dungeon master\'s guide', 'A book', 50, 'Dungeon-master_s-guide.jpg', 0),
(6, 'Guildmaster', 'A book', 50, 'Guildmasters_-guide-to-ravnica.jpg', 0),
(8, 'Monster-manual', 'A boook', 60, 'Monster-manual.jpg', 0),
(9, 'Xanathar', 'Guide to everything', 55, 'Xanathar_s-guide-to-everything.jpg', 0),
(10, 'Mythic odyssey', 'Une odyssée', 55, 'Mythic-odysseys-of-theros.jpg', 0),
(11, 'Players handbook', 'La base', 90, 'Player_s-handbook.jpg', 0),
(12, 'Mordenkainen\'s tome', '...of foes', 30, 'Mordenkainen_s-tome-of-foes.jpg', 0),
(13, 'Sword coast Adventure', 'une aventure sur la cote', 60, 'Sword-coast-adventurer_s-guide.jpg', 0),
(14, 'Explorer\'s guide', 'Un guide bien', 70, 'Explorer_s-guide-to-wildemount.jpg', 0),
(15, 'Eberron from the last war', 'Un livre bien et tech', 89, 'Eberron-rising-from-the-last-war.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `admin`) VALUES
(0, 't', '$6$rounds=5000$anexamplestringf$s8QpCbOmoz22gWKo8DhKuRzWyj1ZXLj2FJelfM94wmTDqRRHDxdRWd3t0aODhxBmLAjB88csm8kDobY9u5TCi0', 't@t.t', 1),
(6, 'aa', '$6$rounds=5000$anexamplestringf$o7gHcqFX2Y1N2D2qQLTTuatv7Whr9jjfjoqnGY3bDkRqVBS9EPYpD5NYCXULiV546d.7FqHOFSqf.UXr1.PNN1', 'a@a.a', 1),
(8, 'ccc', '$6$rounds=5000$anexamplestringf$aRdXcEyjPPGIHQ1mPt3v0DaEtxJFvHFzhb4GIXH6.fBSY.QJ6Sc7QYBmw/ECrflCzUcApJta/YHGLUAnO9CRn.', 'c@c.c', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
