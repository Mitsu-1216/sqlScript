CREATE TABLE 部門別売上( 
    部門コード VARCHAR(3),
    第1期売上 INT,
    第2期売上 INT
)

INSERT INTO 部門別売上 
VALUES ('D01', 1000, 4000)
, ('D02', 2000, 5000)
, ('D03', 3000, 8000);

--ア
--2つのテーブル両方に存在するレコードを抽出
SELECT
    部門コード
    , '第1期' AS 期
    , 第1期売上 AS 売上 
FROM
    部門別売上 
INTERSECT ( 
    SELECT
        部門コード
        , '第2期' AS 期
        , 第2期売上 AS 売上 
    FROM
        部門別売上
) 
ORDER BY
    部門コード
    , 期

--イ
SELECT
    部門コード
    , '第1期' AS 期
    , 第1期売上 AS 売上 
FROM
    部門別売上 
UNION ( 
    SELECT
        部門コード
        , '第2期' AS 期
        , 第2期売上 AS 売上 
    FROM
        部門別売上
) 
ORDER BY
    部門コード
    , 期

--ウ
SELECT
    A.部門コード
    , '第1期' AS 期
    , 第1期売上 AS 売上 
FROM
    部門別売上 A
CROSS JOIN ( 
    SELECT
        B.部門コード
        , '第2期' AS 期
        , B.第2期売上 AS 売上 
    FROM
        部門別売上 B
) T
ORDER BY
    部門コード
    , 期

--エ
SELECT
    A.部門コード
    , '第1期' AS 期
    , 第1期売上 AS 売上 
FROM
    部門別売上 A
INNER JOIN ( 
    SELECT
        B.部門コード
        , '第2期' AS 期
        , B.第2期売上 AS 売上 
    FROM
        部門別売上 B
) T
ORDER BY
    部門コード
    , 期
