﻿CREATE PROCEDURE [dbo].[UPD_USUARIO_PASSWORD_PR]
	@P_EMAIL nvarchar(50)
    ,@P_PASSWORD_SALT nvarchar(24)
    ,@P_PASSWORD_HASH nvarchar(24)
    ,@P_PASSWORD_LAST_SET datetime
AS
	UPDATE [dbo].[TBL_USUARIO]
	   SET [PASSWORD_SALT] = @P_PASSWORD_SALT
		  ,[PASSWORD_HASH] = @P_PASSWORD_HASH
          ,[PASSWORD_LAST_SET] = @P_PASSWORD_LAST_SET
		  ,[RESET_TOKEN] = NULL /* Clear token just in case */
	 WHERE [EMAIL] = @P_EMAIL
RETURN 0
