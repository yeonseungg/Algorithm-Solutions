SELECT
    count(DISTINCT name) as count
FROM
    animal_ins
WHERE
   name IS NOT NULL 
    
;