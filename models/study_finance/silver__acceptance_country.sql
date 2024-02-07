{{
  config(
    alias='silver__acceptance_country'
    )
}}

SELECT 
      external_ref as id,
      country as name
FROM {{ ref('staging__globepay__acceptance_report') }}