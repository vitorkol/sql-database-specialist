INSERT INTO Cliente (idCliente, `Nome Completo`, Contato, perfil)
VALUES
  (1, 'João Silva', 'joao.silva@example.com', 'Vendedor Terceirizado'),
  (2, 'Maria Santos', 'maria.santos@example.com', 'Usuário'),
  (3, 'Lucas Oliveira', 'lucas.oliveira@example.com', 'Usuário'),
  (4, 'Julia Souza', 'julia.souza@example.com', 'Administrador'),
  (5, 'Pedro Costa', 'pedro.costa@example.com', 'Usuário'),
  (6, 'Fernanda Almeida', 'fernanda.almeida@example.com', 'Usuário'),
  (7, 'Ricardo Martins', 'ricardo.martins@example.com', 'Administrador'),
  (8, 'Camila Pereira', 'camila.pereira@example.com', 'Usuário'),
  (9, 'Gustavo Ferreira', 'gustavo.ferreira@example.com', 'Usuário'),
  (10, 'Carla Santos', 'carla.santos@example.com', 'Vendedor Terceirizado'),
  (11, 'Roberto Castro', 'roberto.castro@example.com', 'Usuário'),
  (12, 'Vanessa Souza', 'vanessa.souza@example.com', 'Usuário'),
  (13, 'Marcos Silva', 'marcos.silva@example.com', 'Fornecedor'),
  (14, 'Amanda Oliveira', 'amanda.oliveira@example.com', 'Usuário'),
  (15, 'Marcelo Costa', 'marcelo.costa@example.com', 'Usuário'),
  (16, 'Raquel Almeida', 'raquel.almeida@example.com', 'Fornecedor'),
  (17, 'Luiz Ferreira', 'luiz.ferreira@example.com', 'Usuário'),
  (18, 'Ana Paula Santos', 'ana.paula.santos@example.com', 'Usuário'),
  (19, 'Felipe Martins', 'felipe.martins@example.com', 'Fornecedor'),
  (20, 'Bruna Pereira', 'bruna.pereira@example.com', 'Usuário');

INSERT INTO Status (idStatus, Descrição)
VALUES
  (1, 'Disponível'),
  (2, 'Sem estoque'),
  (3, 'Limite baixo'),
  (4, 'Em processamento'),
  (5, 'Emitindo NFs-E'),
  (6, 'Em trânsito'),
  (7, 'Destinatário ausente'),
  (8, 'Entregua conlcuída');

INSERT INTO Pedido (idPedido, Cliente_idCliente, Descrição, `Título do pedido`, `Prioridade de Entrega`)
VALUES
  (1, 2, 'Notebook Dell Inspiron 14 polegadas', 'Notebook Dell', 'Alta'),
  (2, 3, 'Fone de ouvido bluetooth JBL', 'Fone de ouvido JBL', 'Média'),
  (3, 1, 'Livro Harry Potter e a Pedra Filosofal', 'Harry Potter e a Pedra Filosofal', 'Baixa'),
  (4, 4, 'Panela de Pressão Elétrica Mondial', 'Panela de Pressão Elétrica', 'Média'),
  (5, 5, 'Bicicleta Aro 29', 'Bicicleta Aro 29', 'Alta'),
  (6, 6, 'Câmera Fotográfica Canon EOS', 'Câmera Canon EOS', 'Alta'),
  (7, 7, 'Monitor LG UltraWide 29 polegadas', 'Monitor LG UltraWide', 'Média'),
  (8, 8, 'Livro A Arte da Guerra', 'A Arte da Guerra', 'Baixa'),
  (9, 9, 'Ferro de Passar Roupa Philips Walita', 'Ferro de Passar Philips Walita', 'Baixa'),
  (10, 10, 'Miniatura de Carro Ferrari F40', 'Miniatura Ferrari F40', 'Média'),
  (11, 2, 'Mouse sem fio Logitech M170', 'Mouse Logitech M170', 'Média'),
  (12, 3, 'Caixa de som portátil JBL', 'Caixa de som JBL', 'Baixa'),
  (13, 4, 'Livro As Crônicas de Nárnia', 'As Crônicas de Nárnia', 'Baixa'),
  (14, 5, 'Frigideira Antiaderente Tramontina', 'Frigideira Antiaderente', 'Média'),
  (15, 6, 'Instrumento Musical Ukulele', 'Ukulele', 'Alta'),
  (16, 7, 'Placa de Vídeo Nvidia GeForce RTX 3060', 'Placa de Vídeo Nvidia GeForce RTX 3060', 'Alta'),
  (17, 8, 'Livro O Pequeno Príncipe', 'O Pequeno Príncipe', 'Baixa'),
  (18, 9, 'Liquidificador Osterizer Classic', 'Liquidificador Osterizer Classic', 'Média'),
  (19, 10, 'Jogo de Tabuleiro War', 'War', 'Média'),
  (20, 1, 'Smartphone Samsung Galaxy S21', 'Samsung Galaxy S21', 'Alta');

