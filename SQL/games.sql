-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Sty 2023, 13:11
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sketchmotionweb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games`
--

CREATE TABLE `games` (
  `ID` int(11) NOT NULL,
  `GameType` varchar(24) NOT NULL,
  `Categories` varchar(128) NOT NULL,
  `Title` varchar(128) NOT NULL,
  `ReleaseYear` int(24) NOT NULL,
  `Producer` varchar(128) NOT NULL,
  `Publisher` varchar(128) NOT NULL,
  `Platforms` varchar(128) NOT NULL,
  `ImgName` varchar(128) NOT NULL,
  `pegi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `games`
--

INSERT INTO `games` (`ID`, `GameType`, `Categories`, `Title`, `ReleaseYear`, `Producer`, `Publisher`, `Platforms`, `ImgName`, `pegi`) VALUES
(1, 'computer', 'third-person, shooter, TPS', 'Shadow of the Tomb Raider', 2018, 'Eidos Montreal / Nixxes Software', 'Square Enix', 'PC, PS4, PS5, XONE, XSX', 'shadowofthetombraider', 18),
(2, 'computer', 'third-person, shooter, TPS', 'Red Dead Redemption 2', 2018, 'Rockstar Games', 'Rockstar Games', 'PC, PS4, XONE', 'reddeadredemption2', 18),
(3, 'computer', 'third-person, shooter, TPS', 'Uncharted 4', 2016, 'Naughty Dog', 'Sony Interactive Entertainment', 'PC, PS4', 'uncharted4', 16),
(4, 'computer', 'third-person, shooter, TPS', 'The Last of Us Remastered', 2014, 'Naughty Dog', 'Sony Interactive Entertainment', 'PS3, PS4', 'thelastofusremastered', 18),
(5, 'computer', 'third-person, shooter, TPS', 'The Last of Us 2', 2020, 'Naughty Dog', 'Sony Interactive Entertainment', 'PS4', 'thelastofus2', 18),
(6, 'computer', 'first-person, shooter, FPS', 'Battlefield V', 2018, 'EA DICE / Digital Illusions CE', 'Electronic Arts Inc.', 'PC, PS4, XONE', 'battlefieldv', 18),
(7, 'computer', 'first-person, shooter, FPS', 'Battlefield 2042', 2021, 'EA DICE / Digital Illusions CE', 'Electronic Arts Inc.', 'PC, PS4, PS5, XONE, XSX', 'battlefield2042', 18),
(8, 'computer', 'first-person, shooter, FPS', 'Battlefield 1', 2016, 'EA DICE / Digital Illusions CE', 'Electronic Arts Inc.', 'PC, PS4, XONE', 'battlefield1', 18),
(9, 'computer', 'first-person, shooter, FPS', 'Call of Duty: Modern Warfare II', 2022, 'Infinity Ward / Beenox Inc.', 'Activision Blizzard', 'PC, PS4, PS5, XONE, XSX', 'callofdutymodernwarfareii', 18),
(10, 'computer', 'first-person, shooter, FPS', 'Call of Duty: Vanguard', 2021, 'Sledgehammer Games', 'Activision Blizzard', 'PC, PS4, PS5, XONE, XSX', 'callofdutyvanguard', 18),
(11, 'computer', 'role-play, RPG', 'Wiedźmin 3: Dziki Gon', 2015, 'CD Projekt RED', 'CD Projekt RED', 'PC, PS4, PS5, XONE, XSX, Switch', 'wiedzmin3dzikigon', 18),
(12, 'computer', 'role-play, RPG', 'Wiedźmin 2: Zabójcy Królów', 2011, 'CD Projekt RED', 'Bandai Namco Entertainment', 'PC, X360', 'wiedzmin2zabojcykrolow', 18),
(13, 'computer', 'role-play, RPG', 'Assassin\'s Creed: Odyssey', 2018, 'Ubisoft', 'Ubisoft', 'PC, PS4, XONE, Switch', 'assassinscreedodyssey', 18),
(14, 'computer', 'role-play, RPG', 'Assassin’s Creed Valhalla', 2020, 'Ubisoft', 'Ubisoft', 'PC, PS4, PS5, XONE, XSX', 'assassinscreedvalhalla', 18),
(15, 'computer', 'role-play, RPG', 'Cyberpunk 2077', 2020, 'CD Projekt RED', 'CD Projekt RED', 'PC, PS4, PS5, XONE, XSX', 'cyberpunk2077', 18),
(16, 'computer', 'strategia', 'Frostpunk', 2018, '11 bit studios', '11 bit studios', 'PC, PS4, XONE', 'frostpunk', 16),
(17, 'computer', 'strategia', 'Total War: Warhammer III', 2022, 'Creative Assembly', 'SEGA', 'PC', 'totalwarwarhammeriii', 16),
(18, 'computer', 'strategia', 'Stellaris', 2016, 'Paradox Development Studio', 'Paradox Interactive', 'PC, PS4, XONE', 'stellaris', 7),
(19, 'computer', 'strategia', 'Hearts of Iron IV', 2016, 'Paradox Development Studio', 'Paradox Interactive', 'PC', 'heartsofironiv', 7),
(20, 'computer', 'strategia', 'Age of Empires IV', 2021, 'Relic Entertainment / World\'s Edge', 'Xbox Game Studios / Microsoft Studios', 'PC, XSX', 'ageofempiresiv', 12),
(21, 'computer', 'sportowe', 'Fifa 23', 2022, 'EA Sports', 'Electronic Arts Inc.', 'PC, PS4, PS5, XONE, XSX, Switch', 'fifa23', 3),
(22, 'computer', 'sportowe', 'NBA 2k23', 2022, 'Visual Concepts', '2K Sports', 'PC, PS4, PS5, XONE, XSX, Switch', 'nba2k23', 3),
(23, 'computer', 'sportowe', 'Madden NFL 23', 2022, 'EA Tiburon', 'Electronic Arts Inc.', 'PC, PS4, PS5, XONE, XSX', 'maddennfl23', 3),
(24, 'computer', 'akcja', 'Days Gone', 2019, 'Bend Studio', 'Sony Interactive Entertainment', 'PC, PS4', 'daysgone', 18),
(25, 'computer', 'akcja', 'God of War', 2018, 'Sony Interactive Entertainment / Jetpack Interactive', 'Sony Interactive Entertainment', 'PC, PS4', 'godofwar', 18),
(27, 'board', 'strategia', 'Scythe', 2016, 'Jamey Stegmaier, Jakub Rozalski', 'Stonemaier Games', 'none', 'scythe', 14),
(28, 'board', 'strategia', 'Terraformacja Marsa', 2016, 'Jacob Fryxelius, Isaac Fryxelius', 'FryxGames', 'none', 'terraformacjamarsa', 12),
(29, 'board', 'strategia', 'Brass Lancashire', 2007, 'Martin Wallace, Gavan Brown, Lina Cossette, Peter Dennis, David Forest', 'Roxley, Warfrog Games', 'none', 'brasslancashire', 14),
(30, 'board', 'strategia', 'Brass Birmingham', 2018, 'Gavan Brown, Matt Tolman, Martin Wallace', 'Roxley', 'none', 'brassbirmingham', 14),
(31, 'board', 'strategia', 'Gloomhaven', 2017, 'Isaac Childres, Alexandr Elichev, Josh T. McDowell, Alvaro Nebot', 'Cephalofair Games', 'none', 'gloomhaven', 14),
(32, 'board', 'Civil War, Miniatures, Science Fiction, Space Exploration, Wargame ', 'Star Wars Rebellion', 2016, 'Corey Konieczka, Matt Allsopp, David Ardila, Balaskas, Tiziano Baracchi', ' Fantasy Flight Games', 'none', 'starwarsrebellion', 14),
(33, 'board', 'Civilization, Economic, Miniatures, Science Fiction, Space Exploration, Territory Building ', 'Gaia Project', 2017, 'Jens Drögemüller, Helge Ostertag, Dennis Lohausen', 'Feuerland Spiele', 'none', 'gajaproject', 12),
(34, 'board', 'Animals, Fantasy, Wargame ', 'Root', 2018, 'Cole Wehrle, Kyle Ferrin', 'Leder Games', 'none', 'root', 10),
(35, 'board', 'Animals, Card Game, City Building, Fantasy ', 'Everdell', 2018, 'James A. Wilson, Andrew Bosley, Cody Jones, Dann May', 'Starling Games', 'none', 'everdell', 13),
(36, 'board', 'Fantasy, Fighting, Miniatures, Mythology ', 'Blood Rage', 2015, 'Eric M. Lang, Henning Ludvigsen, Thierry Masson, Mike McVey, Adrian Smith', ' Cool Mini Or Not', 'none', 'bloodrage', 14),
(37, 'board', 'American West, Animals, Economic ', 'Great Western Trail', 2016, 'Alexander Pfister, Andreas Resch', ' eggertspiele', 'none', 'greatwesterntrail', 12),
(38, 'board', 'Novel-based, Political, Science Fiction ', 'Dune: Imperium', 2020, 'Paul Dennen, Clay Brooks, Raul Ramos, Nate Storm', ' Dire Wolf', 'none', 'duneimperium', 14),
(39, 'board', 'Economic, Negotiation ', 'Catan', 1995, 'Klaus Teuber, Volkan Baga, Tanja Donner, Pete Fenlon, Jason Hawkins', 'KOSMOS', 'none', 'catan', 10),
(40, 'board', 'Fantasy, Fighting, Horror, Miniatures, Novel-based ', 'Cthulhu: Death May Die', 2019, 'Rob Daviau, Eric M. Lang,  Nicolas Fructus, Karl Kopinski, Thierry Masson', 'CMON Global Limited', 'none', 'cthulhudeathmaydie', 14),
(41, 'board', '', 'This War of Mine', 2017, 'Michał Oracz, Jakub Wiśniewski, Piotr Gacek, Maszrum, Paweł Niziołek, Michał Oracz', 'Awaken Realms', 'none', 'thiswarofmine', 18),
(42, 'board', 'Civilization, Negotiation, Political, Science Fiction, Space Exploration, Wargame ', 'Twilight Imperium', 1997, 'Christian T. Petersen, Bill Heagy', 'Fantasy Flight Games', 'none', 'twilightimperium', 12);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `games`
--
ALTER TABLE `games`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
