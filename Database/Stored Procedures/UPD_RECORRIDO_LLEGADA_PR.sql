﻿CREATE PROCEDURE [dbo].[UPD_RECORRIDO_LLEGADA_PR]
	@P_RECORRIDO_ID INT,
	@P_HORA_LLEGADA DATETIME
AS
	UPDATE [dbo].[TBL_RECORRIDO]
	SET [HORA_LLEGADA] = @P_HORA_LLEGADA
	WHERE [RECORRIDO_ID] = @P_RECORRIDO_ID
RETURN 0
