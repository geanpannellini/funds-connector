SELECT
        date_hour,
        COUNT(external_ref) as count
FROM {{ref('gold__acceptance')}}
WHERE chargeback_status = 'true'
GROUP BY 1
ORDER BY count DESC