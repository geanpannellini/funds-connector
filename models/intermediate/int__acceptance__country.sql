{{
  config(
    alias='silver__acceptance__country'
    )
}}

SELECT 
      external_ref as id,
      country as name
FROM {{ ref('stg__globepay__acceptance__report') }}