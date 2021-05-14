-- �ý����ռ�(SQL ������ �⺻���� �������ִ� �Լ���)
SELECT MAX(price) FROM buyTbl;
SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(4,3)) FROM buyTbl;
SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- ���ܹ߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT); -- ����ȯ�� ���ϸ� NULL�� ����ü�ϰ�, ������ ����

SELECT name, CAST(height AS varchar) + 'cm' FROM userTbl
  WHERE height IS NOT NULL;
-- NULL���� =�� �� X //IS(����) / IS NOT(���� �ʴ�)

SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME);
-- YYYY-MM-DD HH:min:ss

SELECT GETDATE(); --INSERT ���� ����Ͻú��� ���� ���� ���

DECLARE @VAR INT;


SELECT @@VERSION;

--��¥ �� �ð��Լ�
SELECT YEAR(GETDATE()) AS '����⵵';
SELECT MONTH(GETDATE()) AS '�����';
SELECT DAY(GETDATE()) AS '����';

--��ġ�Լ�
SELECT ABS(-100);
SELECT ROUND(3.141592, 2);-- �Ҽ��� 2�ڸ����� �ݿø��� �ϰڴ�
SELECT FLOOR(RAND() * 100);

--���Լ�
SELECT IIF(100>200, '��', '����');