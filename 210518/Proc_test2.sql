-- �Ķ����(�Ű�����) �þ�� ���ν���
CREATE PROC usp_users1
	@userName NVARCHAR(10)
AS
	SELECT userId, name, birthYear FROM userTbl
	WHERE name = @userName;
GO

EXEC usp_users1 '���ð�';

SELECT * FROM userTbl WHERE name = '���ð�';

CREATE PROC usp_users2
	@userBirthYear INT,
	@userHeight INT
AS
	SELECT userID, name, birthYear, height, mDate FROM userTbl
	 WHERE birthYear >= @userBirthYear
	 AND height >= @userHeight;
GO

EXEC usp_users2 1970,178;

-- ���ν����� �Լ� �ڵ�����
-- CREATE OR ALTER PROC(FUNC) ������ ������ ���ÿ� ...
CREATE OR ALTER PROC usp_users3
	@lastName NVARCHAR(2),
	@outCount INT OUTPUT -- ���Ϲ޴� ��
AS
	SELECT @outCount = COUNT(*) FROM userTbl WHERE name LIKE @lastName + '%';
GO
SELECT COUNT(*) FROM userTbl WHERE name LIKE '��' + '%';

DECLARE @myValue INT;
EXEC usp_users3 '��', @myValue OUTPUT;
PRINT CONCAT('�达 ���� ���� ����� ���� ', @myValue);