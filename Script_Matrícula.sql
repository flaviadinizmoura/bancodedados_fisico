-- Criando a tabela aluno
CREATE TABLE [ALUNO]
(
    [COD_ALUNO] INTEGER NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [NUM_CPF] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_ALUNO] PRIMARY KEY ([COD_ALUNO])
);

CREATE UNIQUE INDEX [IPK_ALUNO] ON [ALUNO]([COD_ALUNO]);

-- Criando a tabela curso
CREATE TABLE [CURSO]
(
    [COD_CURSO] INTEGER NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [VLR_CURSO] FLOAT(8,2)  NOT NULL,
    CONSTRAINT [PK_CURSO] PRIMARY KEY ([COD_CURSO])
);

CREATE UNIQUE INDEX [IPK_CURSO] ON [CURSO]([COD_CURSO]);

-- Criando a tabela professor
CREATE TABLE [PROFESSOR]
(
    [COD_PROFESSOR] INTEGER NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [VLR_SALARIO] FLOAT(8,2)  NOT NULL,
    CONSTRAINT [PK_PROFESSOR] PRIMARY KEY ([COD_PROFESSOR])
);

CREATE UNIQUE INDEX [IPK_PROFESSOR] ON [PROFESSOR]([COD_PROFESSOR]);

-- Criando a tabela disciplina
CREATE TABLE [DISCIPLINA]
(
    [COD_DISCIPLINA] INTEGER NOT NULL,
    [NOME] NVARCHAR(160)  NOT NULL,
    [QTD_CARGA_HORARIA] INTEGER  NOT NULL,
    CONSTRAINT [PK_DISCIPLINA] PRIMARY KEY ([COD_DISCIPLINA])
);

CREATE UNIQUE INDEX [IPK_DISCIPLINA] ON [DISCIPLINA]([COD_DISCIPLINA]);

-- Criando a tabela matrícula
CREATE TABLE [MATRICULA]
(
    [COD_MATRICULA] INTEGER NOT NULL,
    [COD_ALUNO] INTEGER NOT NULL,
    [VLR_MATRICULA] FLOAT(8,2)  NOT NULL,
    CONSTRAINT [PK_MATRICULA] PRIMARY KEY ([COD_MATRICULA]),
 	CONSTRAINT [FK_ALUNO] FOREIGN KEY ([COD_ALUNO]) REFERENCES ALUNO(COD_ALUNO)
);

CREATE UNIQUE INDEX [IPK_MATRICULA] ON [MATRICULA]([COD_MATRICULA]);

-- Criando a tabela disciplinas matrícula
CREATE TABLE [DISCIPLINAS_MATRICULA]
(
    [COD_DISCIPLINAS_MATRICULA] INTEGER NOT NULL,
    [COD_MATRICULA] INTEGER NOT NULL,
    [COD_DISCIPLINA] INTEGER NOT NULL,
    CONSTRAINT [PK_DISCIPLINAS_MATRICULA] PRIMARY KEY ([COD_DISCIPLINAS_MATRICULA]),
 	CONSTRAINT [FK_MATRICULA] FOREIGN KEY ([COD_MATRICULA]) REFERENCES MATRICULA(COD_MATRICULA),
	CONSTRAINT [FK_DISCIPLINA] FOREIGN KEY ([COD_DISCIPLINA]) REFERENCES DISCIPLINA(COD_DISCIPLINA)
);

CREATE UNIQUE INDEX [IPK_DISCIPLINAS_MATRICULA] ON [DISCIPLINAS_MATRICULA]([COD_DISCIPLINAS_MATRICULA]);

-- Criando a tabela cursos matrícula
CREATE TABLE [CURSOS_MATRICULA]
(
    [COD_CURSOS_MATRICULA] INTEGER NOT NULL,
    [COD_MATRICULA] INTEGER NOT NULL,
    [COD_CURSO] INTEGER NOT NULL,
    CONSTRAINT [PK_CURSOS_MATRICULA] PRIMARY KEY ([COD_CURSOS_MATRICULA]),
 	CONSTRAINT [FK_MATRICULA] FOREIGN KEY ([COD_MATRICULA]) REFERENCES MATRICULA(COD_MATRICULA),
	CONSTRAINT [FK_CURSO] FOREIGN KEY ([COD_CURSO]) REFERENCES CURSO(COD_CURSO)
);

CREATE UNIQUE INDEX [IPK_CURSOS_MATRICULA] ON [CURSOS_MATRICULA]([COD_CURSOS_MATRICULA]);

-- Criando a tabela disciplinas professor
CREATE TABLE [DISCIPLINAS_PROFESSOR]
(
    [COD_DISCIPLINAS_PROF] INTEGER NOT NULL,
    [COD_PROFESSOR] INTEGER NOT NULL,
    [COD_DISCIPLINA] INTEGER NOT NULL,
    CONSTRAINT [PK_DISCIPLINAS_PROF] PRIMARY KEY ([COD_DISCIPLINAS_PROF]),
 	CONSTRAINT [FK_PROFESSOR] FOREIGN KEY ([COD_PROFESSOR]) REFERENCES PROFESSOR(COD_PROFESSOR),
	CONSTRAINT [FK_DISCIPLINA] FOREIGN KEY ([COD_DISCIPLINA]) REFERENCES DISCIPLINA(COD_DISCIPLINA)
);

CREATE UNIQUE INDEX [IPK_DISCIPLINAS_PROFESSOR] ON [DISCIPLINAS_PROFESSOR]([COD_DISCIPLINAS_PROF]);
