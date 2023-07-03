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


