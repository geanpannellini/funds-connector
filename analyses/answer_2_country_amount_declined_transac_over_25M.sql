WITH total_amount_per_country AS (
    SELECT 
        country_name,
        SUM(amount) AS total_amount
    FROM {{ref('gold__transactions')}}
    WHERE state = 'DECLINED'
    GROUP BY 1

-- My database dont support having or qualify so I did CTE.

/*HAVING SUM(amount) > 25000000
ORDER BY 1*/
)

SELECT 
    country_name,
    total_amount
FROM 
    total_amount_per_country
WHERE 
    total_amount > 25000000
ORDER BY 1