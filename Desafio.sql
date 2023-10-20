//1
SELECT 
	Nome,
	Ano
FROM Filmes



//2 
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC



//3
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro' AND Ano = 1985 AND Duracao = 116



//4
SELECT 
	Nome,
	Ano = 1997,
	Duracao
FROM Filmes



//5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000



//6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC



//7
SELECT 
	Ano,
	COUNT(*) AS Quantidade_de_Filmes
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade_de_Filmes DESC



//8
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'



//9 
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome



//10
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id



//11
SELECT 
	Filmes.Nome, 
	Generos.Genero
FROM 
	Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE IdGenero = 10 



//12
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM 
	Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.Id






