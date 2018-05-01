﻿CREATE PROCEDURE [dbo].[UPD_RECORRIDO_PASAJEROS_PR]
	@P_RECORRIDO_ID INT,
	@P_CANTIDAD_PASAJEROS int
AS
	UPDATE [dbo].[TBL_RECORRIDO]
	SET [CANTIDAD_PASAJEROS] = @P_CANTIDAD_PASAJEROS
	WHERE [RECORRIDO_ID] = @P_RECORRIDO_ID
RETURN 0