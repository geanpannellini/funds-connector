{{
  config(
    alias='silver__acceptance_transaction'
    )
}}

SELECT  external_ref,
        external_ref AS status_id,
        external_ref AS source_id,
    	ref,
        external_ref AS date_time,
        state,
        cvv_provided,
        amount,
        external_ref AS country_id,
        external_ref AS currency_id,
        rates 
FROM {{ ref('staging__globepay__acceptance_report') }}