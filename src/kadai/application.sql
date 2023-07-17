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
