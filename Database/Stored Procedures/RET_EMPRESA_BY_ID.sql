﻿CREATE PROCEDURE [dbo].[RET_EMPRESA_BY_ID]
	@P_CEDULA_JURIDICA int
AS
	SELECT * from TBL_EMPRESA
	where CEDULA_JURIDICA = @P_CEDULA_JURIDICA
RETURN 0
