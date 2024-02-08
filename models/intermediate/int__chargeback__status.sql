{{
  config(
    alias='silver__chargeback__status'
    )
}}

SELECT 
      external_ref as id,
      status as name
FROM {{ ref('stg__globepay__chargeback__report') }}