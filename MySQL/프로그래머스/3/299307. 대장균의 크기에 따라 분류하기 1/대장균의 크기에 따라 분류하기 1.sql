SELECT
    id
    , CASE 
        WHEN size_of_colony <= 100 THEN 'LOW' 
        WHEN size_of_colony > 1000 THEN 'HIGH' 
        ELSE 'MEDIUM' END AS SIZE
FROM
    ecoli_data

ORDER BY
    id
    
;