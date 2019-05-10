-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 18 Lut 2019, 22:21
-- Wersja serwera: 5.5.62-0+deb8u1
-- Wersja PHP: 5.6.40-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `scieslik1004`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Klienci`
--

CREATE TABLE IF NOT EXISTS `Klienci` (
  `Id_Klienta` int(11) NOT NULL AUTO_INCREMENT,
  `Imie_klient` varchar(30) NOT NULL,
  `Nazwisko_klient` varchar(50) NOT NULL,
  `Miasto_klient` varchar(50) NOT NULL,
  `Ulica_klient` varchar(50) NOT NULL,
  `Kod_klient` varchar(10) NOT NULL,
  `Mail_klient` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Klienta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Zrzut danych tabeli `Klienci`
--

INSERT INTO `Klienci` (`Id_Klienta`, `Imie_klient`, `Nazwisko_klient`, `Miasto_klient`, `Ulica_klient`, `Kod_klient`, `Mail_klient`) VALUES
(1, 'efwefwe', 'fEWFwe', 'WEFWEFew', 'fwefWEFwef', 'fEWFwef', 'WEFwefWEF'),
(2, 'fgwaefWEFEWGw', 'wefawe', 'egWEGWEGEW', 'GwegWEGwegEWGew', 'gWEGwegWEG', 'WEGwegEGW'),
(3, 'fgwaefWEFEWGw', 'wefawe', 'egWEGWEGEW', 'GwegWEGwegEWGew', 'gWEGwegWEG', 'WEGwegEGW'),
(4, 'sfasf', 'wefwEFEFEF', 'gawf', 'EFEFwef', 'efEWFwef', 'fwefWEF'),
(5, 'sfasf', 'wefwEFEFEF', 'gawf', 'EFEFwef', 'efEWFwef', 'fwefWEF'),
(6, 'fqwfqwf', 'fqwfqw', 'qwfqfweg', 'egqgEG', 'wegawegaer', 'areg'),
(7, 'fqwfqwf', 'fqwfqw', 'qwfqfweg', 'egqgEG', 'wegawegaer', 'areg'),
(8, 'fqwfqwf', 'fqwfqw', 'qwfqfweg', 'egqgEG', 'wegawegaer', 'areg'),
(9, 'On', 'Taki ', 'Owaki', 'Taka', 'Tamten', 'taki'),
(10, 'KtoÅ›', 'JakieÅ›', 'afsasf', 'ADASO', 'aBLE BLE', 'wowr '),
(11, 'aaa', 'sss', 'qwe', 'qwer', '12123', 'asd@asd');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
