-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2015 at 03:54 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `review_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `Title` varchar(255) NOT NULL,
  `Platforms` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `Series` varchar(255) DEFAULT NULL,
  `Release Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`Title`, `Platforms`, `Genre`, `Series`, `Release Date`) VALUES
('Animal Crossing: Amiibo Festival', 'WiiU', 'Party', 'Animal Crossing', '2015-11-13'),
('Animal Crossing: Happy Home Designer', '3DS', 'Simulation', 'Animal Crossing', '2015-09-25'),
('Assassin''s Creed Syndicate', 'PS4, XBO', 'Open-world, Action', 'Assassin''s Creed', '2015-10-23'),
('Batman: Arkham Knight\r\n', 'PS4, XBO', 'Open-world, Action', 'Batman\r\n', '2015-06-23'),
('Battlefield Hardline', 'Win, PS3, PS4, X360, XBO', 'Shooter', 'Battlefield', '2015-03-17'),
('Bloodborne', 'PS4', 'Open-world, Action', 'Souls', '2015-03-24'),
('Borderlands: The Handsome Collection', 'PS4, XBO', 'Open-world, Shooter', 'Borderlands', '2015-03-24'),
('Call of Duty: Black Ops III', 'Win, PS3, PS4, X360, XBO', 'Shooter', 'CoD', '2015-11-06'),
('Cities: Skylines', 'Win', 'Simulation', NULL, '2015-03-10'),
('Code Name: S.T.E.A.M.', '3DS', 'Strategy, Shooter', NULL, '2015-03-13'),
('Dark Souls II: Scholar of the First Sin', 'Win, PS4, XBO', 'Open-world, Action', 'Souls', '2015-04-07'),
('Dead or Alive 5 Last Round', 'PS4, XBO, PS3, X360', 'Fighter', 'Dead or Alive', '2015-02-17'),
('Devil''s Third', 'WiiU', 'Action', NULL, '2015-12-11'),
('Disgaea 5: Alliance of Vengeance', 'PS4', 'RPG', 'Disgaea', '2015-10-06'),
('Dishonored: Definitive Edition', 'PS4, XBO', 'Action', NULL, '2015-08-25'),
('Divinity: Original Sin Enhanced Edition', 'Win, Mac, PS4, XBO', 'RPG', NULL, '2015-10-27'),
('DmC: Definitive Edition', 'PS4, XBO', 'Action', 'Devil May Cry', '2015-03-10'),
('Dragon Ball XenoVerse', 'PS3, PS4, X360, XBO', 'Open-world, Action', 'Dragon Ball', '2015-02-24'),
('Dying Light', 'Win, PS4, XBO', 'Open-world, Horror', NULL, '2015-01-27'),
('Evolve', 'Win, PS4, XBO', 'Shooter', NULL, '2015-02-10'),
('Fallout 4', 'Win, PS4, XBO', 'Shooter', 'Fallout', '2015-11-10'),
('FIFA 16', 'Win, PS3, PS4, X360, XBO', 'Sports', 'FIFA', '2015-09-22'),
('Final Fantasy Type-0 HD', 'PS4, XBO', 'Action', 'Final Fantasy', '2015-03-17'),
('Forza Motorsport 6', 'XBO', 'Sports', 'Forza', '2015-09-15'),
('Gears of War: Ultimate Edition', 'XBO', 'Shooter', 'Gears of War', '2015-08-25'),
('God of War III Remastered', 'PS4', 'Action', 'God of War', '2015-07-14'),
('Godzilla: The Game', 'PS4, PS3', 'Action', NULL, '2015-07-14'),
('Grand Theft Auto V', 'Win', 'Open-world, Action', 'GTA', '2015-04-14'),
('Grey Goo', 'Win', 'Strategy', NULL, '2015-01-23'),
('Guitar Hero Live', 'PS3, PS4, X360, XBO, WiiU', 'Rhythm', 'Guitar Hero', '2015-10-20'),
('Halo 5: Guardians', 'XBO', 'Shooter', 'Halo', '2015-10-27'),
('Just Cause 3', 'Win, PS4, XBO', 'Open-world, Action', 'Just Cause', '2015-12-01'),
('Kirby and the Rainbow Curse', 'WiiU', 'Puzzle, Platformer', 'Kirby', '2015-02-20'),
('Lego Dimensions', 'PS3, PS4, X360, XBO, WiiU', 'Action', 'Lego', '2015-09-27'),
('Mad Max', 'Win, PS4, XBO', 'Open-world, Action', NULL, '2015-09-01'),
('Madden NFL 16', 'PS3, PS4, X360, XBO', 'Sports', 'Madden', '2015-08-25'),
('Mario Party 10', 'WiiU', 'Party', 'Mario', '2015-03-20'),
('Mario Tennis: Ultra Smash', 'WiiU', 'Sports', 'Mario', '2015-11-20'),
('Mario vs. Donkey Kong: Tipping Stars', '3DS, WiiU', 'Puzzle, Platformer', 'Mario', '2015-03-05'),
('Metal Gear Solid V: The Phantom Pain', 'Win, PS3, PS4, X360, XBO', 'Open-world, Shooter', 'MGS', '2015-09-01'),
('MLB 15: The Show', 'PS4, PS3, PSVita', 'Sports', NULL, '2015-03-31'),
('Monster Hunter 4 Ultimate', '3DS', 'Open-world, Action', 'Monster Hunter', '2015-02-13'),
('Mortal Kombat X', 'Win, PS4, XBO', 'Fighter', 'Mortal Kombat', '2015-04-14'),
('NBA 2K16', 'Win, PS3, PS4, X360, XBO', 'Sports', 'NBA 2K', '2015-09-29'),
('NBA Live 16', 'PS4, XBO\r\n', 'Sports', 'NBA Live', '2015-09-28'),
('Need for Speed', 'PS4, XBO', 'Sports', 'Need for Speed', '2015-11-03'),
('NHL 16', 'PS4, XBO', 'Sports', 'NHL', '2015-09-15'),
('Persona 4: Dancing All Night', 'PSVita', 'Rhythm', 'Persona', '2015-09-29'),
('Pillars of Eternity', 'Win, Mac', 'RPG', NULL, '2015-03-26'),
('Pokemon Super Mystery Dungeon', '3DS', 'Action, Adventure', 'Pokemon', '2015-11-20'),
('Project CARS', 'Win, PS4, XBO', 'Sports', NULL, '2015-05-07'),
('Puzzle & Dragons Z + Super Mario Bros. Edition\r\n', '3DS', 'Puzzle', 'Mario', '2015-05-22'),
('Rare Replay', 'XBO', 'Collection', NULL, '2015-08-04'),
('Resident Evil HD Remaster', 'Win, PS3, PS4, X360, XBO', 'Shooter, Horror', 'Resident Evil', '2015-01-20'),
('Rise of the Tomb Raider', 'X360, XBO', 'Action, Adventure', 'Tomb Raider', '2015-11-10'),
('Rock Band 4', 'PS4, XBO', 'Rhythm', 'Rock Band', '2015-10-06'),
('Saints Row IV: Re-Elected', 'PS4, XBO', 'Open-world, Shooter', 'Saints Row', '2015-01-20'),
('Saints Row: Gat out of Hell', 'Win, PS3, PS4, X360, XBO', 'Open-world, Shooter', 'Saints Row', '2015-01-20'),
('Splatoon', 'WiiU', 'Shooter', NULL, '2015-05-29'),
('Star Wars: Battlefront', 'Win, PS4, XBO', 'Shooter', 'Star Wars', '2015-11-17'),
('StarCraft II: Legacy of the Void', 'Win, Mac\r\n', 'Strategy', 'Star Craft', '2015-11-10'),
('Super Mario Maker', 'WiiU', 'Platformer', 'Mario', '2015-09-11'),
('The Elder Scrolls Online: Tamriel Unlimited\r\n', 'PS4, XBO\r\n', 'MMO', 'Elder Scrolls', '2015-06-09'),
('The Legend of Zelda: Majora''s Mask 3D', '3DS', 'Action, Adventure', 'Zelda', '2015-02-13'),
('The Legend of Zelda: Tri Force Heroes', '3DS', 'Action, Adventure', 'Zelda', '2015-10-23'),
('The Order: 1886', 'PS4', 'Shooter', NULL, '2015-02-20'),
('The Witcher 3: Wild Hunt', 'Win, PS4, XBO', 'Open-world, RPG', 'Witcher', '2015-05-19'),
('Tom Clancy''s Rainbow Six Siege', 'Win, PS4, XBO', 'Shooter', 'Rainbow Six', '2015-12-01'),
('Tony Hawk''s Pro Skater 5', 'PS4, XBO', 'Sports', 'Tony Hawk', '2015-09-29'),
('Total War: Attila', 'Win, Mac', 'Strategy', 'Total War', '2015-02-17'),
('Transformers: Devastation', 'Win, PS3, PS4, X360, XBO', 'Action', 'Transformers', '2015-10-06'),
('Uncharted: The Nathan Drake Collection', 'PS4', 'Action, Adventure', 'Uncharted', '2015-10-09'),
('Until Dawn', 'PS4', 'Horror', NULL, '2015-08-25'),
('Wolfenstein: The Old Blood', 'Win, PS4, XBO', 'Shooter', NULL, '2015-05-05'),
('WWE 2K16', 'PS3, PS4, X360, XBO', 'Sports', 'WWE', '2015-10-27'),
('Xenoblade Chronicles 3D', '3DS', 'Open-world, RPG', 'Xenoblade', '2015-04-10'),
('Xenoblade Chronicles X', 'WiiU', 'Open-world, RPG', 'Xenoblade', '2015-12-04'),
('Yoshi''s Woolly World\r\n', 'WiiU', 'Platformer', 'Yoshi', '2015-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `journalists`
--

CREATE TABLE `journalists` (
  `Name` varchar(255) NOT NULL,
  `Outlet` enum('IGN','GiantBomb','GameSpot','Polygon') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journalists`
--

INSERT INTO `journalists` (`Name`, `Outlet`) VALUES
('Alex Navarro', 'GiantBomb'),
('Alexa Ray Corriea', 'GameSpot'),
('Arthur Gies', 'Polygon'),
('Ben Kuchera', 'Polygon'),
('Brad Shoemaker', 'GiantBomb'),
('Brandin Tyrrel', 'IGN'),
('Brian Albert', 'IGN'),
('Brian Crecente', 'Polygon'),
('Chris Schilling', 'IGN'),
('Dan Ryckert', 'GiantBomb'),
('Dan Stapleton', 'IGN'),
('Daniel Krupa', 'IGN'),
('Daniel Starkey', 'GameSpot'),
('Don Saas', 'GameSpot'),
('Griffin McElroy', 'Polygon'),
('Heidi Kemps', 'GameSpot'),
('Jason Venter', 'GameSpot'),
('Jeff Gerstmann', 'GiantBomb'),
('Jose Otero', 'IGN'),
('Josiah Renaudin', 'GameSpot'),
('Justin Haywald', 'GameSpot'),
('Justin McElroy', 'Polygon'),
('Kallie Plagge', 'IGN'),
('Lucy O''Brien', 'IGN'),
('Luke Reilly', 'IGN'),
('Marty Sliva', 'IGN'),
('Mat Paget', 'GameSpot'),
('Michael McWhertor', 'Polygon'),
('Mike Mahardy', 'GameSpot'),
('Mike Mitchell', 'IGN'),
('Miranda Sanchez', 'IGN'),
('Mitch Dyer', 'IGN'),
('Nathan Ditum', 'GameSpot'),
('Owen S. Good', 'Polygon'),
('Peter Brown', 'GameSpot'),
('Philip Kollar', 'Polygon'),
('Randolph Ramsay', 'GameSpot'),
('Rob Zacny', 'IGN'),
('Ryan Mccaffrey', 'IGN'),
('Samit Sarkar', 'Polygon'),
('Scott Butterworth', 'GameSpot'),
('Seth G. Macy', 'IGN'),
('Tristan Ogilvie', 'IGN'),
('Vince Ingenito', 'IGN');

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `Title` varchar(255) NOT NULL,
  `IGN` varchar(255) DEFAULT NULL,
  `GiantBomb` varchar(255) DEFAULT NULL,
  `GameSpot` varchar(255) DEFAULT NULL,
  `Polygon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`Title`, `IGN`, `GiantBomb`, `GameSpot`, `Polygon`) VALUES
('Animal Crossing: Amiibo Festival', 'Kallie Plagge', NULL, NULL, NULL),
('Animal Crossing: Happy Home Designer', 'Kallie Plagge', NULL, 'Justin Haywald', 'Griffin McElroy'),
('Assassin''s Creed Syndicate', 'Daniel Krupa', 'Alex Navarro', 'Alexa Ray Corriea', 'Philip Kollar'),
('Call of Duty: Black Ops III', 'Brian Albert', 'Jeff Gerstmann', 'Mike Mahardy', 'Arthur Gies'),
('Disgaea 5: Alliance of Vengeance', 'Vince Ingenito', NULL, 'Jason Venter', NULL),
('Divinity: Original Sin Enhanced Edition', 'Vince Ingenito', NULL, NULL, NULL),
('Fallout 4', 'Dan Stapleton', 'Jeff Gerstmann', 'Peter Brown', 'Arthur Gies'),
('FIFA 16', 'Chris Schilling', NULL, 'Nathan Ditum', 'Owen S. Good'),
('Forza Motorsport 6', 'Luke Reilly', NULL, NULL, 'Arthur Gies'),
('Guitar Hero Live', 'Tristan Ogilvie', NULL, 'Scott Butterworth', 'Arthur Gies'),
('Halo 5: Guardians', 'Brian Albert', 'Jeff Gerstmann', 'Mike Mahardy', 'Arthur Gies'),
('Just Cause 3', 'Dan Stapleton', NULL, 'Mike Mahardy', 'Ben Kuchera'),
('Lego Dimensions', 'Marty Sliva', NULL, 'Randolph Ramsay', 'Brian Crecente'),
('Mad Max', 'Brandin Tyrrel', 'Alex Navarro', 'Peter Brown', 'Philip Kollar'),
('Mario Tennis: Ultra Smash', 'Marty Sliva', NULL, 'Scott Butterworth', NULL),
('Metal Gear Solid V: The Phantom Pain', 'Vince Ingenito', 'Brad Shoemaker', 'Peter Brown', 'Michael McWhertor'),
('NBA 2K16', 'Mike Mitchell', NULL, 'Josiah Renaudin', NULL),
('NBA Live 16', 'Mike Mitchell', NULL, 'Josiah Renaudin', NULL),
('Need for Speed', 'Luke Reilly', 'Jeff Gerstmann', 'Scott Butterworth', NULL),
('NHL 16', 'Seth G. Macy', NULL, 'Mat Paget', 'Samit Sarkar'),
('Persona 4: Dancing All Night', 'Miranda Sanchez', NULL, 'Heidi Kemps', 'Griffin McElroy'),
('Rise of the Tomb Raider', 'Lucy O''Brien', 'Brad Shoemaker', 'Mike Mahardy', 'Philip Kollar'),
('Rock Band 4', 'Ryan Mccaffrey', 'Jeff Gerstmann', 'Scott Butterworth', 'Griffin McElroy'),
('Star Wars: Battlefront', 'Mitch Dyer', 'Dan Ryckert', 'Mike Mahardy', 'Justin McElroy'),
('StarCraft II: Legacy of the Void', 'Rob Zacny', NULL, 'Daniel Starkey', NULL),
('Super Mario Maker', 'Jose Otero', 'Jeff Gerstmann', 'Justin Haywald', 'Griffin McElroy'),
('The Legend of Zelda: Tri Force Heroes', 'Jose Otero', NULL, 'Mike Mahardy', NULL),
('Tom Clancy''s Rainbow Six Siege', NULL, NULL, NULL, NULL),
('Tony Hawk''s Pro Skater 5', 'Marty Sliva', 'Jeff Gerstmann', 'Peter Brown', NULL),
('Transformers: Devastation', 'Jose Otero', NULL, 'Scott Butterworth', 'Justin McElroy'),
('Uncharted: The Nathan Drake Collection', 'Vince Ingenito', NULL, 'Mike Mahardy', NULL),
('Until Dawn', 'Lucy O''Brien', NULL, 'Alexa Ray Corriea', 'Philip Kollar'),
('WWE 2K16', 'Vince Ingenito', 'Alex Navarro', 'Don Saas', NULL),
('Xenoblade Chronicles X', NULL, NULL, 'Peter Brown', 'Philip Kollar'),
('Yoshi''s Woolly World', 'Daniel Krupa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `Title` varchar(255) NOT NULL,
  `IGN(Out of 10)` float DEFAULT NULL,
  `GiantBomb(Out of 5)` int(11) DEFAULT NULL,
  `GameSpot(Out of 10)` int(11) DEFAULT NULL,
  `Polygon(Out of 10)` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`Title`, `IGN(Out of 10)`, `GiantBomb(Out of 5)`, `GameSpot(Out of 10)`, `Polygon(Out of 10)`) VALUES
('Animal Crossing: Amiibo Festival', 5, NULL, NULL, NULL),
('Animal Crossing: Happy Home Designer', 8, NULL, 5, 6),
('Assassin''s Creed Syndicate', 8.2, 4, 9, 8.5),
('Call of Duty: Black Ops III', 9.2, 3, 7, 7),
('Disgaea 5: Alliance of Vengeance', 8.7, NULL, 8, NULL),
('Divinity: Original Sin Enhanced Edition', 9, NULL, NULL, NULL),
('Fallout 4', 9.5, 4, 9, 9.5),
('FIFA 16', 7.8, NULL, 9, 9),
('Forza Motorsport 6', 9, NULL, NULL, 8),
('Guitar Hero Live', 7.9, NULL, 6, 9),
('Halo 5: Guardians', 9, 4, 8, 9),
('Just Cause 3', 8, NULL, 8, 8.5),
('Lego Dimensions', 7.7, NULL, 8, 8),
('Mad Max', 8.4, 3, 6, 5.5),
('Mario Tennis: Ultra Smash', 4.8, NULL, 6, NULL),
('Metal Gear Solid V: The Phantom Pain', 10, 5, 10, 9),
('NBA 2K16', 9, NULL, 8, NULL),
('NBA Live 16', 6, NULL, 5, NULL),
('Need for Speed', 6.3, 2, 8, NULL),
('NHL 16', 7.8, NULL, 8, 7.5),
('Persona 4: Dancing All Night', 8.4, NULL, 5, 8.5),
('Rise of the Tomb Raider', 9.3, 4, 9, 8.5),
('Rock Band 4', 8.8, 3, 7, 7.5),
('Star Wars: Battlefront', 8, 3, 7, 8),
('StarCraft II: Legacy of the Void', 8.9, NULL, 8, NULL),
('Super Mario Maker', 9, 5, 9, 9.5),
('The Legend of Zelda: Tri Force Heroes', 8.5, NULL, 5, NULL),
('Tom Clancy''s Rainbow Six Siege', NULL, NULL, NULL, NULL),
('Tony Hawk''s Pro Skater 5', 3.5, 1, 3, NULL),
('Transformers: Devastation', 7.7, NULL, 7, 6.5),
('Uncharted: The Nathan Drake Collection', 9, NULL, 8, NULL),
('Until Dawn', 7.5, NULL, 8, 6.5),
('WWE 2K16', 8.8, 2, 4, NULL),
('Xenoblade Chronicles X', NULL, NULL, 8, 7),
('Yoshi''s Woolly World', 7.4, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `journalists`
--
ALTER TABLE `journalists`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`Title`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
