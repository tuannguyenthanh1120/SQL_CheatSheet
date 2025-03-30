USE [HowKteam]
GO

--lấy hết dữ liệu của bảng gv đưa vào bảng  mới tên là TABLE_A
--Bảng này có các record tương ứng bảng gv
SELECT * INTO TABLE_A
FROM GIAOVIEN

--tạo ra một bảng tableB mới , có một cột dữ liệu là họ tên tương ứng như bảng gv
--dữ liệu của bảng tableB lấy từ gv ra
SELECT HOTen into tableB
FROM GIAOVIEN

--tạo ra một bảng tableC mới , có một cột dữ liệu là họ tên tương ứng như bảng gv
--với đk lương lớn hơn 2000
--dữ liệu của bảng tableB lấy từ gv ra
SELECT HOTen into tableC
FROM GIAOVIEN WHERE LUONG >2000

--tạo ra 1 bảng mới từ nhiều bảng
SELECT GV.MAGV,GV.HOTEN,BM.TENBM INTO GVBACKUP 
FROM GIAOVIEN AS GV, BOMON AS BM
WHERE GV.MABM = BM.MABM

--tạo ra một bảng GVBK y chang nhưng không có dữ liệu
SELECT * INTO GVBK
FROM GIAOVIEN
WHERE 6>9
