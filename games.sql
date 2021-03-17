-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 16 mrt 2021 om 15:07
-- Serverversie: 5.7.33-0ubuntu0.18.04.1-log
-- PHP-versie: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AntiVPN`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `naam` text NOT NULL,
  `uitgave` int(11) NOT NULL,
  `genre` text NOT NULL,
  `uitegever` text NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`id`, `naam`, `uitgave`, `genre`, `uitegever`, `rating`) VALUES
(1, 'PlayerUnknown\'s Battlegrounds', 2017, 'Battle royale', 'PUBG Corporation', 4.1),
(2, 'Minecraft', 2011, 'Sandbox. survival', 'Mojang Studios', 4.9),
(3, 'Diablo III', 2012, 'Action role-playing', 'Blizzard Entertainment', 4.4),
(4, 'Garry\'s Mod', 2006, 'Sandbox', 'Facepunch Studios', 4.3),
(5, 'World of Warcraft', 2004, 'MMORPG', 'Blizzard Entertainment', 3.8),
(6, 'Terraria', 2011, 'Action-adventure', 'Re-Logic', 4.6),
(7, 'Half-Life 2', 2004, 'First-person shooter', 'Valve', 4.2),
(8, 'The Witcher 3: Wild Hunt', 2015, 'Action role-playing', 'CD Projekt Red', 4.7),
(9, 'The Sims', 2000, 'Life simulation', 'Maxis', 3.5),
(10, 'StarCraft', 1998, 'Real-time strategy', 'Blizzard Entertainment', 4.5),
(11, 'RollerCoaster Tycoon 3', 2004, 'Construction and management simulation', 'Frontier Developments', 4.7),
(12, 'Fall Guys', 2020, 'Battle royale', 'Mediatonic', 3.7),
(13, 'Half-Life', 1998, 'First-person shooter', 'Valve', 3.9),
(14, 'Rust', 2018, 'Survival', 'Facepunch Studios', 3.6),
(15, 'Civilization V', 2010, 'Turn-based strategy, 4X', 'Firaxis Games', 4),
(16, 'The Sims 3', 2009, 'Life simulation', 'Maxis', 4.6),
(17, 'Euro Truck Simulator 2', 2012, 'Vehicle simulation', 'SCS Software', 4.2),
(18, 'Guild Wars', 2005, 'MMORPG', 'ArenaNet', 3.5),
(19, 'Myst', 1993, 'Adventure. puzzle', 'Cyan', 4.7),
(20, 'The Sims 2', 2004, 'Life simulation', 'Maxis', 4.6),
(21, 'StarCraft II: Wings of Liberty', 2010, 'Real-time strategy', 'Blizzard Entertainment', 4.2),
(22, 'Last Ninja 2', 1988, 'Action-adventure', 'System 3', 4.7),
(23, 'ARMA 3', 2013, 'Tactical shooter', 'Bohemia Interactive', 4.1),
(24, 'The Forest', 2018, 'Survival', 'Endnight Games', 4.8),
(25, 'SimCity 3000', 1999, 'City-building', 'Maxis', 4.2),
(26, 'Guild Wars 2', 2012, 'MMORPG', 'ArenaNet', 3.7),
(27, 'Cities: Skylines', 2015, 'City-building', 'Colossal Order', 3.6),
(28, 'Valheim', 2021, 'Survival', 'Iron Gate', 4.8),
(29, 'Cyberpunk 2077', 2020, 'Action role-playing', 'CD Projekt Red', 4),
(30, 'The Last Ninja', 1987, 'Action-adventure', 'System 3', 4.8),
(31, 'DayZ', 2013, 'Survival', 'Bohemia Interactive', 4),
(32, 'Diablo II', 2000, 'Action role-playing', 'Blizzard North', 4.6),
(33, 'Riven', 1997, 'Graphic adventure', 'Cyan Worlds', 4.5),
(34, 'Populous', 1989, 'God game', 'Bullfrog Productions', 3.6),
(35, 'RollerCoaster Tycoon', 1999, 'Construction and management simulation', 'Chris Sawyer', 4.2),
(36, 'Warhammer 40.000: Dawn of War (including expansions)', 2004, 'Real-time strategy', 'Relic Entertainment', 3.6),
(37, 'Where in the World Is Carmen Sandiego?', 1985, 'Educational', 'Broderbund', 4.8),
(38, 'Dark Souls', 2012, 'Action role-playing', 'FromSoftware', 3.7),
(39, 'Dark Souls III', 2016, 'Action role-playing', 'FromSoftware', 4.9),
(40, 'Doom 3', 2004, 'First-person shooter. survival horror', 'id Software', 4.5),
(41, 'Theme Park', 1994, 'Construction and management simulation', 'Bullfrog Productions', 4.7),
(42, 'Age of Empires', 1997, 'Real-time strategy', 'Ensemble Studios', 4.6),
(43, 'Civilization IV', 2005, 'Turn-based strategy, 4X', 'Firaxis Games', 5),
(44, 'Command & Conquer: Red Alert', 1996, 'Real-time strategy', 'Westwood Studios', 4.5),
(45, 'Crysis', 2007, 'First-person shooter', 'Crytek', 4.6),
(46, 'EverQuest', 1999, 'MMORPG', 'Verant Interactive', 4.4),
(47, 'Life Is Strange', 2015, 'Graphic adventure', 'Dontnod Entertainment', 4.5),
(48, 'Warcraft III: Reign of Chaos', 2002, 'Real-time strategy', 'Blizzard Entertainment', 4.5),
(49, 'Dark Souls II', 2014, 'Action role-playing', 'FromSoftware', 4.1),
(50, 'Factorio', 2016, 'Construction and management simulation', 'Wube Software', 4.7),
(51, 'Final Fantasy VII', 1998, 'Role-playing game', 'Square', 5),
(52, 'Stickfight: The Game', 2017, 'Fighting', 'Landfall Games', 4.2),
(53, 'Doom', 1993, 'First-person shooter', 'id Software', 4.2),
(54, 'Magicka', 2011, 'Action-adventure', 'Arrowhead Game Studios', 4.4),
(55, 'Age of Empires III', 2005, 'Real-time strategy', 'Ensemble Studios', 4.8),
(56, 'Anno 1503', 2003, 'City-building', 'Max Design', 3.7),
(57, 'Anno 1602', 1998, 'City-building', 'Max Design', 3.8),
(58, 'Cossacks II: Napoleonic Wars', 2005, 'Real-time strategy', 'GSC Game World', 3.6),
(59, 'Far Cry', 2004, 'First-person shooter', 'Crytek', 4.6),
(60, '7 Days to Die', 2016, 'Survival horror', 'The Fun Pimps', 4.8),
(61, 'Battlefield 1942', 2002, 'First-person shooter', 'EA DICE', 5),
(62, 'The Witcher 2: Assassins of Kings', 2011, 'Action role-playing', 'CD Projekt Red', 4.3),
(63, 'The Witcher', 2007, 'Action role-playing', 'CD Projekt Red', 4.5),
(64, 'Baldur\'s Gate II: Shadows of Amn', 2000, 'Computer role-playing game', 'BioWare', 4.8),
(65, 'Age of Empires II: The Age of Kings', 1999, 'Real-time strategy', 'Ensemble Studios', 4.7),
(66, 'The Binding of Isaac', 2011, 'Action-adventure. roguelike', 'Edmund McMillen & Florian Himsl', 4.9),
(67, 'Civilization III', 2001, 'Turn-based strategy. 4X', 'Firaxis Games', 3.8),
(68, 'Doom II: Hell on Earth', 1994, 'First-person shooter', 'id Software', 4.9),
(69, 'Grand Theft Auto V', 2015, 'Action-adventure', 'Rockstar North', 4.5),
(70, 'Mafia: The City of Lost Heaven', 2002, 'Third-person shooter', 'Illusion Softworks', 3.7),
(71, 'Neverwinter Nights', 2002, 'Role-playing game', 'BioWare', 4.4),
(72, 'Planet Coaster', 2016, 'Construction and management simulation', 'Frontier Developments', 4.3),
(73, 'POD', 1997, 'Racing game', 'Ubisoft', 4.8),
(74, 'SimCity', 2013, 'City-building', 'Electronic Arts', 3.6),
(75, 'Space Engineers', 2013, 'Simulation', 'Keen Software House', 4.2),
(76, 'Spore', 2008, 'God game', 'Maxis', 4.6),
(77, 'Stronghold: Crusader', 2002, 'Real-time strategy', 'Firefly Studios', 3.6),
(78, 'Warcraft II: Tides of Darkness', 1995, 'Real-time strategy', 'Blizzard Entertainment', 4.5),
(79, 'Metal Gear Solid V: The Phantom Pain', 2015, 'Action-adventure. stealth', 'Kojima Productions', 4.6),
(80, 'Sega Mega Drive and Genesis Classics', 2010, 'Compilation', 'Sega', 3.7),
(81, 'Stellaris', 2016, 'RTS. 4X. Grand Strategy', 'Paradox Development Studio', 4.4),
(82, 'Resident Evil 6', 2013, 'Third-person shooter. survival horror', 'Capcom', 3.8),
(83, 'Satisfactory', 2019, 'Construction and management simulation', 'Coffee Stain Studios', 4.1),
(84, 'Ultra Street Fighter IV', 2009, 'Fighting', 'Capcom', 4),
(85, 'Resident Evil 4: Ultimate HD Edition', 2014, 'Third-person shooter. survival horror', 'Capcom', 4.2),
(86, 'Nier: Automata', 2017, 'Action role-playing. hack and slash', 'PlatinumGames', 3.7),
(87, 'Kingdom Come: Deliverance', 2018, 'Action role-playing game', 'Warhorse Studios', 4.6),
(88, 'Pac-Man Championship Edition DX+', 2013, 'Maze. arcade', 'Namco Bandai Games', 3.6),
(89, 'Machinarium', 2009, 'Graphic adventure. puzzle', 'Amanita Design', 4.5),
(90, 'Quake', 1996, 'First-person shooter', 'id Software', 3.8),
(91, 'Dungeon Siege', 2002, 'Role-playing game', 'Gas Powered Games', 4),
(92, 'American McGee\'s Alice', 2000, 'Action-adventure. platformer', 'Rogue Entertainment', 4.6),
(93, 'American Truck Simulator', 2012, 'Vehicle simulation', 'SCS Software', 3.7),
(94, 'Grand Prix 2', 1996, 'Sim racing', 'MicroProse', 4.3),
(95, 'Command & Conquer: Tiberian Sun', 1999, 'Real-time strategy', 'Westwood Studios', 4.9),
(96, 'Crysis Warhead', 2008, 'First-person shooter', 'Crytek Budapest', 4.4),
(97, 'Duke Nukem 3D', 1996, 'First-person shooter', '3D Realms', 4.6),
(98, 'Star Wars Galaxies', 2003, 'MMORPG', 'Sony Online Entertainment', 4),
(99, 'Stronghold', 2001, 'Real-time strategy', 'Firefly Studios', 4.2),
(100, 'Commandos: Behind Enemy Lines', 1998, 'Real-time tactics', 'Pyro Studios', 5),
(101, 'Total Annihilation', 1997, 'Real-time strategy', 'Cavedog Entertainment', 4.4),
(102, 'Battlefield Vietnam', 2004, 'First-person shooter', 'EA DICE', 4.2),
(103, 'Harry Potter and the Philosopher\'s Stone', 2001, 'Action-adventure', 'KnowWonder', 3.6),
(104, 'The Legend of Sword and Fairy 5', 2011, 'Role-playing game', 'Softstar', 4.9),
(105, 'Psychonauts', 2005, 'Platform', 'Double Fine Productions', 4),
(106, 'Prison Architect', 2012, 'Construction and management simulation', 'Introversion Software', 3.9),
(107, 'Warhammer Online: Age of Reckoning', 2008, 'MMORPG', 'Mythic Entertainment', 3.8),
(108, 'Rome: Total War', 2004, 'Real-time strategy', 'The Creative Assembly', 4.5),
(109, 'StarCraft II: Heart of the Swarm', 2013, 'Real-time strategy', 'Blizzard Entertainment', 4.8),
(110, 'Crusader Kings III', 2020, 'Grand strategy', 'Paradox Development Studio', 3.7),
(111, 'Crusader Kings II', 2012, 'Grand strategy', 'Paradox Development Studio', 4.9),
(112, 'Killing Floor', 2009, 'First-person shooter', 'Tripwire Interactive', 4.8),
(113, 'Zoo Tycoon', 2001, 'Business simulation', 'Microsoft', 4),
(114, 'Age of Mythology', 2002, 'Real-time strategy', 'Ensemble Studios', 3.6),
(115, 'Ark: Survival Evolved', 2015, 'Action-adventure. Survival', 'Studio Wildcard', 4.8),
(116, 'Europa Universalis IV', 2013, 'Grand strategy', 'Paradox Development Studio', 3.6),
(117, 'BioShock', 2007, 'First-person shooter', 'Irrational Games', 3.5),
(118, 'Blade Runner', 1997, 'Point-and-click', 'Westwood Studios', 3.5),
(119, 'Civilization II', 1996, 'Turn-based strategy. 4X', 'MicroProse', 4.7),
(120, 'Command & Conquer: Red Alert 2', 2000, 'Real-time strategy', 'Westwood Pacific', 4.7),
(121, 'Command & Conquer 3: Tiberium Wars', 2007, 'Real-time strategy', 'EA Los Angeles', 4.8),
(122, 'Cuphead', 2017, 'Run and gun', 'StudioMDHR', 3.9),
(123, 'Daryl F. Gates\' Police Quest: SWAT', 1995, 'Interactive movie', 'Sierra Online', 4),
(124, 'Deer Hunter', 1997, 'Sports', 'Sunstorm Interactive', 4),
(125, 'Divinity: Original Sin II', 2017, 'Role-playing game', 'Larian Studios', 4.7),
(126, 'Dungeon Lords', 2005, 'Role-playing game', 'Heuristic Park', 4.2),
(127, 'Empire Earth', 2001, 'Real-time strategy', 'Stainless Steel Studios', 5),
(128, 'Frogger', 1997, 'Action', 'SCE Cambridge Studio', 3.9),
(129, 'Full Throttle', 1995, 'Graphic adventure', 'LucasArts', 4.5),
(130, 'Glory of the Roman Empire', 2006, 'City-building game', 'Haemimont Games', 3.6),
(131, 'Hearts of Iron IV', 2016, 'Real-time strategy. grand strategy wargame', 'Paradox Development Studio', 4.7),
(132, 'Hidden & Dangerous', 1999, 'Action', 'Illusion Softworks', 4.3),
(133, 'Hidden & Dangerous 2', 2003, 'Action', 'Illusion Softworks', 4.4),
(134, 'Hollow Knight', 2017, 'Metroidvania', 'Team Cherry', 4.5),
(135, 'Hotel Giant', 2002, 'Business simulation', 'Enlight Software', 3.7),
(136, 'Hydlide', 1984, 'Action role-playing', 'Technology and Entertainment Software', 4.7),
(137, 'Imperivm: Great Battles of Rome', 2005, 'Real-time strategy', 'Haemimont Games', 4.7),
(138, 'Just Survive[lower-alpha 5]', 2015, 'Survival', 'Daybreak Game Company', 4.8),
(139, 'The Legend of Sword and Fairy 3', 2003, 'Role-playing game', 'Softstar Entertainment', 5),
(140, 'Microsoft Flight Simulator X', 2006, 'Amateur flight simulation', 'Microsoft Game Studios', 3.6),
(141, 'Mordhau', 2019, 'Action', 'Triternion', 4.8),
(142, 'Operation Flashpoint: Cold War Crisis', 2001, 'Tactical shooter', 'Bohemia Interactive Studio', 4.2),
(143, 'Patrician III: Rise of the Hanse', 2003, 'Business simulation', 'Ascaron', 3.6),
(144, 'Phantasmagoria', 1995, 'Interactive movie', 'Sierra Online', 4.5),
(145, 'Quake II', 1997, 'First-person shooter', 'id Software', 5),
(146, 'Railroad Tycoon II', 1998, 'Construction and management simulation', 'PopTop Software', 4.9),
(147, 'Resident Evil 5', 2009, 'Third-person shooter. survival horror', 'Capcom', 4.4),
(148, 'Return to Castle Wolfenstein', 2001, 'First-person shooter', 'Gray Matter Interactive', 4.3),
(149, 'Return to Zork', 1993, 'Adventure', 'Infocom', 3.6),
(151, 'StarCraft II: Legacy of the Void', 2015, 'Real-time strategy', 'Blizzard Entertainment', 3.8),
(152, 'Star Wars: Rebel Assault', 1993, 'Rail shooter', 'LucasArts', 4),
(153, 'Stardew Valley', 2016, 'Simulation, role-playing game', 'ConcernedApe', 4),
(154, 'The Stanley Parable', 2013, 'Interactive fiction', 'Galactic Cafe', 4.5),
(155, 'Supreme Commander', 2007, 'Real-time strategy', 'Gas Powered Games', 4.8),
(156, 'Tropico', 2001, 'Construction and management simulation', 'PopTop Software', 3.7),
(157, 'Unreal', 1998, 'First-person shooter', 'Epic Games', 4.8),
(158, 'Unreal Tournament', 1999, 'First-person shooter', 'Epic Games', 4.5),
(159, 'Vietcong', 2003, 'Tactical shooter', 'Pterodon', 4.6),
(160, 'Who Wants to Be a Millionaire?', 1999, 'Trivia game', 'Jellyvision', 4.3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;