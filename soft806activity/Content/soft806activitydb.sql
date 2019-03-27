use master
if EXISTS(select * from sys.databases where name = 'soft806activity') 
DROP DATABASE soft806activity
GO

CREATE DATABASE soft806activity
GO
use soft806activity
GO

CREATE TABLE users(
	id int PRIMARY KEY IDENTITY(1, 1),
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	password varchar(255) NOT NULL,
);
GO
CREATE PROC isValidUser
	@email varchar(255),
	@password varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ID INT

	SELECT @id = id FROM users WHERE email = @email

	IF @id IS NOT NULL
	BEGIN
		IF EXISTS(SELECT id FROM users WHERE email=@email AND password = @password)
		BEGIN
			SELECT @id -- user has a valid account and password
		END
		ELSE
		BEGIN
			SELECT -2 -- user has an invalid password
		END
	END
	ELSE
	BEGIN
		SELECT -1 -- Account doesn't exist
	END
END
GO
CREATE PROC insertUser
	@first_name VARCHAR(255),
	@last_name VARCHAR(255),
	@email VARCHAR(255),
	@password VARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @id INT

	SELECT @id = id FROM users WHERE email = @email

	IF @id IS NOT NULL
	BEGIN
		SELECT -1 -- Account already exist
	END
	ELSE
	BEGIN
		INSERT INTO users(first_name, last_name, email, password)
		VALUES (@first_name, @last_name, @email, @password)
		SELECT scope_identity()
	END
END