{{
  config(
    alias='staging__globepay__chargeback_report'
    )
}}

SELECT external_ref,
       status,
       source,
       chargeback
FROM {{ source('finance', 'globepay_chargeback_report') }} 