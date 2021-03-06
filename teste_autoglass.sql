-- SQL Manager for SQL Server 4.1.0.45480
-- ---------------------------------------
-- Host      : LOCALHOST\SQLEXPRESS
-- Database  : teste_autoglass
-- Version   : Microsoft SQL Server 2019 (RTM 15.0.2080.9


--
-- Definition for sequence seq_codigo_fornecedor :
--

CREATE SEQUENCE dbo.seq_codigo_fornecedor
  AS int
  START WITH 1
  INCREMENT BY 1
  MINVALUE -2147483648
  MAXVALUE 2147483647
  NO CYCLE
  CACHE
GO

--
-- Definition for sequence seq_codigo_produto :
--

CREATE SEQUENCE dbo.seq_codigo_produto
  AS int
  START WITH 1
  INCREMENT BY 1
  MINVALUE -2147483648
  MAXVALUE 2147483647
  NO CYCLE
  CACHE
GO

--
-- Definition for table Fornecedores :
--

CREATE TABLE dbo.Fornecedores (
  codigo_fornecedor int NOT NULL,
  descricao_fornecedor varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
  cidade_fornecedor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
  CONSTRAINT PK_fornecedores PRIMARY KEY CLUSTERED (codigo_fornecedor)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for table Produtos :
--

CREATE TABLE dbo.Produtos (
  codigo_produto int NOT NULL,
  descricao_produto varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
  situacao_produto varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
  fabricacao_produto date NOT NULL,
  validade_produto date NOT NULL,
  codigo_fornecedor int NOT NULL,
  CONSTRAINT PK_produtos PRIMARY KEY CLUSTERED (codigo_produto)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

--
-- Definition for foreign keys :
--

ALTER TABLE dbo.Produtos
ADD CONSTRAINT FK_produtos_fornecedores FOREIGN KEY (codigo_fornecedor)
  REFERENCES dbo.Fornecedores (codigo_fornecedor)
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

