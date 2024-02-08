{{
  config(
    alias='silver__acceptance__dates_types'
    )
}}

SELECT 
      external_ref AS id,
      date_time AS date_time,
      DATE(DATE_TRUNC('day', TO_TIMESTAMP(date_time, 'YYYY-MM-DD"T"HH24:MI:SS'))) AS date,
      TO_CHAR(TO_TIMESTAMP(date_time, 'YYYY-MM-DD"T"HH24:MI:SS.MSZ'), 'HH24:MI:SS') AS hour,
      {{ define_monthly('date_time') }} AS monthly,
      {{ define_quarterly('date_time') }} AS quarterly,
      {{ define_semiannually('date_time') }} AS semiannually
FROM {{ ref('stg__globepay__acceptance__report') }}