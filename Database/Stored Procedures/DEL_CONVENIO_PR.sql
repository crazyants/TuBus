﻿CREATE PROCEDURE [dbo].[DEL_CONVENIO_PR]
    @P_CEDULA_JURIDICA int	
AS 
	Begin
		SET NOCOUNT ON;  
		Update TBL_CONVENIO
        SET   
			ESTADO = 'Inactivo'
		where CEDULA_JURIDICA = @P_CEDULA_JURIDICA    
	End
GO  

