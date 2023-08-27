-- GRANT オブジェクトの権限 ON オブジェクト名 TO { ユーザ名 | ロール名 | PUBLIC }[ WITH GRANT OPTION ]
GRANT SELECT(氏名,所属チーム名) ON 審判 TO user;

-- 制約付与
ALTER TABLE テーブル名 ADD CONSTRAINT 制約名 制約の内容;

/*WITH 副問合せ名 AS (クエリ文)：副問合せ名」を記述することにより、
ASの直後のクエリ文を何度も記述することなく使い回すことが可能*/
WITH句はWITH 相関名 AS (SELECT文);

INSERT INTO 月次レポート(従業員番号,レポート年月)
SELECT 従業員番号,：レポート年月
FROM 従業員