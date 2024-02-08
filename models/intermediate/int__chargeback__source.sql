{{
  config(
    alias='silver__chargeback__source'
    )
}}

SELECT 
      external_ref as id,
      source as name
FROM {{ ref('stg__globepay__chargeback__report') }}