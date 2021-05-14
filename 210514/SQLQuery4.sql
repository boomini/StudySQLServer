-- 순위함수
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '구매순위', TRIM(userID) AS userID, SUM(price * amount) AS '사용자별 구매금액'
  FROM buyTbl
  GROUP BY userID
  FOR JSON AUTO; -- FOR XML AUTO

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위'
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC;

SELECT RANK() OVER(ORDER BY height DESC) AS '키순위' -- 공동순위 갯수만큼 밀려서 다음순위 결정
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS '키순위'-- 공동순위 갯수와 상관없이 다음순위 결정
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
	, name, height, addr
  FROM userTbl
  WHERE height IS NOT NULL
  ORDER BY height DESC; --PARTITION