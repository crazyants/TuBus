﻿CREATE TABLE [dbo].[TBL_VISTA_CLAIM]
(
	[VISTA_ID] NVARCHAR(50) NOT NULL, 
    [APP_CLAIM_ID] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_TBL_VISTA_CLAIM] PRIMARY KEY ([VISTA_ID], [APP_CLAIM_ID]), 
    CONSTRAINT [FK_TBL_VISTA_CLAIM_VISTA] FOREIGN KEY (VISTA_ID) REFERENCES [TBL_VISTA](VISTA_ID), 
    CONSTRAINT [FK_TBL_VISTA_CLAIM_CLAIM] FOREIGN KEY (APP_CLAIM_ID) REFERENCES [TBL_APP_CLAIM]([APP_CLAIM_ID]) 
)
