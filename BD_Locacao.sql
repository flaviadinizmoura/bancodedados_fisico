-- Criando a Tabela Cliente
CREATE TABLE [Cliente]
(
    [ClienteId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [Email] NVARCHAR(160)  NOT NULL,
    [Telefone] NVARCHAR(160)  NOT NULL,
    [CPF] NVARCHAR(160)  NOT NULL,
    [Endereço] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY ([ClienteId])  
);

 CREATE UNIQUE INDEX [IPK_Cliente] ON [Cliente]([ClienteId]);
 
-- Criando a tabela Locação
CREATE TABLE [Locacao]
(
    [LocacaoId] INTEGER  NOT NULL,
    [ClienteId] INTEGER  NOT NULL,
    [VLR_Locacao] FLOAT(15,2)  NOT NULL,
    [VLR_Multa] FLOAT(15,2)  NOT NULL,
    [Data_locacao] DATETIME NOT NULL,
    [Data_Devolucao] DATETIME NOT NULL,
    CONSTRAINT [PK_Locacao] PRIMARY KEY ([LocacaoId])
    CONSTRAINT [FK_Locacao_Cliente] FOREIGN KEY ([ClienteId]) REFERENCES Cliente(ClienteId)
);

CREATE UNIQUE INDEX [IPK_Locacao] ON [Locacao]([LocacaoId]);

-- Criando a tabela Filme
CREATE TABLE [Filme]
(
    [FilmeId] INTEGER  NOT NULL,
    [Nome] DATETIME  NOT NULL,
    [VLR_Filme] FLOAT(15,2)  NOT NULL,
    [Quant_Estoque] INTEGER  NOT NULL,
    CONSTRAINT [PK_Filme] PRIMARY KEY ([FilmeId])
);

CREATE UNIQUE INDEX [IPK_Filme] ON [Filme]([FilmeId]);

-- Criando a tabela Filme Locacao
CREATE TABLE [Filme_Locacao]
(
    [Filme_LocacaoId] INTEGER  NOT NULL,
    [LocacaoId] INTEGER  NOT NULL,
    [FilmeId] INTEGER  NOT NULL,
    [Quant_Filme] INTEGER  NOT NULL,
    CONSTRAINT [PK_Filme_Locacao] PRIMARY KEY ([Filme_LocacaoId])
    CONSTRAINT [FK_Filme_Locacao_Locacao] FOREIGN KEY ([LocacaoId]) REFERENCES Locacao(LocacaoId)
    CONSTRAINT [FK_Filme_Locacao_Filme] FOREIGN KEY ([FilmeId]) REFERENCES Filme(FilmeId)
);

CREATE UNIQUE INDEX [IPK_Filme_Locacao] ON [Filme_Locacao]([Filme_LocacaoId]);
