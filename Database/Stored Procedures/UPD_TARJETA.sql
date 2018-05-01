﻿CREATE PROCEDURE UPD_TARJETA
    @P_CODIGO_UNICO nvarchar(50),
	@P_SALDO_DISPONIBLE float,
	@P_TERMINAL_ID int,
	@P_USUARIO  nvarchar(50),
	@P_TIPOTARJETA_ID int,
	@P_CONVENIO_ID int = null,
	@P_ESTADO_TARJETA_ID int                                                 
AS 
	Begin
		SET NOCOUNT ON;  
		UPDATE  TBL_TARJETA
		SET           
		   SALDO_DISPONIBLE =  @P_SALDO_DISPONIBLE,
		   TERMINAL_ID = @P_TERMINAL_ID,
		   USUARIO = @P_USUARIO,
		   TIPOTARJETA_ID = @P_TIPOTARJETA_ID,
		   CONVENIO_ID = @P_CONVENIO_ID,
		   ESTADO_TARJETA_ID = @P_ESTADO_TARJETA_ID
		   where CODIGO_UNICO = @P_CODIGO_UNICO
	End
GO  