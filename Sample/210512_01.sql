USE sqlDB;
GO

SELECT * FROM userTbl;
SELECT * FROM userTbl 
 WHERE name = '���ȣ';



--����� ���̺��� ����⵵ 1970���� 1980�����
SELECT * FROM userTbl
  WHERE birthYear >= 1970 AND birthYear <= 1980
    AND height >= 180; 


-- ����⵵�� 1970�� �����̰ų� Ű�� 182�̻��� ��� ��ȸ
SELECT * FROM userTbl 
  WHERE birthYear >= 1970 OR height >= 180;

SELECT * FROM userTbl
  WHERE birthYear BETWEEN 1970 AND 1980
    AND height >= 180;

-- ����� �߿� ������ �泲, ����, ����� ����� ��ȸ
SELECT name,userID, addr FROM userTbl
  WHERE addr = '�泲' OR addr = '����' OR addr = '���';

SELECT name,userID, addr FROM userTbl
  WHERE addr IN ('�泲', '���', '����');


-- LIKE ��(���ڿ����� ���ϴ� ���ڿ��� �ִ�(contain))
SELECT name, height, addr FROM userTbl
  WHERE name LIKE '��%';

SELECT name, height, addr FROM userTbl
  WHERE name LIKE '_��Ŵ';

SELECT name, height, addr FROM userTbl
  WHERE name LIKE '_��_';