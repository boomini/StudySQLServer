-- �ܺ�����
-- �츮 ���θ����� ������ �ѹ��� �������� ���� ȸ������ ��ȸ
SELECT u.userID, u.name
	 , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
  WHERE b.prodName IS NULL
  ORDER BY u.userID;

SELECT u.userID, u.name
	 , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
  RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
  WHERE b.prodName IS NULL
  ORDER BY u.userID;

SELECT * FROM stdTbl;
SELECT * FROM reginfoTbl;
SELECT * FROM clubTbl;

-- �л� / ���Ƹ� / �������� ���̺�
-- OUTERJOIN
SELECT s.StdID, s.StdName, s.Region
	 , r.ClubName, c.ClubRooom, r.RegDate
  FROM stdTbl  AS s
  INNER JOIN reginfoTbl AS r
	ON s.StdID = r.StdID
  INNER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName;

SELECT s.StdID, s.StdName, s.Region
	 , r.ClubName, c.ClubRooom, r.RegDate
  FROM stdTbl  AS s
  LEFT OUTER JOIN reginfoTbl AS r
	ON s.StdID = r.StdID
  LEFT OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName;


SELECT s.StdID, s.StdName, s.Region
	 , r.ClubName, c.ClubRooom, r.RegDate
  FROM stdTbl  AS s
  LEFT OUTER JOIN reginfoTbl AS r
	ON s.StdID = r.StdID
  RIGHT OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName;

SELECT c.ClubName, c.ClubRooom 
	 , r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
	ON c.ClubName = r.ClubName;