﻿CREATE PROCEDURE [dbo].[CRE_CONVENIO_PR]
    @P_CEDULA_JURIDICA int,
	@P_NOMBRE_INSTITUCION nvarchar(50),
	@P_DESCUENTO_TARIFA int,
	@P_EMAIL_ENCARGADO nvarchar(50)
AS 
	Begin
		SET NOCOUNT ON;  
		INSERT INTO TBL_CONVENIO
          ( 
			CEDULA_JURIDICA,
			NOMBRE_INSTITUCION,
			DESCUENTO_TARIFA,
			ESTADO,
			EMAIL_ENCARGADO
          ) 
     VALUES 
          ( 
            @P_CEDULA_JURIDICA,
			@P_NOMBRE_INSTITUCION,
			@P_DESCUENTO_TARIFA,
			'Activo',
			@P_EMAIL_ENCARGADO
          ) 	
	End
GO  
