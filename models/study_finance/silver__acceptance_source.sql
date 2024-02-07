{{
  config(
    alias='silver__acceptance_source'
    )
}}

SELECT 
      external_ref as source_id,
      source as source_name
FROM {{ ref('staging__globepay__acceptance_report') }}