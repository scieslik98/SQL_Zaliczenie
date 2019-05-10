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
-- Struktura tabeli dla tabeli `Zamowienie`
--

CREATE TABLE IF NOT EXISTS `Zamowienie` (
  `ID_Zamowienia` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Towaru` int(11) NOT NULL,
  `ID_Klienta` int(11) NOT NULL,
  `Ilosc_towaru` int(11) NOT NULL,
  PRIMARY KEY (`ID_Zamowienia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
