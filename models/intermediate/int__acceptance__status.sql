{{
  config(
    alias='silver__acceptance__status'
    )
}}

SELECT 
      external_ref AS id,
      status AS name
FROM {{ ref('stg__globepay__acceptance__report') }}