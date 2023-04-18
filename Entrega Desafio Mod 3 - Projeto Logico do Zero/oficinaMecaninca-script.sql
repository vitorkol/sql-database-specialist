DROP SCHEMA IF EXISTS `oficinaMecanica` ;


CREATE SCHEMA IF NOT EXISTS `oficinaMecanica` DEFAULT CHARACTER SET utf8 ;
USE `oficinaMecanica` ;


CREATE TABLE `Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `CPF` INT(11) NULL,
  `CNPJ` INT(15) NULL,
  `pNome` VARCHAR(45) NOT NULL,
  `uNome` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(50) NOT NULL,
  `nCelular` INT(10) NOT NULL,
  PRIMARY KEY (`idCliente`));

CREATE TABLE `Veiculo` (
  `idVeiculo` INT NOT NULL AUTO_INCREMENT,
  `Cliente_idCliente` INT NOT NULL,
  `Placa` VARCHAR(10) NOT NULL,
  `Marca` VARCHAR(50) NOT NULL,
  `Modelo` VARCHAR(100) NULL,
  PRIMARY KEY (`idVeiculo`),
  CONSTRAINT `fk_Veiculo_1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `oficinaMecanica`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Mecanico` (
  `idMecanico` INT NOT NULL AUTO_INCREMENT,
  `Matricula` INT(15) NOT NULL,
  `Localização` VARCHAR(200) NOT NULL,
  `Especilidade` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idMecanico`));

