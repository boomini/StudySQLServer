SELECT * FROM stdTbl;
select * FROM clubTbl;

-- 3�� ���̺� ��������
SELECT s.StdID, s.StdName
	 , r.ClubName
	 , r.RegDate, c.ClubRooom
  FROM stdTbl AS s
  INNER JOIN reginfoTbl AS r
		ON s.StdID = r.StdID
  INNER JOIN clubTbl AS c
		ON c.ClubName = r.ClubName;