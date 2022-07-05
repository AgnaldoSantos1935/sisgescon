-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jul-2022 às 22:00
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sisges`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `licitacaos`
--

CREATE TABLE `licitacaos` (
  `codlicitacao` bigint(20) UNSIGNED NOT NULL,
  `anolicitacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtcertame` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `objeto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorglobal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeroprocesso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demandante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtinsercao` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `licitacaos`
--

INSERT INTO `licitacaos` (`codlicitacao`, `anolicitacao`, `modalidade`, `dtcertame`, `objeto`, `valorglobal`, `numeroprocesso`, `demandante`, `dtinsercao`, `created_at`, `updated_at`) VALUES
(1, '1991', '#ea7775', '0000-00-00 00:00:00', 'Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas', '$28.73', '1148051', 'Interdum Curabitur Dictum Industries', '0000-00-00 00:00:00', NULL, NULL),
(2, '1977', '#fcf9a9', '0000-00-00 00:00:00', 'tellus. Nunc lectus pede,', '$37.58', '4636274', 'Nullam Enim Sed Industries', '0000-00-00 00:00:00', NULL, NULL),
(3, '2006', '#2cb2a5', '0000-00-00 00:00:00', 'Fusce aliquet magna a neque. Nullam', '$60.56', '6783313', 'Est Nunc Industries', '0000-00-00 00:00:00', NULL, NULL),
(4, '1986', '#2985f4', '0000-00-00 00:00:00', 'Curabitur egestas nunc', '$38.60', '3218988', 'Dictum LLC', '0000-00-00 00:00:00', NULL, NULL),
(5, '1996', '#d6ccff', '0000-00-00 00:00:00', 'tincidunt, neque vitae', '$66.22', '4006479', 'Proin Vel Limited', '0000-00-00 00:00:00', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `licitacaos`
--
ALTER TABLE `licitacaos`
  ADD PRIMARY KEY (`codlicitacao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `licitacaos`
--
ALTER TABLE `licitacaos`
  MODIFY `codlicitacao` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
