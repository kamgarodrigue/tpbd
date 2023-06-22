-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 juin 2023 à 18:50
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `database_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `email`, `photo`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Eva love', 'eva@gmail.com', 'upload\\admin\\1687444549473.jpg', '$2b$10$i/87bI/s1OiPa02ogPfDduJHwNxARitbzGb18Ddwctxa4qvjvqpOO', '2023-06-22 14:35:50', '2023-06-22 14:35:50');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `createdAt`, `updatedAt`) VALUES
(1, 'A', '2023-06-22 14:36:45', '2023-06-22 14:36:45'),
(2, 'B', '2023-06-22 14:36:54', '2023-06-22 14:36:54'),
(3, 'C', '2023-06-22 14:37:00', '2023-06-22 14:37:00'),
(4, 'D', '2023-06-22 14:37:08', '2023-06-22 14:37:08');

-- --------------------------------------------------------

--
-- Structure de la table `consomations`
--

CREATE TABLE `consomations` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `consomations`
--

INSERT INTO `consomations` (`id`, `nom`, `createdAt`, `updatedAt`) VALUES
(1, 'Essence', '2023-06-22 14:37:45', '2023-06-22 14:37:45'),
(2, 'Gazoile', '2023-06-22 14:37:59', '2023-06-22 14:37:59');

-- --------------------------------------------------------

--
-- Structure de la table `marques`
--

CREATE TABLE `marques` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `marques`
--

INSERT INTO `marques` (`id`, `nom`, `createdAt`, `updatedAt`) VALUES
(1, 'Limozine', '2023-06-22 14:38:26', '2023-06-22 14:38:26'),
(2, 'Toyota', '2023-06-22 14:38:46', '2023-06-22 14:38:46'),
(3, 'Alpha Romeo', '2023-06-22 14:39:17', '2023-06-22 14:39:17'),
(4, 'Rav4', '2023-06-22 14:39:55', '2023-06-22 14:39:55'),
(5, 'Renault', '2023-06-22 14:40:22', '2023-06-22 14:40:22'),
(6, 'Suzuki', '2023-06-22 14:40:40', '2023-06-22 14:40:40');

-- --------------------------------------------------------

--
-- Structure de la table `payements`
--

CREATE TABLE `payements` (
  `payementId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `schools`
--

CREATE TABLE `schools` (
  `schoolid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('z-vEUT8vadTHVI-OqfcvxSDTh9cTmj9E', 1687538813, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"id\":1,\"nom\":\"Eva love\",\"email\":\"eva@gmail.com\",\"photo\":\"upload\\\\admin\\\\1687444549473.jpg\",\"password\":\"$2b$10$i/87bI/s1OiPa02ogPfDduJHwNxARitbzGb18Ddwctxa4qvjvqpOO\",\"createdAt\":\"2023-06-22T14:35:50.000Z\",\"updatedAt\":\"2023-06-22T14:35:50.000Z\"}}');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `studentid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `class` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `school_situation` varchar(255) NOT NULL,
  `class_situation` varchar(255) NOT NULL,
  `schoolId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `typevoitures`
--

CREATE TABLE `typevoitures` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typevoitures`
--

INSERT INTO `typevoitures` (`id`, `nom`, `createdAt`, `updatedAt`) VALUES
(1, 'Atomatique', '2023-06-22 14:41:05', '2023-06-22 14:41:05'),
(2, 'Manuelle', '2023-06-22 14:41:19', '2023-06-22 14:41:19');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `consomationId` int(11) DEFAULT NULL,
  `marqueId` int(11) DEFAULT NULL,
  `typeVoitureId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id`, `description`, `prix`, `nom`, `photo`, `createdAt`, `updatedAt`, `adminId`, `categoryId`, `consomationId`, `marqueId`, `typeVoitureId`) VALUES
(1, 'fjjjjbqsvgggggggqnkmsgvvvvvvgnqkmgnv', '4500', 'Tabita', 'upload\\admin\\1687447377377.jpeg', '2023-06-22 15:22:58', '2023-06-22 15:22:58', 1, 1, 1, 2, 2),
(2, 'fjjjjbqsvgggggggqnkmsgvvvvvvgnqkmgnv', '500', 'Madiba', 'upload\\admin\\1687447486369.webp', '2023-06-22 15:24:46', '2023-06-22 15:24:46', 1, 2, 2, 3, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `consomations`
--
ALTER TABLE `consomations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payements`
--
ALTER TABLE `payements`
  ADD PRIMARY KEY (`payementId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `studentId` (`studentId`);

--
-- Index pour la table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`schoolid`),
  ADD UNIQUE KEY `schools_name_unique` (`name`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentid`),
  ADD KEY `schoolId` (`schoolId`);

--
-- Index pour la table `typevoitures`
--
ALTER TABLE `typevoitures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voitures_nom_unique` (`nom`),
  ADD KEY `adminId` (`adminId`),
  ADD KEY `categoryId` (`categoryId`),
  ADD KEY `consomationId` (`consomationId`),
  ADD KEY `marqueId` (`marqueId`),
  ADD KEY `typeVoitureId` (`typeVoitureId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `consomations`
--
ALTER TABLE `consomations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `marques`
--
ALTER TABLE `marques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `payements`
--
ALTER TABLE `payements`
  MODIFY `payementId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `schools`
--
ALTER TABLE `schools`
  MODIFY `schoolid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `typevoitures`
--
ALTER TABLE `typevoitures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voitures`
--
ALTER TABLE `voitures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `payements`
--
ALTER TABLE `payements`
  ADD CONSTRAINT `payements_ibfk_7` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `payements_ibfk_8` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentid`);

--
-- Contraintes pour la table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`schoolid`);

--
-- Contraintes pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD CONSTRAINT `voitures_ibfk_10` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_11` FOREIGN KEY (`consomationId`) REFERENCES `consomations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_12` FOREIGN KEY (`marqueId`) REFERENCES `marques` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_13` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_5` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_9` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
