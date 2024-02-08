SELECT
        hour,
        COUNT(external_ref) as count
FROM {{ref('gold__acceptance')}}
WHERE chargeback_status = 'true'
GROUP BY 1