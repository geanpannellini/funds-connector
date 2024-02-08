{{
  config(
    alias='silver__acceptance__currency'
    )
}}

SELECT 
      external_ref AS id,
      currency AS name
FROM {{ ref('stg__globepay__acceptance__report') }}