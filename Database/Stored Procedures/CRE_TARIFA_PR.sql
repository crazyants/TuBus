﻿CREATE PROCEDURE [dbo].[CRE_TARIFA_PR]
	@P_ROUTE_ID INT,
    @P_ROUTE_NAME NVARCHAR(100),
    @P_OPERATOR nvarchar(100),
    @P_REGULAR_FARE decimal(10,2)
AS
UPDATE [dbo].[TBL_TARIFA]
   SET [ROUTE_NAME] = @P_ROUTE_NAME
      ,[OPERATOR] = @P_OPERATOR
      ,[REGULAR_FARE] = @P_REGULAR_FARE
 WHERE [ROUTE_ID] = @P_ROUTE_ID
 IF @@ROWCOUNT=0
	 INSERT INTO [dbo].[TBL_TARIFA]
			   ([ROUTE_ID]
			   ,[ROUTE_NAME]
			   ,[OPERATOR]
			   ,[REGULAR_FARE])
		 VALUES
			   (@P_ROUTE_ID
			   ,@P_ROUTE_NAME
			   ,@P_OPERATOR
			   ,@P_REGULAR_FARE)
RETURN 0
