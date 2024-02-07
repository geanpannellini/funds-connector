{{
  config(
    alias='silver__chargeback_source'
    )
}}

SELECT 
      external_ref as id,
      source as name
FROM {{ ref('staging__globepay__chargeback_report') }}