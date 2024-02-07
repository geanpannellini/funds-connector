{{
  config(
    alias='silver__acceptance_dates_types'
    )
}}

SELECT 
      external_ref as date_types_id,
      date_time as date_time,
      date_time as timestamp,
      date_time as time,
      FORMAT(date_time, 'dd') AS date,
      FORMAT(date_time, 'MM') AS month,
      FORMAT(date_time, 'YYYY') AS year
FROM {{ ref('staging__globepay__acceptance_report') }}