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
-- Struktura tabeli dla tabeli `Faktura`
--

CREATE TABLE IF NOT EXISTS `Faktura` (
  `ID_Faktury` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Zamowienia` int(11) NOT NULL,
  `ID_Towaru` int(11) NOT NULL,
  `ID_Klienta` int(11) NOT NULL,
  `Ilosc_towaru` int(11) NOT NULL,
  PRIMARY KEY (`ID_Faktury`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Zrzut danych tabeli `Faktura`
--

INSERT INTO `Faktura` (`ID_Faktury`, `ID_Zamowienia`, `ID_Towaru`, `ID_Klienta`, `Ilosc_towaru`) VALUES
(1, 3, 1, 0, 12),
(2, 1, 0, 2222, 0),
(3, 1, 0, 2222, 0),
(4, 0, 0, 0, 0),
(5, 2, 1, 0, 12),
(6, 0, 0, 0, 0),
(7, 3, 1, 0, 12),
(8, 0, 0, 0, 0),
(9, 0, 0, 0, 0),
(10, 4, 1, 0, 12),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0),
(13, 5, 1, 6, 12),
(14, 0, 0, 0, 0),
(15, 0, 0, 0, 0),
(16, 7, 2, 9, 12),
(17, 0, 0, 0, 0),
(18, 6, 1, 6, 12),
(19, 0, 0, 0, 0),
(20, 8, 1, 10, 12),
(21, 9, 2, 11, 12);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
