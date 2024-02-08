-- H1 - CHECK THE HOUR OF TRANSACTIONS
SELECT
        date_hour,
        COUNT(external_ref) as count
FROM {{ref('gold__transactions')}}
WHERE chargeback_status = 'true'
GROUP BY 1
ORDER BY count DESC

-- H2 - CHECK THE COUNTRY OF TRANSACTIONS
/*
SELECT
        country_name,
        COUNT(external_ref) as count
FROM {{ref('gold__transactions')}}
WHERE chargeback_status = 'true'
GROUP BY 1
ORDER BY count DESC*/

-- H3 - CHECK THE COUNTRY AND HOUR OF TRANSACTIONS
/*
SELECT
        date_hour,
        country_name,
        COUNT(external_ref) as count
FROM {{ref('gold__transactions')}}
WHERE chargeback_status = 'true'
GROUP BY 1,2
ORDER BY count DESC*/