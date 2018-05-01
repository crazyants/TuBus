﻿CREATE PROCEDURE [dbo].[RET_VISTA_POR_ROLE_VISTA_PR]
	@P_ROLE_ID nvarchar(50),
	@P_VISTA_ID nvarchar(50)
AS
	SELECT * FROM TBL_ROLE_VISTA 
	WHERE ROLE_ID = @P_ROLE_ID
	AND VISTA_ID = @P_VISTA_ID
RETURN 0