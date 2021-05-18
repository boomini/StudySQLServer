CREATE OR ALTER FUNCTION ufn_getZodiac(@bYear INT)
	RETURNS NVARCHAR(3)
AS
BEGIN
	DECLARE @zodiac NVARCHAR(3) -- ���̸� ����
	SET @zodiac = 
		CASE
			WHEN (@bYEAR%12 = 0) THEN '������'
			WHEN (@bYEAR%12 = 1) THEN '��'
			WHEN (@bYEAR%12 = 2) THEN '��'
			WHEN (@bYEAR%12 = 3) THEN '����'
			WHEN (@bYEAR%12 = 4) THEN '��'
			WHEN (@bYEAR%12 = 5) THEN '��'
			WHEN (@bYEAR%12 = 6) THEN 'ȣ����'
			WHEN (@bYEAR%12 = 7) THEN '�䳢'
			WHEN (@bYEAR%12 = 8) THEN '��'
			WHEN (@bYEAR%12 = 9) THEN '��'
			WHEN (@bYEAR%12 = 10) THEN '��'
			ELSE '��'
		END;
	RETURN(@zodiac)
END
GO

CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
	RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = (YEAR(GETDATE()) - @bYear) + 1 --�ѱ�����
	RETURN(@age)
END 
GO

SELECT userID, name
	 , birthYear
	 , dbo.ufn_getZodiac(birthYear) AS '��'
	 , dbo.ufn_getAge(birthYear) AS '����'
	 , addr
	 , height
	 FROM userTbl