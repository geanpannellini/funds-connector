{{
  config(
    alias='staging__globepay__acceptance_report'
    )
}}

SELECT * 
FROM {{ source('finance', 'globepay_acceptance_report') }} 