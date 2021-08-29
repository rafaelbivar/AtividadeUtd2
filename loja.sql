-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Ago-2021 às 03:04
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `NOME_cliente` varchar(80) DEFAULT NULL,
  `datanasc_cliente` date DEFAULT NULL,
  `email_cliente` varchar(50) DEFAULT NULL,
  `cpf_cliente` varchar(25) DEFAULT NULL,
  `endereço_cliente` varchar(100) DEFAULT NULL,
  `telefone_cliente` varchar(25) DEFAULT NULL,
  `cadastradoem_cliente` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `NOME_cliente`, `datanasc_cliente`, `email_cliente`, `cpf_cliente`, `endereço_cliente`, `telefone_cliente`, `cadastradoem_cliente`) VALUES
(1, 'José de Alencar', '1900-01-18', 'seujose@email.com', '99999999901', 'Rua: Vinte N-3300 Bairro: MT Cep: 60000-500', '2222-2220', '2021-08-28 23:18:42'),
(2, 'Caetano Veloso', '1959-03-28', 'cveloso@email.com', '99999999902', 'Rua: Vinte N-3301 Bairro: MT Cep: 60000-500', '2222-2221', '2021-08-28 23:18:42'),
(3, 'Calos Alberto', '1936-03-09', 'carlosaiberto@email.com', '99999999903', 'Rua: Vinte N-3302 Bairro: MT Cep: 60000-500', '2222-2222', '2021-08-28 23:18:42'),
(4, 'Dede Santana', '1950-12-25', 'dsantana@email.com', '99999999904', 'Rua: Vinte N-3303 Bairro: MT Cep: 60000-500', '2222-2223', '2021-08-28 23:18:42'),
(5, 'David Pereira', '1980-04-01', 'david@email.com', '99999999905', 'Rua: Vinte N-3304 Bairro: MT Cep: 60000-500', '2222-2224', '2021-08-28 23:18:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id_fornecedor` int(6) NOT NULL,
  `nome_fornecedor` varchar(100) NOT NULL,
  `cnpj_fornecedor` varchar(50) NOT NULL,
  `ramo_fornecedor` varchar(30) NOT NULL,
  `email_fornecedor` varchar(150) NOT NULL,
  `endereco_fornecedor` varchar(150) NOT NULL,
  `cadastradoem_fornecedor` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id_fornecedor`, `nome_fornecedor`, `cnpj_fornecedor`, `ramo_fornecedor`, `email_fornecedor`, `endereco_fornecedor`, `cadastradoem_fornecedor`) VALUES
(1, 'Big', '88888888801', 'Bebidas', 'big@email.com', 'Rua: Já furtado N-9000 Bairro Centro Cep: 60000 200', '2021-08-28 23:49:45'),
(2, 'Master', '88888888802', 'Cereais', 'master@email.com', 'Rua: Já furtado N-9100 Bairro Centro Cep: 60000 200', '2021-08-28 23:49:45'),
(3, 'Alfa', '88888888803', 'hortifruti', 'alfa@email.com', 'Rua: Já furtado N-9200 Bairro Centro Cep: 60000 200', '2021-08-28 23:49:45'),
(4, 'Beta', '88888888804', 'Cama, mesa e banho', 'beta@email.com', 'Rua: Já furtado N-9300 Bairro Centro Cep: 60000 200', '2021-08-28 23:49:45'),
(5, 'Power', '88888888805', 'Carnes e defumados', 'power@email.com', 'Rua: Já furtado N-9400 Bairro Centro Cep: 60000 200', '2021-08-28 23:49:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `tipo_produto` varchar(30) NOT NULL,
  `nome_produto` varchar(30) NOT NULL,
  `id_fornecedor_produto` int(6) NOT NULL,
  `precocompra_produto` float(6,2) NOT NULL,
  `precovenda_produto` float(6,2) NOT NULL,
  `estoque_produto` int(6) NOT NULL,
  `validade_produto` date NOT NULL,
  `codigo_produto` varchar(50) NOT NULL,
  `cadastradoem_produto` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `tipo_produto`, `nome_produto`, `id_fornecedor_produto`, `precocompra_produto`, `precovenda_produto`, `estoque_produto`, `validade_produto`, `codigo_produto`, `cadastradoem_produto`) VALUES
(1, 'Bebida', 'Coca-cola 2l', 1, 6.00, 8.50, 90, '2022-08-28', '10101010101010101010', '2021-08-28 23:56:41'),
(2, 'Cereal', 'Arroz Filho', 2, 3.78, 5.75, 320, '2022-05-28', '10101010101010101011', '2021-08-29 00:21:03'),
(3, 'Hortifruti ', 'Maçã nacional', 3, 4.00, 5.70, 100, '2021-09-15', '10101010101010101111', '2021-08-29 00:21:03'),
(4, 'Cama, mesa e banho', 'Travesseiro de pena', 4, 28.60, 35.90, 300, '2026-08-28', '10101010101011101011', '2021-08-29 00:21:03'),
(5, 'Carnes e defumados', 'File de frango', 5, 9.00, 13.50, 70, '2021-11-23', '10101011101010101011', '2021-08-29 00:21:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(4) NOT NULL,
  `nome_usuario` varchar(80) NOT NULL,
  `cpf_usuario` varchar(25) NOT NULL,
  `cargo_usuario` varchar(30) NOT NULL,
  `login_usuario` varchar(10) NOT NULL,
  `senha_usuario` varchar(8) NOT NULL,
  `cadastradoem_usuario` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome_usuario`, `cpf_usuario`, `cargo_usuario`, `login_usuario`, `senha_usuario`, `cadastradoem_usuario`) VALUES
