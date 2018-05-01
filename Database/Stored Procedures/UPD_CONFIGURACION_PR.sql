﻿CREATE PROCEDURE [dbo].[UPD_CONFIGURACION_PR]
	@P_CONFIG_ID nvarchar(50),
	@P_NUMBER_VALUE decimal(18,2) = null,
	@P_STRING_VALUE nchar(100) = null
AS
	UPDATE [dbo].[TBL_CONFIGURACION]
	   SET [NUMBER_VALUE] = @P_NUMBER_VALUE
		  ,[STRING_VALUE] = @P_STRING_VALUE
	 WHERE [CONFIG_ID] = @P_CONFIG_ID
RETURN 0