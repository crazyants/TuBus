﻿CREATE PROCEDURE [dbo].[UPD_BUS_ESTADO_PR]
	@P_PLACA nvarchar(50)
AS
	UPDATE TBL_BUS
	SET ESTADO = CASE WHEN ESTADO = 'Activo' THEN 'Inactivo' ELSE 'Activo' END
	WHERE PLACA = @P_PLACA

RETURN 0
