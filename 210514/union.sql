SELECT * FROM userTbl CROSS JOIN buyTbl

SELECT * FROM stdTbl;

-- 두테이블 합체
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRooom FROM clubTbl; 

-- 타입형이 다르면 union이 안되므로 형변환을 해주어야 한다.
SELECT CAST(Id AS VARCHAR), StdId FROM reginfoTbl
UNION
SELECT ClubName, ClubRooom FROM clubTbl 

-- UNION은 중복제거, UNION ALL은 중복허용
SELECT StdName, Region FROM stdTbl
UNION ALL
SELECT StdName, Region FROM stdTbl 

-- except -- 빼버린다
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
  WHERE mobile1 IS NULL;

-- 뒤의 테이블 기준 만족하는 데이터만 추려내는것
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
  WHERE mobile1 IS NOT NULL;