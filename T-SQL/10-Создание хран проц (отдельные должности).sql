USE CarsRoom;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [��������� ������ ���������] 
	@Name_of_post varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [�������], [���], [������������ ���������] 
	FROM [����������]
		JOIN [���������] 
	ON [����������].[��� ���������] = [���������].[��� ���������]
	WHERE ([���������].[������������ ���������] = @Name_of_post)
END
GO
