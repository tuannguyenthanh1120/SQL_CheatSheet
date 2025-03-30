-- Các kiểu dữ liệu hay sử dụng

-- int : kiểu số nguyên
-- float : kiểu số thực
-- char : kiểu kí tự /char(10) ->10 ô nhớ này không được động vào /không viết tiếng việt được
-- varchar : kiểu kí tự / bộ nhớ chỉ được lấy khi có dữ liệu bên trong /không viết tiếng việt được
-- nchar : kiểu kí tự có thể lưu tiếng việt
-- nvarchar :kiểu kí tự cấp phát động có thể lưu tiếng việt
-- date:lưu trữ ngày tháng năm ,giờ
-- time:lưu trữ giờ ,phút ,giây,..
-- bit:lưu giá trị 0 và 1
-- text : lưu văn bản lớn 
-- ntext :lưu văn bản có tiếng việt

USE [SQLQuery]
GO

CREATE TABLE Test
(
  Doc nvarchar(50), --khai báo trường DOC kiểu nvarchar cấp phát động 50 ô nhớ
  Masv char(10) ,
  Birthday DATE,
  sex BIT ,-- lưu giá trị 0 hoặc 1
)
  GO

  --Masv lưu 10 ô nhớ Masv ='
  
  
 