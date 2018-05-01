﻿CREATE TABLE [dbo].[TBL_CONVENIO](
	[CEDULA_JURIDICA] [int] NOT NULL,
	[NOMBRE_INSTITUCION] [nvarchar](45) NOT NULL,
	[DESCUENTO_TARIFA] [int] NOT NULL,
	[ESTADO] NVARCHAR(50) NOT NULL,
	[EMAIL_ENCARGADO] NVARCHAR(50) NOT NULL,
 CONSTRAINT [PK_TBL_CONVENIO_CONVENIO_ID] PRIMARY KEY CLUSTERED 
(
	[CEDULA_JURIDICA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

GO