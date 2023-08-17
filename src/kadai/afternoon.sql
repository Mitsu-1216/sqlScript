-- GRANT オブジェクトの権限 ON オブジェクト名 TO { ユーザ名 | ロール名 | PUBLIC }[ WITH GRANT OPTION ]
GRANT SELECT(氏名,所属チーム名) ON 審判 TO user;

-- 制約付与
ALTER TABLE テーブル名 ADD CONSTRAINT 制約名 制約の内容