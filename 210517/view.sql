USE sampleDB;
GO
-- VIEW
CREATE VIEW v_userTBl
AS
	SELECT userID, name, addr FROM userTBL;
GO

SELECT userID, name, addr FROM  v_userTBl


CREATE VIEW v_userbuyInfo
AS
	SELECT u.userID, u.name, b.prodName, b.price
	  FROM userTbl as u
	  INNER JOIN buyTbl as b
	  on u.userID = b.userID
	  --ORDER BY b.price DESC
GO

SELECT * FROM v_userbuyInfo
 ORDER BY price DESC;