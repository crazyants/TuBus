﻿CREATE PROCEDURE [dbo].[RET_CHOFER_BY_CEDULA_PR]
	@P_CEDULA NVARCHAR(50)
AS
	SELECT * FROM [TBL_CHOFER]
	WHERE [CEDULA] = @P_CEDULA
RETURN 0
