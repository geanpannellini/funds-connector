{{
  config(
    alias='silver__acceptance__country'
    )
}}

SELECT 
      external_ref as id,
      country as name
FROM {{ ref('staging__globepay__acceptance_report') }}