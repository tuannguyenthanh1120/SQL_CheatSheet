
--xuất ra số lượng giáo viên trong từng bộ môn mà số GV >2
--HAVING như WHERE của SELECT nhưng dành cho GROUP BY
SELECT BM.MABM ,COUNT(*) FROM GIAOVIEN AS GV ,BOMON AS BM
WHERE BM.MABM = GV.MABM
GROUP BY BM.MABM
HAVING COUNT(*) >1

--xuất ra mức lương và tổng tuổi của giáo viên nhận mức lương đó
--và có người thân
--và tuổi phải lớn hơn tuổi trung bình
SELECT LUONG ,SUM(YEAR(GETDATE()) - YEAR(GV.[NGSINH])) FROM GIAOVIEN AS GV,  NGUOITHAN AS NT
WHERE GV.MAGV = NT.MAGV
AND GV.MAGV IN (SELECT NT.MAGV FROM NGUOITHAN)
GROUP BY GV.LUONG ,GV.NGSINH
HAVING (YEAR(GETDATE())-YEAR(GV.[NGSINH])) > (
(SELECT SUM(YEAR(GETDATE())-YEAR([NGSINH])) FROM GIAOVIEN )/
(SELECT COUNT(*) FROM GIAOVIEN)
)