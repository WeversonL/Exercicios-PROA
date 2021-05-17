-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Abr-2021 às 16:23
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vencedoresoscar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `premiacao`
--

CREATE TABLE `premiacao` (
  `categoria` varchar(250) NOT NULL,
  `vencedor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `premiacao`
--

INSERT INTO `premiacao` (`categoria`, `vencedor`) VALUES
('Melhor Ator', 'Joaquin Phoenix'),
('Melhor Atriz', 'Renée Zellweger'),
('Melhor Filme', 'Parasita'),
('Melhor Ator Coadjuvante', 'Brad Pitt'),
('Melhor Atriz Coadjuvante', 'Laura Dern'),
('Melhor Filme de Animação', 'Toy Story 4'),
('Melhor Trilha Sonora Original', 'Coringa'),
('Melhor Filme Estrangeiro', 'Parasita'),
('Melhor Diretor', 'Bong Joon-ho'),
('Melhor Canção Original', '(I\'m Gonna) Love Me Again'),
('Melhor Roteiro Improvisado', 'Jojo Rabbit'),
('Melhor Roteiro Original', 'Parasita'),
('Melhor fotografia', '1917'),
('Melhores efeitos visuais', '1917'),
('Melhor direção de arte', 'Era Uma Vez Em... Hollywood'),
('Melhor mixagem de som', '1917'),
('Melhor figurino', 'Adoráveis Mulheres'),
('Melhor curta metragem de animação', 'Hair Love'),
('Melhor curta metragem', 'The neighbors’ window'),
('Melhor Maquiagem e Penteado', 'O Escândalo'),
('Melhor Montagem', 'Ford vs Ferrari'),
('Melhor Documentário', 'American Factory'),
('Melhor Edição de som', 'Ford vs Ferrari'),
('Melhor Curto Documentário', 'Learning to skateboard in a warzone');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
