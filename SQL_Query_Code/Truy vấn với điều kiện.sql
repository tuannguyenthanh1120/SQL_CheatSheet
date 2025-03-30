USE [HowKteam]
GO

Select GV.[MAGV] , GV.[HOTEN] , NT.[TEN] from [dbo].[GIAOVIEN] AS GV ,[dbo].[NGUOITHAN] AS NT
Where GV.MAGV = nt.MAGV 

--lấy ra gv lương lớn hơn 2000
SELECT * FROM [dbo].[GIAOVIEN]
WHERE [LUONG] > 2000

--lấy ra gv là nữ và lương  > 2000
select * from [dbo].[GIAOVIEN]
where [LUONG] > 2000 and [PHAI] = N'nữ'

--lấy ra gv nhỏ hơn 40 tuổi
--year -> lấy ra năm của ngày
--getdate() lấy ra ngày hiện tại

select * from [dbo].[GIAOVIEN]
where year(getdate())-year([NGSINH]) > 40

--lấy ra họ tên giáo viên , năm sinh ,tuổi lớn hơn 40 tuổi 
select [HOTEN],[NGSINH], YEAR(GETDATE()) - YEAR(NGSINH) from [dbo].[GIAOVIEN]
where year(getdate())-year([NGSINH]) > 40

-- LẤY RA MÃ GV ,TÊN GV VÀ TÊN KHOA CỦA GV ĐÓ LÀM VIỆC
select GV.[MAGV] ,GV.[HOTEN] ,K.[MAKHOA] from [dbo].[GIAOVIEN] AS GV, [dbo].[BOMON]  AS BM, [dbo].[KHOA] AS K
Where GV.[MABM] = BM.[MABM] AND BM.MAKHOA =K.MAKHOA

--lấy ra gv là trưởng bộ môn
select gv.* from [dbo].[GIAOVIEN] as gv , [dbo].[BOMON] as bm
where gv.MAGV = bm.TRUONGBM 

--đếm số lượng giáo viên
--COUNT(*) : đếm số lượng của tất cả record
--COUNT(tên trường) : đếm số lượng tên trường nào đó

SELECT COUNT(*) AS N'Số lượng gv'  FROM [dbo].[GIAOVIEN]

--đếm số lượng người thân gv có mã gv là 007
SELECT COUNT(*) AS N'SỐ lượng người thân của gv có mã gv là 007' FROM [dbo].[GIAOVIEN] AS GV , [dbo].[NGUOITHAN] AS NT
WHERE GV.MAGV = '007' AND GV.MAGV = NT.MAGV

--lấy ra tên gv và tên đề tài người đó tham gia
select GV.HOTEN , DT.[TENDT]  FROM [dbo].[GIAOVIEN]  AS GV, [dbo].[THAMGIADT] AS TGDT, [dbo].[DETAI] AS DT
WHERE GV.[MAGV] = TGDT.[MAGV] AND  DT.[MADT] = TGDT.MADT

--lấy ra tên gv và tên đề tài người đó tham gia ,khi mà người đó tham  gia nhiều hơn 1 lần
select GV.HOTEN , DT.[TENDT]  FROM [dbo].[GIAOVIEN]  AS GV, [dbo].[THAMGIADT] AS TGDT, [dbo].[DETAI] AS DT
WHERE GV.[MAGV] = TGDT.[MAGV] AND  DT.[MADT] = TGDT.MADT 
--truy vấn lồng--waiting

--BÀI TẬP
--1.xuất ra tt gv và gv quản lý chủ nhiệm của người đó
 USE [HowKteam]
 GO
 SELECT gv1.HOTEN , gv2.HOTEN FROM [dbo].[GIAOVIEN] as gv1 , [dbo].[GIAOVIEN] as gv2
 where gv1.[GVQLCM] = gv2.[MAGV]

--2.xuất ra số lượng gv của khoa cntt
SELECT COUNT(*) FROM [dbo].[GIAOVIEN] AS GV, [dbo].[BOMON] AS BM, [dbo].[KHOA] AS K
WHERE GV.MABM = BM.MABM
AND BM.MAKHOA = K.MAKHOA
AND K.MAKHOA ='CNTT'

--3.xuất ra tt gv và đề tài người đó tham gia khi mà kq là đạt
 SELECT GV.* FROM [dbo].[GIAOVIEN] as gv,[dbo].[THAMGIADT] as tgdt
 where gv.MAGV = tgdt.MAGV
 AND tgdt.KETQUA = N'Đạt'
