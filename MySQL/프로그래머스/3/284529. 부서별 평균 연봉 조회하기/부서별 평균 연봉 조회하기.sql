SELECT
    dpt.dept_id
    , dpt.dept_name_en
    , ROUND(AVG(emp.sal), 0) AS avg_sal
    
FROM
    hr_department dpt join hr_employees emp
    USING (dept_id)
    
GROUP BY
    dpt.dept_id

ORDER BY
    avg_sal DESC
;