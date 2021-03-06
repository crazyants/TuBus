﻿CREATE PROCEDURE [dbo].[UPD_CHOFER_PR]
	@P_CEDULA NVARCHAR(50),
	@P_NOMBRE NVARCHAR(50),
	@P_APELLIDOS NVARCHAR(50),
	@P_TELEFONO NVARCHAR(8),
	@P_CORREO NVARCHAR(50),
	@P_FECHA_NACIMIENTO DATE,
	@P_EDAD INT,
	@P_NUMERO_LICENCIA NVARCHAR(11),
	@P_FECHA_EXPIRACION DATE,
	@P_EMPRESA int,
	@P_ESTADO NVARCHAR(10)
AS
	UPDATE TBL_CHOFER
	SET
		NOMBRE = @P_NOMBRE,
		APELLIDOS = @P_APELLIDOS,
		TELEFONO = @P_TELEFONO,
		CORREO = @P_CORREO,
		FECHA_NACIMIENTO = @P_FECHA_NACIMIENTO,
		EDAD = @P_EDAD,
		NUMERO_LICENCIA = @P_NUMERO_LICENCIA,
		FECHA_EXPIRACION = FECHA_EXPIRACION,
		EMPRESA = @P_EMPRESA,
		ESTADO = @P_ESTADO

		where CEDULA = @P_CEDULA
RETURN 0
