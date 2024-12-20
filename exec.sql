CREATE DATABASE TESTE;

CREATE TABLE Clientes (

	Id INT IDENTITY(1,1) PRIMARY KEY,
	NOME VARCHAR (100),
	EMAIL VARCHAR (100)
);

CREATE PROCEDURE InserirCliente
	@Nome VARCHAR(100),
	@Email VARCHAR(100)
AS 
BEGIN 
	INSERT INTO Clientes (NOME, EMAIL)
	VALUES (@Nome, @Email);

	SELECT 'Cliente inserido com sucesso!' AS Mensagem;
END

EXEC InserirCliente @Nome = 'Kaiky', @Email = 'kaikysantosdasilva38@gmail.com'