{{
  config(
    alias='staging__globepay__acceptance__report'
    )
}}

SELECT  external_ref,
        status,
        source,
    	ref,
        date(date_time) AS date_time,
        state,
        cvv_provided,
        amount,
        country,
        currency,
        REPLACE(rates, ';', ',') AS rates 
FROM {{ source('finance', 'globepay_acceptance_report') }} 