INSERT INTO Produto (idProduto, Descrição, `Categoria do Produto`, `Valor Unitário`)
VALUES
  (1, 'Smartphone Samsung Galaxy S21', 'Eletrônicos', 4999.99),
  (2, 'Notebook Dell Inspiron 14 polegadas', 'Informática', 3599.99),
  (3, 'Fone de ouvido bluetooth JBL', 'Eletrônicos', 249.99),
  (4, 'Panela de Pressão Elétrica Mondial', 'Cozinha', 249.99),
  (5, 'Bicicleta Aro 29', 'Hobbies', 2999.99),
  (6, 'Câmera Fotográfica Canon EOS', 'Eletrônicos', 6599.99),
  (7, 'Monitor LG UltraWide 29 polegadas', 'Informática', 1599.99),
  (8, 'Livro A Arte da Guerra', 'Livros', 39.99),
  (9, 'Ferro de Passar Roupa Philips Walita', 'Cozinha', 129.99),
  (10, 'Miniatura de Carro Ferrari F40', 'Hobbies', 299.99),
  (11, 'Mouse sem fio Logitech M170', 'Informática', 49.99),
  (12, 'Caixa de som portátil JBL', 'Eletrônicos', 199.99),
  (13, 'Livro As Crônicas de Nárnia', 'Livros', 29.99),
  (14, 'Frigideira Antiaderente Tramontina', 'Cozinha', 89.99),
  (15, 'Instrumento Musical Ukulele', 'Hobbies', 399.99),
  (16, 'Placa de Vídeo Nvidia GeForce RTX 3060', 'Informática', 3999.99),
  (17, 'Livro O Pequeno Príncipe', 'Livros', 19.99),
  (18, 'Liquidificador Osterizer Classic', 'Cozinha', 199.99),
  (19, 'Jogo de Tabuleiro War', 'Hobbies', 129.99),
  (20, 'Smartwatch Samsung Galaxy Watch', 'Eletrônicos', 1299.99);

INSERT INTO Produto_pedido (Produto_idProduto, Pedido_idPedido, Quantidade, Status_idStatus)
VALUES
  (1, 1, 2, 4),
  (2, 2, 1, 5),
  (3, 3, 3, 6),
  (4, 4, 2, 7),
  (5, 5, 1, 8),
  (6, 6, 2, 4),
  (7, 7, 3, 5),
  (8, 8, 1, 6),
  (9, 9, 2, 7),
  (10, 10, 1, 8),
  (11, 11, 2, 4),
  (12, 12, 3, 5),
  (13, 13, 1, 6),
  (14, 14, 2, 7),
  (15, 15, 1, 8),
  (16, 16, 3, 4),
  (17, 17, 2, 5),
  (18, 18, 1, 6),
  (19, 19, 2, 7),
  (20, 20, 1, 8);

