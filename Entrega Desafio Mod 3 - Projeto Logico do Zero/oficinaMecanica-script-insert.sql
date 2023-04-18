INSERT INTO Cliente (idCliente, CPF, CNPJ, pNome, uNome, Email, nCelular)
VALUES
(1, 12345678910, NULL, 'José', 'Silva', 'jose.silva@gmail.com', 11987654321),
(2, 10987654321, NULL, 'Maria', 'Souza', 'maria.souza@hotmail.com', 11976543210),
(3, 98765432198, NULL, 'Ana', 'Fernandes', 'ana.fernandes@yahoo.com.br', 11965432109),
(4, 11111111111, NULL, 'João', 'Pereira', 'joao.pereira@gmail.com', 11954321098),
(5, 22222222222, NULL, 'Mariana', 'Gomes', 'mariana.gomes@hotmail.com', 11943210987),
(6, 33333333333, NULL, 'Lucas', 'Santos', 'lucas.santos@yahoo.com.br', 11932109876),
(7, 44444444444, NULL, 'Gabriela', 'Oliveira', 'gabriela.oliveira@gmail.com', 11921098765),
(8, 55555555555, NULL, 'Ricardo', 'Costa', 'ricardo.costa@hotmail.com', 11910987654),
(9, 66666666666, NULL, 'Bruna', 'Ribeiro', 'bruna.ribeiro@yahoo.com.br', 11809876543),
(10, 77777777777, NULL, 'Fernando', 'Siqueira', 'fernando.siqueira@gmail.com', 11898765432),
(11, 88888888888, NULL, 'Patrícia', 'Lima', 'patricia.lima@hotmail.com', 11887654321),
(12, 99999999999, NULL, 'Roberto', 'Carvalho', 'roberto.carvalho@yahoo.com.br', 11876543210),
(13, NULL, 11111111111111, 'Luciana', 'Almeida', 'luciana.almeida@gmail.com', 11765432109),
(14, NULL, 22222222222222, 'Victor', 'Azevedo', 'victor.azevedo@hotmail.com', 11754321098),
(15, NULL, 33333333333333, 'Leandro', 'Pinto', 'leandro.pinto@yahoo.com.br', 11743210987),
(16, NULL, 44444444444444, 'Marcelo', 'Nunes', 'marcelo.nunes@gmail.com', 11732109876),
(17, NULL, 55555555555555, 'Carla', 'Saraiva', 'carla.saraiva@hotmail.com', 11721098765);

INSERT INTO Veiculo (idVeiculo, Cliente_idCliente, Placa, Marca, Modelo) VALUES
(1, 1, 'ABC1234', 'Fiat', 'Uno'),
(2, 1, 'DEF5678', 'Chevrolet', 'Onix'),
(3, 2, 'GHI9012', 'Volkswagen', 'Gol'),
(4, 2, 'JKL3456', 'Ford', 'Fiesta'),
(5, 3, 'MNO7890', 'Renault', 'Sandero'),
(6, 3, 'PQR2345', 'Fiat', 'Palio'),
(7, 4, 'STU6789', 'Honda', 'Civic'),
(8, 4, 'VWX1234', 'Toyota', 'Corolla'),
(9, 5, 'YZA5678', 'Nissan', 'March'),
(10, 5, 'BCD9012', 'Peugeot', '208'),
(11, 6, 'EFG3456', 'Fiat', 'Siena'),
(12, 6, 'HIJ7890', 'Chevrolet', 'Prisma'),
(13, 7, 'KLM2345', 'Volkswagen', 'Voyage'),
(14, 7, 'NOP6789', 'Ford', 'Ka'),
(15, 8, 'QRS1234', 'Renault', 'Logan'),
(16, 8, 'TUV5678', 'Fiat', 'Mobi'),
(17, 9, 'WXY9012', 'Honda', 'Fit'),
(18, 10, 'ZAB3456', 'Toyota', 'Etios'),
(19, 11, 'CDE7890', 'Nissan', 'Versa'),
(20, 12, 'FGH2345', 'Peugeot', '308');

