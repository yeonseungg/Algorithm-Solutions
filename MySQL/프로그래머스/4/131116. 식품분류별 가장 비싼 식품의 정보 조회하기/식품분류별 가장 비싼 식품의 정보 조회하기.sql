-- 식품 분류: '과자', '국', '김치', '식용유'
-- 가격이 제일 비싼 식품의 분류 -> JOIN
-- 식품 가격 기준 내림차순

SELECT 
    f.category
    , m.max_price
    , f.product_name

FROM 
    food_product f
JOIN (
    SELECT category, MAX(price) AS max_price
    FROM food_product
    WHERE
        category IN ('과자', '국', '김치', '식용유')
    GROUP BY category
) m
    ON f.category = m.category AND f.price = m.max_price
ORDER BY     
    m.max_price DESC
;


