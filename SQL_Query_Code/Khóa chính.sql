--UNIQUE : duy nhất trong toàn bộ bảng ,trường nào có unique thì không thể có 2 giá trị trùng nhau
--NOT NULL :Không được phép NULL
--DEFAULT :giá trị mặc định của trường đó nếu không giá trị khi insert


USE [SQLQuery]
GO 


--khi tạo bảng có thể tạo khóa chính Primary key trong khai báo
CREATE TABLE TestPrimaryKey1
(
ID INT Primary Key,
Ten NVARCHAR(100) DEFAULT N'Howkteam.com'
)
GO

-- Khi đã tạo bảng muốn sửa cột thành Khóa chính
ALTER TABLE [dbo].[TestPrimaryKey1] ADD PRIMARY KEY ([ID])

--tạo primary key trong bảng không phải ngay khi khai báo
CREATE TABLE TestPrimaryKey2
( ID INT NOT NULL,
TEN NVARCHAR(100) DEFAULT N'Howkteam.com'

Primary Key (ID)
)
GO

--tạo Primary key ngay trong bảng mà đặt tên cho KEY đó 
CREATE TABLE TestPrimaryKey3
(ID INT NOT NULL,
Ten NVARCHAR(100)

CONSTRAINT PK_Test3 --sau này xóa key cho dễ
PRIMARY KEY (ID)
)
GO

--tạo Primary Key sau khi tạo bảng và đặt tên cho key đó 
USE [SQLQuery]
CREATE TABLE TestPrimaryKey4
(
ID INT NOT NULL,
Ten NVARCHAR(100) DEFAULT N'Howkteam.com'
)
GO

ALTER TABLE [dbo].[TestPrimaryKey4] 
ADD CONSTRAINT PK_Test4 
PRIMARY KEY (ID)


-- khóa chính có 2 trường
USE [SQLQuery]
CREATE TABLE TestPrimaryKey5
(
ID1 INT NOT NULL,
ID2 INT NOT NULL,
Ten NVARCHAR(100) DEFAULT N'Howkteam.com'
Primary Key (ID1 ,ID2)
)
GO

--xóa khóa chính có đặt tên
ALTER TABLE [dbo].[TestPrimaryKey4]  DROP CONSTRAINT PK_Test4
GO