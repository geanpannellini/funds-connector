-- UNION tables
/*
-- T1 - CHECK THE HOUR OF TRANSACTIONS
SELECT
        TO_CHAR(TO_TIMESTAMP(a.date_time, 'YYYY-MM-DD"T"HH24:MI:SS.MSZ'), 'HH24:MI:SS') AS date_time,
        COUNT(a.external_ref) as count
FROM {{ref('staging__globepay__acceptance_report')}} AS a
LEFT JOIN {{ref('staging__globepay__chargeback_report')}} AS b
ON a.external_ref = b.external_ref
WHERE b.chargeback = 'true'
GROUP BY 1
ORDER BY count DESC
*/
-- T2 - CHECK THE COUNTRY OF TRANSACTIONS
/*
SELECT
        country,
        COUNT(a.external_ref) as count
FROM {{ref('staging__globepay__acceptance_report')}} AS a
LEFT JOIN {{ref('staging__globepay__chargeback_report')}} AS b
ON a.external_ref = b.external_ref
WHERE b.chargeback = 'true'
GROUP BY 1
ORDER BY count DESC

-- T3 - CHECK THE COUNTRY AND HOUR OF TRANSACTIONS
/*
SELECT
        TO_CHAR(TO_TIMESTAMP(a.date_time, 'YYYY-MM-DD"T"HH24:MI:SS.MSZ'), 'HH24:MI:SS') AS date_time,
        country,
        COUNT(a.external_ref) as count
FROM {{ref('staging__globepay__acceptance_report')}} AS a
LEFT JOIN {{ref('staging__globepay__chargeback_report')}} AS b
ON a.external_ref = b.external_ref
WHERE b.chargeback = 'true'
GROUP BY 1,2
ORDER BY count DESC
*/


-- staging__globepay__chargeback_report
-- TEST 1
/*SELECT 
    external_ref,
    COUNT(*) AS count
FROM {{ ref('staging__globepay__chargeback_report') }}
GROUP BY 1

-- TEST 2
SELECT 
    source,
    COUNT(*) AS count,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM {{ ref('staging__globepay__chargeback_report') }}) AS percentage
FROM {{ ref('staging__globepay__chargeback_report') }}
GROUP BY 1

-- TEST 3
SELECT 
    status,
    COUNT(*) AS count
FROM {{ ref('staging__globepay__chargeback_report') }}
GROUP BY 1 */

--staging__globepay__acceptance_report

-- TEST 1
/*SELECT 
    external_ref,
    COUNT(*) AS count
FROM {{ ref('staging__globepay__acceptance_report') }}
GROUP BY 1

-- TEST 2
SELECT 
    source,
    COUNT(*) AS count,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM {{ ref('staging__globepay__chargeback_report') }}) AS percentage
FROM {{ ref('staging__globepay__acceptance_report') }}
GROUP BY 1

-- TEST 3
SELECT 
    status,
    COUNT(*) AS count
FROM {{ ref('staging__globepay__acceptance_report') }}
GROUP BY 1 */