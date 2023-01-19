-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Sty 2023, 13:42
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
-- Struktura tabeli dla tabeli `comics`
--

CREATE TABLE `comics` (
  `ID` int(11) NOT NULL,
  `Title` varchar(128) NOT NULL,
  `Author` varchar(128) NOT NULL,
  `ReleaseYear` int(24) NOT NULL,
  `Publisher` varchar(128) NOT NULL,
  `ComicDescription` varchar(128) NOT NULL,
  `ImgName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `comics`
--

INSERT INTO `comics` (`ID`, `Title`, `Author`, `ReleaseYear`, `Publisher`, `ComicDescription`, `ImgName`) VALUES
(1, 'The Superior Spider-Man', 'Dan Slott ', 2015, 'Marvel Now', 'Seria składa się z następujących podtytułów: Ostatnie życzenie, Mój własny najgorszy wróg, Nie ma ucieczki, Zło konieczne, Super', 'thesuperiorspiderman'),
(2, 'Amazing Spider-Man', 'Dan Slott', 2017, 'Marvel Now', 'Seria składa się z następujących podtytułów: Szczęście Parkera, Preludium do Spiderversum, Spiderversum, Nocna zmiana. \r\nSeria z', 'nowamazingspiderman'),
(3, 'Spider-Man 2099', 'Peter David', 2018, 'Marvel Now', 'Seria składa się z następujących podtytułów: Spiderversum, Nie z tego czasu. \r\nSeria zawiera materiały opublikowane pierwotnie w', 'spiderman2099'),
(4, 'Hawkeye', 'Matt Fraction', 2017, 'Marvel Now', 'Seria składa się z następujących podtytułów: Moje życie to walka, Lekkie trafienia, L.A Woman, Rio Bravo. \r\nSeria zawiera materi', 'nowhawkeye'),
(5, 'Deadpool', 'Brian Posehn', 2016, 'Marvel Now', 'Seria składa się z następujących podtytułów: Martwi prezydenci, Łowca dusz, Dobry, zły i brzydki, Deadpool kontra SHIELD, Grzech', 'nowdeadpool'),
(6, 'Thunderbolts', 'Daniel Way, Charles Soule ', 2016, 'Marvel Now', 'Seria składa się z następujących podtytułów: Bez pardonu, Czerwony postrach, Nieskończoność, Bez litości, Punisher kontra Thunde', 'thunderbolts'),
(7, 'Moon Knight', 'Warren Ellis, Brian Wood, Cullen Bunn', 2018, 'Marvel Now', 'Seria składa się z następujących podtytułów: Z martwych, Z martwych powstaną, W noc. \r\nSeria zawiera materiały opublikowane pier', 'nowmoonknight'),
(8, 'Guardians of The Galaxy', 'Brian Michael Bendis', 2015, 'Marvel Now', 'Seria składa się z następujących podtytułów: Kosmiczni Avengers, Angela, Nieskończoność, Strażnicy w rozsypce, Grzech pierworodn', 'guardiansofthegalaxy'),
(9, 'Avengers', 'Johnatan Hickman', 2015, 'Marvel Now', 'Seria składa się z następujących podtytułów: Świat Avengers, Ostatnie białe zdzarzenie, Preludium do nieskończoności, Nieskończo', 'nowavengers'),
(10, 'New Avengers', 'Johnatan Hickman', 2015, 'Marvel Now', 'Seria składa się z następujących podtytułów: Wszystko umiera, Nieskończoność, Inne światy, Doskonały świat, miniseria Czas się k', 'newavengers'),
(11, 'Ms. Marvel ', 'G. Willow Wilson', 2017, 'Marvel Now', 'Seria składa się z następujących podtytułów: Niezwykła, Pokolenie czemu, Zdruzgotana, Dni ostatnie. \r\nSeria zawiera materiały op', 'nowmsmarvel'),
(12, 'Uncanny Avengers', 'Rick Remender', 2017, 'Marvel Now', 'Seria składa się z następujących podtytułów: Czerwony cień, Bliźnięta apokalipsy, Czas na ragnarok, Pomścić Ziemię, Preludium do', 'uncannyavengers'),
(13, 'All-New X-Men', 'Brian Michael Bendis', 2015, 'Marvel Now', 'Seria składa się z następujących podtytułów: Wczorajsi X-Men, Tu zostajemy, Zagubieni, Tak inni, Jeden z głowy, Przygoda w świec', 'allnewxmen'),
(14, 'Wolverine i X-Men', 'Jason Aaron ', 2015, 'Marvel Now', 'Seria składa się z następujących podtytułów: Cyrk przybył do miasta, Szkoła przetrwania, Saga Hellfire, Starzy kumple, nowi wrog', 'wolverineixmen'),
(15, 'Thor', 'Jason Aaron', 2016, 'Marvel Now', 'Seria składa się z następujących podtytułów: Bogobójca, Boża Bomba, Przeklęty, Ostatnie dni Midgardu . \r\nSeria zawiera materiały', 'thor1'),
(16, 'Thor ', 'Jason Aaron', 2018, 'Marvel Now', 'Seria składa się z następujących podtytułów: Gromowładna, Kto dzierży młot?. \r\nSeria zawiera materiały opublikowane pierwotnie w', 'thor2'),
(17, 'Ant-Man', 'Nick Spencer', 2018, 'Marvel Now', 'Seria składa się z następujących podtytułów: Druga szansa. \r\nSeria zawiera materiały opublikowane pierwotnie w Ant-Man #1-5.', 'antman'),
(18, 'Avengers: Wojna bez końca', 'Warren Ellis', 2015, 'Marvel Now', 'Seria zawiera materiały opublikowane pierwotnie w Avengers: Endless Wartime.', 'avengerswojnabezkonca'),
(19, 'Thanos Powstaje', 'Jason Aaron', 2016, 'Marvel Now', 'Seria zawiera materiały opublikowane pierwotnie w Thanos Rising #1-5', 'thanospowstaje'),
(20, 'Nieskończoność', 'Jason Aaron', 2016, 'Marvel Now', 'Seria zawiera materiały opublikowane pierwotnie w Infinity #1-6.', 'nieskonczonosc'),
(21, 'X-Men: Bitwa Atomu', 'Brian Michael Bendis, Jason Aaron, Brian Wood', 2016, 'Marvel Now', 'Seria zawiera materiały opublikowane pierwotnie w All-New X-men #16-17, Uncanny X-Men #12-13, Wolverine i X-Men #36-37, X-Men #5', 'xmenbitwaatomu'),
(22, 'Era Ultrona', 'Brian Michael Bendis', 2016, 'Marvel Now', 'Seria zawiera materiały opublikowane pierwotnie w Avengers #12.1 i Age of Ultron #1-10.', 'eraultrona'),
(23, 'Grzech Pierworodny', 'Jason Aaron, Mark Waid, Kieron Gillen, ', 2017, 'Marvel Now', 'Seria składa się z następujących podtytułów: Grzech Pierworodny, Thor i Loki - Dziesiąty Świat, Hulk kontra Iron Man. \r\nSeria za', 'grzechpierworodny'),
(24, 'Avengers i X-Men: AXIS', 'Rick Remender', 2018, 'Marvel Now', 'Seria zawiera materiały opublikowane pierwotnie w Avengers & X-Men #1-9.', 'avengersixmenaxis'),
(25, 'Tajne Wojny ', 'Johnatan Hickman, Cullen Bunn, Charles Soule, Kieron Gillen, Dan Slott, Jason Aaron, ', 2018, 'Marvel Now', 'Seria składa się z następujących podtytułów: Tajne Wojny, Wojna domowa, Tajne wojny Deadpoola, Thorowie, Oblężenie, Odnowić Ślub', 'tajnewojny'),
(26, 'Śmierć Wolverine', 'Paul Cornell, Charles Soule', 2017, 'Marvel Now', 'Seria składa się z następujących podtytułów: Trzy miesiące do śmierci. Tom 1 Trzy miesiące do śmierci. Tom 2, Śmierć Wolverine\'a', 'smiercwolverina'),
(32, 'Amazing Spiderman: Globalna Sieć', 'Dan Slott', 2020, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Wrogie przejęcie, Mroczne Królestwo, Demonstracja siły, Starzy znajomi, Spisek klon', 'amazingspidermanglobalnasiec'),
(33, 'Deadpool', 'Gerry Duggan', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Nuworysz z nawijką, Koniec błędu, Deadpool kontra Sabretooth, Śmieciowa opowieść, I', 'now20deadpool'),
(34, 'Hawkeye Kate Bishop', 'Kelly Thompson', 2021, 'Marvel Now 2.0', ' Seria zawiera materiały opublikowane pierwotnie w Hawkeye (2016) #1-16.', 'hawkeyekatebishop'),
(35, 'Moon Knight', 'Jeff Lemire', 2020, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Moon Knight (2016) #1-14 i Moon Knight (1980) #2.', 'now20moonknight'),
(36, 'Vision', 'Tom King', 2019, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Vision (2015) #1-12.', 'vision'),
(37, 'Tajne Imperium', 'Nick Spencer', 2020, 'Marvel Now 2.0', ' Seria zawiera materiały opublikowane pierwotnie w Secret Empire #0-10 i Omega, Capitan America #25.', 'tajneimperium'),
(38, 'Thanos', 'Donny Cates, Jeff Lemire', 2020, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Thanos (2016) #1-18 i Annual #1.', 'thanos'),
(39, 'Kapitan Ameryka: Steve Rodgers', 'Nick Spencer, Donny Cates', 2020, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Capitan America: Steve Rodgers #1-19 Capitan America: Sam Wilson #22-24.', 'kapitanamerykasteverodgers'),
(40, 'Avengers', 'Mark Waid, Al Ewing, Nick Spencer', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Siedmiu wspaniałych, Rodzinny interes,II wojna domowa, I wojna Kanga, Tajne Wojny, ', 'now20avengers'),
(41, 'Strażnicy galaktyki', 'Gerry Dugan', 2020, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Brak porozumienia, Jeźdźcy na niebie, Poszukiwanie nieskończoności \r\nSeria zawiera ', 'now20straznicygalaktyki'),
(42, 'Hawkeye', 'Jeff Lemire', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Troje, Odmieniony. \r\nSeria zawiera materiały opublikowane pierwotnie w All-New Hawk', 'now20hawkeye'),
(43, 'Doktor Strange', 'Donny Cates, John Barber, Jason Aaron', 2019, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Doctor Strange(2015) #1-26, Doctor Strange#381-390, Doctor Strange: Damnation ', 'now20doktorstrange'),
(44, 'Ms Marvel', 'Gwendolyn Willow Wilson', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Supersławna, II wojna domowa, Dobrażenia na sekundę, Mekka, Teenage wasteland, Raz ', 'now20msmarvel'),
(45, 'Mockingbird', 'Chelsea Cain', 2019, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Mockingbird #1-8.', 'mockinbird'),
(46, 'Czarna Wdowa', 'Mark Waid', 2020, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Black Widow(2016) #1-12.', 'czarnawdowa'),
(47, 'II Wojna Domowa', 'Brian Michael Bendis, Cullen Bunn, Christos Cage', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: II Wojna Domowa, II Wojna Domowa X-Men, II Wojna Domowa Amazing Spider-Man. \r\nSeria', 'iiwojnadomowa'),
(48, 'All-New Wolverine.', 'Tom Taylor', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Cztery Siostry, II Wojna Domowa, Wróg Publiczny II, Odporna, Sieroty X, Staruszka L', 'allnewwolverine'),
(49, 'Staruszek Logan', 'Jeff Lemire', 2018, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Strefy Wojny, Berserk, Na Granicy, Ostatni Ronin, Dawne strachy, Życia minione. \r\nS', 'staruszeklogan'),
(50, 'Phoenix: Zmartwychwstanie. Powrót Jean Grey', 'Matthew Rosberg', 2020, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Phoenix Resurrection: The Return of Jean Grey #1-5.', 'phoenix'),
(51, 'Niezwyciężony Iron Man', 'Brian Michael Bendis', 2019, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Invincible Iron Man (vol. 3) #1-14.', 'niezwyciezonyironman'),
(52, 'Extraordinary X-Men', 'Jeff Lemire', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Przystań X, Wojna Apocalypse\'a, Upadek Królestw, Inhumans kontra X-Men. \r\nSeria zaw', 'extraordinaryxmen'),
(53, 'Inhumans kontra X-Men', 'Charles Soule', 2019, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w Inhumans Vs. X-Men #0-6.', 'inhumansvsxmen'),
(54, 'Astonishing X-Men', 'Matthew Rosenberg', 2020, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Życie X, Człowiek zwany X, Dopóki starczy tchu. \r\nSeria zawiera materiały opublikow', 'astonishingxmen'),
(55, 'Potężna Thor', 'Jason Aaron', 2019, 'Marvel Now 2.0', 'Seria składa się z następujących podtytułów: Grzmiąca Krew, Władcy Midgardu, Wojna Asgardu z Shi’ar, Thor Wojny, Śmierć Potężnej', 'poteznathor'),
(56, 'Niegodny Thor', 'Jason Aaron', 2020, 'Marvel Now 2.0', 'Seria zawiera materiały opublikowane pierwotnie w The Unworthy Thor #1-5.', 'niegodnythor'),
(63, 'Nieśmiertelny Hulk ', 'Al Ewing', 2021, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w Immortal Hulk (2018) #1-20.', 'niesmiertelnyhulk'),
(64, 'Doktor Strange', 'Mark Waid', 2021, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w Doctor Strange (2018) #1-20 i Doctor Strange Annual (2019) #1.', 'freshdoktorstrange'),
(65, 'X-Men', 'Ed Brisson, Tom Taylor, Matthew Rosenberg, Jonathan Hickman', 2021, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: X-terminacja, Czerwoni, Upadek X-Men, Cyclops i Wolverine, Ród X. \r\nSeria zawiera m', 'xmen'),
(66, 'Deadpool', 'Skottie Young', 2021, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: Njaemnika śmierć nie tyka, Dobranoc, Weasel idzie od piekła. \r\nSeria zawiera materi', 'freshdeadpool'),
(67, 'Avengers ', 'Jason Aaron', 2021, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: Ostatnia fala, Dookoła świata, Wojna wampirów, Wojna światów. \r\nSeria zawiera mater', 'freshavengers'),
(68, 'Amazing Spider-Man', 'Nick Spencer', 2021, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: Powrót do korzeni, Przyjaciele i wrogowie, Życiowe osiągnięcie, Ścigany, Za kulisam', 'freshamazingspiderman'),
(69, 'Venom ', 'Donny Cates, Cullen Bunn', 2021, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w Venom (2018) #1-20, Absolute Carnage #1-5, Absolute Carnage: Immortal Hulk #1.', 'venom'),
(70, 'Wojny Nieskończoności', 'Gerry Duggan', 2021, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: Wojny Nieskończoności: Odliczanie, Wojny Nieskończoności. \r\nSeria zawiera materiały', 'wojnynieskonczonosci'),
(71, 'Spidergedon', 'Christos Cage', 2021, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w Edge of Spider-Geddon #1-4, Superior Octopus #1, Spider-Geddon #0-5, Vault of ', 'spidergedon'),
(72, 'Silver Surfer: Czarny', 'Donny Cates', 2022, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w Silver Surfer: Black #1-5.', 'silversurferczarny'),
(73, 'Tony Stark: Iron Man', 'Dan Slott, Christos Cage', 2022, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w Tony Stark: Iron Man #1-19.', 'tonystarkironman'),
(74, 'Strażnicy Galaktyki', 'Donny Cates', 2021, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: Ostatnie wyzwanie, Bez wiary. \r\nSeria zawiera materiały opublikowane pierwotnie w G', 'freshstraznicygalaktyki'),
(75, 'Wojna Światów', 'Jason Aaron', 2022, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w War of the Realms #1-6.', 'wojnaswiatow'),
(76, 'Powrót Wolverine’a', 'Charles Soule', 2021, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w Return of Wolverine #1-5.', 'powrotwolverina'),
(77, 'Savage Avengers', 'Gerry Duggan ', 2022, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: Ostatnie wyzwanie, Bez wiary. \r\nSeria zawiera materiały opublikowane pierwotnie w S', 'savageavengers'),
(78, 'Thor', 'Jason Aaron', 2021, 'Marvel Fresh', 'Seria składa się z następujących podtytułów: Thor odrodzony, Preludium wojny światów, Kres wojny. \r\nSeria zawiera materiały opub', 'freshthor'),
(79, 'Król Thor', 'Jason Aaron', 2022, 'Marvel Fresh', 'Seria zawiera materiały opublikowane pierwotnie w  King Thor #1-4 .', 'krolthor');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `comics`
--
ALTER TABLE `comics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
