SELECT
        date_hour,
        COUNT(external_ref) as count
FROM {{ref('gold__transactions')}}
WHERE chargeback_status = 'true'
GROUP BY 1
ORDER BY count DESC