CREATE TABLE IF NOT EXISTS inrrigar ( -- cria a tabela inrrigar
    id SERIAL PRIMARY KEY,
    data TEXT NOT NULL,
    umidade_solo REAL NOT NULL,
    precisa_irrigar BOOLEAN NOT NULL
);


CREATE TABLE medias_diarias ( -- cria a tabela medias_diarias
    data DATE PRIMARY KEY,
    media_umidade_solo FLOAT
);


SELECT * FROM inrrigar; -- ver a tabela inteira


SELECT * FROM medias_diarias; -- ver a tabela medias_diarias



SELECT data, umidade_solo FROM inrrigar;-- ver a tabela inteira somete umidade_solo e data 



-- isete no banco da data, umidade solo e se precisa irrigar
INSERT INTO inrrigar (data, umidade_solo, precisa_irrigar)
VALUES ('2024-08-02 15:00', 1000, TRUE); -- FALSE  TRUE


-- media por dia 
SELECT 
    SUBSTRING(data FROM 1 FOR 10) AS data,
    AVG(umidade_solo) AS media_umidade_solo
FROM 
    inrrigar
GROUP BY 
    SUBSTRING(data FROM 1 FOR 10)
ORDER BY 
    data;



-- ver quatos TRUE da tabela precisa_irrigar
SELECT COUNT(*) AS vezes_precisa_irrigar
FROM inrrigar
WHERE precisa_irrigar = TRUE;




DELETE FROM inrrigar; -- deleta tudo da tabela inrrigar



DELETE FROM medias_diarias -- deleta tudo da tabela medias_diarias





