﻿CREATE PROCEDURE [dbo].[RET_USUARIO_PR]
	@P_EMAIL nvarchar(50)
AS
	SELECT *, DATEDIFF(hour,[FECHA_NACIMIENTO],GETDATE())/8766 AS EDAD
	FROM [dbo].[TBL_USUARIO]
	WHERE [EMAIL] = @P_EMAIL
RETURN 0