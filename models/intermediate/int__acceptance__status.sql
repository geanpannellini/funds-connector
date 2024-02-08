{{
  config(
    alias='silver__acceptance__status'
    )
}}

SELECT 
      external_ref as id,
      status as name
FROM {{ ref('stg__globepay__acceptance__report') }}