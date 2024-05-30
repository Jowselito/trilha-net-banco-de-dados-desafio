-- ETAPA 01
SELECT Nome, Ano FROM Filmes

-- ETAPA 02

SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- ETAPA 03

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- ETAPA 04

SELECT * FROM Filmes WHERE Ano = 1997

-- ETAPA 05
SELECT * FROM Filmes WHERE Ano > 2000

-- ETAPA 06
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- ETAPA 07
SELECT 
	Ano,
	COUNT (*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- ETAPA 08
SELECT
	*
FROM Atores
WHERE Genero = 'M'

-- ETAPA 09
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- ETAPA 10
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- ETAPA 11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- ETAPA 12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