INSERT INTO Mecanico (idMecanico, Matricula, Localização, Especilidade)
VALUES 
  (1, 12345, 'São Paulo', 'Motor'),
  (2, 23456, 'Rio de Janeiro', 'Suspensão'),
  (3, 34567, 'Belo Horizonte', 'Freios'),
  (4, 45678, 'Porto Alegre', 'Ar condicionado'),
  (5, 56789, 'Curitiba', 'Transmissão'),
  (6, 67890, 'Salvador', 'Injeção eletrônica'),
  (7, 78901, 'Fortaleza', 'Direção'),
  (8, 89012, 'Recife', 'Câmbio'),
  (9, 90123, 'Brasília', 'Elétrica'),
  (10, 01234, 'Manaus', 'Motor');

INSERT INTO Pedido (idPedido, Cliente_idCliente, Veiculo_idVeiculo, Data, Descrição) VALUES
(1, 1, 1, '2022-03-15', 'Troca de óleo e filtro'),
(2, 1, 2, '2022-03-16', 'Revisão geral'),
(3, 2, 3, '2022-03-17', 'Substituição da correia dentada'),
(4, 2, 4, '2022-03-18', 'Balanceamento e alinhamento'),
(5, 3, 5, '2022-03-19', 'Reparo no motor'),
(6, 3, 6, '2022-03-20', 'Troca dos amortecedores'),
(7, 4, 7, '2022-03-21', 'Troca das pastilhas de freio'),
(8, 4, 8, '2022-03-22', 'Reparo na suspensão'),
(9, 5, 9, '2022-03-23', 'Troca da embreagem'),
(10, 5, 10, '2022-03-24', 'Troca do radiador'),
(11, 6, 11, '2022-03-25', 'Troca dos pneus'),
(12, 6, 12, '2022-03-26', 'Revisão da injeção eletrônica'),
(13, 7, 13, '2022-03-27', 'Troca das velas e cabos de vela'),
(14, 7, 14, '2022-03-28', 'Troca do filtro de ar'),
(15, 8, 15, '2022-03-29', 'Reparo na caixa de direção'),
(16, 8, 16, '2022-03-30', 'Revisão no sistema elétrico'),
(17, 9, 17, '2022-03-31', 'Reparo na transmissão'),
(18, 9, 18, '2022-04-01', 'Troca da bateria'),
(19, 10, 19, '2022-04-02', 'Reparo no ar condicionado'),
(20, 10, 20, '2022-04-03', 'Reparo na bomba de combustível');

INSERT INTO Equipe_Mecanica_Pedido (idEMP, Pedido_idPedido, Mecanico_idMecanico, Laudo, `Data Ingresso`) VALUES
(1, 1, 1, 'Troca de óleo e filtros', '2023-04-01'),
(2, 1, 2, 'Verificação de freios', '2023-04-01'),
(3, 1, 3, 'Reparo no sistema de arrefecimento', '2023-04-01'),
(4, 2, 1, 'Troca de correia dentada', '2023-04-02'),
(5, 2, 4, 'Substituição da embreagem', '2023-04-02'),
(6, 2, 5, 'Ajuste na suspensão dianteira', '2023-04-02'),
(7, 3, 3, 'Diagnóstico de falha elétrica', '2023-04-03'),
(8, 3, 6, 'Troca de bateria', '2023-04-03'),
(9, 3, 7, 'Revisão no sistema de injeção', '2023-04-03'),
(10, 4, 2, 'Reparo na bomba de combustível', '2023-04-04'),
(11, 4, 5, 'Alinhamento e balanceamento', '2023-04-04'),
(12, 4, 8, 'Troca de velas e cabos', '2023-04-04'),
(13, 5, 4, 'Reparo no sistema de direção', '2023-04-05'),
(14, 5, 7, 'Troca de sensor de oxigênio', '2023-04-05'),
(15, 5, 9, 'Revisão geral', '2023-04-05');

