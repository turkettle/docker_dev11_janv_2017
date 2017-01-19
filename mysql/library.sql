-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  mysql.server.com
-- Généré le :  Jeu 19 Janvier 2017 à 11:15
-- Version du serveur :  5.7.17
-- Version de PHP :  7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `library`
--

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `book`
--

INSERT INTO `book` (`id`, `title`, `body`) VALUES
(1, 'Rubrique-à-brac, tome 1', 'Réédition : Tomes 1 - 2 - 3 - 4 Les premières Rubrique-à-brac font leur apparition dans Pilote le 11 janvier 1968. Gotlib donne naissance à de multiples personnages restés dans toutes les mémoires. Aux côtés de Newton, le lecteur retrouve l\'inénarrable Coccinelle et le savant-professeur Burp ou bien encore Tarzan et le Petit Chaperon Rouge, sans oublier les policiers Bougret et Charolles. Véritable banc d\'essai, ces Rubrique-à-brac imposent Marcel Gotlib comme l\'un des pionniers de la bande dessinée pour adultes. Il abandonne cette série en 1972. La réédition de ces quatre tomes correspond aux histoires des deux premiers tomes de l\'ancienne édition.'),
(2, 'Gotlib : Les Inédits', 'Un miracle ! ! ! Il n\'y a pas d\'autres mots pour décrire l\'événement de ce début d\'année, des gags inédits en album de l\'immense Marcel Gotlib, parus dans Pilote, bien sûr, mais aussi dans bien d\'autres journaux. Le créateur de la Rubrique à Brac s\'est replongé dans ses archives et a déniché des enquêtes de Bougret et Charolles, des pages d\'actualité, des tranches de vie et d\'autres sommets de l\'humour Gotlibien. Un miracle, vous dis-je ! ! ! Parues essentiellement dans Pilote, mais aussi dans Fluide ou l\'Echo, ces pages de Gotlib sont restées inédites en album, problème de films égarés, de pages perdues, de pagination d\'albums etc.. Nous nous sommes replongés avec le Maître dans ses originaux afin de faire un tri complet des gags publiés et avons découvert avec un plaisir sans limite des pages oubliées qui ne demandent qu\'à faire hurler de rire des millions de lecteurs nostalgiques. C\'est donc avec une immense fierté que nous vous présentons ce bijou, ces merveilles inédites.'),
(3, 'Rubrique-à-brac, tome 2', 'Réédition : Tomes 1 - 2 - 3 - 4 Les premières Rubrique-à-brac font leur apparition dans Pilote le 11 janvier 1968. Gotlib donne naissance à de multiples personnages restés dans toutes les mémoires. Aux côtés de Newton, le lecteur retrouve l\'inénarrable Coccinelle et le savant-professeur Burp ou bien encore Tarzan et le Petit Chaperon Rouge, sans oublier les policiers Bougret et Charolles. Véritable banc d\'essai, ces Rubrique-à-brac imposent Marcel Gotlib comme l\'un des pionniers de la bande dessinée pour adultes. Il abandonne cette série en 1972. La réédition de ces quatre tomes correspond aux histoires des deux premiers tomes de l\'ancienne édition.');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`) VALUES
(1, 'contact@gaetan.io', 'Gaetan');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
