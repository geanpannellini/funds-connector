{{
  config(
    alias='silver__acceptance__currency'
    )
}}

SELECT 
      external_ref as id,
      currency as name
FROM {{ ref('stg__globepay__acceptance__report') }}