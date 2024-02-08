{{
  config(
    alias='silver__chargeback__transactions'
    )
}}

SELECT 
      external_ref,
      external_ref AS status_id,
      external_ref AS source_id,
      chargeback AS status_chargeback
FROM {{ ref('stg__globepay__chargeback__report') }}