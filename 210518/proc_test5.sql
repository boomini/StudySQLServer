CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE @bYEAR INT
	DECLARE @zodiac NVARCHAR(3) -- 띠이름 변수
	SELECT @bYEAR = birthYear FROM userTbl
	WHERE name = @userName;

	SET @zodiac = 
		CASE
			WHEN (@bYEAR%12 = 0) THEN '원숭이'
			WHEN (@bYEAR%12 = 1) THEN '닭'
			WHEN (@bYEAR%12 = 2) THEN '개'
			WHEN (@bYEAR%12 = 3) THEN '돼지'
			WHEN (@bYEAR%12 = 4) THEN '쥐'
			WHEN (@bYEAR%12 = 5) THEN '소'
			WHEN (@bYEAR%12 = 6) THEN '호랑이'
			WHEN (@bYEAR%12 = 7) THEN '토끼'
			WHEN (@bYEAR%12 = 8) THEN '용'
			WHEN (@bYEAR%12 = 9) THEN '뱀'
			WHEN (@bYEAR%12 = 10) THEN '말'
			ELSE '양'
		END;
	PRINT CONCAT(@userName, '의 띠는', @zodiac, '입니다');

GO

EXEC usp_zodiac'이승기'

SELECT * FROM userTbl

-- 시스템 저장프로시저
EXEC sp_databases;
EXEC sp_tables 'userTBL', 'dbo';

