CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
	RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = (YEAR(GETDATE()) - @bYear) + 1 --�ѱ�����
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
	 , birthYear, dbo.ufn_getAge(birthYear) AS '����'
	 , addr, dbo.ufn_getInch(height) AS 'Ű(��ġ)' 
	 FROM userTbl;