(1, 'Lúcio Paulo', '999999999-51', 'Gerente', 'lucio_paul', '11111111', '2021-08-29 00:36:23'),
(2, 'Maria Sousa', '999999999-52', 'Vendedor', 'maria_sous', '22222222', '2021-08-29 00:36:23'),
(3, 'Paula Silva', '999999999-53', 'Vendedor', 'paula_silv', '33333333', '2021-08-29 00:36:23'),
(4, 'Mário Costa', '999999999-54', 'Vendedor', 'mario_cost', '44444444', '2021-08-29 00:36:23'),
(5, 'Marcos Santos', '999999999-55', 'Vendedor', 'marcos_san', '55555555', '2021-08-29 00:36:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_vendas` int(12) NOT NULL,
  `id_usuario_vendas` int(4) NOT NULL,
  `id_cliente_vendas` int(11) NOT NULL,
  `id_produto_vendas` int(11) NOT NULL,
  `qt_produto_vendas` int(6) UNSIGNED NOT NULL,
  `cadastradoem_vendas` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_vendas`, `id_usuario_vendas`, `id_cliente_vendas`, `id_produto_vendas`, `qt_produto_vendas`, `cadastradoem_vendas`) VALUES
(1, 2, 1, 1, 3, '2021-08-29 00:56:27'),
(2, 3, 2, 2, 2, '2021-08-29 00:56:27'),
(3, 4, 3, 3, 4, '2021-08-29 00:56:27'),
(4, 5, 4, 4, 2, '2021-08-29 00:56:27'),
(5, 1, 5, 5, 3, '2021-08-29 00:56:27');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cpf_cliente` (`cpf_cliente`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id_fornecedor`),
  ADD UNIQUE KEY `cnpj_fornecedor` (`cnpj_fornecedor`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_fornecedor_produto` (`id_fornecedor_produto`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `cpf_usuario` (`cpf_usuario`),
  ADD UNIQUE KEY `login_usuario` (`login_usuario`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_vendas`),
  ADD KEY `id_cliente_vendas` (`id_cliente_vendas`),
  ADD KEY `id_produto_vendas` (`id_produto_vendas`),
  ADD KEY `id_usuario_vendas` (`id_usuario_vendas`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id_fornecedor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_vendas` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_fornecedor_produto`) REFERENCES `fornecedores` (`id_fornecedor`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_cliente_vendas`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_produto_vendas`) REFERENCES `produtos` (`id_produto`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_usuario_vendas`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
