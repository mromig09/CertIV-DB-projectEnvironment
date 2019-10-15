CREATE PROCEDURE [dbo].[add_employee]
	@pstaffID int,
	@pgivenName nvarchar(30),
	@psurname nvarchar(30)
AS
	SELECT @pstaffID, @pgivenName, @psurname
	insert into employee (staffID, givenName, surname) values
	(@pstaffID, @pgivenName, @psurname);

	exec add_employee @pstaffID = 8456, @pgivenName = 'Michael', @psurname = 'Jordan';
