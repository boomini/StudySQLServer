--문자열 함수
SELECT ASCII('A'), CHAR(66);
SELECT UNICODE('가'), NCHAR(44032);
SELECT UNICODE('ぇ'), NCHAR(12359);



--문자열 연결
SELECT CONCAT('SQL', 'server', 2019) AS [name]; -- 사용빈도 상
SELECT 'SQL ' + 'server '+ CAST(2019 AS VARCHAR);

-- 단어 시작위치
SELECT CHARINDEX('world', 'Hello world!');
-- C#, java, python 문자열 0부터 시작
-- DB 1부터 시작

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019';
SELECT LEFT (@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('대한민국만세!',5,2);

SELECT LEN('Hello World');
SELECT LEN('대한민국 만세!');

SELECT LOWER('hELLO World!'), UPPER('hELLO World!');

SELECT UPPER('cd2005');

-- 스페이스 제거 함수
SELECT '          SQL      ', LTRIM('   SQL    ');
SELECT '      	SQL    	', RTRIM('	        SQL	     ' );
SELECT '         	SQL   	', TRIM('         	SQL	       ');

-- REPLACE 사용빈도 최상
SELECT REPLACE('SQL Server 2019', 'server', '서버');


-- STR 사용빈도 하 //쓰지마세여!
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT 사용빈도 상
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); -- 한국식
SELECT FORMAT(GETDATE(), 'dd/MMM/yyyy hh:mm:ss'); -- 미국식