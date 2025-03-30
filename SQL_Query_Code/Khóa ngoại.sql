CREATE DATABASE Primary_Foreign
GO

USE Primary_Foreign
GO

CREATE TABLE BoMon
(
MaBM Char(10) PRIMARY KEY,
Ten NVARCHAR(100) DEFAULT N'Tên bộ môn'
)
GO
 
 CREATE TABLE Lop
 (
 MaLop Char(10) not null ,
 Ten NVARCHAR(100) DEFAULT N'Tên lớp'
 Primary KEy (MaLop)
 )
 GO



 --điều kiện cần để tạo khóa ngoại
 --Tham chiếu tới khóa chính 
 --UNIQUE,NOT NULL 
 --Cùng kiểu dữ liệu
 --Cùng số lượng trường có sắp xếp

 --lợi ích
 --đảm bảo toàn vẹn dữ liệu
 --không có trường hợp tham chiếu tới dữ liệu không tồn tại


 CREATE TABLE GiaoVien
 (
 MaGV Char(10) not null,
 Ten NVARCHAR(100) DEFAULT N'Tên giáo viên',
 Diachi NVARCHAR(100) DEFAULT N'Địa chỉ giáo viên',
 NgaySinh Date,
 Sex Bit,
 MaBM CHAR(10) ,
 FOREIGN KEY(MaBM) REFERENCES BoMon(MaBM) --tạo khóa ngoại ngay trong bảng 
 )
 GO

 ALTER TABLE GiaoVien ADD PRIMARY KEY(MaGV)
 GO

 CREATE TABLE HocSinh
 (
 MaHS CHAR(10) PRIMARY KEY,
 TEN NVARCHAR(100)
 )
 GO
  --tạo khóa ngoại ngay khi tạo bảng
 ALTER TABLE HocSinh ADD CONSTRAINT PK_HS1 FOREIGN KEY(MaHS) REFERENCES Lop(MaLop)
 GO
 --hủy khóa
 ALTER TABLE HocSinh DROP CONSTRAINT PK_HS1
 GO


 INSERT [dbo].[BoMon] ([MaBM],[Ten])
 VALUES('BM01',
 N'Bộ môn 1'
 )
 GO
 INSERT [dbo].[BoMon] ([MaBM],[Ten])
 VALUES('BM02',
 N'Bộ môn 2'
 )
 GO
 INSERT [dbo].[BoMon] ([MaBM],[Ten])
 VALUES('BM03',
 N'Bộ môn 3'
 )
 GO

 USE [Primary_Foreign]
 GO
 INSERT [dbo].[GiaoVien] ([MaGV],[Ten],[Diachi],[NgaySinh],[Sex],[MaBM])
 VALUES(
 'GV01',
 N'GV 1',
 N'DC 1',
 '20051120',
1,
'BM03'
)
	GO

 INSERT [dbo].[GiaoVien] ([MaGV],[Ten],[Diachi],[NgaySinh],[Sex],[MaBM])
 VALUES(
 'GV02',
 N'GV 1',
 N'DC 1',
 '20051120',
1,
'BM03'
)
	GO