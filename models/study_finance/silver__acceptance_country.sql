{{
  config(
    alias='silver__acceptance_country'
    )
}}

SELECT 
      external_ref as country_id,
      country as country_name
FROM {{ ref('staging__globepay__acceptance_report') }}