INSERT INTO Fornecedor (idFornecedor, `Razão Social`, `CNPJ`, `Contato`)
VALUES
  (1, 'Empresa do João ME', '12345678900001', 'João'),
  (2, 'Empresa da Maria SA', '12345678900002', 'Maria'),
  (3, 'Empresa do Pedro MEI', '12345678900003', 'Pedro'),
  (4, 'Empresa da Ana LTDA', '12345678900004', 'Ana'),
  (5, 'Empresa do Paulo ME', '12345678900005', 'Paulo');

INSERT INTO Produto_fornecedor (`Fornecedor_idFornecedor`, `Produto_idProduto`, `Quantidade`)
VALUES
  (1, 1, 100),
  (1, 2, 50),
  (2, 3, 200),
  (2, 4, 30),
  (3, 5, 150),
  (3, 6, 20),
  (4, 7, 80),
  (4, 8, 10),
  (5, 9, 120),
  (5, 10, 40),
  (1, 11, 70),
  (2, 12, 90),
  (3, 13, 180),
  (4, 14, 25),
  (5, 15, 60),
  (1, 16, 85),
  (2, 17, 20),
  (3, 18, 150),
  (4, 19, 70),
  (5, 20, 30);

INSERT INTO Estoque (`idEstoque`, `Local`, `Quantidade`)
VALUES
  (1, 'São Paulo - Loja 1', 100),
  (2, 'São Paulo - Loja 2', 150),
  (3, 'Rio de Janeiro - Loja 1', 80),
  (4, 'Rio de Janeiro - Loja 2', 50),
  (5, 'Belo Horizonte', 120),
  (6, 'Curitiba', 200),
  (7, 'Recife', 70),
  (8, 'Salvador', 40),
  (9, 'Porto Alegre', 90),
  (10, 'Brasília', 30);

INSERT INTO Produto_em_Estoque (Produto_idProduto, Estoque_idEstoque, Localização)
VALUES
(1, 1, 'Prateleira A - São Paulo - Loja 1'),
(2, 1, 'Prateleira B - São Paulo - Loja 1'),
(3, 2, 'Caixa 1 - São Paulo - Loja 2'),
(4, 2, 'Caixa 2 - São Paulo - Loja 2'),
(5, 3, 'Estojo 1 - Rio de Janeiro - Loja 1'),
(6, 3, 'Estojo 2 - Rio de Janeiro - Loja 1'),
(7, 4, 'Caixa 3 - Rio de Janeiro - Loja 2'),
(8, 4, 'Caixa 4 - Rio de Janeiro - Loja 2'),
(9, 5, 'Prateleira C - Belo Horizonte'),
(10, 5, 'Prateleira D - Belo Horizonte'),
(11, 1, 'Prateleira E - São Paulo - Loja 1'),
(12, 2, 'Caixa 3 - São Paulo - Loja 2'),
(13, 3, 'Prateleira F - Rio de Janeiro - Loja 1'),
(14, 4, 'Estojo 3 - Rio de Janeiro - Loja 2'),
(15, 5, 'Caixa 5 - Belo Horizonte'),
(16, 1, 'Prateleira G - São Paulo - Loja 1'),
(17, 2, 'Estojo 4 - São Paulo - Loja 2'),
(18, 3, 'Caixa 6 - Rio de Janeiro - Loja 1'),
(19, 4, 'Prateleira H - Rio de Janeiro - Loja 2'),
(20, 5, 'Estojo 5 - Belo Horizonte');

INSERT INTO `Vendedor Terceirizado` (`idVendedorTerceirizado`, `Razão Social`, `Local`, `Nome Fantasia`, `CNPJ`, `CPF`)
VALUES
  (1, 'Empresa A LTDA', 'São Paulo', 'Empresa A', '12345678000101', NULL),
  (2, 'Empresa B LTDA', 'Rio de Janeiro', 'Empresa B', NULL, '98765432101'),
  (3, 'Empresa C LTDA', 'Belo Horizonte', 'Empresa C', '55555555000103', NULL),
  (4, 'Empresa D LTDA', 'Recife', 'Empresa D', NULL, '77777777777'),
  (5, 'Empresa E LTDA', 'Brasília', 'Empresa E', NULL, '99999999999');

