CREATE DATABASE BancoDeDadosEscola

*/Projeto criado por Joberson Fegadoli de Souza 17/04/2020, um banco de dados para uma escola de cursos profissionalizantes/*

/*Primeira tabela com dados de professores que irao dar aulas referentes aos cursos*/

CREATE TABLE Professores (
  IdProfessor INT PRIMARY KEY IDENTITY(1,1),
  NomeProfessor VARCHAR(50) NOT NULL,
  Nacionalidade VARCHAR(20) NOT NULL,
  RG VARCHAR(10) NOT NULL, 
  Cpf CHAR(12)  NOT NULL,
  Nacimento DATE NOT NULL,  
  Genero CHAR (1), 
  Endereco VARCHAR(20),
  Cidade VARCHAR(20), 
  Estado VARCHAR (20), 
  Telefone CHAR(15), 
  Email VARCHAR(50) NOT NULL,
  Diploma VARCHAR(255) NOT NULL,
  EmFormacao VARCHAR(20) NOT NULL,
  valor_hora DECIMAL(6,2) NOT NULL,
  );
 
/* Segunda tabela com dados dos cursos oferecidos pela escola*/

CREATE TABLE Cursos (
  IdCurso INT PRIMARY KEY IDENTITY(1,1),
  NomeCurso VARCHAR(50) NOT NULL,
  Requisito VARCHAR(25) NULL,
  Carga_horaria SMALLINT NOT NULL,
  Preco DECIMAL(6,2) NOT NULL,
  );
 
/*Terceira tabela com dados de alunos que vao participar dos cursos*/

CREATE TABLE Alunos (
  IdAluno INT PRIMARY KEY IDENTITY(1,1),
  NomeAluno VARCHAR(50) NOT NULL,
  Nacionalidade VARCHAR(20) NOT NULL,
  RG VARCHAR (10)NOT NULL, 
  Cpf CHAR(12)NOT NULL,
  Nacimento DATE NOT NULL,  
  Genero CHAR (1), 
  Endereco VARCHAR(20),
  Cidade VARCHAR(20), 
  Estado VARCHAR (20), 
  Telefone CHAR(15), 
  Email VARCHAR(50) NOT NULL,
  );
 
 /*Tabela com dados de professores que ministrarao os cursos, alunos participantes e nome do curso oferecido*/

CREATE TABLE Turmas (
  IdTurma INT PRIMARY KEY IDENTITY(1,1),
  IdProfessor INT NOT NULL,
  IdCurso INT NOT NULL,
  IdAluno INT NOT NULL,
  Data_inicio DATE NULL,
  Data_final DATE NULL,
  Carga_horaria SMALLINT UNSIGNED NULL,
 );

   ALTER TABLE Turmas
  ADD CONSTRAINT FKIdCurso
  FOREIGN KEY(IdCurso)
  REFERENCES Cursos(IdCurso)
  ALTER TABLE Turmas
  ADD CONSTRAINT FKIdProfessor
  FOREIGN KEY(IdProfessor)
  REFERENCES Professores(IdProfessor)
  ALTER TABLE Turmas
  ADD CONSTRAINT FKIdAluno
  FOREIGN KEY(IdAluno)
  REFERENCES Alunos(IdAluno)

 
/*Tabela com dados de alunos matriculados na escola e cursos que assistirao*/
CREATE TABLE Matriculas (
  IdMatricula INT PRIMARY KEY IDENTITY(1,1),
  IdTurma INTEGER UNSIGNED NOT NULL,
  IdAluno INT NOT NULL,
  Data_matricula DATE NULL,
);
  