INSERT INTO Orcamento (idOrcamento, Mecanico_idMecanico, `Data Emissão`, `Data Entrega`, `Total Estimado`, Status_idStatus) VALUES 
(1, 1, '2023-04-17', '2023-04-18', 500.00, 1),
(2, 2, '2023-04-17', '2023-04-19', 750.00, 1),
(3, 3, '2023-04-18', '2023-04-20', 1000.00, 2),
(4, 1, '2023-04-19', '2023-04-21', 800.00, 3),
(5, 4, '2023-04-20', '2023-04-22', 1500.00, 2),
(6, 5, '2023-04-21', '2023-04-23', 1200.00, 1),
(7, 6, '2023-04-22', '2023-04-24', 1800.00, 3),
(8, 2, '2023-04-23', '2023-04-25', 900.00, 2),
(9, 3, '2023-04-24', '2023-04-26', 2000.00, 1),
(10, 4, '2023-04-25', '2023-04-27', 1300.00, 3),
(11, 5, '2023-04-26', '2023-04-28', 1000.00, 2),
(12, 6, '2023-04-27', '2023-04-29', 1500.00, 1),
(13, 1, '2023-04-28', '2023-04-30', 700.00, 2),
(14, 2, '2023-04-29', '2023-05-01', 950.00, 3),
(15, 3, '2023-04-30', '2023-05-02', 1800.00, 1);

INSERT INTO Peca (idPeca, Registro, Nome, `Valor Unitario`) 
VALUES 
  (1, 'ABC123', 'Amortecedor Dianteiro', 150.00),
  (2, 'DEF456', 'Amortecedor Traseiro', 120.00),
  (3, 'GHI789', 'Pastilha de Freio', 70.00),
  (4, 'JKL012', 'Disco de Freio', 180.00),
  (5, 'MNO345', 'Vela de Ignição', 30.00);

INSERT INTO Peca_Orcamento (idPecaOrcamento, Orcamento_idOrcamento, Peca_idPeca, `Total Peca_Orcamento`)
VALUES 
(1, 1, 1, 100.00),
(2, 1, 2, 50.00),
(3, 1, 3, 75.00),
(4, 2, 2, 50.00),
(5, 2, 4, 60.00),
(6, 2, 5, 80.00),
(7, 3, 1, 100.00),
(8, 3, 4, 45.00),
(9, 3, 5, 55.00),
(10, 4, 5, 40.00),
(11, 4, 3, 30.00),
(12, 4, 1, 25.00),
(13, 5, 2, 70.00),
(14, 5, 3, 85.00),
(15, 5, 4, 90.00);

INSERT INTO Mao_Obra (idMaoObra, Descrição, `Total Estimado`) VALUES
(1, 'Troca de óleo', 120.00),
(2, 'Substituição de pastilhas de freio', 250.00),
(3, 'Limpeza do sistema de ar condicionado', 180.00),
(4, 'Troca de filtro de combustível', 90.00),
(5, 'Troca de correia dentada', 450.00),
(6, 'Revisão geral do sistema elétrico', 350.00),
(7, 'Troca de amortecedores', 800.00),
(8, 'Reparo no sistema de freios', 350.00),
(9, 'Troca de velas', 120.00),
(10, 'Troca de correia de acessórios', 220.00),
(11, 'Reparo no sistema de arrefecimento', 420.00),
(12, 'Troca de pneus', 800.00),
(13, 'Revisão geral da suspensão', 650.00),
(14, 'Troca de bateria', 180.00),
(15, 'Troca de lâmpadas', 80.00);

