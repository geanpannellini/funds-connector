{{
  config(
    alias='silver__acceptance__source'
    )
}}

SELECT 
      external_ref AS id,
      source AS name
FROM {{ ref('stg__globepay__acceptance__report') }}