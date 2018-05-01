﻿CREATE PROCEDURE [dbo].[CRE_RECORRIDO_PR]
     @P_BUS_PLACA NVARCHAR(50)
    ,@P_CHOFER_CEDULA NVARCHAR(50)
    ,@P_RUTA_ID INT
	,@P_HORARIO TIME(0)
AS
	INSERT INTO [dbo].[TBL_RECORRIDO]
           ([BUS_PLACA]
           ,[CHOFER_CEDULA]
           ,[RUTA_ID]
		   ,[HORARIO])
     VALUES
           (@P_BUS_PLACA
           ,@P_CHOFER_CEDULA
           ,@P_RUTA_ID
		   ,@P_HORARIO)
	SELECT SCOPE_IDENTITY() AS RECORRIDO_ID
RETURN 0