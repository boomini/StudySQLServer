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


-- 10% ���ø���� ��ȸ
SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);

-- offset : �ǳʶ�� // �� 5���� �ǳʶ�� ���.
SELECT * FROM SalesLT.Customer
  ORDER BY firstName
OFFSET 5 ROW
FETCH NEXT 3 ROWS ONLY; -- ���ν���/�Լ� �״��� 3���� ���

