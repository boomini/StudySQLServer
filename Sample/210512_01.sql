USE sqlDB;
GO

SELECT * FROM userTbl;
SELECT * FROM userTbl 
 WHERE name = '김경호';



--사용자 테이블에서 출생년도 1970에서 1980년사이
SELECT * FROM userTbl
  WHERE birthYear >= 1970 AND birthYear <= 1980
    AND height >= 180; 


-- 출생년도가 1970년 이후이거나 키가 182이상인 사람 조회
SELECT * FROM userTbl 
  WHERE birthYear >= 1970 OR height >= 180;

SELECT * FROM userTbl
  WHERE birthYear BETWEEN 1970 AND 1980
    AND height >= 180;

-- 사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
SELECT name,userID, addr FROM userTbl
  WHERE addr = '경남' OR addr = '전남' OR addr = '경북';

SELECT name,userID, addr FROM userTbl
  WHERE addr IN ('경남', '경북', '전남');


-- LIKE 절(문자열에서 속하는 문자열이 있는(contain))
SELECT name, height, addr FROM userTbl
  WHERE name LIKE '김%';

SELECT name, height, addr FROM userTbl
  WHERE name LIKE '_비킴';

SELECT name, height, addr FROM userTbl
  WHERE name LIKE '_용_';