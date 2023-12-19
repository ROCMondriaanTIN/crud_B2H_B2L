-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 19 dec 2023 om 14:15
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fietsenmaker`
--
CREATE DATABASE IF NOT EXISTS `fietsenmaker` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fietsenmaker`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categorie`
--

INSERT INTO `categorie` (`id`, `naam`, `img`) VALUES
(1, 'Batavus', 'batavus.jpg'),
(2, 'Gazelle', 'gazelle.jpg'),
(3, 'Giant', 'giant.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fietsen`
--

DROP TABLE IF EXISTS `fietsen`;
CREATE TABLE `fietsen` (
  `id` int(11) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `prijs` decimal(7,2) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `voorraad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `fietsen`
--

INSERT INTO `fietsen` (`id`, `merk`, `type`, `prijs`, `categorie_id`, `voorraad`) VALUES
(9, 'Batavus', 'Flying D', 899.00, 1, 10),
(11, 'Gazelle', 'Chamonix', 1049.00, 2, 5),
(12, 'Gazelle', 'Eclipse', 799.00, 2, 7),
(13, 'Giant', 'Competition', 999.00, 3, 13),
(14, 'Giant', 'Expedition AT', 1299.00, 3, 12),
(19, 'Gazelle', 'Esprit', 2700.99, 2, 8),
(21, 'Gazelle', 'Turbo', 1500.00, 2, 16),
(22, 'Gazelle', 'Turbo', 1500.00, 2, 4),
(25, 'Gazelle', 'Esprit', 1700.00, 2, 1),
(27, 'Gazelle', 'X5', 1000.99, 1, 9),
(29, 'Gazelle', 'turbo', 799.99, 2, 5),
(30, 'Batavus', 'berini', 700.50, 2, 20);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `fietsen`
--
ALTER TABLE `fietsen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `fietsen`
--
ALTER TABLE `fietsen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `fietsen`
--
ALTER TABLE `fietsen`
  ADD CONSTRAINT `fietsen_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
