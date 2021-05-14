-- �����Լ�
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '���ż���', TRIM(userID) AS userID, SUM(price * amount) AS '����ں� ���űݾ�'
  FROM buyTbl
  GROUP BY userID
  FOR JSON AUTO; -- FOR XML AUTO

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS 'Ű����'
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC;

SELECT RANK() OVER(ORDER BY height DESC) AS 'Ű����' -- �������� ������ŭ �з��� �������� ����
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS 'Ű����'-- �������� ������ ������� �������� ����
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����'
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC; --PARTITION