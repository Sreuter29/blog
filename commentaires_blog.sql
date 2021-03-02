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
-- Table structure for table `commentaires_blog`
--

CREATE TABLE `commentaires_blog` (
  `id` int(11) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `id_billet` int(11) NOT NULL,
  `date_commentaire` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentaires_blog`
--

INSERT INTO `commentaires_blog` (`id`, `auteur`, `commentaire`, `id_billet`, `date_commentaire`) VALUES
(1, 'Mathilde', 'Je suis devenue végane grâce au visionnage du discours de Gary Yourofsky et au documentaire Earthlings. Je les recommande!\r\nD\'autres films sont riches d\'informations sur la cause animale:\r\n- Food Inc\r\n- Cowspiracy\r\n- Live and let live\r\n- Blackfish\r\nEt bien d\'autres ;)', 1, '2020-11-21 19:27:08'),
(2, 'Mes astuces écolos! Par Julie', '- Arrêter l’eau quand on se lave les mains\r\n- Installer un mousseur sur les robinets\r\n- Acheter des fruits et légumes de saison\r\n- Utiliser des cotons lavables \r\n- Acheter une gourde en inox / verre ou plastique sans BPA\r\n- Laver le linge à basse température (30° ou 40° max)\r\n- Utiliser une brosse à dent compostable ou à tête changeable\r\n- Remplacer les gels douches et shampoings par des cosmétiques solides', 2, '2020-11-21 19:28:47'),
(3, 'Aide au recyclage - Pierre', 'Voici un petit guide pour le tri :)\r\n\r\nQue recycle-t-on ?\r\nTous les emballages en papier, carton, acier, aluminium et les briques alimentaires sont à déposer dans le bac de tri.\r\n\r\nQuels sont les bons gestes de tri ?\r\nVous avez parfois des doutes au moment de trier. Pas de panique ! Voici 3 Tri-flexes simples à appliquer !\r\n\r\n- Inutile de laver vos emballages, il suffit de bien les vider ! \r\n- Inutile d’enlever le bouchon sur la bouteille en plastique, il se recycle aussi.\r\n- Ne pas imbriquer les emballages entre eux et ne pas les enfermer dans des sacs en plastique --> Les emballages doivent être déposés en vrac dans les bacs afin de ne pas gêner la séparation entre les matériaux qui s’effectue dans les centres de tri.', 2, '2020-11-21 19:29:50'),
(4, 'SPA Nantes', 'La SPA de Loire Atlantique est un refuge indépendant qui fonctionne grâce à vos dons.\r\n\r\nChemin de Gralan, La Trémouille, 44470 Carquefou\r\n\r\nTéléphone : 02 40 93 76 61', 3, '2020-11-21 19:30:40'),
(5, 'SPA Metz', 'Refuge de Thionville\r\n\r\n1 chemin du Pré Royal 57100 Oeutrange - Thionville\r\n\r\n0382503145\r\n\r\nLe refuge est ouvert du lundi au dimanche de 14h à 17h30 sauf le vendredi de 14h à 16h30. Ouverture les jours fériés.\r\nFermeture du refuge le jeudi.\r\n\r\nPour toute adoption, merci de venir 30min avant la fermeture du refuge.', 3, '2020-11-21 19:31:17'),
(6, 'SPA Montpellier', 'Association pour la protection des animaux à Villeneuve-lès-Maguelone\r\n\r\nAdresse : RD185, Lieu Dit, Rue du Carré du Roi, 34750 Villeneuve-lès-Maguelone\r\n\r\nTéléphone : 04 67 27 73 78', 3, '2020-11-21 19:31:58'),
(7, 'Michel', 'Le diable de Tasmanie tire son nom du cri strident qu’il pousse pour intimider ses rivaux, qui effraya les premiers Européens qui l\'entendirent.\r\n\r\nIl a récemment été réintroduit en Australie.', 4, '2020-11-21 19:32:39'),
(8, 'Antoine', 'Un diable peut capturer jusqu’à un petit wallaby. En pratique, il est cependant opportuniste et se contente le plus souvent de charognes. \r\nBien que le wombat soit sa nourriture préférée, il mange d\'autres mammifères, y compris, moutons, oiseaux, poissons, insectes, grenouilles et reptiles. Son régime est largement varié et fonction de la nourriture disponible\r\n\r\nLe Wombat est un marsupial également très intéressant!', 4, '2020-11-21 19:33:32'),
(10, 'Sonia', 'Cela fait maintenant 7 ans que je suis devenue végane et c\'est la meilleure décision qu\'il m\'ait été de prendre ;)', 1, '2020-11-21 19:49:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentaires_blog`
--
ALTER TABLE `commentaires_blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentaires_blog`
--
ALTER TABLE `commentaires_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
