﻿CREATE PROCEDURE [dbo].[UPD_SOLICITUD]
	@P_ID_SOLICITUD nvarchar(50),
	@P_ESTADO nvarchar(50)
AS
	Begin
		SET NOCOUNT ON;  
		UPDATE  TBL_SOLICITUDES
		SET           
		   ESTADO = @P_ESTADO
		   where ID_SOLICITUD = @P_ID_SOLICITUD
	End
GO  
