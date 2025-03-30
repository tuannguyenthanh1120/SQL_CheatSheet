USE [HowKteam]
GO

--LEFT JOIN
SELECT * FROM BOMON LEFT JOIN GIAOVIEN
ON GIAOVIEN.MABM = BOMON.MABM
--bảng bên phải nhập vào bảng bên trái
--record nào bảng phải không có :để null
--record nào bảng trái không có thì không điền vào

--RIGHT JOIN 
SELECT * FROM BOMON RIGHT JOIN GIAOVIEN
ON GIAOVIEN.MABM = BOMON.MABM