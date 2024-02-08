{{
  config(
    alias='silver__acceptance__transactions'
    )
}}

SELECT  external_ref,
        external_ref AS status_id,
        external_ref AS source_id,
    	ref,
        external_ref AS date_id,
        state,
        cvv_provided,
        amount,
        external_ref AS country_id,
        external_ref AS currency_id,
        external_ref AS rate_id
FROM {{ ref('stg__globepay__acceptance__report') }}