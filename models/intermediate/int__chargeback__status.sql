{{
  config(
    alias='silver__chargeback__status'
    )
}}

SELECT 
      external_ref as id,
      status as name
FROM {{ ref('staging__globepay__chargeback_report') }}