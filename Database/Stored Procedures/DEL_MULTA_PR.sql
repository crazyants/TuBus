﻿CREATE PROCEDURE [dbo].[DEL_MULTA_PR]
	@P_MULTA_ID int
AS
	UPDATE TBL_MULTA

	SET ESTADO = 'Cancelado'

	where MULTA_ID = @P_MULTA_ID
RETURN 0
