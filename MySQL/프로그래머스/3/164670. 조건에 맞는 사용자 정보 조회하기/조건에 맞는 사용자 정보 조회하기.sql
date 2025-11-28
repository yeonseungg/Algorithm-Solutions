SELECT
    user.USER_ID
    , user.NICKNAME
    , CONCAT(
        user.city, " ", user.street_address1, " ", user.street_address2) AS '전체주소'
    , CONCAT(
        SUBSTRING(user.TLNO,1,3)
          , "-"
          , SUBSTRING(user.TLNO,4,4)
          , "-"
          , SUBSTRING(user.TLNO,8,4))
            AS '전화번호'

FROM
    used_goods_board board JOIN
    used_goods_user user
    ON board.writer_id = user.user_id

GROUP BY
    user.user_id

HAVING
     count(user.user_id) >= 3

ORDER BY
    user.user_id DESC
;