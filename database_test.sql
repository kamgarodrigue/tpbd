-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 24 juin 2023 à 00:42
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
('E6uann7MAcBOY8c9iasyb64WOe1MNFgu', 1687645897, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"id\":1,\"nom\":\"Eva love\",\"email\":\"eva@gmail.com\",\"photo\":\"upload\\\\admin\\\\1687444549473.jpg\",\"password\":\"$2b$10$i/87bI/s1OiPa02ogPfDduJHwNxARitbzGb18Ddwctxa4qvjvqpOO\",\"createdAt\":\"2023-06-22T14:35:50.000Z\",\"updatedAt\":\"2023-06-22T14:35:50.000Z\"}}'),
('JOJYkKAOWgJ3ObI6BG3h2OgDA7Isocmw', 1687605505, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"id\":1,\"nom\":\"Eva love\",\"email\":\"eva@gmail.com\",\"photo\":\"upload\\\\admin\\\\1687444549473.jpg\",\"password\":\"$2b$10$i/87bI/s1OiPa02ogPfDduJHwNxARitbzGb18Ddwctxa4qvjvqpOO\",\"createdAt\":\"2023-06-22T14:35:50.000Z\",\"updatedAt\":\"2023-06-22T14:35:50.000Z\"}}'),
('_E4sB82xNY_HzDxPJkJYkTqh4tdTx5Om', 1687607955, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"id\":1,\"nom\":\"Eva love\",\"email\":\"eva@gmail.com\",\"photo\":\"upload\\\\admin\\\\1687444549473.jpg\",\"password\":\"$2b$10$i/87bI/s1OiPa02ogPfDduJHwNxARitbzGb18Ddwctxa4qvjvqpOO\",\"createdAt\":\"2023-06-22T14:35:50.000Z\",\"updatedAt\":\"2023-06-22T14:35:50.000Z\"}}');

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
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Index pour la table `typevoitures`
--
ALTER TABLE `typevoitures`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour la table `typevoitures`
--
ALTER TABLE `typevoitures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `voitures`
--
ALTER TABLE `voitures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD CONSTRAINT `voitures_ibfk_101` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_106` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_111` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_116` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_121` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_126` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_13` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_131` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_136` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_141` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_146` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_151` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_156` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_161` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_166` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_174` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_179` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_18` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_184` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_189` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_194` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_199` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_204` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_209` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_214` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_219` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_224` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_23` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_232` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_237` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_242` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_247` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_252` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_257` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_262` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_267` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_272` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_277` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_28` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_282` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_287` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_292` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_297` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_302` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_307` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_312` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_317` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_322` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_323` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_324` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_325` FOREIGN KEY (`consomationId`) REFERENCES `consomations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_326` FOREIGN KEY (`marqueId`) REFERENCES `marques` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_327` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_33` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_38` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_43` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_48` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_5` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_53` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_58` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_63` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_68` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_73` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_78` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_83` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `voitures_ibfk_92` FOREIGN KEY (`typeVoitureId`) REFERENCES `typevoitures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
