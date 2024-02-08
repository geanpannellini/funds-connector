{{
  config(
    alias='silver__acceptance__source'
    )
}}

SELECT 
      external_ref as id,
      source as name
FROM {{ ref('staging__globepay__acceptance_report') }}