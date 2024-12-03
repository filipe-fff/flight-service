-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03-Dez-2024 às 23:44
-- Versão do servidor: 10.11.8-MariaDB-0ubuntu0.24.04.1
-- versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `flights_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_airport`
--

CREATE TABLE `tab_airport` (
  `id` int(11) NOT NULL,
  `airport_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tab_airport`
--

INSERT INTO `tab_airport` (`id`, `airport_name`, `city`, `code`, `state`) VALUES
(1, 'Araguaína Airport', 'Araguaína', 'AUX', 'Tocantins'),
(2, 'Congonhas Airport', 'São Paulo', 'CGH', 'São Paulo'),
(3, 'Guarulhos International', 'Guarulhos', 'GRU', 'São Paulo'),
(4, 'Viracopos Airport', 'Campinas', 'VCP', 'São Paulo'),
(5, 'Santos Dumont Airport', 'Rio de Janeiro', 'SDU', 'Rio de Janeiro'),
(6, 'Galeão International', 'Rio de Janeiro', 'GIG', 'Rio de Janeiro'),
(7, 'Cabo Frio Airport', 'Cabo Frio', 'CFB', 'Rio de Janeiro'),
(8, 'Confins International', 'Belo Horizonte', 'CNF', 'Minas Gerais'),
(9, 'Pampulha Airport', 'Belo Horizonte', 'PLU', 'Minas Gerais'),
(10, 'Uberlândia Airport', 'Uberlândia', 'UDI', 'Minas Gerais'),
(11, 'Afonso Pena International', 'Curitiba', 'CWB', 'Paraná'),
(12, 'Londrina Airport', 'Londrina', 'LDB', 'Paraná'),
(13, 'Salgado Filho International', 'Porto Alegre', 'POA', 'Rio Grande do Sul'),
(14, 'Caxias do Sul Airport', 'Caxias do Sul', 'CXJ', 'Rio Grande do Sul'),
(15, 'Rio Branco International', 'Rio Branco', 'RBR', 'Acre'),
(16, 'Cruzeiro do Sul Airport', 'Cruzeiro do Sul', 'CZS', 'Acre'),
(17, 'Zumbi dos Palmares International', 'Maceió', 'MCZ', 'Alagoas'),
(18, 'Arapiraca Airport', 'Arapiraca', 'APQ', 'Alagoas'),
(19, 'Macapá International', 'Macapá', 'MCP', 'Amapá'),
(20, 'Oiapoque Airport', 'Oiapoque', 'OYK', 'Amapá'),
(21, 'Eduardo Gomes International', 'Manaus', 'MAO', 'Amazonas'),
(22, 'Tabatinga Airport', 'Tabatinga', 'TBT', 'Amazonas'),
(23, 'Tefé Airport', 'Tefé', 'TFF', 'Amazonas'),
(24, 'Deputado Luís Eduardo Magalhães International', 'Salvador', 'SSA', 'Bahia'),
(25, 'Porto Seguro Airport', 'Porto Seguro', 'BPS', 'Bahia'),
(26, 'Ilhéus Airport', 'Ilhéus', 'IOS', 'Bahia'),
(27, 'Vitória da Conquista Airport', 'Vitória da Conquista', 'VDC', 'Bahia'),
(28, 'Pinto Martins International', 'Fortaleza', 'FOR', 'Ceará'),
(29, 'Juazeiro do Norte Airport', 'Juazeiro do Norte', 'JDO', 'Ceará'),
(30, 'Presidente Juscelino Kubitschek International', 'Brasília', 'BSB', 'Distrito Federal'),
(31, 'Eurico de Aguiar Salles Airport', 'Vitória', 'VIX', 'Espírito Santo'),
(32, 'Cachoeiro de Itapemirim Airport', 'Cachoeiro de Itapemirim', 'CCI', 'Espírito Santo'),
(33, 'Santa Genoveva Airport', 'Goiânia', 'GYN', 'Goiás'),
(34, 'Caldas Novas Airport', 'Caldas Novas', 'CLV', 'Goiás'),
(35, 'Marechal Cunha Machado International', 'São Luís', 'SLZ', 'Maranhão'),
(36, 'Imperatriz Airport', 'Imperatriz', 'IMP', 'Maranhão'),
(37, 'Marechal Rondon International', 'Cuiabá', 'CGB', 'Mato Grosso'),
(38, 'Sinop Airport', 'Sinop', 'OPS', 'Mato Grosso'),
(39, 'Campo Grande International', 'Campo Grande', 'CGR', 'Mato Grosso do Sul'),
(40, 'Dourados Airport', 'Dourados', 'DOU', 'Mato Grosso do Sul'),
(41, 'Val-de-Cans International', 'Belém', 'BEL', 'Pará'),
(42, 'Marabá Airport', 'Marabá', 'MAB', 'Pará'),
(43, 'Altamira Airport', 'Altamira', 'ATM', 'Pará'),
(44, 'Presidente Castro Pinto International', 'João Pessoa', 'JPA', 'Paraíba'),
(45, 'Campina Grande Airport', 'Campina Grande', 'CPV', 'Paraíba'),
(46, 'Guararapes International', 'Recife', 'REC', 'Pernambuco'),
(47, 'Petrolina Airport', 'Petrolina', 'PNZ', 'Pernambuco'),
(48, 'Senador Petrônio Portella Airport', 'Teresina', 'THE', 'Piauí'),
(49, 'Parnaíba Airport', 'Parnaíba', 'PHB', 'Piauí'),
(50, 'Augusto Severo International', 'Natal', 'NAT', 'Rio Grande do Norte'),
(51, 'Mossoró Airport', 'Mossoró', 'MVF', 'Rio Grande do Norte'),
(52, 'Governador Jorge Teixeira Airport', 'Porto Velho', 'PVH', 'Rondônia'),
(53, 'Ji-Paraná Airport', 'Ji-Paraná', 'JPR', 'Rondônia'),
(54, 'Boa Vista International', 'Boa Vista', 'BVB', 'Roraima'),
(55, 'Caracaraí Airport', 'Caracaraí', 'CRR', 'Roraima'),
(56, 'Hercílio Luz International', 'Florianópolis', 'FLN', 'Santa Catarina'),
(57, 'Joinville Airport', 'Joinville', 'JOI', 'Santa Catarina'),
(58, 'Chapecó Airport', 'Chapecó', 'XAP', 'Santa Catarina'),
(59, 'Santa Maria Airport', 'Aracaju', 'AJU', 'Sergipe'),
(60, 'Itabaiana Airport', 'Itabaiana', 'ITB', 'Sergipe'),
(61, 'Palmas Airport', 'Palmas', 'PMW', 'Tocantins');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_flight`
--

CREATE TABLE `tab_flight` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `price_economy` int(11) DEFAULT NULL,
  `price_business` int(11) DEFAULT NULL,
  `price_first_class` int(11) DEFAULT NULL,
  `flight_origin` int(11) NOT NULL,
  `flight_destination` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tab_flight`
--

INSERT INTO `tab_flight` (`id`, `date`, `time`, `price_economy`, `price_business`, `price_first_class`, `flight_origin`, `flight_destination`) VALUES
(2, '2024-11-26', '09:00:00.000000', 400, 850, NULL, 2, 3),
(3, '2024-11-27', '11:15:00.000000', 450, NULL, NULL, 3, 4),
(4, '2024-11-28', '14:00:00.000000', 380, 900, NULL, 4, 5),
(5, '2024-11-29', '16:30:00.000000', 320, NULL, NULL, 5, 6),
(6, '2024-11-30', '07:45:00.000000', 250, 650, NULL, 6, 7),
(7, '2024-12-01', '10:00:00.000000', 280, NULL, 1200, 7, 8),
(8, '2024-12-02', '13:30:00.000000', 330, NULL, NULL, 8, 9),
(9, '2024-12-03', '16:00:00.000000', 290, NULL, 950, 9, 10),
(10, '2024-12-04', '18:30:00.000000', 350, 800, NULL, 10, 11),
(11, '2024-12-05', '08:00:00.000000', 360, NULL, 1400, 11, 12),
(12, '2024-12-06', '09:45:00.000000', 300, NULL, 1000, 12, 13),
(13, '2024-12-07', '12:00:00.000000', 320, 700, NULL, 13, 14),
(14, '2024-12-08', '14:30:00.000000', 280, NULL, NULL, 14, 15),
(15, '2024-12-09', '16:00:00.000000', 350, 750, NULL, 15, 16),
(16, '2024-12-10', '18:30:00.000000', 330, NULL, 1100, 16, 17),
(17, '2024-12-11', '08:45:00.000000', 390, 950, NULL, 17, 18),
(18, '2024-12-12', '11:00:00.000000', 420, NULL, NULL, 18, 19),
(19, '2024-12-13', '13:30:00.000000', 380, 870, NULL, 19, 20),
(20, '2024-12-14', '16:00:00.000000', 340, NULL, 1200, 20, 21),
(21, '2024-12-15', '18:15:00.000000', 410, NULL, NULL, 21, 22),
(22, '2024-12-16', '08:30:00.000000', 280, NULL, NULL, 22, 23),
(23, '2024-12-17', '10:00:00.000000', 330, NULL, 1050, 23, 24),
(24, '2024-12-18', '12:30:00.000000', 300, 650, NULL, 24, 25),
(25, '2024-12-19', '14:00:00.000000', 350, NULL, NULL, 25, 26),
(28, '2024-11-25', '10:00:00.000000', 400, 850, NULL, 2, 3),
(29, '2024-11-25', '14:15:00.000000', 450, NULL, 1500, 3, 4),
(30, '2024-11-25', '18:00:00.000000', 320, 700, NULL, 4, 5),
(31, '2024-11-25', '22:30:00.000000', 380, NULL, NULL, 5, 6),
(32, '2024-11-26', '07:30:00.000000', 250, 600, 950, 6, 7),
(33, '2024-11-26', '11:00:00.000000', 280, 650, NULL, 7, 8),
(34, '2024-11-26', '15:00:00.000000', 320, NULL, 1400, 8, 9),
(35, '2024-11-26', '19:30:00.000000', 290, 700, NULL, 9, 10),
(36, '2024-11-26', '23:00:00.000000', 210, NULL, NULL, 10, 11),
(37, '2024-11-27', '06:00:00.000000', 250, 600, NULL, 11, 12),
(38, '2024-11-27', '09:30:00.000000', 350, 750, NULL, 12, 3),
(39, '2024-11-27', '13:30:00.000000', 400, NULL, 1200, 3, 13),
(40, '2024-11-27', '17:00:00.000000', 450, 800, NULL, 13, 14),
(41, '2024-11-27', '20:30:00.000000', 420, 850, NULL, 14, 15),
(44, '2024-11-28', '10:30:00.000000', 350, NULL, NULL, 16, 17),
(45, '2024-11-28', '14:00:00.000000', 310, 700, NULL, 17, 4),
(46, '2024-11-28', '18:00:00.000000', 400, 850, NULL, 4, 9),
(47, '2024-11-28', '22:00:00.000000', 370, NULL, NULL, 9, 5),
(48, '2024-11-29', '06:00:00.000000', 280, 600, NULL, 5, 11),
(49, '2024-11-29', '09:30:00.000000', 250, NULL, 1050, 11, 6),
(50, '2024-11-29', '13:00:00.000000', 320, 750, NULL, 6, 18),
(51, '2024-11-29', '16:30:00.000000', 350, NULL, NULL, 18, 19),
(52, '2024-11-29', '19:45:00.000000', 400, 850, NULL, 19, 20),
(53, '2024-11-29', '23:00:00.000000', 450, NULL, 1200, 20, 21),
(54, '2024-11-30', '07:30:00.000000', 370, 800, NULL, 21, 22),
(55, '2024-11-30', '11:00:00.000000', 390, 850, NULL, 22, 23),
(56, '2024-11-30', '14:30:00.000000', 420, NULL, 1100, 23, 24),
(57, '2024-11-30', '18:00:00.000000', 380, 750, NULL, 24, 13),
(58, '2024-11-30', '22:30:00.000000', 330, NULL, 1250, 13, 25),
(60, '2024-11-22', '10:00:00.000000', 150, 300, 500, 1, 2),
(61, '2024-11-23', '15:30:00.000000', 120, 280, 450, 2, 3),
(62, '2024-11-24', '08:45:00.000000', 100, 250, 400, 3, 4),
(63, '2024-11-25', '20:00:00.000000', 180, 320, 550, 4, 1),
(64, '2024-11-26', '12:15:00.000000', 200, 350, 600, 2, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tab_airport`
--
ALTER TABLE `tab_airport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKhpethvhxqlfo80hldnu4mx4da` (`airport_name`),
  ADD UNIQUE KEY `UKiq4jkl4jx8keithpdkvi7xbf6` (`code`);

--
-- Índices para tabela `tab_flight`
--
ALTER TABLE `tab_flight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_origin` (`flight_origin`),
  ADD KEY `flight_destination` (`flight_destination`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tab_airport`
--
ALTER TABLE `tab_airport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `tab_flight`
--
ALTER TABLE `tab_flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tab_flight`
--
ALTER TABLE `tab_flight`
  ADD CONSTRAINT `tab_flight_ibfk_1` FOREIGN KEY (`flight_origin`) REFERENCES `tab_airport` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tab_flight_ibfk_2` FOREIGN KEY (`flight_destination`) REFERENCES `tab_airport` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
