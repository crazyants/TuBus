﻿CREATE PROCEDURE [dbo].[DEL_TIPO_TARJETA]
	@P_TIPOTARJETA_ID int	
AS
	Begin
		SET NOCOUNT ON;  
		UPDATE  TBL_TIPOTARJETA
		SET
            STATUS = 0
			WHERE TIPOTARJETA_ID = @P_TIPOTARJETA_ID
	END
GO