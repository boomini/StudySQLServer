-- 데이터 조회
SELECT * FROM userTbl;

-- 데이터 조회 필터링
SELECT * FROM C
  WHERE userID = 'BBK';

SELECT * FROM userTbl
  WHERE name = '조용필';

SELECT * FROM userTbl
  WHERE name LIKE '김%';


-- 특정 테이블 레코드(데이터) 갯수확인
SELECT COUNT(*) FROM userTbl;

-- 키가 180이상이고 출생년도가 1970이후에 태어난 사람 조회
SELECT * FROM userTbl
  WHERE height >= 180 AND birthYear >= 1970;

-- 출생년도순(오름차순)으로 정렬해서 조회
SELECT * FROM userTbl
  ORDER BY birthYear; --ASC(ENDING)  |   DESC(ENDING)

-- SELECT INTO
-- userTbl_New 테이블 생성
-- select into로 복사를 하면 pk 키정보 까지는 복사가 안된다.
SELECT * INTO userTbl_New FROM userTbl;
SELECT * FROM userTbl_New;


SELECT userID, name, addr INTO userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;

SELECT userID, name, addr INTO userTbl_Backup2 FROM userTbl WHERE addr = '서울';

SELECT * FROM userTbl_Backup2;


--- GROUP BY
SELECT SUM(amount) AS '총구매갯수', userID FROM buyTbl
  GROUP BY userID;

SELECT * FROM buyTbl;

-- 우리 쇼핑몰에서 가장 돈많이 쓴 사람을
-- 아이별로 조회하고 그 금액을 같이 출력하라
SELECT userID,  SUM(amount * price) AS '총 구매 금액'
  FROM buyTbl
  GROUP BY userID
  ORDER BY SUM(amount * price) DESC;

SELECT userID,  SUM(amount * price) AS '총 구매 금액'
  FROM buyTbl;

-- 평균 구매금액
SELECT AVG(price) AS [평균구매금액] FROM buyTbl;

-- 사용자 테이블에서 키가 가장 큰사람하고 가장 작은사람 조회
SELECT * FROM userTbl
  ORDER BY height ASC;

SELECT * FROM userTbl
  ORDER BY height DESC;

SELECT name AS '이름' , height AS [키] FROM userTbl
  WHERE height = (SELECT MAX(height) FROM userTbl)
	 OR height = (SELECT MIN(height) FROM userTbl)

-- GROUP BY / HAVING
SELECT userID AS '사용자아이디'
     , SUM(price * amount) AS [총구매금액] 
   FROM buyTbl
  -- WHERE SUM(price * amount) >= 1000 //절대불가
  GROUP BY userID
  HAVING SUM(price * amount) >= 1000;

-- 통계
-- 제품그룹별로 사용자가 얼마만큼 구매를 했는지 조회.
SELECT userID
     , groupName
     , SUM(price * amount) AS [총구매금액] 
   FROM buyTbl
  GROUP BY ROLLUP(userID, groupName);


SELECT userID
     , groupName
     , SUM(price * amount) AS [총구매금액] 
   FROM buyTbl
  GROUP BY CUBE(userID, groupName);

SELECT groupName
	 , SUM(price * amount) AS [총구매금액]
	 , GROUPING_ID(groupName)
	FROM buyTbl
	GROUP BY ROLLUP(groupName);

SELECT groupName
	 , SUM(price * amount) AS [총구매금액]
	FROM buyTbl
	GROUP BY ROLLUP(groupName);

select * from buyTbl;