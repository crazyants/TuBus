﻿CREATE PROCEDURE [dbo].[UPD_USUARIO_RESET_PR]
	@P_EMAIL nvarchar(50)
    ,@P_RESET_TOKEN nvarchar(50)
AS
	UPDATE [dbo].[TBL_USUARIO]
	   SET [RESET_TOKEN] = @P_RESET_TOKEN
	 WHERE [EMAIL] = @P_EMAIL
RETURN 0
