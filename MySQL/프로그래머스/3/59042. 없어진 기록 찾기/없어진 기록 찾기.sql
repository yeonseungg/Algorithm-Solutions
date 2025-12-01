SELECT
    outs.animal_id
    , outs.name

FROM
    animal_ins ins RIGHT JOIN animal_outs outs
    USING (animal_id)

WHERE
    (ins.name IS NULL) AND (outs.name IS NOT NULL)
    
;