﻿CREATE PROCEDURE [dbo].[RET_ALL_EMPRESAS_PENDIENTES_PR]
AS
	SELECT * from TBL_EMPRESA
	where ESTADO = 'Pendiente'
RETURN 0

