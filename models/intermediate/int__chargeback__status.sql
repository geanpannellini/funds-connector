{{
  config(
    alias='silver__chargeback__status'
    )
}}

SELECT 
      external_ref AS id,
      status AS name
FROM {{ ref('stg__globepay__chargeback__report') }}