CREATE OR ALTER FUNCTION ufn_getZodiac(@bYear INT)
	RETURNS NVARCHAR(3)
AS
BEGIN
	DECLARE @zodiac NVARCHAR(3) -- ¶ìÀÌ¸§ º¯¼ö
	SET @zodiac = 
		CASE
			WHEN (@bYEAR%12 = 0) THEN '¿ø¼þÀÌ'
			WHEN (@bYEAR%12 = 1) THEN '´ß'
			WHEN (@bYEAR%12 = 2) THEN '°³'
			WHEN (@bYEAR%12 = 3) THEN 'µÅÁö'
			WHEN (@bYEAR%12 = 4) THEN 'Áã'
			WHEN (@bYEAR%12 = 5) THEN '¼Ò'
			WHEN (@bYEAR%12 = 6) THEN 'È£¶ûÀÌ'
			WHEN (@bYEAR%12 = 7) THEN 'Åä³¢'
			WHEN (@bYEAR%12 = 8) THEN '¿ë'
			WHEN (@bYEAR%12 = 9) THEN '¹ì'
			WHEN (@bYEAR%12 = 10) THEN '¸»'
			ELSE '¾ç'
		END;
	RETURN(@zodiac)
END
GO

CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
	RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = (YEAR(GETDATE()) - @bYear) + 1 --ÇÑ±¹³ªÀÌ
	RETURN(@age)
END 
GO

SELECT userID, name
	 , birthYear
	 , dbo.ufn_getZodiac(birthYear) AS '¶ì'
	 , dbo.ufn_getAge(birthYear) AS '³ªÀÌ'
	 , addr
	 , height
	 FROM userTbl