USE CarsRoom;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Сотрудник данной должности] 
	@Name_of_post varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [Фамилия], [Имя], [Наименование должности] 
	FROM [Сотрудники]
		JOIN [Должности] 
	ON [Сотрудники].[Код должности] = [Должности].[Код должности]
	WHERE ([Должности].[Наименование должности] = @Name_of_post)
END
GO
