{{
  config(
    alias='silver__acceptance__country'
    )
}}

SELECT 
      external_ref AS id,
      country AS name
FROM {{ ref('stg__globepay__acceptance__report') }}