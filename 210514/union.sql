SELECT * FROM userTbl CROSS JOIN buyTbl

SELECT * FROM stdTbl;

-- �����̺� ��ü
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRooom FROM clubTbl; 

-- Ÿ������ �ٸ��� union�� �ȵǹǷ� ����ȯ�� ���־�� �Ѵ�.
SELECT CAST(Id AS VARCHAR), StdId FROM reginfoTbl
UNION
SELECT ClubName, ClubRooom FROM clubTbl 

-- UNION�� �ߺ�����, UNION ALL�� �ߺ����
SELECT StdName, Region FROM stdTbl
UNION ALL
SELECT StdName, Region FROM stdTbl 

-- except -- ��������
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
  WHERE mobile1 IS NULL;

-- ���� ���̺� ���� �����ϴ� �����͸� �߷����°�
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
  WHERE mobile1 IS NOT NULL;