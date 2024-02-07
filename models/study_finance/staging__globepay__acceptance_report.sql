{{
  config(
    alias='staging__globepay__acceptance_report'
    )
}}

SELECT  external_ref,
        status,
        source,
    	ref,
        date_time,
        state,
        cvv_provided,
        amount,
        country,
        currency,
        rates 
FROM {{ source('finance', 'globepay_acceptance_report') }} 
