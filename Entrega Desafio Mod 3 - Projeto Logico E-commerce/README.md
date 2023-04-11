## Descrição do Desafio
Replique a modelagem do projeto lógico de banco de dados para o cenário de e-commerce. Fique atento as definições de chave primária e estrangeira, assim como as constraints presentes no cenário modelado. Perceba que dentro desta modelagem haverá relacionamentos presentes no modelo EER. Sendo assim, consulte como proceder para estes casos. Além disso, aplique o mapeamento de modelos aos refinamentos propostos no módulo de modelagem conceitual.

Assim como demonstrado durante o desafio, realize a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realize a persistência de dados para realização de testes. Especifique ainda queries mais complexas dos que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

1. Recuperações simples com SELECT Statement
2. Filtros com WHERE Statement
3. Crie expressões para gerar atributos derivados
4. Defina ordenações dos dados com ORDER BY
5. Condições de filtros aos grupos – HAVING Statement
6. Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

## Diretrizes

1. Não há um mínimo de queries a serem realizadas;
2. Os tópicos supracitados devem estar presentes nas queries;
3. Elabore perguntas que podem ser respondidas pelas consultas;
4. As cláusulas podem estar presentes em mais de uma query;
5. O projeto deverá ser adicionado a um repositório do Github para futura avaliação do desafio de projeto. Adicione ao Readme a descrição do projeto lógico para fornecer o contexto sobre seu esquema lógico apresentado.

## Objetivo:
[Relembrando] Aplique o mapeamento para o  cenário:

“Refine o modelo apresentado acrescentando os seguintes pontos”

1. Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
2. Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
3. Entrega – Possui status e código de rastreio;

#### Algumas das perguntas que podes fazer para embasar as queries SQL:

1. Quantos pedidos foram feitos por cada cliente?
2. Algum vendedor também é fornecedor?
3. Relação de produtos fornecedores e estoques;
4. Relação de nomes dos fornecedores e nomes dos produtos;