﻿CREATE PROCEDURE [dbo].[UPD_CONFIGURACION_TERMINAL_PR]
	@P_TERMINAL_ID int
    ,@P_CANTIDAD_QUEJAS_SANCION int
    ,@P_COSTO_PARQUEO_HORA decimal(18,2)
    ,@P_COSTO_PARQUEO_DIA decimal(18,2)
    ,@P_MONTO_INICIAL_TARJETA decimal(18,2)
	,@P_COSTO_PARQUEO_BUS_MES decimal(18,2)
	,@P_CANTIDAD_MINUTOS_TARDIA INT
	,@P_CANTIDAD_TARDIAS_SANCION int
AS
	UPDATE [dbo].[TBL_CONFIGURACION_TERMINAL]
	   SET [CANTIDAD_QUEJAS_SANCION] = @P_CANTIDAD_QUEJAS_SANCION
		  ,[COSTO_PARQUEO_HORA] = @P_COSTO_PARQUEO_HORA
		  ,[COSTO_PARQUEO_DIA] = @P_COSTO_PARQUEO_DIA
		  ,[MONTO_INICIAL_TARJETA] = @P_MONTO_INICIAL_TARJETA
		  ,[COSTO_PARQUEO_BUS_MES] = @P_COSTO_PARQUEO_BUS_MES
		  ,[CANTIDAD_MINUTOS_TARDIA] = @P_CANTIDAD_MINUTOS_TARDIA
		  ,[CANTIDAD_TARDIAS_SANCION] = @P_CANTIDAD_TARDIAS_SANCION
	 WHERE [TERMINAL_ID] = @P_TERMINAL_ID
RETURN 0
