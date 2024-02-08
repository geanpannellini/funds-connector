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