{{
  config(
    alias='silver__acceptance__source'
    )
}}

SELECT 
      external_ref as id,
      source as name
FROM {{ ref('stg__globepay__acceptance__report') }}