
SELECT  {{ define_quarterly('date_time') }} AS monthly,
        state,
        count(state) AS count,
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM {{ ref('gold__transactions') }}) AS percentage
FROM {{ref('gold__transactions')}}
GROUP BY 1,2
ORDER BY 1