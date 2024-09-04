
--1 -  Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Filmes.Ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE '%de volta para o futuro%';

--4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--    ordenando pela duracao em ordem crescente
SELECT 
    Nome, 
    Ano, 
    Duracao 
FROM Filmes 
WHERE Duracao BETWEEN 101 AND 149 
ORDER BY Duracao ASC;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
--    ordenando pela duracao em ordem decrescente
-- Seguindo a instrução escrita:
SELECT 
    Ano, 
    COUNT(*) 
FROM Filmes 
GROUP BY Ano, Duracao 
ORDER BY Duracao DESC;

--Seguindo a imagem:
SELECT 
    Ano, 
    COUNT(*) as quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY quantidade DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
    PrimeiroNome, 
    UltimoNome 
FROM Atores 
WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, 
--    retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
    PrimeiroNome, 
    UltimoNome 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome;

--10 - Buscar o nome do filme e o gênero
SELECT 
    Filmes.Nome, 
    Generos.Genero
FROM Filmes
    INNER JOIN FilmesGenero 
        ON Filmes.id = FilmesGenero.IdFilme
    INNER JOIN Generos 
        ON FilmesGenero.IdGenero = Generos.Id;

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
    Filmes.Nome, 
    Generos.Genero
FROM Filmes
    INNER JOIN FilmesGenero 
        ON Filmes.id = 	FilmesGenero.IdFilme
    INNER JOIN Generos 
        ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
    Filmes.Nome, 
    Atores.PrimeiroNome, 
    Atores.UltimoNome, 
    ElencoFilme.Papel
FROM Filmes
    INNER JOIN ElencoFilme 
        ON Filmes.Id = ElencoFilme.IdFilme
    INNER JOIN Atores 
        ON ElencoFilme.IdAtor = Atores.Id;
