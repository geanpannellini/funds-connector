
SELECT  {{ define_monthly('date_time') }} AS monthly,
        state,
        count(state) AS count
FROM {{ref('gold__acceptance')}}
GROUP BY 1,2
ORDER BY 1