﻿CREATE PROCEDURE [dbo].[CRE_VISTA_ROL_PR]
	@P_VISTA_ID nvarchar(50),
	@P_ROLE_ID nvarchar(50)
AS
	INSERT INTO TBL_ROLE_VISTA
		(
			VISTA_ID,
			ROLE_ID
		)
	VALUES
		(
			@P_VISTA_ID,
			@P_ROLE_ID
		)
RETURN 0