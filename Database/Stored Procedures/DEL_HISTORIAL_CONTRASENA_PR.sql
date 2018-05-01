﻿CREATE PROCEDURE [dbo].[DEL_HISTORIAL_CONTRASENA_PR]
	@P_EMAIL nvarchar(50),
	@P_COUNT int
AS
	DELETE FROM [TBL_HISTORIAL_PASSWORD]
	WHERE [EMAIL] = @P_EMAIL AND 
		  [PASSWORD_HASH] NOT IN 
			 (SELECT TOP (@P_COUNT) [PASSWORD_HASH]
			  FROM [dbo].[TBL_HISTORIAL_PASSWORD]
			  WHERE [EMAIL] = @P_EMAIL
			  ORDER BY [PASSWORD_SET] DESC)
RETURN 0