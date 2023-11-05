-- Criando a Tabela Professor
CREATE TABLE [Professor]
(
    [ProfessorId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [VLR_Salario] FLOAT(15,2)  NOT NULL,
    CONSTRAINT [PK_Professor] PRIMARY KEY ([ProfessorId]) 
);

 CREATE UNIQUE INDEX [IPK_Professor] ON [Professor]([ProfessorId]);
 
-- Criando a Tabela Aluno
CREATE TABLE [Aluno]
(
    [AlunoId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [CPF] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Aluno] PRIMARY KEY ([AlunoId]) 
);

 CREATE UNIQUE INDEX [IPK_Aluno] ON [Aluno]([AlunoId]);

-- Criando a Tabela Curso
CREATE TABLE [Curso]
(
    [CursoId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [VLR_Curso] FLOAT(15,2)  NOT NULL,
    CONSTRAINT [PK_Curso] PRIMARY KEY ([CursoId]) 
);

 CREATE UNIQUE INDEX [IPK_Curso] ON [Curso]([CursoId]);

-- Criando a Tabela Matricula
CREATE TABLE [Matricula]
(
    [MatriculaId] INTEGER  NOT NULL,
    [AlunoId] INTEGER  NOT NULL,
    [VLR_Matricula] FLOAT(15,2)  NOT NULL,
    CONSTRAINT [PK_Matricula] PRIMARY KEY ([MatriculaId]) 
    CONSTRAINT [FK_Matricula_Aluno] FOREIGN KEY ([AlunoId]) REFERENCES Aluno(AlunoId)
);

 CREATE UNIQUE INDEX [IPK_Matricula] ON [Matricula]([MatriculaId]);

-- Criando a Tabela Disciplina
CREATE TABLE [Disciplina]
(
    [DisciplinaId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [Quant_Carga_Horaria] INTEGER  NOT NULL,
    CONSTRAINT [PK_Disciplina] PRIMARY KEY ([DisciplinaId]) 
);

 CREATE UNIQUE INDEX [IPK_Disciplina] ON [Disciplina]([DisciplinaId]);

-- Criando a Tabela Cursos_Matricula
CREATE TABLE [Curso_Matricula]
(
    [Curso_MatriculaId] INTEGER  NOT NULL,
    [MatriculaId] INTEGER  NOT NULL,
    [CursoId] INTEGER  NOT NULL,
    CONSTRAINT [PK_Curso_Matricula] PRIMARY KEY ([Curso_MatriculaId]) 
    CONSTRAINT [FK_Curso_Matricula_Matricula] FOREIGN KEY ([MatriculaId]) REFERENCES Matricula(MatriculaId)
    CONSTRAINT [FK_Curso_Matricula_Curso] FOREIGN KEY ([CursoId]) REFERENCES Curso(CursoId)
);

 CREATE UNIQUE INDEX [IPK_Curso_Matricula] ON [Curso_Matricula]([Curso_MatriculaId]);
 
-- Criando a Tabela Disciplina_Matricula
CREATE TABLE [Disciplina_Matricula]
(
    [Disciplina_MatriculaId] INTEGER  NOT NULL,
    [MatriculaId] INTEGER  NOT NULL,
    [DisciplinaId] INTEGER  NOT NULL,
    CONSTRAINT [PK_Disciplina_Matricula] PRIMARY KEY ([Disciplina_MatriculaId]) 
    CONSTRAINT [FK_Disciplina_Matricula_Matricula] FOREIGN KEY ([MatriculaId]) REFERENCES Matricula(MatriculaId)
    CONSTRAINT [FK_Disciplina_Matricula_Disciplina] FOREIGN KEY ([DisciplinaId]) REFERENCES Disciplina(DisciplinaId)
);

 CREATE UNIQUE INDEX [IPK_Disciplina_Matricula] ON [Disciplina_Matricula]([Disciplina_MatriculaId]);

-- Criando a Tabela Disciplina_Professor
CREATE TABLE [Disciplina_Professor]
(
    [Disciplina_ProfessorId] INTEGER  NOT NULL,
    [ProfessorId] INTEGER  NOT NULL,
    [DisciplinaId] INTEGER  NOT NULL,
    CONSTRAINT [PK_Disciplina_Professor] PRIMARY KEY ([Disciplina_ProfessorId]) 
    CONSTRAINT [FK_Disciplina_Professor_Professor] FOREIGN KEY ([ProfessorId]) REFERENCES Professor(ProfessorId)
    CONSTRAINT [FK_Disciplina_Professor_Disciplina] FOREIGN KEY ([DisciplinaId]) REFERENCES Disciplina(DisciplinaId)
);

 CREATE UNIQUE INDEX [IPK_Disciplina_Professor] ON [Disciplina_Professor]([Disciplina_ProfessorId]);
 
