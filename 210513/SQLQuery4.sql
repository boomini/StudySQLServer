-- UPDATE

-- Ʈ����� ����
BEGIN TRANSACTION

UPDATE testTbl
  SET userName = '�����'
  WHERE Id = 2;


UPDATE testTbl
  SET userName = '�����'
    , addr = '�λ�'
	WHERE Id = 2;

SELECT * FROM testTbl;
COMMIT
ROLLBACK

TRUNCATE TABLE testTbl; -- ������ ���θ� �����ϰ�
-- 1���� �ٽ� ����