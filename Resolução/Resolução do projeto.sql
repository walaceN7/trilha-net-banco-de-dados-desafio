-- 1
SELECT Nome, Ano
FROM Filmes;

--2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
Where Nome = 'De Volta para o Futuro';

-- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 
	AND Duracao < 150
ORDER BY Duracao;

-- 7
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT *
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = F.Id
INNER JOIN GENEROS G ON FilmesGenero.IdGenero = G.Id;

-- 11
SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = F.Id
INNER JOIN GENEROS G ON FilmesGenero.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON E.IdFilme = F.Id
INNER JOIN Atores A ON E.IdAtor = A.Id;