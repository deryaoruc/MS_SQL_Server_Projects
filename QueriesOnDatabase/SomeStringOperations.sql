-- Some string operations
	
	-- ASCII and CHAR
SELECT ASCII ('?')
SELECT CHAR(63)
SELECT ASCII (CHAR(49))
SELECT CHAR(ASCII('�'))

	--SUBSTRING
SELECT * FROM USERS WHERE USERNAME_ LIKE '%O'
SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='O'
A_KALKMAZO
SELECT LEN('A_KALKMAZO')
SELECT SUBSTRING('A_KALKMAZO',10,1)

	--CHARINDEX
SELECT CHARINDEX ('B�LL','B�LL GATES',1)

	--CONCAT
SELECT 
USERNAME_+' '+PASSWORD_+' '+NAMESURNAME,
CONCAT(USERNAME_,' ',PASSWORD_,' ',NAMESURNAME),
CONCAT_WS(' ',USERNAME_,PASSWORD_,NAMESURNAME),
*
FROM USERS

	-- FORMAT
SELECT FORMAT(GETDATE(),'D','en-us')

	-- LEFT, RIGHT, LEN
SELECT LEFT('BILL GATES',4)
SELECT(LEFT('BILL GATES',CHARINDEX(' ','BILL GATES')))
SELECT(RIGHT('B�LL GATES',LEN('BILL GATES')-CHARINDEX(' ','BILL GATES')))
SELECT(LEFT('BILL GATES',CHARINDEX(' ','BILL GATES'))),(RIGHT('B�LL GATES',LEN('BILL GATES')-CHARINDEX(' ','BILL GATES')))
SELECT
LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),(RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)))
FROM USERS

	-- TRIM
SELECT RTRIM(' BILL GATES ')
SELECT LTRIM(RTRIM(' BILL GATES '))
BILL GATES

	-- LOWER, UPPER, REVERSE, REPLICATE
SELECT LOWER('BILL')
SELECT UPPER('Bill')
SELECT REVERSE('BILL GATES')
SELECT REPLICATE('0',10)

	-- REPLACE
SELECT 'HELLO AWASOME WORLD'
SELECT REPLACE('HELLO AWASOME WORLD','AWASOME','AMAZING')