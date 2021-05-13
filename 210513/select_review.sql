-- ������ ��ȸ
SELECT * FROM userTbl;

-- ������ ��ȸ ���͸�
SELECT * FROM C
  WHERE userID = 'BBK';

SELECT * FROM userTbl
  WHERE name = '������';

SELECT * FROM userTbl
  WHERE name LIKE '��%';


-- Ư�� ���̺� ���ڵ�(������) ����Ȯ��
SELECT COUNT(*) FROM userTbl;

-- Ű�� 180�̻��̰� ����⵵�� 1970���Ŀ� �¾ ��� ��ȸ
SELECT * FROM userTbl
  WHERE height >= 180 AND birthYear >= 1970;

-- ����⵵��(��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl
  ORDER BY birthYear; --ASC(ENDING)  |   DESC(ENDING)

-- SELECT INTO
-- userTbl_New ���̺� ����
-- select into�� ���縦 �ϸ� pk Ű���� ������ ���簡 �ȵȴ�.
SELECT * INTO userTbl_New FROM userTbl;
SELECT * FROM userTbl_New;


SELECT userID, name, addr INTO userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;

SELECT userID, name, addr INTO userTbl_Backup2 FROM userTbl WHERE addr = '����';

SELECT * FROM userTbl_Backup2;


--- GROUP BY
SELECT SUM(amount) AS '�ѱ��Ű���', userID FROM buyTbl
  GROUP BY userID;

SELECT * FROM buyTbl;

-- �츮 ���θ����� ���� ������ �� �����
-- ���̺��� ��ȸ�ϰ� �� �ݾ��� ���� ����϶�
SELECT userID,  SUM(amount * price) AS '�� ���� �ݾ�'
  FROM buyTbl
  GROUP BY userID
  ORDER BY SUM(amount * price) DESC;

SELECT userID,  SUM(amount * price) AS '�� ���� �ݾ�'
  FROM buyTbl;

-- ��� ���űݾ�
SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl;

-- ����� ���̺��� Ű�� ���� ū����ϰ� ���� ������� ��ȸ
SELECT * FROM userTbl
  ORDER BY height ASC;

SELECT * FROM userTbl
  ORDER BY height DESC;

SELECT name AS '�̸�' , height AS [Ű] FROM userTbl
  WHERE height = (SELECT MAX(height) FROM userTbl)
	 OR height = (SELECT MIN(height) FROM userTbl)

-- GROUP BY / HAVING
SELECT userID AS '����ھ��̵�'
     , SUM(price * amount) AS [�ѱ��űݾ�] 
   FROM buyTbl
  -- WHERE SUM(price * amount) >= 1000 //����Ұ�
  GROUP BY userID
  HAVING SUM(price * amount) >= 1000;

-- ���
-- ��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ.
SELECT userID
     , groupName
     , SUM(price * amount) AS [�ѱ��űݾ�] 
   FROM buyTbl
  GROUP BY ROLLUP(userID, groupName);


SELECT userID
     , groupName
     , SUM(price * amount) AS [�ѱ��űݾ�] 
   FROM buyTbl
  GROUP BY CUBE(userID, groupName);

SELECT groupName
	 , SUM(price * amount) AS [�ѱ��űݾ�]
	 , GROUPING_ID(groupName)
	FROM buyTbl
	GROUP BY ROLLUP(groupName);

SELECT groupName
	 , SUM(price * amount) AS [�ѱ��űݾ�]
	FROM buyTbl
	GROUP BY ROLLUP(groupName);

select * from buyTbl;