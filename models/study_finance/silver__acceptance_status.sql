{{
  config(
    alias='silver__acceptance_status'
    )
}}

SELECT 
      external_ref as status_id,
      status as status_name
FROM {{ ref('staging__globepay__acceptance_report') }}