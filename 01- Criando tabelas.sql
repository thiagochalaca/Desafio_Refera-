/* Criando tabelas do banco de dados REFERA */

CREATE TABLE refera.clientes (
	
	ClienteID char (3),
	Cliente varchar (30),
	NomeContato varchar (30),
	Endereco varchar (100),
	Cidade varchar (30),
	Pais varchar (15),
	PaisCodigo varchar (5),
	Regiao varchar (30),
	CEP char (15),
	Latitude char (20),
	Longitude char (20),
	Fax varchar (20),
	Telefone varchar (20)

);

CREATE TABLE refera.categoria (
	
	CategoriaID char (3),
	Categoria varchar (20),
	Departamento varchar (20),
	Descricao varchar (30)

);

CREATE TABLE refera.escritorio (
	
	Escritorio char (3),
	EscritorioLocalizacao varchar (15)

);

CREATE TABLE refera.fornecedores (
	
	FornecedorID char (3),
	Fornecedor varchar (30),
	FornecedorContato varchar (30),
	FornecedorPais varchar (30)

);

CREATE TABLE refera.funcionarios (
	
	FuncionarioID char (3),
	Extensao char (15),
	NomeFuncionario varchar (30),
	Genero char (1),
	DataAdmissao date,
	Escritorio char (1),
	Supervisor varchar (30),
	Cargo varchar (30),
	SalarioAnual integer,
	MetaVendas integer

);

CREATE TABLE refera.logistica (
	
	DataPedido date,
	ClienteID char (5),
	FuncionarioID char (3),
	ValorFrete numeric (6,2),
	CupomID char (8),
	EmpresaFrete varchar (30),
	DataEntrega date

);

CREATE TABLE refera.produtos_ID (
	
	ProdutoID char (4),
	CategoriaID char (3),
	Produto varchar (30),
	FornecedorID char (3)

);

CREATE TABLE refera.produtos_VL (
	
	CupomID char (8),
	ProdutoID char (4),
	Quantidade integer,
	Valor decimal (10,3),
	Desconto decimal (10,5),
	Custo decimal (10,5),
	ValorLiquido decimal (10,5)
	
);