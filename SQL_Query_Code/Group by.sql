use HowKteam
go

--xuất ra danh sách tên bộ môn và số lượng giáo viên bộ môn đó
SELECT TENBM ,MAKHOA,count(*) FROM [dbo].[BOMON] , [dbo].[GIAOVIEN]
where BOMON.MABM =GIAOVIEN.MABM
GROUP BY TENBM ,MAKHOA
--cột hiển thị phải là thuộc tính nằm trong khối group by hoặc agreegate function


--/lấy ra danh sách giáo viên có lương lớn hơn lương trung bình của GV(TRUY VẤN LỒNG)
SELECT * FROM GIAOVIEN
WHERE Luong > (Select sum(Luong) FROM GIAOVIEN)/(SELECT COUNT(*) FROM GIAOVIEN)

--xuất ra tên giáo viên và số lượng đề tài mà người đó tham gia
SELECT GV.HOTEN,COUNT(*) fROM GIAOVIEN AS GV , THAMGIADT AS TGDT
WHERE GV.MAGV=TGDT.MAGV
GROUP BY GV.MAGV,GV.HOTEN


--BÀI TẬP
--1.Xuất ra tên giáo viên và số lượng người thân của gv đó
SELECT GV.HOTEN ,COUNT(*) FROM GIAOVIEN as GV , [dbo].[NGUOITHAN] as NT
WHERE NT.MAGV = GV.MAGV
GROUP BY GV.HOTEN

--2.Xuất ra tên gv và số lượng đề tài đã hoàn thành mà người đó tham gia
SELECT GV.HOTEN ,COUNT(*) FROM GIAOVIEN AS GV, THAMGIADT AS TGDT
WHERE GV.MAGV =TGDT.MAGV
GROUP BY GV.HOTEN

--3.xuất ra tên khoa có tổng số lương của các giáo viên trong khoa là lớn nhất
SELECT TOP(1) k.TENKHOA , SUM(GV.LUONG) as TONGLUONG FROM KHOA AS K , GIAOVIEN AS GV , BOMON AS BM
WHERE BM.MABM = GV.MABM AND K.MAKHOA = BM.MAKHOA
GROUP BY K.TENKHOA ORDER BY TONGLUONG DESC


