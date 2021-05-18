CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
	RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = (YEAR(GETDATE()) - @bYear) + 1 --한국나이
	RETURN(@age)
END 
GO

CREATE OR ALTER FUNCTION ufn_getInch(@bHeight INT)
	RETURNS INT
AS
BEGIN
	DECLARE @inch INT
	SET @inch = @bHeight * 3
	RETURN (@inch)
END
GO


SELECT userID, name
	 , birthYear, dbo.ufn_getAge(birthYear) AS '나이'
	 , addr, dbo.ufn_getInch(height) AS '키(인치)' 
	 FROM userTbl;