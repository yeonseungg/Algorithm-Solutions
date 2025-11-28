SELECT
    user.user_id
    , user.nickname
    , SUM(board.price) as total_sales
    
FROM
    used_goods_user user 
    JOIN used_goods_board board
    ON user.user_id = board.writer_id

WHERE 
    board.status = "DONE"

GROUP BY
    user.user_id

HAVING
    total_sales >= 700000

ORDER BY
    total_sales
    ;