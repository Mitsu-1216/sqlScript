-- H28.autumn No.25
CREATE TABLE SOCCERTEAM( 
    NAME CHAR
)

CREATE TABLE サッカーチーム( 
    チーム名 CHAR
)

INSERT INTO サッカーチーム 
VALUES ('X'),('Y'),('Z');

CREATE TABLE 審判( 
     氏名 VARCHAR(10)
    ,所属チーム名 CHAR
)

INSERT INTO 審判 
VALUES ('佐藤健太', 'X')
, ('鈴木翔太', 'Y')
, ('高橋卓也', 'Z');

-- ア
SELECT
    A.チーム名 AS 出場チーム1
    , B.チーム名 AS 出場チーム2
    , C.氏名 AS 審判氏名 
FROM
    サッカーチーム AS A
    , サッカーチーム AS B
    , 審判 AS C 
WHERE
    A.チーム名 < b.チーム名 
    AND (A.チーム名 <> C.所属チーム名 OR B.チーム名 <> C.所属チーム名);

-- イ
    SELECT
    A.チーム名 AS 出場チーム1
    , B.チーム名 AS 出場チーム2
    , C.氏名 AS 審判氏名 
FROM
    サッカーチーム AS A
    , サッカーチーム AS B
    , 審判 AS C 
WHERE
    A.チーム名 < b.チーム名 
    AND C.所属チーム名 NOT IN (A.チーム名,B.チーム名);

-- ウ
    SELECT
    A.チーム名 AS 出場チーム1
    , B.チーム名 AS 出場チーム2
    , C.氏名 AS 審判氏名 
FROM
    サッカーチーム AS A
    , サッカーチーム AS B
    , 審判 AS C 
WHERE
    A.チーム名 < b.チーム名 
    AND EXISTS ( 
        SELECT
            * 
        FROM
            審判 AS D 
        WHERE
            A.チーム名 <> D.所属チーム名 
            AND B.チーム名 <> D.所属チーム名
    )

-- エ
SELECT
    A.チーム名 AS 出場チーム1
    , B.チーム名 AS 出場チーム2
    , C.氏名 AS 審判氏名 
FROM
    サッカーチーム AS A
    , サッカーチーム AS B
    , 審判 AS C 
WHERE
    A.チーム名 < b.チーム名 
    AND NOT EXISTS ( 
        SELECT
            * 
        FROM
            審判 AS D 
        WHERE
            A.チーム名 = D.所属チーム名 
            OR B.チーム名 = D.所属チーム名
    )
