-- Ver todos os materiais cadastrados
SELECT * FROM Material;

-- Ver todas as categorias cadastradas
SELECT * FROM Categoria;

-- Ver todas as classificações existentes
SELECT * FROM Classifica;

-- Ver os materiais classificados como 'Alta' relevância
SELECT M.titulo, C.relevancia
FROM Material M
JOIN Classifica C ON M.cod_material = C.cod_material
WHERE C.relevancia = 'Alta';

-- Ver os materiais publicados após 2021
SELECT titulo, ano_pub
FROM Material
WHERE ano_pub > 2021;

-- Ver os 2 materiais mais recentes (MySQL usa LIMIT)
SELECT titulo, ano_pub
FROM Material
ORDER BY ano_pub DESC
LIMIT 2;

-- Ver os materiais e suas categorias (somente se houver relação válida)
SELECT M.titulo, Cat.descricao
FROM Material M
JOIN Classifica C ON M.cod_material = C.cod_material
JOIN Categoria Cat ON C.cod_categoria = Cat.cod_categoria;

-- Contar quantos materiais existem por tipo
SELECT tipo_material, COUNT(*) AS total
FROM Material
GROUP BY tipo_material;

