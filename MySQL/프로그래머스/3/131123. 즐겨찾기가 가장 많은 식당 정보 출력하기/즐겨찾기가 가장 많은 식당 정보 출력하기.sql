SELECT 
    R.food_type
    , R.rest_id
    , R.rest_name
    , R.favorites
FROM 
    rest_info R

WHERE 
    FAVORITES = (
    SELECT MAX(favorites)
    FROM rest_info
    WHERE food_type = R.food_type
    )
    
ORDER BY 
    food_type DESC
;