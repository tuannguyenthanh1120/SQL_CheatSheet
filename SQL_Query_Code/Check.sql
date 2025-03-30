

--có thể tạo check như tạo khóa chính
--tạo 1 bảng có điều kiện 
CREATE TABLE TestCheck
(id int primary key identity,
Luong int check(Luong>3000 AND Luong <9000)
) 

INSERT TestCheck (Luong)
VALUES(3001)


CREATE TABLE TestCheck
(id int primary key identity,
Luong int ,
check(Luong>3000 AND Luong <9000)
) 
GO	

CREATE TABLE TestCheck
(id int primary key identity,
Luong int ,
CONSTRAINT CK_LUONG check(Luong>3000 AND Luong <9000)
) 
GO	

CREATE TABLE TestCheck
(id int primary key identity,
Luong int
) 
GO	

ALTER TABLE TestCheck ADD CONSTRAINT CK_LUONG
CHECK (LUONG >3000 AND LUONG <9000)
