-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Nov-2019 às 00:14
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `senai`
--
DROP DATABASE IF EXISTS `senai`;
CREATE DATABASE IF NOT EXISTS `senai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `senai`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nomeCompleto` varchar(100) NOT NULL,
  `nomeDoUsuario` varchar(45) NOT NULL,
  `emailUsuario` varchar(45) NOT NULL,
  `senhaDoUsuario` char(40) NOT NULL,
  `dataCriado` date NOT NULL,
  `token` char(10) NOT NULL,
  `tempodevida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nomeCompleto`, `nomeDoUsuario`, `emailUsuario`, `senhaDoUsuario`, `dataCriado`, `token`, `tempodevida`) VALUES
(1, 'Emillysilva', 'emilly', 'emilly@gmail.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', '', '2019-11-19 02:08:10'),
(2, 'Emillysouza', 'Emillysouza', 'emillysouza@gmail.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', '', '2019-11-19 02:08:10'),
(3, 'clarasilva', 'clara', 'clarasilva@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', '', '2019-11-19 02:08:10'),
(4, 'clarasilva', 'clara12', 'clarasilva12@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', '', '2019-11-19 02:08:10'),
(5, 'clara silva', 'clara123', 'clarasilva123@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', '', '2019-11-19 02:08:10'),
(6, 'Emillysouza', 'Emilly123', 'emillysouza@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', '', '2019-11-19 02:08:10'),
(7, 'Emillysouza123', 'emilly321', 'emillysouza123@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-19', '', '2019-11-19 02:09:42');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `nomeDoUsuario` (`nomeDoUsuario`),
  ADD UNIQUE KEY `emailUsuario` (`emailUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
