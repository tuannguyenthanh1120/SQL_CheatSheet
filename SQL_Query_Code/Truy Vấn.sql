--Lưu ý : Chạy script query trước khi chạy thử script này


USE [HowKteam]
GO

--cấu trúc truy vấn
SELECT * FROM [dbo].[BOMON] --lấy hết các dữ liệu trong bảng bộ môn
GO

--lấy mã đề tài + tên đề tài trong bảng bộ môn
SELECT [MABM] ,[TENBM]  FROM [dbo].[BOMON]


--Đổi tên cột hiển thị
SELECT [MABM] AS 'Howkteam.com', [TENBM] AS N'Giáo dục'  FROM [dbo].[BOMON]

--Xuất ra mã giáo viên + tên + tên bộ môn giáo viên đó dạy
SELECT GV.[MAGV],GV.[HOTEN],BM.[TENBM]  FROM [dbo].[GIAOVIEN] AS GV ,[dbo].[BOMON] AS BM

--bài tập:
-- 1.TRUY XUẤT THÔNG TIN CỦA BẢNG THAM GIA ĐỀ TÀI
select * from [dbo].[THAMGIADT]

-- 2.LẤY RA MÃ KHOA VÀ TÊN KHOA TƯƠNG ỨNG
select [MAKHOA],[TENKHOA] from [dbo].[KHOA]

--3:lấy ra magv tên gv ,tên người thân
Select GV.[MAGV] , GV.[HOTEN] , NT.[TEN] from [dbo].[GIAOVIEN] AS GV ,[dbo].[NGUOITHAN] AS NT

-- 4.LẤY RA MÃ GV ,TÊN GV VÀ TÊN KHOA CỦA GV ĐÓ LÀM VIỆC .GỢI Ý BỘ MÔN NẰM TRONG KHOA
select GV.[MAGV] ,GV.[HOTEN] ,K.[MAKHOA] from [dbo].[GIAOVIEN] AS GV, [dbo].[BOMON]  AS BM, [dbo].[KHOA] AS K




