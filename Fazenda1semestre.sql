CREATE DATABASE `fazenda-bd`;
CREATE TABLE `Compras` (
 `id` int(11) NOT NULL,
 `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 `produto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 `qtd` int(11) DEFAULT NULL,
 `dt_compra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `Compras` (`id`, `nome`, `produto`, `qtd`, `dt_compra`) VALUES
(1, 'Fazenda Sao Francisco', 'sementes de girassol', 900, '2020-08-09'),
(2, 'Comunidade Rural Apaga Fogo', 'sementes de girassol', 1200, '2020-07-14');
CREATE TABLE `Equipamentos` (
 `id` int(11) NOT NULL,
 `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
10
INSERT INTO `Equipamentos` (`id`, `nome`, `tipo`) VALUES
(1, 'colheitadeira', 'motorizado'),
(2, 'ceifadora', 'motorizado');
CREATE TABLE `Funcionarios` (
 `id` int(11) NOT NULL,
 `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 `cpf` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
 `salario` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `Funcionarios` (`id`, `nome`, `cpf`, `salario`) VALUES
(1, 'Roberto Carlos', '53698702134', '1040'),
(2, 'Raul Seixas', '40236902349', '1040'),
(3, 'Elvis Presley', '43749314539', '2650'),
(4, 'Hebert Viana', '33793454294', '2650');
CREATE TABLE `Produc_Leite` (
 `id` int(11) NOT NULL,
 `especie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 `data_ordenha` date DEFAULT NULL,
 `temp_leite` int(11) DEFAULT NULL,
 `produtividade` int(11) DEFAULT NULL,
 `inseminacao` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
 `est_parto` date DEFAULT NULL,
 `secagem` date DEFAULT NULL,
 `mm_rumina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `Produc_Leite` (`id`, `especie`, `data_ordenha`, `temp_leite`, 
11
`produtividade`, `inseminacao`, `est_parto`, `secagem`, `mm_rumina`) VALUES
(1, 'marina', '2020-07-13', 33, 1500, 'nao', '2020-09-25', '2021-04-29', 3600),
(2, 'leiteira', '2020-05-22', 39, 2600, 'nao', '2021-02-13', '2021-10-15', 3600);
CREATE TABLE `Produtos` (
 `id` int(11) NOT NULL,
 `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
 `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 `qtd_estoque` int(11) DEFAULT NULL,
 `preco` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `Produtos` (`id`, `nome`, `tipo`, `qtd_estoque`, `preco`) VALUES
(1, 'sementes de girassol', 'sementes', 500, 20),
(2, 'enxada', 'material', 300, 70);
CREATE TABLE `Varejistas` (
 `id` int(11) NOT NULL,
 `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 `ult_compra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `Varejistas` (`id`, `nome`, `ult_compra`) VALUES
(1, 'Fazenda Sao Francisco', '2020-01-23'),
(2, 'Comunidade Rural Apaga Fogo', '2020-04-15');
ALTER TABLE `Compras`
 ADD PRIMARY KEY (`id`);
ALTER TABLE `Equipamentos`
12
 ADD PRIMARY KEY (`id`);
ALTER TABLE `Funcionarios`
 ADD PRIMARY KEY (`id`);
ALTER TABLE `Produc_Leite`
 ADD PRIMARY KEY (`id`);
ALTER TABLE `Produtos`
 ADD PRIMARY KEY (`id`);
ALTER TABLE `Varejistas`
 ADD PRIMARY KEY (`id`);
ALTER TABLE `Compras`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `Equipamentos`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `Funcionarios`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `Produc_Leite`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `Produtos`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `Varejistas`
13
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
SELECT A.nome, B.nome FROM Compras as A INNER JOIN Varejistas as B o
n A.nome = B.nome;
SELECT COUNT(*) FROM Funcionarios;
SELECT COUNT(DISTINCT nome) FROM Compras;
SELECT MAX(salario) FROM Funcionarios;
