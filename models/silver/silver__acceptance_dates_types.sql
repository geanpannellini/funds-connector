{{
  config(
    alias='silver__acceptance_dates_types'
    )
}}

SELECT 
      external_ref as id,
      date_time as date_time,
      {{ define_monthly('date_time') }} AS monthly,
      {{ define_quarterly('date_time') }} AS quarterly,
      {{ define_semiannually('date_time') }} AS semiannually
FROM {{ ref('staging__globepay__acceptance_report') }}