use HowKteam
GO

--kiểu dữ liệu tự định nghĩa
--EXEC sp_addtype 'tên kiểu dữ liệu' ,'kiểu dữ liệu thực tế','not null'  ( có hay không đều được)

EXEC sp_addtype 'NNAME','Nvarchar(100)','NOT NULL' 

CREATE TABLE Testtype1
(
Ten NName,
Diachi Nvarchar(500)
)
GO

EXEC sp_addtype 'NADDRESS','Nvarchar(100)'

--xóa type
EXEC SP_DROPTYPE 'Nname'