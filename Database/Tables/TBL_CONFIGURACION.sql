﻿CREATE TABLE [dbo].[TBL_CONFIGURACION]
(
	[CONFIG_ID] NVARCHAR(50) NOT NULL , 
    [NUMBER_VALUE] DECIMAL(18, 2) NULL, 
    [STRING_VALUE] NVARCHAR(100) NULL, 
    CONSTRAINT [PK_TBL_CONFIGURACION] PRIMARY KEY ([CONFIG_ID])
)
