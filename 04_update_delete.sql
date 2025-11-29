-- Atualizar o nome de um material
UPDATE Material
SET titulo = 'Algoritmos e Pensamento Computacional'
WHERE cod_material = 101;

-- Atualizar a relevância de um material
UPDATE Classifica
SET relevancia = 'Média'
WHERE cod_material = 103;

-- Atualizar a descrição de uma categoria
UPDATE Categoria
SET descricao = 'Tecnologia da Informação'
WHERE cod_categoria = 1;

-- Excluir a classificação que usa a categoria 3
DELETE FROM Classifica
WHERE cod_categoria = 3;

-- Agora sim: excluir a categoria 3
DELETE FROM Categoria
WHERE cod_categoria = 3;

-- Excluir a classificação que usa o material 103 (Midia_Digital)
DELETE FROM Classifica
WHERE cod_material = 103;

-- Agora sim: excluir o material do tipo 'Midia_Digital'
DELETE FROM Material
WHERE tipo_material = 'Midia_Digital';

-- Conferindo resultados
SELECT * FROM Material;
SELECT * FROM Categoria;
SELECT * FROM Classifica;
