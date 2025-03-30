USE [HowKteam]
GO
--OUTER JOIN
--gom 2 bảng vào theo điều kiện ,bên nào không có dữ liệu thì để NULL

SELECT * FROM [dbo].BOMON FULL OUTER JOIN [dbo].GIAOVIEN
ON BOMON.MABM =GIAOVIEN.MABM


--CROSS JOIN là tập hợp mỗi RECORD của bảng A với all record của bảng B
SELECT * FROM [dbo].[GIAOVIEN] CROSS JOIN [dbo].[BOMON]