-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Mag 15, 2024 alle 05:29
-- Versione del server: 5.7.11
-- Versione PHP: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allaboutpc`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `componenti`
--

CREATE TABLE `componenti` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `specifiche` varchar(50) NOT NULL,
  `disponibilita` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `componenti`
--

INSERT INTO `componenti` (`id`, `tipo`, `specifiche`, `disponibilita`) VALUES
(3, 'RAM', '16GB DDR3 24 clock', 2),
(4, 'RAM', 'miao miao', 4),
(6, 'RAM', 'Linguaggio C#', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `computer`
--

CREATE TABLE `computer` (
  `id` int(11) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modello` varchar(30) NOT NULL,
  `numero_di_serie` varchar(7) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `anno_acquisto` datetime NOT NULL,
  `specifiche_tecniche` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `computer`
--

INSERT INTO `computer` (`id`, `marca`, `modello`, `numero_di_serie`, `tipo`, `anno_acquisto`, `specifiche_tecniche`) VALUES
(2, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(3, 'Samsung', 'Galaxy Book3 Laptop', '7564321', 'client', '2021-09-08 00:00:00', 'ha le ventole grossissime'),
(4, 'Oliester', 'XPS 15 9560', '1234567', 'client', '2024-08-28 00:00:00', 'Computer molto bello e funzionante'),
(5, 'Oliester', 'XPS 15 9560', '1234567', 'client', '2024-08-28 00:00:00', 'Computer molto bello e funzionante'),
(14, 'Oliester', 'XPS 15 9560', '1234567', 'client', '2024-08-28 00:00:00', 'Computer molto bello e funzionante'),
(16, 'Giorgio', 'XPS 15 9560', '1234567', 'client', '2024-08-28 00:00:00', 'Computer molto bello e funzionante'),
(17, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(18, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(19, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(20, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(21, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(22, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(23, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(24, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessante'),
(25, 'Dell', 'Ultrabook XPS 13 9320', '7654321', 'server', '2022-09-20 00:00:00', 'molto interessant');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipartimento`
--

CREATE TABLE `dipartimento` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `responsabile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipartimento`
--

INSERT INTO `dipartimento` (`id`, `nome`, `responsabile`) VALUES
(2, 'Magazzino', 'Franco Muchacha'),
(3, 'Uffici', 'Barbara d\'Urso'),
(4, 'Sala operazione', 'Maria De Filippi'),
(5, 'Discoteca', 'Marco Minghi'),
(6, 'Sala ristoro num2', 'Giorgio'),
(7, 'Magazzino', 'Franco Muchacha');

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegato`
--

CREATE TABLE `impiegato` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `dipartimento_id` int(10) NOT NULL,
  `computer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `impiegato`
--

INSERT INTO `impiegato` (`id`, `nome`, `cognome`, `dipartimento_id`, `computer_id`) VALUES
(3, 'Luciana ', 'Litizzetto', 2, 2),
(4, 'Elon', 'Mask', 3, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `installazione_software`
--

CREATE TABLE `installazione_software` (
  `id` int(11) NOT NULL,
  `computer_id` int(10) NOT NULL,
  `software_id` int(10) NOT NULL,
  `data_installazione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `installazione_software`
--

INSERT INTO `installazione_software` (`id`, `computer_id`, `software_id`, `data_installazione`) VALUES
(1, 3, 2, '2024-02-07'),
(2, 3, 2, '2023-08-10');

-- --------------------------------------------------------

--
-- Struttura della tabella `inventario_componenti`
--

CREATE TABLE `inventario_componenti` (
  `id` int(11) NOT NULL,
  `computer_id` int(10) NOT NULL,
  `componente_id` int(10) NOT NULL,
  `quantita` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `inventario_componenti`
--

INSERT INTO `inventario_componenti` (`id`, `computer_id`, `componente_id`, `quantita`) VALUES
(3, 2, 3, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `software`
--

CREATE TABLE `software` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `versione` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `software`
--

INSERT INTO `software` (`id`, `nome`, `versione`) VALUES
(1, 'Windows', '10 Pro'),
(2, 'Windows', '10 Home'),
(3, 'Ubuntu', '22.04'),
(4, 'macOS', '10.12'),
(5, 'Windows', '11 Pro');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`username`, `password`) VALUES
('ChingChong', 'KequingMain'),
('ciao', 'ciao'),
('Desanta88', 'SonicTheHedgehog'),
('erikalabella', 'priscilla21'),
('FataEnchantix', 'WinxSupewmacy'),
('miao', 'miao'),
('MontagnoloMentale', 'Serenella'),
('RomanianGirl69', 'SeggPazz');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `componenti`
--
ALTER TABLE `componenti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipartimento`
--
ALTER TABLE `dipartimento`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `impiegato`
--
ALTER TABLE `impiegato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dipartimento_id` (`dipartimento_id`),
  ADD KEY `computer_id` (`computer_id`);

--
-- Indici per le tabelle `installazione_software`
--
ALTER TABLE `installazione_software`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computer_id` (`computer_id`,`software_id`),
  ADD KEY `rif_software` (`software_id`);

--
-- Indici per le tabelle `inventario_componenti`
--
ALTER TABLE `inventario_componenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `componente_id` (`componente_id`),
  ADD KEY `computer_id` (`computer_id`);

--
-- Indici per le tabelle `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `componenti`
--
ALTER TABLE `componenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `computer`
--
ALTER TABLE `computer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT per la tabella `dipartimento`
--
ALTER TABLE `dipartimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `impiegato`
--
ALTER TABLE `impiegato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `installazione_software`
--
ALTER TABLE `installazione_software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `inventario_componenti`
--
ALTER TABLE `inventario_componenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `software`
--
ALTER TABLE `software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `impiegato`
--
ALTER TABLE `impiegato`
  ADD CONSTRAINT `rif2_computer` FOREIGN KEY (`computer_id`) REFERENCES `computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rif_dipartimento` FOREIGN KEY (`dipartimento_id`) REFERENCES `dipartimento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `installazione_software`
--
ALTER TABLE `installazione_software`
  ADD CONSTRAINT `rif1_computer` FOREIGN KEY (`computer_id`) REFERENCES `computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rif_software` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `inventario_componenti`
--
ALTER TABLE `inventario_componenti`
  ADD CONSTRAINT `rif_componente` FOREIGN KEY (`componente_id`) REFERENCES `componenti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rif_computer` FOREIGN KEY (`computer_id`) REFERENCES `computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
