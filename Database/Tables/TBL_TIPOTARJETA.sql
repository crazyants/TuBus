﻿CREATE TABLE [dbo].[TBL_TIPOTARJETA](
	[TIPOTARJETA_ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_TARJETA] [nvarchar](45) NOT NULL,
	[STATUS] BIT NOT NULL, 
    [DESCUENTO_TARIFA] INT NOT NULL, 
    CONSTRAINT [PK_TBL_TIPOTARJETA_TIPOTARJETA_ID] PRIMARY KEY CLUSTERED ([TIPOTARJETA_ID] ASC)
)