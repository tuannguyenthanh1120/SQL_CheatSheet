USE HowKteam
GO

--tạo index trên bảng người thân
--tăng tốc độ tìm kiếm ,chậm tốc độ thêm ,xóa ,sửa
CREATE INDEX Indexname on [dbo].[NGUOITHAN]([MAGV])

--Không cho phép các trường trùng nhau
Create unique index indexnameunique on giaovien(magv)


SELECT * FROM NGUOITHAN
WHERE MAGV ='001' and TEN ='Test'
