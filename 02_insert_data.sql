-- Inserindo categorias
INSERT INTO Categoria (cod_categoria, descricao) VALUES
(1, 'Tecnologia'),
(2, 'Educação'),
(3, 'Saúde');

-- Inserindo materiais
INSERT INTO Material (cod_material, titulo, ano_pub, tipo_material) VALUES
(101, 'Algoritmos e Lógica', 2022, 'Livro'),
(102, 'Revista Ciência Hoje', 2023, 'Periodico'),
(103, 'Curso de SQL Interativo', 2021, 'Midia_Digital');

-- Classificando materiais
INSERT INTO Classifica (cod_categoria, cod_material, relevancia) VALUES
(1, 101, 'Alta'),
(2, 102, 'Média'),
(1, 103, 'Alta');

-- Inserindo usuários
INSERT INTO Usuario (cod_usuario, nome, contato, tipo_usuario) VALUES
(1, 'Maria Silva', 'maria@email.com', 'Aluno'),
(2, 'João Souza', 'joao@email.com', 'Professor'),
(3, 'Ana Costa', 'ana@email.com', 'Funcionario');

-- Inserindo alunos
INSERT INTO Aluno (cod_usuario, matricula, curso) VALUES
(1, 'A001', 'Ciência da Computação');

-- Inserindo professores
INSERT INTO Professor (cod_usuario, codigo_professor, departamento) VALUES
(2, 'P001', 'Engenharia de Software');

-- Inserindo funcionários
INSERT INTO Funcionario (cod_usuario, codigo_funcionario, setor) VALUES
(3, 'F001', 'Biblioteca');

-- Inserindo autores
INSERT INTO Autor (cod_autor, nome) VALUES
(1, 'Carlos Mendes'),
(2, 'Fernanda Lima');

-- Inserindo editoras
INSERT INTO Editora (cod_editora, nome) VALUES
(1, 'Editora Alfa'),
(2, 'Editora Beta');

-- Relacionando autores e materiais
INSERT INTO Escreve (cod_autor, cod_material, ordem_autoria) VALUES
(1, 101, 1),
(2, 102, 1);

-- Relacionando editoras e materiais
INSERT INTO Publica (cod_editora, cod_material, data_publicacao, local) VALUES
(1, 101, '2022-05-10', 'São Paulo'),
(2, 102, '2023-03-15', 'Rio de Janeiro');

-- Inserindo empréstimos
INSERT INTO Emprestimo (cod_emprestimo, cod_usuario, cod_material, data_acesso, data_devolucao) VALUES
(1, 1, 101, '2023-09-01', '2023-09-15'),
(2, 2, 102, '2023-09-05', '2023-09-20');

-- Inserindo reservas
INSERT INTO Reserva (cod_reserva, cod_usuario, cod_material, data, prioridade, status_reserva) VALUES
(1, 3, 103, '2023-09-10', 'Alta', 'Ativa');

