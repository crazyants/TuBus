﻿CREATE PROCEDURE [dbo].[RET_APP_CLAIM_VISTA_PR]
	@P_VISTA_ID nvarchar(50)
AS
	SELECT TBL_APP_CLAIM.* FROM TBL_VISTA_CLAIM
	INNER JOIN TBL_APP_CLAIM ON TBL_APP_CLAIM.APP_CLAIM_ID = TBL_VISTA_CLAIM.APP_CLAIM_ID
	WHERE TBL_VISTA_CLAIM.VISTA_ID = @P_VISTA_ID
RETURN 0