INSERT INTO Servico_Orcamento (Orçamento_idOrcamento, `Total Orcamento`, MaoObra_idMaoObra) VALUES
(1, 500.00, 1),
(2, 1000.00, 2),
(3, 250.00, 3),
(4, 750.00, 4),
(5, 800.00, 5),
(6, 1500.00, 6),
(7, 1200.00, 7),
(8, 300.00, 8),
(9, 900.00, 9),
(10, 600.00, 10),
(11, 400.00, 11),
(12, 700.00, 12),
(13, 1100.00, 13),
(14, 850.00, 14),
(15, 950.00, 15);

INSERT INTO Ordem_Servico (idOrdemServico, Orçamento_idOrçamento, Mecanico_idMecanico) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 8),
(10, 10, 9),
(11, 11, 9),
(12, 12, 9),
(13, 13, 10),
(14, 14, 10),
(15, 15, 10);

INSERT INTO Peca_Ordem_Servico 
(idPecaOrdemServico, Peca_idPeca, OrdemServico_idOrdemServico, `Total Estimado`)
VALUES 
(1, 1, 1, 200.00),
(2, 2, 1, 150.00),
(3, 3, 2, 300.00),
(4, 1, 3, 250.00),
(5, 2, 3, 100.00),
(6, 3, 3, 150.00),
(7, 4, 4, 500.00),
(8, 5, 4, 750.00),
(9, 2, 5, 200.00),
(10, 4, 5, 150.00),
(11, 5, 6, 400.00),
(12, 3, 6, 350.00),
(13, 1, 7, 150.00),
(14, 5, 7, 100.00),
(15, 2, 7, 250.00);

INSERT INTO Servico_Ordem_Servico (idServicoOrdemServico, MaoObra_idMaoObra, OrdemServico_idOrdemServico, `Total Servico`) VALUES
(1, 1, 1, 100.00),
(2, 2, 1, 50.00),
(3, 3, 1, 75.00),
(4, 4, 2, 125.00),
(5, 5, 2, 200.00),
(6, 6, 2, 150.00),
(7, 7, 3, 50.00),
(8, 8, 3, 100.00),
(9, 9, 3, 75.00),
(10, 10, 4, 100.00),
(11, 11, 4, 75.00),
(12, 12, 4, 150.00),
(13, 13, 5, 200.00),
(14, 14, 5, 50.00),
(15, 15, 5, 100.00);

/*Quantidade de Clientes na base*/
select count(*) from Cliente;

/*Quantidade de Orçamentos na base*/
select count(*) from Orcamento;

/*Total de Veiculos cadastrados por cliente*/
select concat(c.pNome,' ', uNome) as `Cliente`, count(*) as `Total Veiculos` from Cliente c
    inner join Veiculo v on (v.Cliente_idCliente = c.idCliente)
where 1 = 1 group by v.Cliente_idCliente;

/*Total de Mecanicos por localização*/
select count(*) as `Total Mecanicos`, `Localização` from Mecanico group by `Localização`;

/*Total de pedidos por status*/
Select count(*) as `Total de pedidos`, 
    case
        when o.Status_idStatus = 1 then 'Processando'
        when o.Status_idStatus = 2 then 'Cancelado'
        else 'Concluído'
    end as `Status` from Orcamento o
group by o.Status_idStatus


/*Analise do orcamento filtrando pelo status cancelado*/
Select o.idOrcamento, 
     case
         when o.Status_idStatus = 1 then 'Processando'
         when o.Status_idStatus = 2 then 'Cancelado'
         else 'Concluído'
      end as `Status`, o.`Data Emissão`, o.`Data Entrega`,
      datediff(o.`Data Entrega`, o.`Data Emissão`) as `Quantidade de Dias`,
      case
          when datediff(o.`Data Entrega`, o.`Data Emissão`) > 60 then (datediff(o.`Data Entrega`, o.`Data Emissão`) - 30)
          else 'Dentro do Prazo'
      end as `Dias em Atraso` from Orcamento o
having Status="Cancelado"