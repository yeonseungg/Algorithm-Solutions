SELECT
     CONCAT('/home/grep/src/',board.board_id,'/',file.file_id, file.file_name, file.file_ext)
     AS file_path
     
FROM
    used_goods_file file join
    used_goods_board board
    ON file.board_id = board.board_id

WHERE
    board.board_id = (
        SELECT board_id
        FROM used_goods_board
        ORDER BY views DESC
        LIMIT 1
    )

ORDER BY
    file.file_id DESC
;