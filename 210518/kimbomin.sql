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
SELECT Idx, CONCAT('제목 : ', Names) AS Names
	 , CONCAT('저자 > ', Author) AS Author
	 , FORMAT(ReleaseDate, 'yyyy년 MM월 dd일') AS 출판일
	 , ISBN
	 , CONCAT(FORMAT(Price, '##,###'), '원') AS 가격
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
	 , CONCAT(FORMAT(SUM(b.Price),'##,###'),'원') AS '총합계금액'
  FROM bookstbl AS b
  LEFT OUTER JOIN divtbl AS d
	ON b.Division = d.Division
  GROUP BY ROLLUP(d.Names)


  