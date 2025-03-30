use [HowKteam]
go

--kiểm tra xem gv có msgv 001 có phải gv quản lý chuyên môn hay không
--lấy ra ds mã gv qlcm
--kiểm tra mã gv tồn tại trong ds đó
Select * from [dbo].[GIAOVIEN]
Where [MAGV] = '001'
--001 tồn tại trong ds
AND MAGV IN
(
Select GVQLCM from [dbo].[GIAOVIEN]
) 

--truy vấn lồng trong From
SELECT * FROM 
GIAOVIEN,(SELECT * FROM DETAI) as DT

--1.Xuất ra ds gv tham gia nhiều hơn 1 đề tài 
--lấy ra tất cả thông tin của GV 
SELECT * FROM GIAOVIEN as GV
--khi mà số lượng đề tài mà gv đó tham gia >1
WHERE 1 < 
(
SElECT COUNT(*) FROM THAMGIADT
WHERE MAGV =GV.MAGV
)

--2. xuất ra tt của khoa mà có nhiều hơn 2 GV
--Lấy đc ds bộ môn  nằm trong khoa hiện tại

SELECT * FROM KHOA AS K
WHERE 2 < 
(SELECT COUNT(*) FROM BOMON AS BM , GIAOVIEN AS GV 
WHERE BM.MAKHOA = K.MAKHOA
AND BM.MABM = GV.MABM
)







--BÀI TẬP
--1. xuất ra thông tin giáo viên có hơn 2 người thân
SELECT * FROM GIAOVIEN AS GV
WHERE 1 <
(
SELECT COUNT(*) FROM NGUOITHAN AS NT
WHERE NT.MAGV = GV.MAGV
)


--sắp xếp giảm dần 
SELECT * FROM GIAOVIEN AS GV
ORDER by MAGV DESC

--sắp xếp tăng dần
Select * FROM GIAOVIEN AS GV
ORDER by MAGV ASC

--lấy ra top5 phần tử
SELECT TOP(5) *FROM GIAOVIEN


--2.xuất ra ds các gv lớn tuổi hơn ít nhất 5 người các gv trong trường
--lấy ra ds gồm mã (gv và tuổi) AS GVT
--sắp xếp giảm dần -> order by desc
--lấy ra ds GVT2 với Số lượng  phần tử = 5
--kiểm tra mã gv tồn tại trong  GVT2 là đúng

SELECT TOP(5)*,(year(getdate())-year([NGSINH])) AS TUOI FROM [dbo].[GIAOVIEN] AS GV1
WHERE
(
SELECT COUNT(*) FROM GIAOVIEN AS GV2
WHERE  (YEAR(GETDATE()) - YEAR(GV1.NGSINH)) >= (YEAR(GETDATE()) - YEAR(GV2.NGSINH))) 

>= (SELECT COUNT(*) FROM GIAOVIEN) / 2



