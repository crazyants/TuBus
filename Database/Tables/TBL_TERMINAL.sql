﻿CREATE TABLE [dbo].[TBL_TERMINAL](
	[TERMINAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[TERMINAL_NAME] [nvarchar](50) NOT NULL,
	[LATITUDE] [decimal](20, 17) NOT NULL,
	[LONGITUDE] [decimal](20, 17) NOT NULL,
	[CANTIDAD_LINEAS] [int] NOT NULL,
	[ESTADO] NVARCHAR(10) NOT NULL,
	[ESPACIOS_PARQUEO] INT NOT NULL, 
    [ESPACIOS_PARQUEO_BUS] INT NOT NULL, 
    CONSTRAINT [PK_TBL_TERMINAL_TERMINAL_ID] PRIMARY KEY CLUSTERED ([TERMINAL_ID] ASC)
) 