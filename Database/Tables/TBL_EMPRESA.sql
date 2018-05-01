﻿CREATE TABLE [dbo].[TBL_EMPRESA](
	[CEDULA_JURIDICA] [int] NOT NULL,
	[NOMBRE_EMPRESA] [nvarchar](100) NOT NULL,
	[ESTADO] NVARCHAR(50) NOT NULL,
	[EMAIL_ENCARGADO] NVARCHAR(50) NOT NULL, 
    [TELEFONO] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_TBL_EMPRESA_CEDULA_JURIDICA] PRIMARY KEY CLUSTERED ([CEDULA_JURIDICA] ASC), 
    CONSTRAINT [FK_TBL_EMPRESA_USUARIO] FOREIGN KEY ([EMAIL_ENCARGADO]) REFERENCES [TBL_USUARIO]([EMAIL])
) 