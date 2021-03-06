﻿CREATE PROCEDURE [dbo].[UPD_CONVENIO_PR]
    @P_CEDULA_JURIDICA int,
	@P_NOMBRE_INSTITUCION nvarchar(50),
	@P_DESCUENTO_TARIFA int,
	@P_EMAIL_ENCARGADO nvarchar(50)
AS 
	Begin
		SET NOCOUNT ON;  
		Update TBL_CONVENIO
        SET   
			NOMBRE_INSTITUCION = @P_NOMBRE_INSTITUCION,
			DESCUENTO_TARIFA = @P_DESCUENTO_TARIFA,
			EMAIL_ENCARGADO = @P_EMAIL_ENCARGADO
		where CEDULA_JURIDICA = @P_CEDULA_JURIDICA    
	End
GO  

