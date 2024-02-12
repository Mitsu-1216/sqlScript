SELECT
    name
    , LENGTH(name) AS 文字数
FROM
    todo_app.users 
WHERE
    LENGTH(name) >= 5