INSERT INTO `Produto_vendedor (terceirizado)` (`Vendedor_idVendedorTerceirizado`, `Produto_idProduto`, `Quantidade`)
VALUES
  (1, 1, 50),
  (2, 2, 100),
  (3, 3, 30),
  (4, 4, 80),
  (5, 5, 20),
  (1, 6, 70),
  (2, 7, 60),
  (3, 8, 40),
  (4, 9, 90),
  (5, 10, 10),
  (1, 11, 25),
  (2, 12, 75),
  (3, 13, 35),
  (4, 14, 85),
  (5, 15, 15),
  (1, 16, 45),
  (2, 17, 55),
  (3, 18, 65),
  (4, 19, 95),
  (5, 20, 5);


/*Quantidade de Clientes na base*/
select count(*) from Cliente;

/*Clientes e seus pedidos*/
select * from Cliente c, Pedido p 
    where c.idCliente = p.Cliente_idCliente

/*Situação do pedido por cliente*/
select c.`Nome Completo` as Cliente
     , p.idPedido as Pedido
     , s.Descrição as Status from Cliente c, Pedido p, Status s, Produto_pedido pp 
where c.idCliente = p.Cliente_idCliente and s.idStatus = pp.Status_idStatus

/*Clientes com pedido associado a produtos*/
select * from Cliente c
    inner join Pedido p ON (p.Cliente_idCliente = c.idCliente)
    inner join Produto_pedido pp ON (pp.Pedido_idPedido = p.idPedido)
where 1 = 1
group by c.idCliente

/*Quantidade de pedidos realizados por cliente*/
select c.idCliente
     , c.`Nome Completo` as Cliente
     , count(*) as `Total de Pedidos` from Cliente c
    inner join Pedido p ON (p.Cliente_idCliente = c.idCliente)
group by c.idCliente

/*Fornecedores que atuam como Vendedores Terceirizados*/
select f.idFornecedor as Fornecedor
     , vt.idVendedorTerceirizado as Vendedor
     , f.`Razão Social`
     , vt.`Nome Fantasia`
     , f.CNPJ
     , vt.Local as Localização
     , f.Contato from Fornecedor f
inner join `Vendedor Terceirizado` vt ON (f.CNPJ = vt.CNPJ)

/*Relação de nomes dos fornecedores e nomes dos produtos*/
select f.idFornecedor as Fornecedor
     , f.`Razão Social`
     , f.CNPJ, f.Contato
     , p.idProduto as `Cod. Produto`
     , p.Descrição, p.`Categoria do Produto`
     , pf.Quantidade, p.`Valor Unitário`
     , round((pf.Quantidade * p.`Valor Unitário`), 2) as `Valor total dos ativos` from Fornecedor f
inner join Produto_fornecedor pf ON (pf.Fornecedor_idFornecedor = f.idFornecedor)
inner join Produto p ON (p.idProduto = pf.Produto_idProduto)

/*Relação de produtos fornecedores e estoques*/
select f.idFornecedor as Fornecedor
     , f.`Razão Social`, f.CNPJ
     , f.Contato, p.idProduto as `Cod. Produto`
     , p.Descrição, p.`Categoria do Produto`
     , pf.Quantidade, pe.Localização
     , pe.Estoque_idEstoque as `Cód do Estoque`
     , p.`Valor Unitário`
     ,  round((pf.Quantidade * p.`Valor Unitário`), 2) as `Valor total dos ativos` from Fornecedor f
inner join Produto_fornecedor pf ON (pf.Fornecedor_idFornecedor = f.idFornecedor)
inner join Produto p ON (p.idProduto = pf.Produto_idProduto)
inner join Produto_em_Estoque pe ON (pe.Produto_idProduto = pf.Produto_idProduto)