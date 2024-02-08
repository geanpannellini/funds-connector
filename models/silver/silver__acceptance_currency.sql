{{
  config(
    alias='silver__acceptance_currency'
    )
}}


SELECT 
      external_ref as id,
      currency as name
FROM {{ ref('staging__globepay__acceptance_report') }}