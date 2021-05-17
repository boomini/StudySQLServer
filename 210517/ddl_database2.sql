CREATE TABLE userTbl
(
	userId CHAR(8) NOT NULL PRIMARY KEY,
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT

);

CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY,
	userID CHAR(8) NOT NULL
		FOREIGN KEY REFERENCES userTBL(userID),
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
);

--DDL 한개이상 컬럼 PK로 지정테이블 생성
CREATE TABLE prodTbl
(
	prodCode NCHAR(3) NOT NULL,
	prodID NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL,
	CONSTRAINT PK_prodTbl_prodCode_prodID
		PRIMARY KEY (prodCode, prodID)
);
GO

--userTbl에 email(유니크제약조건) 추가
-- buyTBL 데이터 다 삭제, userTBL 데이터 다 삭제
-- userTBL(email)컬럼삭제 한 후, 밑의 쿼리 실행
ALTER TABLE userTbl
 ADD email VARCHAR(50) NOT NULL UNIQUE;

-- CHECK
ALTER TABLE userTBL
	ADD CONSTRAINT CK_birthYear
	CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));

SELECT * FROM sampleDB.dbo.userTBL;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;
SELECT * FROM AdventureWorksLT2019.dbo.ErrorLog;