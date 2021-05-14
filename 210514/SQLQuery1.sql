-- 프로그래밍 시자
USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2) -- 정수부분3, 소수점 2
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3)

SET @myVar1 = 4000;
SET @myVar2 = 3.14;
set @myVar3 = '가수이름 ==>';

select @myVar1, @myVar2;

SELECT @myVar3, name FROM  userTbl WHERE height > 180;
SELECT @myVar3 AS 'string', name FROM userTbl WHERE height > 180;
SELECT name, height * @inchUnit AS '키(inch)' FROM userTbl;