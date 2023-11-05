-- Criando a Tabela Visitante
CREATE TABLE [Visitante]
(
    [VisitanteId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [RG] NVARCHAR(160)  NOT NULL,
    [Email] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Visitante] PRIMARY KEY ([VisitanteId])  
);

 CREATE UNIQUE INDEX [IPK_Visitante] ON [Visitante]([VisitanteId]);

-- Criando a Tabela Parque
CREATE TABLE [Parque]
(
    [ParqueId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [Endereco] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Parque] PRIMARY KEY ([ParqueId])  
);

 CREATE UNIQUE INDEX [IPK_Parque] ON [Parque]([ParqueId]);
 
-- Criando a Tabela Pontos Turisticos
CREATE TABLE [Ponto_Turistico]
(
    [Ponto_TuristicoId] INTEGER  NOT NULL,
    [ParqueId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Ponto_Turistico] PRIMARY KEY ([Ponto_TuristicoId])  
    CONSTRAINT [FK_Ponto_Turistico_Parque] FOREIGN KEY ([ParqueId]) REFERENCES Parque(ParqueId)
);

 CREATE UNIQUE INDEX [IPK_Ponto_Turistico] ON [Ponto_Turistico]([Ponto_TuristicoId]);
 
-- Criando a Tabela Visita Pontos
CREATE TABLE [Visita_Pontos]
(
    [Visita_PontosId] INTEGER  NOT NULL,
    [VisitaId] INTEGER  NOT NULL,
    [Ponto_TuristicoId] INTEGER  NOT NULL,
    CONSTRAINT [PK_Visita_Pontos] PRIMARY KEY ([Visita_PontosId])  
    CONSTRAINT [FK_Visita_Pontos_Visita] FOREIGN KEY ([VisitaId]) REFERENCES Visita(VisitaId)
    CONSTRAINT [FK_Visita_Pontos_Ponto_Turistico] FOREIGN KEY ([Ponto_TuristicoId]) REFERENCES Visita(Ponto_TuristicoId)
);

 CREATE UNIQUE INDEX [IPK_Visita_Pontos] ON [Visita_Pontos]([Visita_PontosId]);
 
-- Criando a Tabela Visita
CREATE TABLE [Visita]
(
    [VisitaId] INTEGER  NOT NULL,
    [ParqueId] INTEGER  NOT NULL,
    [VisitanteId] INTEGER  NOT NULL,
    CONSTRAINT [PK_Visita] PRIMARY KEY ([VisitaId])  
    CONSTRAINT [FK_Visita_Parque] FOREIGN KEY ([ParqueId]) REFERENCES Visita(ParqueId)
    CONSTRAINT [FK_Visita_Visitante] FOREIGN KEY ([VisitanteId]) REFERENCES Visita(VisitanteId)
);

 CREATE UNIQUE INDEX [IPK_Visita] ON [Visita]([VisitaId]);