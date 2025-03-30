USE [HowKteam]
Go

--xuất ra tt giáo viên mà tên bắt đầu bằng chữ "L"
SELECT * FROM [dbo].[GIAOVIEN]
WHERE HOTEN like 'l%'

--xuất ra thông tin gv kết thúc bằng chữ "n"
SELECT * FROM [dbo].[GIAOVIEN]
WHERE HOTEN Like '%n'

--xuất ra tt gv có tồn tại chữ "n"
SELECT * FROM [dbo].[GIAOVIEN]
WHere HOTEN LIKE '%n%'

--xuất ra tt gv có tồn tại chữ "ế"
SELECT * FROM [dbo].[GIAOVIEN]
WHere HOTEN LIKE N'%ế%'

