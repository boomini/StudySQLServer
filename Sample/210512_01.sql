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

--SubQuery
-- Ű�� 175���� ū����� ��ȸ
SELECT * FROM userTBL
  WHERE height > 175;

-- ���ȣ���� Ű�� ū����� ��ȸ
SELECT * FROM userTbl
  WHERE height > (SELECT height FROM userTbl WHERE name = '���ȣ');

-- �泲�� ��� ����麸�� Ű�� ū ����� ��ȸ
SELECT * FROM userTbl
  WHERE height > ANY (SELECT height FROM userTbl Where addr = '�泲');

-- IN�� ������������ ���� ����� ��ġ�ϴ� ����� ��ȸ
SELECT * FROM userTbl
  WHERE height = ANY (SELECT height FROM userTbl Where addr = '�泲');

SELECT * FROM userTbl
  WHERE height IN (SELECT height FROM userTbl Where addr = '�泲');

-- ****subquery������ select * �� ����.

-- ORDER BY
SELECT * FROM userTbl
  ORDER BY userID DESC;

SELECT * FROM userTbl
  ORDER BY birthYear ASC;

SELECT * FROM userTbl
  ORDER BY height DESC, name DESC;

-- mobile1���� �������� �� �������̸� mobile2�� ��������
SELECT * FROM userTbl
  ORDER BY mobile1 ASC, mobile2 DESC;

 
-- userTbl�� ��� ������(���ڵ�)�� �ִ��� Ȯ��
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(*) FROM buyTbl;

--DISTINCT (�ߺ�����)
SELECT DISTINCT addr FROM userTbl;