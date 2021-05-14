-- 시스템합수(SQL 서버가 기본으로 제공해주는 함수들)
SELECT MAX(price) FROM buyTbl;
SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(4,3)) FROM buyTbl;
SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- 예외발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT); -- 값변환을 못하면 NULL로 값대체하고, 정상적 수행

SELECT name, CAST(height AS varchar) + 'cm' FROM userTbl
  WHERE height IS NOT NULL;
-- NULL값은 =로 비교 X //IS(같다) / IS NOT(같지 않다)

SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME);
-- YYYY-MM-DD HH:min:ss

SELECT GETDATE(); --INSERT 현재 년월일시분초 제일 많이 사용

DECLARE @VAR INT;


SELECT @@VERSION;

--날짜 및 시간함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재월';
SELECT DAY(GETDATE()) AS '오늘';

--수치함수
SELECT ABS(-100);
SELECT ROUND(3.141592, 2);-- 소수점 2자리에서 반올림을 하겠다
SELECT FLOOR(RAND() * 100);

--논리함수
SELECT IIF(100>200, '참', '거짓');