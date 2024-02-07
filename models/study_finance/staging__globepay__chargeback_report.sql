{{
  config(
    alias='staging__globepay__chargeback_report'
    )
}}

SELECT * 
FROM {{ source('finance', 'globepay_chargeback_report') }} 