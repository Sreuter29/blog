-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 08:00 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minichat`
--

-- --------------------------------------------------------

--
-- Table structure for table `billets_blog`
--

CREATE TABLE `billets_blog` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billets_blog`
--

INSERT INTO `billets_blog` (`id`, `titre`, `contenu`, `date_creation`) VALUES
(1, 'Le Véganisme', 'Le véganisme est un mode de vie qui consiste à ne consommer aucun produit d\'origine animale. Au-delà de l\'adoption d\'une pratique alimentaire végétalienne (qui exclut les produits alimentaires d\'origine animale comme la viande, le poisson, les insectes, les produits laitiers, les œufs et le miel), le véganisme exclut également la consommation de tout autre produit issu des animaux, de leur exploitation ou testé sur eux (cuir, fourrure, laine, soie, cire d\'abeille, cosmétiques et médicaments testés sur des animaux ou contenant des substances animales).\r\n\r\nCe mode de vie peut être adopté pour des motivations éthiques, environnementales, sanitaires, et plus rarement religieuses. Le plus souvent, il a pour motivation principale des convictions éthiques relatives à la manière dont les humains traitent et devraient traiter les animaux.', '2020-11-21 18:03:32'),
(2, 'L\'écologie et la protection de l\'environnement', 'La protection de l\'environnement consiste à prendre des mesures pour limiter ou supprimer l\'impact négatif des activités de l\'homme sur son environnement.\r\n\r\nAu-delà de la simple conservation de la nature, il s\'agit de comprendre le fonctionnement planétaire de l\'environnement ; d\'identifier les actions humaines qui l\'endommagent au point de porter préjudice aux générations actuelles ou futures ; et de mettre en place les actions de correction. ', '2020-11-21 17:58:58'),
(3, 'La SPA', 'La Société protectrice des animaux (SPA) est, historiquement en France, la première des sociétés de protection des animaux, qui œuvre dans le domaine de la protection animale.\r\n\r\nLa société agit pour assurer la protection et la défense des animaux. Elle gère des refuges, des fourrières, ainsi que des dispensaires de soins aux animaux, à Paris et dans de nombreuses villes de France. Elle intervient aussi contre les mauvais traitements aux animaux à l\'aide d\'un réseau de délégués-enquêteurs bénévoles et d\'inspecteurs qui travaillent en lien avec la direction de l\'association, afin de poursuivre en justice les personnes suspectées de mauvais traitement envers les animaux.', '2020-11-21 18:01:06'),
(4, 'Le Diable de Tasmanie', 'Le diable de Tasmanie est une espèce de marsupiaux carnivores ne vivant que sur l’île de Tasmanie, au sud de l\'Australie. \r\nDisparu du « continent » australien environ 400 ans avant l’arrivée des premiers colons européens en 1788, il a longtemps été considéré comme une menace pour le bétail et a été chassé impitoyablement jusqu’à ce qu’il devienne une espèce protégée à partir de 1941. Depuis les années 1990, un grand nombre de représentants de l’espèce sont victimes d’une tumeur faciale transmissible par morsure, qui réduit fortement sa population.\r\n\r\nLe diable de Tasmanie est caractérisé par sa fourrure noire, l’odeur forte qu’il dégage lorsqu’il est anxieux, son hurlement fort et inquiétant et son tempérament agressif envers ses congénères quand il mange.', '2020-11-21 18:02:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billets_blog`
--
ALTER TABLE `billets_blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billets_blog`
--
ALTER TABLE `billets_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