CREATE TABLE `Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `Cliente_idCliente` INT NOT NULL,
  `Veiculo_idVeiculo` INT NOT NULL,
  `Data` DATE NOT NULL,
  `Descrição` LONGTEXT NULL,
  PRIMARY KEY (`idPedido`),
  CONSTRAINT `fk_Cliente_has_Mecanico_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `oficinaMecanica`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Veiculo1`
    FOREIGN KEY (`Veiculo_idVeiculo`)
    REFERENCES `oficinaMecanica`.`Veiculo` (`idVeiculo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Equipe_Mecanica_Pedido` (
  `idEMP` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificação da equipe mecanica em relação ao Pedido',
  `Pedido_idPedido` INT NOT NULL,
  `Mecanico_idMecanico` INT NOT NULL,
  `Laudo` LONGTEXT NOT NULL,
  `Data Ingresso` DATE NOT NULL,
  PRIMARY KEY (`idEMP`, `Mecanico_idMecanico`),
  CONSTRAINT `fk_Pedido_has_Mecanico_Pedido1`
    FOREIGN KEY (`Pedido_idPedido`)
    REFERENCES `oficinaMecanica`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_has_Mecanico_Mecanico1`
    FOREIGN KEY (`Mecanico_idMecanico`)
    REFERENCES `oficinaMecanica`.`Mecanico` (`idMecanico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Orcamento` (
  `idOrcamento` INT NOT NULL,
  `Mecanico_idMecanico` INT NOT NULL,
  `Data Emissão` DATE NOT NULL,
  `Data Entrega` DATE NOT NULL,
  `Total Estimado` DECIMAL(18,2) NOT NULL,
  `Status_idStatus` INT NOT NULL,
  PRIMARY KEY (`idOrcamento`),
  CONSTRAINT `fk_Orcamento_Mecanico1`
    FOREIGN KEY (`Mecanico_idMecanico`)
    REFERENCES `oficinaMecanica`.`Mecanico` (`idMecanico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Peca` (
  `idPeca` INT NOT NULL,
  `Registro` VARCHAR(20) NOT NULL,
  `Nome` VARCHAR(100) NOT NULL,
  `Valor Unitario` DECIMAL(18,2) NOT NULL,
  PRIMARY KEY (`idPeca`));

CREATE TABLE `Peca_Orcamento` (
  `idPecaOrcamento` INT NOT NULL,
  `Orcamento_idOrcamento` INT NOT NULL,
  `Peca_idPeca` INT NOT NULL,
  `Total Peca_Orcamento` DECIMAL(18,2) NOT NULL,
  PRIMARY KEY (`idPecaOrcamento`),
  CONSTRAINT `fk_ITEM_Peca_Orcamento1`
    FOREIGN KEY (`Orcamento_idOrcamento`)
    REFERENCES `oficinaMecanica`.`Orcamento` (`idOrcamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ITEM_Peca_Peca1`
    FOREIGN KEY (`Peca_idPeca`)
    REFERENCES `oficinaMecanica`.`Peca` (`idPeca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Mao_Obra` (
  `idMaoObra` INT NOT NULL,
  `Descrição` VARCHAR(100) NOT NULL COMMENT 'Descrição da mão de obra executada em um Servico',
  `Total Estimado` DECIMAL(18,2) NOT NULL COMMENT 'Total estimado da mão de obra a ser executado em um Servico',
  PRIMARY KEY (`idMaoObra`));

CREATE TABLE `Servico_Orcamento` (
  `idServicoOrcamento` INT NOT NULL AUTO_INCREMENT,
  `Orcamento_idOrcamento` INT NOT NULL,
  `Total Orcamento` DECIMAL(18,2) NOT NULL,
  `MaoObra_idMaoObra` INT NOT NULL,
  PRIMARY KEY (`idServicoOrcamento`, `Orcamento_idOrcamento`),
  CONSTRAINT `fk_Servico_Orcamento_Orcamento1`
    FOREIGN KEY (`Orcamento_idOrcamento`)
    REFERENCES `oficinaMecanica`.`Orcamento` (`idOrcamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Servico_Orcamento_Mao_Obra1`
    FOREIGN KEY (`MaoObra_idMaoObra`)
    REFERENCES `oficinaMecanica`.`Mao_Obra` (`idMaoObra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Ordem_Servico` (
  `idOrdemServico` INT NOT NULL,
  `Orcamento_idOrcamento` INT NOT NULL,
  `Mecanico_idMecanico` INT NOT NULL,
  PRIMARY KEY (`idOrdemServico`),
  CONSTRAINT `fk_Ordem_Servico_Orcamento1`
    FOREIGN KEY (`Orcamento_idOrcamento`)
    REFERENCES `oficinaMecanica`.`Orcamento` (`idOrcamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ordem_Servico_Mecanico1`
    FOREIGN KEY (`Mecanico_idMecanico`)
    REFERENCES `oficinaMecanica`.`Mecanico` (`idMecanico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Peca_Ordem_Servico` (
  `idPecaOrdemServico` INT NOT NULL,
  `Peca_idPeca` INT NOT NULL,
  `OrdemServico_idOrdemServico` INT NOT NULL,
  `Total Estimado` DECIMAL(18,2) NOT NULL,
  PRIMARY KEY (`idPecaOrdemServico`),
  CONSTRAINT `fk_Peca_Ordem_Servico_Peca1`
    FOREIGN KEY (`Peca_idPeca`)
    REFERENCES `oficinaMecanica`.`Peca` (`idPeca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Peca_Ordem_Servico_Ordem_Servico1`
    FOREIGN KEY (`OrdemServico_idOrdemServico`)
    REFERENCES `oficinaMecanica`.`Ordem_Servico` (`idOrdemServico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `Servico_Ordem_Servico` (
  `idServicoOrdemServico` INT NOT NULL,
  `MaoObra_idMaoObra` INT NOT NULL,
  `OrdemServico_idOrdemServico` INT NOT NULL,
  `Total Servico` DECIMAL(18,2) NOT NULL,
  PRIMARY KEY (`idServicoOrdemServico`),
  CONSTRAINT `fk_Servico_Ordem_Servico_Mao_Obra1`
    FOREIGN KEY (`MaoObra_idMaoObra`)
    REFERENCES `oficinaMecanica`.`Mao_Obra` (`idMaoObra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Servico_Ordem_Servico_Ordem_Servico1`
    FOREIGN KEY (`OrdemServico_idOrdemServico`)
    REFERENCES `oficinaMecanica`.`Ordem_Servico` (`idOrdemServico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);