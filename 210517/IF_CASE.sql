-- SQL Programming
DECLARE @var1 INT --���� ����
SET @var1 = 180
IF (@var1 < 170)
BEGIN
	PRINT '���ذ��� �۽��ϴ�.'
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

PRINT CONCAT('������� ==>' , @point)
PRINT CONCAT('���� ==>', @credit)

