USE HOWKTEAM
GO

--inner join ->kiểu cũ -> có thể sau này sẽ không còn được hỗ trợ
--mọi join đều cần điều kiện
SELECT * FROM [dbo].[GIAOVIEN] AS GV , [dbo].[BOMON] AS BM
WHERE GV.MABM = BM.MABM

--inner join kiểu mới ,đúng chuẩn
SELECT * FROM [dbo].[GIAOVIEN] inner join [dbo].[BOMON]
ON BOMON.MABM = GIAOVIEN.MABM

--có thể viết tắt inner join thành JOIN
SELECT * FROM [dbo].[KHOA] JOIN [dbo].[BOMON]
ON BOMON.MAKHOA = KHOA.MAKHOA