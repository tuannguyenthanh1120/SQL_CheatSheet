--thêm dữ liệu 
--kiểu số -> số bình thường
--kiểu kí tự hoặc ngày cần để trong cặp nháy đơn
--Nếu là unicode thì cần có N phía trước cặp nháy đơn : N' '


INSERT [dbo].[HOCSINH] ([MAHS] ,[TEN],[Ngaysinh])
VALUES (N'5', --MaHS --nvarchar(10)
		N'Howkteam.com' , --TEN --nvarchar(100)
		'19940419' --Ngaysinh -- date
		)
		GO

USE [SQLQuery]
GO
 CREATE TABLE TEST
 (
 Maso int,
 Ten Nvarchar(10),
 Ngaysinh date,
 Nam BIT,
 DiaChi Char(10),
 Tienluong Float
 )
 GO

 INSERT [dbo].[TEST] ([Maso],[Ten],[Ngaysinh],[Nam],[DiaChi],[Tienluong])
 VALUES(102,
 N'Trần',
 '19940419',
  0,
 'Địa chỉ nè',
 10000
 )

 -- xóa dữ liệu
 --nếu chỉ delete <tên bảng> xóa toàn bộ dữ liệu trong bảng
 --xóa trường mong muốn dùng thêm WHERE
 --các toán tử > , < , >= , <= , <> , AND , OR , =
 Delete [dbo].[TEST] Where [Maso] = 12 -- khi mã số là 12
 Delete [dbo].[TEST] WHERE [Tienluong] > 5000
 DELETE [dbo].[TEST] WHERE [Tienluong] >5000 And[Maso]  <15

 --UPDATE dử liệu
 --toàn bộ bảng với 1 trường
 UPDATE [dbo].[TEST] SET [Tienluong] = 100000

--toàn bộ bảng với nhiều trường 
 UPDATE [dbo].[TEST] SET [Tienluong] = 1 , [DiaChi] ='diachi'

 --update dữ liệu của trường mong muốn
 UPDATE [dbo].[TEST] SET  [Tienluong] = 9 WHERE [Nam] = 1