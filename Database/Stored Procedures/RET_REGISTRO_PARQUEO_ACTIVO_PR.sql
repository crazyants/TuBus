﻿CREATE PROCEDURE [dbo].[RET_REGISTRO_PARQUEO_ACTIVO_PR]
	@P_TARJETA_ID nvarchar(50),
	@P_TERMINAL_ID int
AS
	SELECT * FROM TBL_REGISTROPARQUEO
	WHERE TARJETA_ID = @P_TARJETA_ID
	AND TERMINAL_ID = @P_TERMINAL_ID
	AND HORA_FIN IS NULL
	AND COSTO_TOTAL IS NULL OR COSTO_TOTAL < 0
RETURN 0
