﻿CREATE PROCEDURE [dbo].[RET_ALL_LINEA_PR]
AS
	SELECT * from TBL_LINEA
	where ESTADO <> 'Inactivo' 
RETURN 0