﻿USE HowKteam
GO

SELECT MAGV FROM [dbo].[GIAOVIEN]
WHERE LUONG >= 2500
union 
SELECT MAGV FROM [dbo].[NGUOITHAN]
WHERE PHAI = N'Nữ'


