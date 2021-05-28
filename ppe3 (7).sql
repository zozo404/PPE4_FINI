-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : ven. 28 mai 2021 à 11:03
-- Version du serveur :  8.0.24
-- Version de PHP : 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ppe3`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `idCategorie` int NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`idCategorie`, `nom`, `description`, `image`) VALUES
(1, 'Taille 3', 'Taille 3-Un ballon pour les enfants et ceux qui rentrent dans l\'adolescence. ', ''),
(2, 'Taille 5', 'Taille 5-Un ballon pour les adultes, les amateurs et les pros du foot.', '');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `idClient` int NOT NULL,
  `nomClient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenomClient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailClient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephoneClient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_user`
--

CREATE TABLE `client_user` (
  `id` int NOT NULL,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client_user`
--

INSERT INTO `client_user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `telephone`) VALUES
(1, 'test@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$bli59Hy3/Wq1rbHgKB20ig$blUevNuN7HM4gn3Ytla6FxfFnTJH1L/75NCpm8LO0XU', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `comporter`
--

CREATE TABLE `comporter` (
  `idProduit` int NOT NULL,
  `idVente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comptes_agents`
--

CREATE TABLE `comptes_agents` (
  `idAgent` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idProfil` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `idProduit` int NOT NULL,
  `prix` decimal(15,2) NOT NULL,
  `nomProduit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantite` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evaluations` double NOT NULL,
  `idCategorie` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`idProduit`, `prix`, `nomProduit`, `quantite`, `description`, `image`, `evaluations`, `idCategorie`) VALUES
(1, '20.99', 'Ligue des Champions 2019/2020', 25, 'Ballon original de la Ligue des Champions de la saison 2019-2020. 1 bars.', 'Ballon1.png', 4, 2),
(2, '45.99', 'Équipe de France', 15, 'Ce ballon, a été réalisé pour la victoire de la coupe du monde en 2018 par l\'équipe de France.\r\nCe ballon est signé par les français tels que K.Mbappé, H.Lloris. 1 bars.', 'Ballon2.png', 5, 2),
(3, '59.90', 'Nike Classique', 13, 'Ballon pur Nike.\r\nFinition exceptionnelle pour un rapport qualité-prix inégalé sur un produit. 0,8 bars.', 'Ballon3.png', 4.5, 1),
(4, '49.90', 'Équipe d\'Espagne', 13, 'Ballon aux couleurs fidèles à son pays.\r\nLe jaune est composé de feuille d\'or. 0,8 bars.', 'Ballon4.png', 4.7, 1),
(5, '79.99', 'Nike-PSG', 5, 'Ballon officiel de la collaboration entre Nike et le PSG (édition ultra-collector). 1 bars.', 'Ballon5.png', 5, 2),
(6, '149.99', 'Nike FCBarcelone', 5, 'Ballon du FCBarcelone à l\'époque de la MSN.\r\nIl est signé par les légendes du FC Barcelone comme Lionel Messi, Andrés Iniesta ou encore Neymar Jr. 1 bars.', 'Ballon6.png', 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `profils`
--

CREATE TABLE `profils` (
  `idProfil` int NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ventes`
--

CREATE TABLE `ventes` (
  `idVente` int NOT NULL,
  `dateVente` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chiffreAffaire` double NOT NULL,
  `idClient` int DEFAULT NULL,
  `idAgent` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategorie`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `client_user`
--
ALTER TABLE `client_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5C0F152BE7927C74` (`email`);

--
-- Index pour la table `comporter`
--
ALTER TABLE `comporter`
  ADD PRIMARY KEY (`idProduit`,`idVente`),
  ADD KEY `IDX_4442FCC9391C87D5` (`idProduit`),
  ADD KEY `IDX_4442FCC99F4E6951` (`idVente`);

--
-- Index pour la table `comptes_agents`
--
ALTER TABLE `comptes_agents`
  ADD PRIMARY KEY (`idAgent`),
  ADD KEY `idProfil` (`idProfil`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`idProduit`),
  ADD KEY `idCategorie` (`idCategorie`);

--
-- Index pour la table `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`idProfil`);

--
-- Index pour la table `ventes`
--
ALTER TABLE `ventes`
  ADD PRIMARY KEY (`idVente`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idAgent` (`idAgent`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `idClient` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client_user`
--
ALTER TABLE `client_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `comptes_agents`
--
ALTER TABLE `comptes_agents`
  MODIFY `idAgent` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `idProduit` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `profils`
--
ALTER TABLE `profils`
  MODIFY `idProfil` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ventes`
--
ALTER TABLE `ventes`
  MODIFY `idVente` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comporter`
--
ALTER TABLE `comporter`
  ADD CONSTRAINT `FK_4442FCC9391C87D5` FOREIGN KEY (`idProduit`) REFERENCES `produits` (`idProduit`),
  ADD CONSTRAINT `FK_4442FCC99F4E6951` FOREIGN KEY (`idVente`) REFERENCES `ventes` (`idVente`);

--
-- Contraintes pour la table `comptes_agents`
--
ALTER TABLE `comptes_agents`
  ADD CONSTRAINT `FK_7A1B07A285C71A0D` FOREIGN KEY (`idProfil`) REFERENCES `profils` (`idProfil`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_BE2DDF8CB597FD62` FOREIGN KEY (`idCategorie`) REFERENCES `categories` (`idCategorie`);

--
-- Contraintes pour la table `ventes`
--
ALTER TABLE `ventes`
  ADD CONSTRAINT `FK_64EC489A314FDF80` FOREIGN KEY (`idAgent`) REFERENCES `comptes_agents` (`idAgent`),
  ADD CONSTRAINT `FK_64EC489AA455ACCF` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
