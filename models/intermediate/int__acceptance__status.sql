{{
  config(
    alias='silver__acceptance__status'
    )
}}

SELECT 
      external_ref as id,
      status as name
FROM {{ ref('staging__globepay__acceptance_report') }}