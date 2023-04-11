
DROP DATABASE IF EXISTS `ecommerce` ;


CREATE DATABASE `ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `ecommerce`;

CREATE TABLE `Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `Nome completo` VARCHAR(45) NULL,
  `Contato` VARCHAR(45) NULL,
  `perfil` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`));

CREATE TABLE `Status` (
  `idStatus` INT NOT NULL,
  `Descrição` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStatus`));

CREATE TABLE `Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `Cliente_idCliente` INT NOT NULL,
  `Descrição` VARCHAR(255) NULL,
  `Título do pedido` VARCHAR(45) NULL,
  `Prioridade de Entrega` ENUM('Baixa', 'Média', 'Alta') NULL DEFAULT 'Baixa',
  PRIMARY KEY (`idPedido`, `Cliente_idCliente`),
  CONSTRAINT `fk_Pedido_Cliente2`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `ecommerce`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `Descrição` VARCHAR(45) NULL,
  `Categoria do Produto` ENUM('Eletrônicos', 'Informática', 'Livros', 'Cozinha', 'Hobbies') NOT NULL,
  `Valor Unitário` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProduto`));

CREATE TABLE `Fornecedor` (
  `idFornecedor` INT NOT NULL,
  `Razão Social` VARCHAR(45) NULL,
  `CNPJ` CHAR(15) NOT NULL,
  `Contato` VARCHAR(45) NULL,
  PRIMARY KEY (`idFornecedor`));

CREATE TABLE `Produto_fornecedor` (
  `Fornecedor_idFornecedor` INT NOT NULL,
  `Produto_idProduto` INT NOT NULL,
  `Quantidade` INT NULL,
  PRIMARY KEY (`Fornecedor_idFornecedor`, `Produto_idProduto`),
  CONSTRAINT `fk_Fornecedor_has_Produto_Fornecedor`
    FOREIGN KEY (`Fornecedor_idFornecedor`)
    REFERENCES `ecommerce`.`Fornecedor` (`idFornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fornecedor_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Estoque` (
  `idEstoque` INT NOT NULL,
  `Local` VARCHAR(45) NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`idEstoque`));


CREATE TABLE `Produto_em_Estoque` (
  `Produto_idProduto` INT NOT NULL,
  `Estoque_idEstoque` INT NOT NULL,
  `Localização` VARCHAR(45) NULL,
  PRIMARY KEY (`Produto_idProduto`, `Estoque_idEstoque`),
  CONSTRAINT `fk_Produto_has_Estoque_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_has_Estoque_Estoque1`
    FOREIGN KEY (`Estoque_idEstoque`)
    REFERENCES `ecommerce`.`Estoque` (`idEstoque`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Produto_pedido` (
  `Produto_idProduto` INT NOT NULL,
  `Pedido_idPedido` INT NOT NULL,
  `Quantidade` VARCHAR(45) NOT NULL,
  `Status_idStatus` INT NOT NULL,
  PRIMARY KEY (`Produto_idProduto`, `Pedido_idPedido`),
  CONSTRAINT `fk_Produto_has_Pedido_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_has_Pedido_Pedido1`
    FOREIGN KEY (`Pedido_idPedido`)
    REFERENCES `ecommerce`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Vendedor Terceirizado` (
  `idVendedorTerceirizado` INT NOT NULL AUTO_INCREMENT,
  `Razão Social` VARCHAR(45) NOT NULL COMMENT 'constrain',
  `Local` VARCHAR(45) NULL,
  `Nome Fantasia` VARCHAR(45) NULL,
  `CNPJ` CHAR(15) NULL,
  `CPF` CHAR(11) NULL,
  PRIMARY KEY (`idVendedorTerceirizado`));

CREATE TABLE `Produto_vendedor (terceirizado)` (
  `Vendedor_idVendedorTerceirizado` INT NOT NULL AUTO_INCREMENT,
  `Produto_idProduto` INT NOT NULL,
  `Quantidade` INT NULL,
  PRIMARY KEY (`Vendedor_idVendedorTerceirizado`, `Produto_idProduto`),
  CONSTRAINT `fk_Terceiro - Vendedor_has_Produto_Terceiro - Vendedor1`
    FOREIGN KEY (`Vendedor_idVendedorTerceirizado`)
    REFERENCES `ecommerce`.`Vendedor Terceirizado` (`idVendedorTerceirizado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Terceiro - Vendedor_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);