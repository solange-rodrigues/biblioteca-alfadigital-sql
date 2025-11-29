-- Criar banco de dados
CREATE DATABASE AlfaDigital;
USE AlfaDigital;

-- Tabela de usuários
CREATE TABLE Usuario (
    cod_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    contato VARCHAR(100),
    tipo_usuario VARCHAR(20)
);

-- Tabela de alunos
CREATE TABLE Aluno (
    cod_usuario INT PRIMARY KEY,
    matricula VARCHAR(10),
    curso VARCHAR(100),
    FOREIGN KEY (cod_usuario) REFERENCES Usuario(cod_usuario)
);

-- Tabela de professores
CREATE TABLE Professor (
    cod_usuario INT PRIMARY KEY,
    codigo_professor VARCHAR(10),
    departamento VARCHAR(100),
    FOREIGN KEY (cod_usuario) REFERENCES Usuario(cod_usuario)
);

-- Tabela de funcionários
CREATE TABLE Funcionario (
    cod_usuario INT PRIMARY KEY,
    codigo_funcionario VARCHAR(10),
    setor VARCHAR(100),
    FOREIGN KEY (cod_usuario) REFERENCES Usuario(cod_usuario)
);

-- Tabela de materiais
CREATE TABLE Material (
    cod_material INT PRIMARY KEY,
    titulo VARCHAR(200),
    ano_pub INT,
    tipo_material VARCHAR(20)
);

-- Tabela de livros
CREATE TABLE Livro (
    cod_material INT PRIMARY KEY,
    isbn VARCHAR(20),
    edicao VARCHAR(10),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);

-- Tabela de periódicos
CREATE TABLE Periodico (
    cod_material INT PRIMARY KEY,
    issn VARCHAR(20),
    volume VARCHAR(10),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);

-- Tabela de mídias digitais
CREATE TABLE Midia_Digital (
    cod_material INT PRIMARY KEY,
    formato VARCHAR(50),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);

-- Tabela de empréstimos
CREATE TABLE Emprestimo (
    cod_emprestimo INT PRIMARY KEY,
    cod_usuario INT,
    cod_material INT,
    data_acesso DATETIME,
    data_devolucao DATETIME,
    FOREIGN KEY (cod_usuario) REFERENCES Usuario(cod_usuario),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);

-- Tabela de renovações
CREATE TABLE Renovacao (
    cod_renovacao INT PRIMARY KEY,
    cod_emprestimo INT,
    cod_usuario INT,
    data_renovacao DATETIME,
    nova_data_devolucao DATETIME,
    FOREIGN KEY (cod_emprestimo) REFERENCES Emprestimo(cod_emprestimo),
    FOREIGN KEY (cod_usuario) REFERENCES Usuario(cod_usuario)
);

-- Tabela de reservas
CREATE TABLE Reserva (
    cod_reserva INT PRIMARY KEY,
    cod_usuario INT,
    cod_material INT,
    data DATETIME,
    prioridade VARCHAR(20),
    status_reserva VARCHAR(20),
    FOREIGN KEY (cod_usuario) REFERENCES Usuario(cod_usuario),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);

-- Tabela de autores
CREATE TABLE Autor (
    cod_autor INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Tabela de autoria
CREATE TABLE Escreve (
    cod_autor INT,
    cod_material INT,
    ordem_autoria INT,
    PRIMARY KEY (cod_autor, cod_material),
    FOREIGN KEY (cod_autor) REFERENCES Autor(cod_autor),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);

-- Tabela de editoras
CREATE TABLE Editora (
    cod_editora INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Tabela de publicações
CREATE TABLE Publica (
    cod_editora INT,
    cod_material INT,
    data_publicacao DATETIME,
    local VARCHAR(100),
    PRIMARY KEY (cod_editora, cod_material),
    FOREIGN KEY (cod_editora) REFERENCES Editora(cod_editora),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);

-- Tabela de categorias
CREATE TABLE Categoria (
    cod_categoria INT PRIMARY KEY,
    descricao VARCHAR(100)
);

-- Tabela de classificação
CREATE TABLE Classifica (
    cod_categoria INT,
    cod_material INT,
    relevancia VARCHAR(20),
    PRIMARY KEY (cod_categoria, cod_material),
    FOREIGN KEY (cod_categoria) REFERENCES Categoria(cod_categoria),
    FOREIGN KEY (cod_material) REFERENCES Material(cod_material)
);
