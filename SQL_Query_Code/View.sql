select * FROM GIAOVIEN

--tạo ra 1 bảng lưu thông tin gv, tên bm và lương của GV đó
SELECT GV.HOTEN ,TENBM ,GV.LUONG INTO LUONGGIAOVIEN FROM GIAOVIEN AS GV,BOMON AS BM
WHERE BM.MABM = GV.MABM

SELECT * FROM LUONGGIAOVIEN

UPDATE GIAOVIEN SET LUONG = 900
WHERE MAGV = '006'

--View là bảng ảo cập nhật dữ liệu theo bảng mà view truy vấn tới

--tạo ra view testview từ câu truy vấn
CREATE VIEW TestView as
SELECT * FROM GIAOVIEN

select * FROM TestView

UPDATE GIAOVIEN SET LUONG = 900
WHERE MAGV = '006'

DROP VIEW TestView

--update view
ALTER VIEW TestView as
SELECT HOTEN FROM GIAOVIEN

--tạo view có dấu
CREATE VIEW [Giáo dục miễn phí] AS
SELECT * FROM KHOA


SELECT * FROM [Giáo dục miễn phí]