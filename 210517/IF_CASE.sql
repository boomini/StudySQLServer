-- SQL Programming
DECLARE @var1 INT --변수 선언
SET @var1 = 180
IF (@var1 < 170)
BEGIN
	PRINT '기준값이 작습니다.'
END
ELSE IF(@var1 = 180)
BEGIN
		SELECT * FROM userTbl WHERE height < @var1;
END
ELSE
BEGIN
	SELECT * FROM userTbl WHERE height > @var1;
END


--CASE
DECLARE @point INT, @credit CHAR(1)
SET @point = 100

SET @credit = 
CASE
	WHEN (@point >= 90) THEN 'A'
	WHEN (@point >= 80) THEN 'B'
	WHEN (@point >= 70) THEN 'C'
	WHEN (@point >= 60) THEN 'D'
	ELSE 'F'
END

PRINT CONCAT('취득점수 ==>' , @point)
PRINT CONCAT('학점 ==>', @credit)

