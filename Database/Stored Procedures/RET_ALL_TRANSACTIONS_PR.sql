﻿CREATE PROCEDURE [dbo].[RET_ALL_TRANSACTIONS_PR]
AS
	Select tr.*, t.USUARIO as EMAIL from TBL_TRANSACCION as tr
	join TBL_TARJETA  t on t.CODIGO_UNICO = tr.TARJETA_ID
	Union
	Select tr.*, t.NOMBRE_LINEA as EMAIL from TBL_TRANSACCION as tr
	join TBL_LINEA  t on t.LINEA_ID = tr.LINEA_ID
RETURN 0
