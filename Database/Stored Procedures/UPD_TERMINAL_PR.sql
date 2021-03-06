﻿CREATE PROCEDURE [dbo].[UPD_TERMINAL_PR]
	@P_TERMINAL_ID int,
	@P_TERMINAL_NAME NVARCHAR(50),
	@P_LATITUDE DECIMAL(18,16),
	@P_LONGITUDE DECIMAL(18,16),
	@P_CANTIDAD_LINEAS INT,
	@P_ESTADO NVARCHAR(10),
	@P_ESPACIOS_PARQUEO INT,
	@P_ESPACIOS_PARQUEO_BUS INT
AS 
	UPDATE  TBL_TERMINAL
		SET           
		   TERMINAL_NAME =  @P_TERMINAL_NAME,
		   LATITUDE = @P_LATITUDE,
		   LONGITUDE = @P_LONGITUDE,
		   CANTIDAD_LINEAS = @P_CANTIDAD_LINEAS,
		   ESTADO = @P_ESTADO,
		   ESPACIOS_PARQUEO = @P_ESPACIOS_PARQUEO,
		   ESPACIOS_PARQUEO_BUS = @P_ESPACIOS_PARQUEO_BUS

		   where TERMINAL_ID = @P_TERMINAL_ID
Return 0
