{{
  config(
    alias='silver__acceptance_rates'
    )
}}


SELECT 
    external_ref AS id,
    json_extract_path_text(rates::json, 'CAD') AS rate_CAD,
    json_extract_path_text(rates::json, 'EUR') AS rate_EUR,
    json_extract_path_text(rates::json, 'MXN') AS rate_MXN,
    json_extract_path_text(rates::json, 'USD') AS rate_USD,
    json_extract_path_text(rates::json, 'SGD') AS rate_SGD,
    json_extract_path_text(rates::json, 'AUD') AS rate_AUD,
    json_extract_path_text(rates::json, 'GBP') AS rate_GBP
FROM {{ ref('staging__globepay__acceptance_report') }}