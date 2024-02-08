{{
  config(
    alias='silver__chargeback__source'
    )
}}

SELECT 
      external_ref AS id,
      source AS name
FROM {{ ref('stg__globepay__chargeback__report') }}