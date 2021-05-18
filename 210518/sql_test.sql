SELECT * FROM divtbl;
SELECT * FROM membertbl;
SELECT * FROM bookstbl;
SELECT * FROM rentaltbl;

--1
SELECT LOWER(email), mobile
	 , names, addr 
  FROM membertbl
  ORDER BY names DESC;

--2
SELECT names, author, releaseDate, price
  FROM bookstbl;

--3
SELECT Idx, CONCAT('���� : ', Names) AS Names
	 , CONCAT('���� > ', Author) AS Author
	 , FORMAT(ReleaseDate, 'yyyy�� MM�� dd��') AS ������
	 , ISBN
	 , CONCAT(FORMAT(Price, '##,###'), '��') AS ����
  FROM bookstbl
  ORDER BY Idx DESC;

--4
SELECT m.Names, m.Levels
     , m.Addr
	 , b.rentalDate
  FROM membertbl AS m
  LEFT OUTER JOIN rentaltbl AS b
	ON m.Idx = b.memberIdx
  WHERE b.rentalDate IS NULL;

--5

SELECT d.Names AS names
	 , CONCAT(FORMAT(SUM(b.Price),'##,###'),'��') AS '���հ�ݾ�'
  FROM bookstbl AS b
  LEFT OUTER JOIN divtbl AS d
	ON b.Division = d.Division
  GROUP BY ROLLUP(d.Names)


  