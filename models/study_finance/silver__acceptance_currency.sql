{{
  config(
    alias='silver__acceptance_currency'
    )
}}


SELECT 
      external_ref as currency_id,
      currency as currency_name
FROM {{ ref('staging__globepay__acceptance_report') }}