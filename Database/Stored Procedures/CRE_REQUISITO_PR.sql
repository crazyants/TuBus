﻿CREATE PROCEDURE [dbo].[CRE_REQUISITO_PR]
	@P_PERMISO nvarchar(50),
	@P_ESTADO nvarchar(50),
	@P_PLACA nvarchar(50)
AS
	INSERT INTO TBL_REQUESITO(
		PERMISO,
		ESTADO,
		PLACA
	)
	VALUES(
		@P_PERMISO,
		@P_ESTADO,
		@P_PLACA
	)

RETURN 0
