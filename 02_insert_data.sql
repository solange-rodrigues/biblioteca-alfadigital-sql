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
