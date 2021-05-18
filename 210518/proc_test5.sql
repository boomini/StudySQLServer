CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE @bYEAR INT
	DECLARE @zodiac NVARCHAR(3) -- ���̸� ����
	SELECT @bYEAR = birthYear FROM userTbl
	WHERE name = @userName;

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
	PRINT CONCAT(@userName, '�� ���', @zodiac, '�Դϴ�');

GO

EXEC usp_zodiac'�̽±�'

SELECT * FROM userTbl

-- �ý��� �������ν���
EXEC sp_databases;
EXEC sp_tables 'userTBL', 'dbo';

