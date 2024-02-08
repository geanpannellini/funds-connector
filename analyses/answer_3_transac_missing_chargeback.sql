SELECT
        chargeback_status,
        COUNT(external_ref) as count,
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM {{ ref('gold__transactions') }}) AS percentage
FROM {{ref('gold__transactions')}}
--WHERE chargeback_status = 'false'
GROUP BY 1
ORDER BY count DESC