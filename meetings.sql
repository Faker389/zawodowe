-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 17, 2024 at 09:19 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppzaw`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `day` enum('Poniedzialek','Wtorek','Sroda','Czwartek','Piatek','Sobota') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `hour` varchar(20) NOT NULL,
  `importance` int(11) DEFAULT NULL CHECK (`importance` between 1 and 4),
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `day`, `hour`, `importance`, `title`) VALUES
(1, 'Poniedzialek', '08:00-09:00', 1, 'Morning meeting'),
(2, 'Wtorek', '10:00-11:00', 3, 'Team discussion'),
(3, 'Sroda', '12:00-13:00', 2, 'Project planning'),
(4, 'Czwartek', '14:00-15:00', 4, 'Client call'),
(5, 'Piatek', '16:00-17:00', 1, 'Code review'),
(6, 'Sobota', '18:00-19:00', 3, 'Weekend catch-up'),
(7, 'Poniedzialek', '08:00-09:00', 1, 'Morning meeting'),
(8, 'Poniedzialek', '09:30-10:30', 2, 'Scrum standup'),
(9, 'Poniedzialek', '11:00-12:00', 3, 'Client presentation'),
(10, 'Poniedzialek', '14:00-15:00', 4, 'Project discussion'),
(11, 'Poniedzialek', '16:00-17:00', 2, 'Weekly report submission'),
(12, 'Wtorek', '08:00-09:00', 1, 'Daily sync'),
(13, 'Wtorek', '09:30-10:30', 4, 'Team brainstorming'),
(14, 'Wtorek', '12:00-13:00', 3, 'Design review'),
(15, 'Wtorek', '14:30-15:30', 2, 'Development workshop'),
(16, 'Wtorek', '16:00-17:00', 1, 'Client catch-up'),
(17, 'Sroda', '08:00-09:00', 1, 'Sprint review'),
(18, 'Sroda', '09:30-10:30', 2, 'Marketing meeting'),
(19, 'Sroda', '11:00-12:00', 4, 'Planning next sprint'),
(20, 'Sroda', '13:00-14:00', 3, 'Bug fixes'),
(21, 'Sroda', '15:00-16:00', 1, '1:1 with team member'),
(22, 'Czwartek', '08:00-09:00', 1, 'Product launch'),
(23, 'Czwartek', '09:30-10:30', 3, 'Client onboarding'),
(24, 'Czwartek', '11:00-12:00', 4, 'Testing phase review'),
(25, 'Czwartek', '14:00-15:00', 2, 'Tech support meeting'),
(26, 'Czwartek', '16:00-17:00', 3, 'Final bug fixes'),
(27, 'Piatek', '08:00-09:00', 2, 'Wrap-up meeting'),
(28, 'Piatek', '10:00-11:00', 4, 'Team retrospective'),
(29, 'Piatek', '12:00-13:00', 1, 'End-of-week report'),
(30, 'Piatek', '15:00-16:00', 2, 'Casual check-in'),
(31, 'Piatek', '17:00-18:00', 3, 'Week review and planning'),
(32, 'Sobota', '10:00-11:00', 1, 'Weekend check-up'),
(33, 'Sobota', '11:00-12:00', 4, 'Personal project work'),
(34, 'Sobota', '14:00-15:00', 2, 'Skill-building session'),
(35, 'Sobota', '16:00-17:00', 3, 'Planning for next week'),
(36, 'Sobota', '18:00-19:00', 1, 'Relaxation time');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
