--TOP
USE AdventureWorksLT2019
GO

SELECT * FROM SalesLT.Address;

SELECT * FROM SalesLT.Customer;

SELECT * FROM SalesLT.Product;

SELECT TOP 10 * FROM SalesLT.Customer;

SELECT TOP(1) PERCENT *
  FROM SalesLT.Customer
  WHERE Title = 'Ms.'
  ORDER BY CustomerID DESC;


-- 10% 샘플링결과 조회
SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);

-- offset : 건너띈다 // 즉 5개는 건너띄고 출력.
SELECT * FROM SalesLT.Customer
  ORDER BY firstName
OFFSET 5 ROW
FETCH NEXT 3 ROWS ONLY; -- 프로시저/함수 그다음 3개만 출력

