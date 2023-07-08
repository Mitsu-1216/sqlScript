CREATE DATABASE instruction;

USE instruction;

CREATE TABLE 家計簿( 
    日付 DATE
    , 費目ID INTEGER
    , メモ VARCHAR(100)
    , 入金額 INTEGER
    , 出金額 INTEGER
)

INSERT INTO 家計簿 
VALUES ('2023/7/04', NULL, 'コーヒーを飲んだ', 100, 100)

INSERT INTO 家計簿 
VALUES ('2023/7/04', 1, 'コーヒーを飲んだ', 100, 100)

INSERT INTO 家計簿 (日付,費目ID,メモ,出金額,入金額)
VALUES ('2023/7/04', 1, 'コーヒーを飲んだ', 100, 100)

SELECT * FROM 家計簿
WHERE メモ LIKE '%コーヒー%'

SELECT k.* FROM 家計簿 k
WHERE メモ LIKE '%コーヒー%'

SELECT k.* FROM 家計簿 k
WHERE メモ NOT IN('食費')
