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

--SubQuery
-- 키가 175보다 큰사람들 조회
SELECT * FROM userTBL
  WHERE height > 175;

-- 김경호보다 키가 큰사람을 조회
SELECT * FROM userTbl
  WHERE height > (SELECT height FROM userTbl WHERE name = '김경호');

-- 경남에 사는 사람들보다 키가 큰 사람들 조회
SELECT * FROM userTbl
  WHERE height > ANY (SELECT height FROM userTbl Where addr = '경남');

-- IN은 서브쿼리에서 나온 결과와 일치하는 결과만 조회
SELECT * FROM userTbl
  WHERE height = ANY (SELECT height FROM userTbl Where addr = '경남');

SELECT * FROM userTbl
  WHERE height IN (SELECT height FROM userTbl Where addr = '경남');

-- ****subquery에서는 select * 이 없다.

-- ORDER BY
SELECT * FROM userTbl
  ORDER BY userID DESC;

SELECT * FROM userTbl
  ORDER BY birthYear ASC;

SELECT * FROM userTbl
  ORDER BY height DESC, name DESC;

-- mobile1으로 오름차순 뒤 같은값이면 mobile2로 내림차순
SELECT * FROM userTbl
  ORDER BY mobile1 ASC, mobile2 DESC;

 
-- userTbl에 몇개의 데이터(레코드)가 있는지 확인
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(*) FROM buyTbl;

--DISTINCT (중복제거)
SELECT DISTINCT addr FROM userTbl;